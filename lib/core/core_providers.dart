import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../app_localization.dart';
import '../app_styles.dart';
import '../database/database.dart';
import '../kaspa/grpc/rpc.pb.dart';
import '../kaspa/kaspa.dart';
import '../main_card/main_card_notifier.dart';
import '../main_card/main_card_state.dart';
import '../node_settings/node_providers.dart';
import '../settings/settings_providers.dart';
import '../util/auth_util.dart';
import '../util/biometrics.dart';
import '../util/formatters.dart';
import '../util/hapticutil.dart';
import '../util/sharedprefsutil.dart';
import '../util/vault.dart';
import '../utxos/utxos_providers.dart';
import '../wallet_address/wallet_address_manager.dart';
import '../wallet_signer/wallet_signer.dart';

final timeProvider = StreamProvider.autoDispose<DateTime>((ref) {
  return Stream.periodic(
    const Duration(seconds: 10),
    (ticker) => DateTime.now(),
  );
});

final lastUpdateProvider = Provider.autoDispose<DateTime>((ref) {
  ref.watch(virtualDaaScoreProvider);
  return DateTime.now();
});

final inBackgroundProvider = StateProvider<bool>((ref) => false);

final networkErrorProvider = Provider.autoDispose<bool>((ref) {
  final inBackground = ref.watch(inBackgroundProvider);
  final lastUpdate = ref.watch(lastUpdateProvider);
  final timer = ref.watch(timeProvider).asData?.value ?? DateTime.now();
  if (inBackground) {
    return false;
  }
  return timer.difference(lastUpdate) > Duration(seconds: 5);
});

final dbProvider = Provider((ref) => const Database());

final stylesProvider = Provider((ref) {
  final theme = ref.watch(themeProvider);
  return AppStyles(theme);
});

final localeProvider = Provider((ref) {
  final language = ref.watch(languageProvider);
  return Locale(language.getLocaleString());
});

final blockExplorerProvider = Provider((ref) {
  final settings = ref.watch(blockExplorerSettingsProvider);
  final network = ref.watch(networkProvider);
  return settings.explorerForNetwork(network);
});

final walletServiceProvider = Provider.autoDispose((ref) {
  final signer = ref.watch(walletSignerProvider);
  final client = ref.watch(kaspaClientProvider);

  return WalletService(
    signer: signer,
    client: client,
  );
});

final sharedPrefsProvider =
    Provider<SharedPreferences>((ref) => throw UnimplementedError());

final l10nProvider = Provider((ref) => const AppLocalization());
final hapticUtilProvider = Provider((ref) => const HapticUtil());
final authUtilProvider = Provider((ref) => AuthUtil(ref));
final biometricUtilProvider = Provider(
  (ref) => BiometricUtil(ref.watch(loggerProvider)),
);
final vaultProvider = Provider((ref) => Vault());
final sharedPrefsUtilProvider = Provider((ref) {
  final sharedPrefs = ref.watch(sharedPrefsProvider);
  return SharedPrefsUtil(sharedPrefs);
});
final loggerProvider = Provider(
  (ref) => Logger(
    printer: PrettyPrinter(),
    //filter: ProductionFilter(),
  ),
);

final networkProvider = Provider((ref) {
  final config = ref.watch(kaspaNodeConfigProvider);
  return config.network;
});

final addressPrefixProvider = Provider((ref) {
  final network = ref.watch(networkProvider);
  final prefix = addressPrefixForNetwork(network);

  return prefix;
});

final kaspaApiProvider = Provider<KaspaApi>((ref) {
  final network = ref.watch(networkProvider);
  if (network == KaspaNetwork.mainnet) {
    return MainnetKaspaApi('https://api.kaspa.org');
  }
  return EmptyKaspaApi();
});

final kaspaClientProvider = Provider((ref) {
  final config = ref.watch(kaspaNodeConfigProvider);
  final inBackground = ref.watch(inBackgroundProvider);

  final client = inBackground ? VoidKaspaClient() : KaspaClient.url(config.url);

  ref.onDispose(() {
    client.close();
  });

  return client;
});

final balancesForAddressesProvider = FutureProvider.family
    .autoDispose<Iterable<BalancesByAddressEntry>, List<String>>(
        (ref, addresses) async {
  final client = ref.watch(kaspaClientProvider);
  final balance = await client.getBalancesByAddresses(addresses);
  return balance;
});

final mainCardProvider =
    StateNotifierProvider<MainCardNotifier, MainCardState>((ref) {
  return MainCardNotifier();
});

final themeProvider = Provider((ref) {
  final themeSetting = ref.watch(themeSettingProvider);
  return themeSetting.getTheme();
});

final deviceLocaleProvider = StateProvider<Locale>((ref) {
  return Locale('en', 'US');
});

final currencyLocaleProvider = Provider((ref) {
  final currency = ref.watch(currencyProvider);
  return currency.getLocale().toString();
});

// final initialDeepLinkProvider = FutureProvider((ref) {
//   return uniLinks.getInitialLink();
// });

// final deepLinkProvider = StreamProvider.autoDispose((ref) {
//   return uniLinks.linkStream;
// });

final lastKnownVirtualDaaScoreProvider =
    StateProvider<BigInt>((ref) => BigInt.zero);

final virtualDaaScoreProvider = StreamProvider((ref) {
  final client = ref.watch(kaspaClientProvider);
  return client.notifyVirtualDaaScoreChanged().map((value) {
    final virtualDaaScore = value.toUnsignedBigInt();

    final lastKnown = ref.read(lastKnownVirtualDaaScoreProvider.notifier);
    lastKnown.state = virtualDaaScore;

    return virtualDaaScore;
  });
});

final virtualSelectedParentBlueScoreProvider =
    StateProvider<BigInt>((ref) => BigInt.zero);

final virtualSelectedParentBlueScoreStreamProvider = StreamProvider((ref) {
  final client = ref.watch(kaspaClientProvider);
  return client.notifyVirtualSelectedParentBlueScoreChanged().map((value) {
    final blueScore = value.toUnsignedBigInt();

    final notifier = ref.read(virtualSelectedParentBlueScoreProvider.notifier);
    notifier.state = blueScore;

    return blueScore;
  });
});

final remoteRefreshProvider = StateProvider((ref) => 0);

final lockDisabledProvider = StateProvider((ref) => false);

final maxSendProvider = Provider.autoDispose((ref) {
  final utxos = ref.watch(spendableUtxosProvider);
  final maxInputs = min(utxos.length, kMaxInputsPerTransaction);

  final maxWithFees =
      utxos.take(maxInputs).fold<BigInt>(BigInt.zero, (previousValue, element) {
    return previousValue + element.utxoEntry.amount;
  });

  final maxSend = maxWithFees - kFeePerInput * BigInt.from(maxInputs);

  return maxSend;
});

final kaspaFormatterProvider = Provider((ref) {
  final format = NumberFormat.currency(name: '');
  final formatter = CurrencyFormatter(
    groupSeparator: format.symbols.GROUP_SEP,
    decimalSeparator: format.symbols.DECIMAL_SEP,
    maxDecimalDigits: TokenInfo.kaspa.decimals,
  );

  return formatter;
});
