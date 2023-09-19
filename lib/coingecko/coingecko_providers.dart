import 'dart:convert';

import 'package:decimal/decimal.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

import '../core/core_providers.dart';
import '../settings/settings_providers.dart';
import 'coingecko_price_notifier.dart';
import 'coingecko_types.dart';

final _kaspaPriceCacheProvider =
    StateNotifierProvider<CoinGeckoPriceNotifier, CoinGeckoPrice>((ref) {
  final repository = ref.watch(settingsRepositoryProvider);
  return CoinGeckoPriceNotifier(repository);
});

final _kaspaPriceRemoteProvider = FutureProvider<CoinGeckoPrice>((ref) async {
  ref.watch(remoteRefreshProvider);

  final currency = ref.watch(currencyProvider);
  final fiat = currency.getIso4217Code().toLowerCase();

  final log = ref.read(loggerProvider);
  final cached = ref.read(_kaspaPriceCacheProvider);

  final uri = Uri.parse(
      'https://api.coingecko.com/api/v3/simple/price?ids=kaspa&vs_currencies=$fiat,btc');
  final response = await http.get(uri, headers: {
    'Accept': 'application/json',
  });

  if (response.statusCode != 200) {
    return cached;
  }

  try {
    final data = json.decode(response.body);
    if (data is! Map) {
      throw Exception('Returned data is not a Map');
    }
    final rates = data['kaspa'] as Map<String, dynamic>;
    final price = rates[fiat] as num;
    final priceBtc = rates['btc'] as num;
    return CoinGeckoPrice(
      currency: currency.currency,
      price: Decimal.parse(price.toString()),
      priceBtc: Decimal.parse(priceBtc.toString()),
    );
  } catch (e, st) {
    log.e('Failed to fetch CoinGecko exchange rates', e, st);
    return cached;
  }
});

final coingeckoKaspaPriceProvider = Provider.autoDispose((ref) {
  final cache = ref.watch(_kaspaPriceCacheProvider.notifier);
  final remote = ref.watch(_kaspaPriceRemoteProvider);

  remote.whenOrNull(data: (data) {
    Future.microtask(() => cache.updatePrice(data));
  });

  return remote.asData?.value ?? cache.price;
});
