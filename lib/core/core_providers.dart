import 'dart:async';
import 'dart:math';

import 'package:decimal/decimal.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../app_providers.dart';
import '../app_styles.dart';
import '../chain_state/chain_state.dart';
import '../database/database.dart';
import '../kaspa/grpc/rpc.pb.dart';
import '../kaspa/kaspa.dart';
import '../main_card/main_card_notifier.dart';
import '../main_card/main_card_state.dart';
import '../util/auth_util.dart';
import '../util/biometrics.dart';
import '../util/hapticutil.dart';
import '../util/sharedprefsutil.dart';
import '../util/vault.dart';

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

final dbProvider = StateProvider((ref) => Database());

final stylesProvider = Provider((ref) {
  final theme = ref.watch(themeProvider);
  return AppStyles(theme);
});

final blockExplorerProvider = Provider((ref) {
  final settings = ref.watch(blockExplorerSettingsProvider);
  final networkId = ref.watch(networkIdProvider);
  return settings.explorerForNetwork(networkId);
});

final sharedPrefsProvider =
    Provider<SharedPreferences>((ref) => throw UnimplementedError());

final hapticUtilProvider = Provider((ref) => const HapticUtil());
final authUtilProvider = Provider((ref) => AuthUtil(ref));
final biometricUtilProvider = Provider((ref) => BiometricUtil());
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

final networkIdProvider = Provider((ref) {
  final config = ref.watch(kaspaNodeConfigProvider);
  return config.networkId;
});

final addressPrefixProvider = Provider((ref) {
  final network = ref.watch(networkProvider);
  final prefix = addressPrefixForNetwork(network);

  return prefix;
});

final _kaspaApiProvider = Provider<KaspaApi>((ref) {
  final networkId = ref.watch(networkIdProvider);

  return switch (networkId) {
    kKaspaNetworkIdMainnet => KaspaApiMainnet('https://api.kaspa.org'),
    kKaspaNetworkIdTestnet10 => KaspaApiMainnet('https://api-tn10.kaspa.org'),
    kKaspaNetworkIdTestnet11 => KaspaApiMainnet('https://api-tn11.kaspa.org'),
    _ => KaspaApiEmpty(),
  };
});

final kaspaApiServiceProvider = Provider<KaspaApiService>((ref) {
  final api = ref.watch(_kaspaApiProvider);
  return KaspaApiService(api);
});

final kaspaClientProvider = Provider((ref) {
  final config = ref.watch(kaspaNodeConfigProvider);
  final inBackground = ref.watch(inBackgroundProvider);

  final client = inBackground
      ? VoidKaspaClient()
      : KaspaClient.url(config.url, isSecure: config.isSecure);

  ref.onDispose(() {
    client.close();
  });

  return client;
});

