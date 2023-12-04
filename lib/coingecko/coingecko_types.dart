import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../settings/available_currency.dart';

part 'coingecko_types.freezed.dart';
part 'coingecko_types.g.dart';

@freezed
class CoinGeckoPrice with _$CoinGeckoPrice {
  const CoinGeckoPrice._();
  const factory CoinGeckoPrice({
    required AvailableCurrencies currency,
    required Decimal price,
    // in milliseconds since epoch
    @Default(0) int timestamp,
  }) = _CoinGeckoPrice;

  factory CoinGeckoPrice.fromJson(Map<String, dynamic> json) =>
      _$CoinGeckoPriceFromJson(json);

  static CoinGeckoPrice empty = CoinGeckoPrice(
    currency: AvailableCurrencies.USD,
    price: Decimal.zero,
    timestamp: 0,
  );
}
