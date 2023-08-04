
import 'package:decimal/decimal.dart';
import 'package:kaspium_wallet/coingecko/coingecko_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:kaspium_wallet/settings/available_currency.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'coingecko_repository_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {

  test('CoinGecko 200 response', () async {
    // Given
    final client = MockClient();
    final currency = AvailableCurrency(AvailableCurrencies.CHF);
    when(client
        .get(Uri.parse('https://api.coingecko.com/api/v3/simple/price?ids=kaspa&vs_currencies=chf,btc'), headers: { 'Accept': 'application/json',}))
        .thenAnswer((_) async =>
        http.Response('{"kaspa" : {"chf": 5, "btc": 0.1}}', 200));

    // When
    final coinGeckoPrice = await CoinGeckoRepositoryImpl(client).fetchPrice(currency);

    // Then
    expect(coinGeckoPrice.price, equals(Decimal.parse("5")));
    expect(coinGeckoPrice.priceBtc, equals(Decimal.parse("0.1")));
    expect(coinGeckoPrice.currency, equals(AvailableCurrencies.CHF));
  });

  test('CoinGecko error response', () async {
    // Given
    final client = MockClient();
    final currency = AvailableCurrency(AvailableCurrencies.CHF);
    when(client
        .get(Uri.parse('https://api.coingecko.com/api/v3/simple/price?ids=kaspa&vs_currencies=chf,btc'), headers: { 'Accept': 'application/json',}))
        .thenAnswer((_) async =>
        http.Response('{"error":"Some error"}', 400));

    // When
    final coinGeckoPrice = await CoinGeckoRepositoryImpl(client).fetchPrice(currency);

    // Then
    expect(coinGeckoPrice.price, equals(Decimal.parse("0")));
    expect(coinGeckoPrice.priceBtc, equals(Decimal.parse("0")));
    expect(coinGeckoPrice.currency, equals(AvailableCurrencies.CHF));
  });

}
