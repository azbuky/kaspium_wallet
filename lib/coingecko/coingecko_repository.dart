import 'dart:convert';

import 'dart:developer';
import 'package:decimal/decimal.dart';
import 'package:http/http.dart' as http;

import '../settings/available_currency.dart';
import 'coingecko_types.dart';

abstract class CoinGeckoRepository {
  Future<CoinGeckoPrice> fetchPrice(AvailableCurrency fiat);
  Future<CoinGeckoRates> fetchRates();
}

coinGeckoRepository<CoinGeckoRepository>() {
  return CoinGeckoRepositoryImpl(http.Client());
}

class CoinGeckoRepositoryImpl implements CoinGeckoRepository {

  final client;
  CoinGeckoRepositoryImpl(this.client) {}

  @override
  Future<CoinGeckoPrice> fetchPrice(final AvailableCurrency availableCurrency) async {
    final fiat = availableCurrency.currency.name.toLowerCase();
    final defaultPriceOnError = CoinGeckoPrice(
      currency: availableCurrency.currency,
      price: Decimal.zero,
      priceBtc: Decimal.zero,
    );

    try {
      final uri = Uri.parse(
          'https://api.coingecko.com/api/v3/simple/price?ids=kaspa&vs_currencies=$fiat,btc');
      final response = await client.get(uri, headers: { 'Accept': 'application/json',});

      if (response.statusCode != 200) {
        return Future(() => defaultPriceOnError);
      }
      log("Received CoinGecko response code: '${response.statusCode}'");
      log("Received CoinGecko response body: '${response.body}'");

      final data = json.decode(response.body);
      if (data is! Map) {
        throw Exception('Returned data is not a Map');
      }
      final rates = data['kaspa'] as Map<String, dynamic>;
      final price = rates[fiat] as num;
      final priceBtc = rates['btc'] as num;
      return CoinGeckoPrice(
        currency: availableCurrency.currency,
        price: Decimal.parse(price.toString()),
        priceBtc: Decimal.parse(priceBtc.toString()),
      );
    } catch (e, st) {
      log('Failed to fetch CoinGecko exchange rates', error:  e, stackTrace: st);
      return Future(() => defaultPriceOnError);
    }
  }

  @override
  Future<CoinGeckoRates> fetchRates() async {
    final uri = Uri.parse('https://api.coingecko.com/api/v3/exchange_rates');
    final response = await client.get(uri);

    if (response.statusCode != 200) {
      return CoinGeckoRates();
    }

    try {
      final data = json.decode(response.body);
      if (data is! Map) {
        throw Exception('Returned data is not a Map');
      }
      final rates = CoinGeckoRates.fromJson(data.cast<String, dynamic>());
      return rates;
    } catch (e, st) {
      log('Failed to fetch CoinGecko exchange rates', error: e, stackTrace: st);
      return CoinGeckoRates();
    }
  }
}
