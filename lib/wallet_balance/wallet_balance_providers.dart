import 'package:decimal/decimal.dart';
import 'package:decimal/intl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../coingecko/coingecko_providers.dart';
import '../core/core_providers.dart';
import '../kaspa/kaspa.dart';
import '../settings/settings_providers.dart';
import '../util/formatters.dart';
import '../util/numberutil.dart';
import '../utxos/utxos_providers.dart';
import '../wallet_address/wallet_address_providers.dart';
import '../wallet_auth/wallet_auth_providers.dart';
import 'wallet_balance_notifier.dart';

final kaspaPriceProvider = Provider.autoDispose((ref) {
  return ref.watch(coingeckoKaspaPriceProvider);
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
  final client = ref.watch(kaspaClientProvider);

  final notifier = WalletBalanceNotifier(
    balanceBox: balanceBox,
    addressAware: addressNotifier,
    client: client,
  );

  // Listen to address changes and refresh balances
  ref.listen(
    allAddressesProvider,
    (previous, next) async {
      final previousSet = Set.of(previous ?? <String>[]);
      final addresses = previousSet.isEmpty
          ? next
          : next.where((address) => !previousSet.contains(address));

      final log = ref.read(loggerProvider);
      log.d('Refreshing balances for $addresses');
      await notifier.refresh(addresses);
    },
    fireImmediately: true,
    onError: (error, _) {
      final log = ref.read(loggerProvider);
      log.e('Failed to refresh balances', error: error);
    },
  );

  ref.listen(utxosChangedProvider, (_, next) async {
    if (next.asData?.value case final message?) {
      final addresses = Set.of(message.removed
          .followedBy(message.added)
          .map((utxo) => utxo.address));
      await notifier.refresh(addresses);
    }
  });

  ref.onDispose(() {
    notifier.disposed = true;
  });

  return notifier;
});

final lastBalanceChangesProvider = Provider.autoDispose((ref) {
  final lastRefresh = ref.watch(
    balanceNotifierProvider.select((value) => value.lastRefreshChanges),
  );
  return lastRefresh;
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
  final decimals = fiat >= Decimal.parse('1')
      ? 2
      : fiat >= Decimal.parse('0.01')
          ? 4
          : fiat >= Decimal.parse('0.0001')
              ? 6
              : 8;

  final formatter = NumberFormat.currency(
    symbol: currency.symbol,
    name: currency.name,
    decimalDigits: decimals,
  );

  final decimalFormatter = DecimalFormatter(formatter);
  return decimalFormatter.format(fiat);
});

final formatedKaspaPriceProvider = Provider.autoDispose((ref) {
  final price = ref.watch(kaspaPriceProvider).price;
  final currency = ref.watch(currencyProvider);
  final decimals = price >= Decimal.parse('1')
      ? 2
      : price >= Decimal.parse('0.01')
          ? 4
          : price >= Decimal.parse('0.0001')
              ? 6
              : 8;

  final formatter = NumberFormat.currency(
    symbol: currency.symbol,
    name: currency.name,
    decimalDigits: decimals,
  );
  final decimalFormatter = DecimalFormatter(formatter);
  final priceStr = decimalFormatter.format(price);

  return '$priceStr / KAS';
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

  final formatter = NumberFormat.currency(
    symbol: currency.symbol,
    name: currency.name,
  );
  final decimalFormatter = DecimalFormatter(formatter);
  return decimalFormatter.format(balance);
});

final formatedFiatForAmountProvider =
    Provider.autoDispose.family<String, Amount>((ref, value) {
  final price = ref.watch(kaspaPriceProvider);
  final currency = ref.watch(currencyProvider);

  final fiatValue = value.value * price.price;

  final formatter = NumberFormat.currency(
    symbol: currency.symbol,
    name: currency.name,
  );
  final decimalFormatter = DecimalFormatter(formatter);
  return decimalFormatter.format(fiatValue);
});

final fiatForAmountProvider =
    Provider.autoDispose.family<String, Amount>((ref, value) {
  final price = ref.watch(kaspaPriceProvider);
  final currency = ref.watch(currencyProvider);

  final fiatValue = value.value * price.price;
  if (fiatValue == Decimal.zero) {
    return '0';
  }
  final formatter = NumberFormat.currency(
    symbol: currency.symbol,
    name: currency.name,
  );
  final decimalFormatter = DecimalFormatter(formatter);
  return decimalFormatter
      .format(fiatValue)
      .replaceAll(formatter.currencySymbol, '');
});

final kaspaFormatterProvider = Provider((ref) {
  final format = NumberFormat.currency(name: '', symbol: 'KAS');
  final formatter = CurrencyFormatter(
    groupSeparator: format.symbols.GROUP_SEP,
    decimalSeparator: format.symbols.DECIMAL_SEP,
    maxDecimalDigits: TokenInfo.kaspa.decimals,
    maxAmount: kMaxKaspa,
  );

  return formatter;
});

final fiatFormatterProvider = Provider.autoDispose((ref) {
  final price = ref.watch(kaspaPriceProvider);
  final currency = ref.watch(currencyProvider);
  final maxAmount = price.price * kMaxKaspa;

  final format = NumberFormat.currency(
    name: currency.name,
    symbol: currency.symbol,
  );
  final formatter = CurrencyFormatter(
    groupSeparator: format.symbols.GROUP_SEP,
    decimalSeparator: format.symbols.DECIMAL_SEP,
    maxDecimalDigits: format.decimalDigits ?? 2,
    maxAmount: maxAmount,
  );

  return formatter;
});
