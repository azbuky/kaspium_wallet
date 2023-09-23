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
