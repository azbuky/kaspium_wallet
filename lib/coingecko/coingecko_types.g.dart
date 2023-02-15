// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coingecko_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CoinGeckoPrice _$$_CoinGeckoPriceFromJson(Map json) => _$_CoinGeckoPrice(
      currency: $enumDecode(_$AvailableCurrenciesEnumMap, json['currency']),
      price: Decimal.fromJson(json['price'] as String),
      priceBtc: Decimal.fromJson(json['priceBtc'] as String),
    );

Map<String, dynamic> _$$_CoinGeckoPriceToJson(_$_CoinGeckoPrice instance) =>
    <String, dynamic>{
      'currency': _$AvailableCurrenciesEnumMap[instance.currency]!,
      'price': instance.price.toJson(),
      'priceBtc': instance.priceBtc.toJson(),
    };

const _$AvailableCurrenciesEnumMap = {
  AvailableCurrencies.USD: 'USD',
  AvailableCurrencies.ARS: 'ARS',
  AvailableCurrencies.AUD: 'AUD',
  AvailableCurrencies.BRL: 'BRL',
  AvailableCurrencies.CAD: 'CAD',
  AvailableCurrencies.CHF: 'CHF',
  AvailableCurrencies.CLP: 'CLP',
  AvailableCurrencies.CNY: 'CNY',
  AvailableCurrencies.CZK: 'CZK',
  AvailableCurrencies.DKK: 'DKK',
  AvailableCurrencies.EUR: 'EUR',
  AvailableCurrencies.GBP: 'GBP',
  AvailableCurrencies.UAH: 'UAH',
  AvailableCurrencies.HKD: 'HKD',
  AvailableCurrencies.HUF: 'HUF',
  AvailableCurrencies.IDR: 'IDR',
  AvailableCurrencies.ILS: 'ILS',
  AvailableCurrencies.INR: 'INR',
  AvailableCurrencies.JPY: 'JPY',
  AvailableCurrencies.KRW: 'KRW',
  AvailableCurrencies.KWD: 'KWD',
  AvailableCurrencies.MXN: 'MXN',
  AvailableCurrencies.MYR: 'MYR',
  AvailableCurrencies.NOK: 'NOK',
  AvailableCurrencies.NZD: 'NZD',
  AvailableCurrencies.PHP: 'PHP',
  AvailableCurrencies.PKR: 'PKR',
  AvailableCurrencies.PLN: 'PLN',
  AvailableCurrencies.RUB: 'RUB',
  AvailableCurrencies.SAR: 'SAR',
  AvailableCurrencies.SEK: 'SEK',
  AvailableCurrencies.SGD: 'SGD',
  AvailableCurrencies.THB: 'THB',
  AvailableCurrencies.TRY: 'TRY',
  AvailableCurrencies.TWD: 'TWD',
  AvailableCurrencies.AED: 'AED',
  AvailableCurrencies.ZAR: 'ZAR',
  AvailableCurrencies.VND: 'VND',
};

_$_CoinGeckoRate _$$_CoinGeckoRateFromJson(Map json) => _$_CoinGeckoRate(
      name: json['name'] as String,
      unit: json['unit'] as String,
      value: (json['value'] as num).toDouble(),
      type: json['type'] as String,
    );

Map<String, dynamic> _$$_CoinGeckoRateToJson(_$_CoinGeckoRate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'unit': instance.unit,
      'value': instance.value,
      'type': instance.type,
    };

_$_CoinGeckoRates _$$_CoinGeckoRatesFromJson(Map json) => _$_CoinGeckoRates(
      rates: (json['rates'] as Map?)?.map(
            (k, e) => MapEntry(k as String,
                CoinGeckoRate.fromJson(Map<String, dynamic>.from(e as Map))),
          ) ??
          const {},
    );

Map<String, dynamic> _$$_CoinGeckoRatesToJson(_$_CoinGeckoRates instance) =>
    <String, dynamic>{
      'rates': instance.rates.map((k, e) => MapEntry(k, e.toJson())),
    };
