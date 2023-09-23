import 'dart:convert';

import 'package:http/http.dart' as http;

import 'kaspa_api.dart';
import 'types.dart';

class KaspaApiMainnet implements KaspaApi {
  final String baseUrl;

  KaspaApiMainnet(this.baseUrl);

  Future<ApiAddressBalance> getBalance({
    required String address,
    int retryCount = 3,
    Duration retryDelay = const Duration(seconds: 1),
  }) async {
    final url = '$baseUrl/addresses/$address/balance';

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode != 200) {
        throw Exception('Failed to get balance');
      }
      final data = json.decode(response.body);
      final addressBalance = ApiAddressBalance.fromJson(data);
      return addressBalance;
    } catch (_) {
      if (retryCount == 0) {
        rethrow;
      }

      await Future.delayed(retryDelay);
      return getBalance(
        address: address,
        retryCount: retryCount - 1,
        retryDelay: retryDelay,
      );
    }
  }

  Future<List<ApiUtxo>> getUtxos({
    required String address,
    int retryCount = 3,
    Duration retryDelay = const Duration(seconds: 1),
  }) async {
    final url = '$baseUrl/addresses/$address/utxos';

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final utxos = (data as List).map((e) => ApiUtxo.fromJson(e)).toList();
        return utxos;
      } else {
        throw Exception('Failed to get utxos');
      }
    } catch (e) {
      if (retryCount == 0) {
        rethrow;
      }

      await Future.delayed(retryDelay);
      return getUtxos(
        address: address,
        retryCount: retryCount - 1,
        retryDelay: retryDelay,
      );
    }
  }

  Future<List<ApiTxLink>> getTxLinks({
    required String address,
    int retryCount = 3,
    Duration retryDelay = const Duration(seconds: 1),
  }) async {
    final url = '$baseUrl/addresses/$address/transactions';

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final txLinks = (data['transactions'] as List)
            .map((e) => ApiTxLink.fromJson(e))
            .toList();
        return txLinks;
      } else {
        throw Exception('Failed to get transactions');
      }
    } catch (e) {
      if (retryCount == 0) {
        rethrow;
      }

      await Future.delayed(retryDelay);
      return getTxLinks(
        address: address,
        retryCount: retryCount - 1,
        retryDelay: retryDelay,
      );
    }
  }

  Future<ApiTransaction> getTransaction({
    required String id,
    ResolvePreviousOutpoints resolvePreviousOutpoints =
        ResolvePreviousOutpoints.light,
    int retryCount = 3,
    Duration retryDelay = const Duration(seconds: 1),
  }) async {
    final url =
        '$baseUrl/transactions/$id?resolve_previous_outpoints=${resolvePreviousOutpoints.name}';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode != 200) {
        throw Exception('Failed to get transaction');
      }

      final data = json.decode(response.body);
      final transaction = ApiTransaction.fromJson(data);
      return transaction;
    } catch (_) {
      if (retryCount == 0) {
        rethrow;
      }

      await Future.delayed(retryDelay);
      return getTransaction(
        id: id,
        retryCount: retryCount - 1,
        retryDelay: retryDelay,
      );
    }
  }

  Future<List<ApiTransaction>> getTransactions({
    required Iterable<String> ids,
    ResolvePreviousOutpoints resolvePreviousOutpoints =
        ResolvePreviousOutpoints.light,
    int retryCount = 3,
    Duration retryDelay = const Duration(seconds: 1),
  }) async {
    final url =
        '$baseUrl/transactions/search?resolve_previous_outpoints=${resolvePreviousOutpoints.name}';
    final body = json.encode({'transactionIds': ids.toList()});

    try {
      final response = await http.post(Uri.parse(url), body: body, headers: {
        'Content-Type': 'application/json',
      });
      if (response.statusCode != 200) {
        throw Exception('Failed to get transactions');
      }
      final data = json.decode(response.body);
      final transactions =
          (data as List).map((e) => ApiTransaction.fromJson(e)).toList();
      return transactions;
    } catch (_) {
      if (retryCount == 0) {
        rethrow;
      }

      await Future.delayed(retryDelay);
      return getTransactions(
        ids: ids,
        retryCount: retryCount - 1,
        retryDelay: retryDelay,
      );
    }
  }

  Future<List<ApiTransaction>> getTxsForAddress(
    String address, {
    ResolvePreviousOutpoints resolvePreviousOutpoints =
        ResolvePreviousOutpoints.light,
    int limit = 100,
    int offset = 0,
    int retryCount = 3,
    Duration retryDelay = const Duration(seconds: 1),
  }) async {
    final params = [
      'limit=$limit',
      'offset=$offset',
      'resolve_previous_outpoints=${resolvePreviousOutpoints.name}',
    ];
    final url =
        '$baseUrl/addresses/$address/full-transactions?${params.join('&')}';

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final txs =
            (data as List).map((e) => ApiTransaction.fromJson(e)).toList();
        return txs;
      } else {
        throw Exception('Failed to get transactions');
      }
    } catch (e) {
      if (retryCount == 0) {
        rethrow;
      }

      await Future.delayed(retryDelay);
      return getTxsForAddress(
        address,
        limit: limit,
        offset: offset,
        retryCount: retryCount - 1,
        retryDelay: retryDelay,
      );
    }
  }

  Future<int> getTxCount({
    required String address,
    int retryCount = 3,
    Duration retryDelay = const Duration(seconds: 1),
  }) async {
    final url = '$baseUrl/addresses/$address/transactions-count';

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        if (data case {'total': int count}) {
          return count;
        }
      }
      throw Exception('Failed to get transactions count');
    } catch (e) {
      if (retryCount == 0) {
        rethrow;
      }

      await Future.delayed(retryDelay);
      return getTxCount(
        address: address,
        retryCount: retryCount - 1,
        retryDelay: retryDelay,
      );
    }
  }

  Future<List<ApiTxId>> getTxIdsForAddress(
    String address, {
    int limit = 500,
    int offset = 0,
    int retryCount = 3,
    Duration retryDelay = const Duration(seconds: 1),
  }) async {
    final params = [
      'limit=$limit',
      'offset=$offset',
      'fields=transaction_id,block_time',
      'resolve_previous_outpoints=no',
    ];
    final url =
        '$baseUrl/addresses/$address/full-transactions?${params.join("&")}';

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final txs = (data as List).map((e) => ApiTxId.fromJson(e)).toList();
        return txs;
      } else {
        throw Exception('Failed to get tx ids');
      }
    } catch (e) {
      if (retryCount == 0) {
        rethrow;
      }

      await Future.delayed(retryDelay);
      return getTxIdsForAddress(
        address,
        limit: limit,
        offset: offset,
        retryCount: retryCount - 1,
        retryDelay: retryDelay,
      );
    }
  }
}