final balancesForAddressesProvider = FutureProvider.family
    .autoDispose<Iterable<RpcBalancesByAddressesEntry>, List<String>>(
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

final chainStateProvider = Provider((ref) {
  final repository = ref.watch(settingsRepositoryProvider);
  return repository.getChainState();
});

final lastKnownVirtualDaaScoreProvider = StateProvider<BigInt>((ref) {
  final chainState = ref.watch(chainStateProvider);
  return chainState.virtualDaaScore;
});

final virtualDaaScoreProvider = StreamProvider((ref) {
  final client = ref.watch(kaspaClientProvider);
  return client.notifyVirtualDaaScoreChanged().map((value) {
    final virtualDaaScore = value.toUnsignedBigInt();

    final lastKnown = ref.read(lastKnownVirtualDaaScoreProvider.notifier);
    lastKnown.state = virtualDaaScore;

    return virtualDaaScore;
  });
});

final virtualSelectedParentBlueScoreProvider = StateProvider<BigInt>((ref) {
  final chainState = ref.watch(chainStateProvider);
  return chainState.virtualSelectedParentBlueScore;
});

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
final privacyOverlayDisabledProvider = StateProvider((ref) => false);

final maxSendProvider = Provider.autoDispose((ref) {
  final utxos = ref.watch(spendableUtxosProvider);
  final maxInputs = min(utxos.length, kMaxInputsPerTransaction);

  final maxWithFees =
      utxos.take(maxInputs).fold<BigInt>(BigInt.zero, (total, element) {
    return total + element.utxoEntry.amount;
  });

  final maxSend = maxWithFees - kFeePerInput * BigInt.from(maxInputs);
  if (maxSend < BigInt.zero) {
    return Amount.zero;
  }

  return Amount.raw(maxSend);
});

final appLinkProvider = StateProvider<String?>((ref) {
  return null;
});

final fiatModeProvider = StateProvider<bool>((ref) => false);

final pendingTxsProvider = FutureProvider.autoDispose((ref) async {
  final client = ref.watch(kaspaClientProvider);
  final addresses = ref.watch(activeAddressesProvider);
  // refresh when utxos change
  ref.watch(utxosChangedProvider);

  final pendingTxs = await client.getMempoolEntriesByAddresses(
    addresses,
    filterTransactionPool: false,
    includeOrphanPool: false,
  );

  return pendingTxs
      .expand(
        (entries) => entries.sending.map(
          (e) => ApiTransaction.fromRpc(e.transaction),
        ),
      )
      .toSet()
      .toList();
});

final rpcFeeEstimateProvider = FutureProvider.autoDispose((ref) async {
  // refresh once every 10 seconds
  ref.watch(timeProvider);
  final client = ref.watch(kaspaClientProvider);

  try {
    final feeEstimate = await client.getFeeEstimate();
    return feeEstimate;
  } catch (e) {
    return null;
  }
});

extension BigIntExt on BigInt {
  BigInt min(BigInt min) => this < min ? min : this;
}

final feeEstimateProvider = Provider.family
    .autoDispose<List<(Amount, int?)>, (BigInt, Amount)>((ref, massAndFee) {
  final mass = massAndFee.$1;
  final baseFee = massAndFee.$2;

  final feeEstimate = ref.watch(rpcFeeEstimateProvider).valueOrNull;
  if (feeEstimate == null) {
    return [
      (Amount.value(Decimal.parse('0.001')), null),
      (Amount.value(Decimal.parse('0.01')), null),
      (Amount.value(Decimal.parse('0.1')), null),
    ];
  }

  Amount feeFor(double feeRate, BigInt mass, Amount baseFee) {
    final estimate = feeRate * mass.toDouble();
    return Amount.raw((BigInt.from(estimate) - baseFee.raw).min(BigInt.zero));
  }

  final fees = [
    if (feeEstimate.lowBuckets.isNotEmpty)
      (
        feeFor(feeEstimate.lowBuckets.first.feerate, mass, baseFee),
        feeEstimate.lowBuckets.first.estimatedSeconds.toInt(),
      ),
    if (feeEstimate.normalBuckets.isNotEmpty)
      (
        feeFor(feeEstimate.normalBuckets.first.feerate, mass, baseFee),
        feeEstimate.normalBuckets.first.estimatedSeconds.toInt(),
      ),
    (
      feeFor(feeEstimate.priorityBucket.feerate, mass, baseFee),
      feeEstimate.priorityBucket.estimatedSeconds.toInt(),
    ),
  ].where((fee) => fee.$1.raw > BigInt.zero).toList();
  return fees;
});

final kasSymbolProvider = Provider((ref) {
  final network = ref.watch(networkProvider);

  return switch (network) {
    KaspaNetwork.mainnet => 'KAS',
    _ => 'TKAS',
  };
});

final symbolProvider = Provider.family<String, Amount>((ref, amount) {
  final kasSymbol = ref.watch(kasSymbolProvider);
  if (amount.tokenInfo.tokenId != TokenInfo.kaspa.tokenId) {
    return amount.symbolLabel;
  }

  return kasSymbol;
});
