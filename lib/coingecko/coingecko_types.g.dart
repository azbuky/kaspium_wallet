// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coingecko_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoinGeckoPriceImpl _$$CoinGeckoPriceImplFromJson(Map json) =>
    _$CoinGeckoPriceImpl(
      currency: $enumDecode(_$AvailableCurrenciesEnumMap, json['currency']),
      price: Decimal.fromJson(json['price'] as String),
      timestamp: json['timestamp'] as int? ?? 0,
    );

Map<String, dynamic> _$$CoinGeckoPriceImplToJson(
        _$CoinGeckoPriceImpl instance) =>
    <String, dynamic>{
      'currency': _$AvailableCurrenciesEnumMap[instance.currency]!,
      'price': instance.price.toJson(),
      'timestamp': instance.timestamp,
    };

const _$AvailableCurrenciesEnumMap = {
  AvailableCurrencies.USD: 'USD',
  AvailableCurrencies.BTC: 'BTC',
  AvailableCurrencies.ARS: 'ARS',
  AvailableCurrencies.AUD: 'AUD',
  AvailableCurrencies.BDT: 'BDT',
  AvailableCurrencies.BHD: 'BHD',
  AvailableCurrencies.BMD: 'BMD',
  AvailableCurrencies.BRL: 'BRL',
  AvailableCurrencies.CAD: 'CAD',
  AvailableCurrencies.CHF: 'CHF',
  AvailableCurrencies.CLP: 'CLP',
  AvailableCurrencies.CNY: 'CNY',
  AvailableCurrencies.CZK: 'CZK',
  AvailableCurrencies.DKK: 'DKK',
  AvailableCurrencies.EUR: 'EUR',
  AvailableCurrencies.GBP: 'GBP',
  AvailableCurrencies.HKD: 'HKD',
  AvailableCurrencies.HUF: 'HUF',
  AvailableCurrencies.IDR: 'IDR',
  AvailableCurrencies.ILS: 'ILS',
  AvailableCurrencies.INR: 'INR',
  AvailableCurrencies.JPY: 'JPY',
  AvailableCurrencies.KRW: 'KRW',
  AvailableCurrencies.KWD: 'KWD',
  AvailableCurrencies.LKR: 'LKR',
  AvailableCurrencies.MMK: 'MMK',
  AvailableCurrencies.MXN: 'MXN',
  AvailableCurrencies.MYR: 'MYR',
  AvailableCurrencies.NGN: 'NGN',
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
  AvailableCurrencies.UAH: 'UAH',
  AvailableCurrencies.VEF: 'VEF',
  AvailableCurrencies.VND: 'VND',
  AvailableCurrencies.ZAR: 'ZAR',
};
