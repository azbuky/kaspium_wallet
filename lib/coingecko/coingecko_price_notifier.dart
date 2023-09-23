import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import 'coingecko_types.dart';

const _kCoinGeckoPriceKey = '_coingeckoPriceKey';

extension CoinGeckoPriceExtension on SettingsRepository {
  CoinGeckoPrice getCoinGeckoPrice() {
    return box.tryGet(
          _kCoinGeckoPriceKey,
          typeFactory: CoinGeckoPrice.fromJson,
        ) ??
        CoinGeckoPrice.empty;
  }

  Future<void> setCoinGeckoPrice(CoinGeckoPrice price) {
    return box.set(_kCoinGeckoPriceKey, price);
  }
}

class CoinGeckoPriceNotifier extends StateNotifier<CoinGeckoPrice> {
  final SettingsRepository repository;

  CoinGeckoPrice get price => state;

  CoinGeckoPriceNotifier(this.repository)
      : super(repository.getCoinGeckoPrice());

  Future<void> updatePrice(CoinGeckoPrice price) {
    state = price;
    return repository.setCoinGeckoPrice(price);
  }
}
