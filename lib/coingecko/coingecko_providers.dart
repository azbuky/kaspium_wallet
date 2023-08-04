import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:decimal/decimal.dart';

import '../app_providers.dart';
import '../settings/available_currency.dart';

import 'coingecko_types.dart';
import 'coingecko_repository.dart';

final _coinGeckoPriceCacheProvider = StateProvider<CoinGeckoPrice>((ref) {
  return CoinGeckoPrice(
    currency: AvailableCurrencies.USD,
    price: Decimal.zero,
    priceBtc: Decimal.zero,
  );
});

final _coinGeckoRemotePriceProvider = FutureProvider((ref) async {
  ref.watch(remoteRefreshProvider);
  final currency = ref.watch(currencyProvider);
  final coinGeckoRepo = ref.watch(coinGeckoRepositoryProvider);

  return coinGeckoRepo.fetchPrice(currency);
});

final coinGeckoPriceProvider = Provider.autoDispose((ref) {
  final cache = ref.watch(_coinGeckoPriceCacheProvider.notifier);
  final remotePrice = ref.watch(_coinGeckoRemotePriceProvider);

  remotePrice.whenOrNull(data: (data) {
    Future.delayed(
      Duration.zero,
          () => cache.state = data,
    );
  });

  return remotePrice.asData?.value ?? cache.state;
});
