import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../settings/available_currency.dart';

part 'coingecko_types.freezed.dart';
part 'coingecko_types.g.dart';

@freezed
class CoinGeckoPrice with _$CoinGeckoPrice {
  const factory CoinGeckoPrice({
    required AvailableCurrencies currency,
    required Decimal price,
    required Decimal priceBtc,
  }) = _CoinGeckoPrice;

  factory CoinGeckoPrice.fromJson(Map<String, dynamic> json) =>
      _$CoinGeckoPriceFromJson(json);
}

@freezed
class CoinGeckoRate with _$CoinGeckoRate {
  const factory CoinGeckoRate({
    required String name,
    required String unit,
    required double value,
    required String type,
  }) = _CoinGeckoRate;

  factory CoinGeckoRate.fromJson(Map<String, dynamic> json) =>
      _$CoinGeckoRateFromJson(json);
}

@freezed
class CoinGeckoRates with _$CoinGeckoRates {
  const CoinGeckoRates._();
  const factory CoinGeckoRates({
    @Default(const {}) Map<String, CoinGeckoRate> rates,
  }) = _CoinGeckoRates;

  factory CoinGeckoRates.fromJson(Map<String, dynamic> json) =>
      _$CoinGeckoRatesFromJson(json);

  Decimal fiatRate(AvailableCurrencies currency) {
    final key = currency.name.toLowerCase();
    final rate = rates[key]?.value.toStringAsFixed(3) ?? '0';
    return Decimal.parse(rate);
  }
}
