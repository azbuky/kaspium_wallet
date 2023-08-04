import 'package:decimal/decimal.dart';
import 'package:decimal/intl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../app_providers.dart';
import '../coingecko/coingecko_providers.dart';
import '../kaspa/kaspa.dart';
import '../util/numberutil.dart';
import '../utxos/utxos_providers.dart';
import '../wallet_address/address_providers.dart';
import 'wallet_balance_notifier.dart';

final kaspaPriceProvider = Provider.autoDispose((ref) {
  return ref.watch(coinGeckoPriceProvider);
});

final _addressBalanceBoxProvider = Provider.autoDispose((ref) {
  final boxInfo = ref.watch(walletBoxInfoProvider);
  final db = ref.watch(dbProvider);

  final boxKey = boxInfo.balance.boxKey;
  final box = db.getTypedBox<AddressBalance>(boxKey);

  return box;
});

final balanceNotifierProvider = ChangeNotifierProvider.autoDispose((ref) {
  final balanceBox = ref.watch(_addressBalanceBoxProvider);
  final addressNotifier = ref.watch(addressNotifierProvider.notifier);
  ref.watch(kaspaClientProvider);

  final notifier = WalletBalanceNotifier(
    balanceBox: balanceBox,
    addressAware: addressNotifier,
  );

  ref.listen(
    allAddressesProvider,
    (previous, next) async {
      final log = ref.read(loggerProvider);
      final client = ref.read(kaspaClientProvider);

      final previousSet = Set.of(previous ?? <String>[]);
      final addresses = previousSet.isEmpty
          ? next
          : next.where((element) => !previousSet.contains(element));

      log.d('Refreshing address balances for $addresses');

      final balances = await client.getBalancesByAddresses(addresses);
      notifier.updateBalances(balances.map(AddressBalance.fromRpc));
    },
    fireImmediately: true,
    onError: (error, stackTrace) {
      final log = ref.read(loggerProvider);
      log.e('Failed to refresh balances', error);
    },
  );

  ref.listen(utxosChangedProvider, (previous, next) {
    final message = next.asData?.value;
    if (message == null) return;

    notifier.updateWithUtxoChanges(
      added: message.added.map(Utxo.fromRpc),
      removed: message.removed.map(Utxo.fromRpc),
    );
  });

  ref.onDispose(() {
    notifier.disposed = true;
  });

  return notifier;
});

final lastRefreshBalanceChangesProvider = Provider.autoDispose((ref) {
  final balanceNotifier = ref.watch(balanceNotifierProvider);
  return balanceNotifier.lastRefreshChanges;
});

final totalBalanceProvider = Provider.autoDispose((ref) {
  final totalBalance = ref.watch<Amount>(
    balanceNotifierProvider.select((value) => value.totalBalance),
  );
  return totalBalance;
});

final balanceForAddressProvider =
    Provider.family.autoDispose<Amount, String>((ref, address) {
  final notifier = ref.watch(balanceNotifierProvider);
  return notifier.balanceForAddress(address);
});

final formatedBalanceForAddressProvider =
    Provider.family.autoDispose<String, String>((ref, address) {
  final balance = ref.watch(balanceForAddressProvider(address));
  return NumberUtil.formatedAmount(balance);
});

final formatedTotalBalanceProvider = Provider.autoDispose((ref) {
  final balance = ref.watch(totalBalanceProvider);

  return NumberUtil.formatedAmount(balance);
});

final formatedTotalFiatProvider = Provider.autoDispose((ref) {
  final balance = ref.watch(totalBalanceProvider);
  final price = ref.watch(kaspaPriceProvider);
  final currency = ref.watch(currencyProvider);
  final fiat = balance.value * price.price;
  final decimals = fiat >= Decimal.parse('0.01')
      ? 2
      : fiat >= Decimal.parse('0.001')
          ? 3
          : 4;

  final formatter = NumberFormat.currency(
      symbol: currency.getCurrencySymbol(),
      name: currency.getIso4217Code(),
      decimalDigits: decimals);

  return formatter.format(DecimalIntl(fiat));
});

final totalBtcValueProvider = Provider.autoDispose((ref) {
  final price = ref.watch(kaspaPriceProvider);
  final balance = ref.watch(totalBalanceProvider);
  final value = balance.value * price.priceBtc;

  return value;
});

final formatedTotalBtcProvider = Provider.autoDispose((ref) {
  final btcBalance = ref.watch(totalBtcValueProvider);
  final decimals = btcBalance >= Decimal.parse('0.001')
      ? 4
      : btcBalance >= Decimal.parse('0.00001')
          ? 6
          : 8;
  return NumberFormat.currency(
    name: '',
    symbol: '',
    decimalDigits: decimals,
  ).format(DecimalIntl(btcBalance));
});

final fiatValueForAddressProvider =
    Provider.autoDispose.family<Decimal, String>((ref, address) {
  final price = ref.watch(kaspaPriceProvider);
  final balance = ref.watch(balanceForAddressProvider(address));

  return balance.value * price.price;
});

final formatedFiatForAddressProvider =
    Provider.autoDispose.family<String, String>((ref, address) {
  final balance = ref.watch(fiatValueForAddressProvider(address));
  final currency = ref.watch(currencyProvider);

  return NumberFormat.currency(
    symbol: currency.getCurrencySymbol(),
    name: currency.getIso4217Code(),
  ).format(DecimalIntl(balance));
});

final formatedFiatForAmountProvider =
    Provider.autoDispose.family<String, Amount>((ref, value) {
  final price = ref.watch(kaspaPriceProvider);
  final currency = ref.watch(currencyProvider);

  final fiatValue = value.value * price.price;
  return NumberFormat.currency(
    symbol: currency.getCurrencySymbol(),
    name: currency.getIso4217Code(),
  ).format(DecimalIntl(fiatValue));
});
