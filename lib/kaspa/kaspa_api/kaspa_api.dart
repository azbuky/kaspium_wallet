import 'dart:convert';

import 'package:http/http.dart' as http;

import 'types.dart';

abstract class KaspaApi {
  Future<ApiAddressBalance> getBalance({
    required String address,
    int retryCount,
    Duration retryDelay,
  });

  Future<List<ApiUtxo>> getUtxos({
    required String address,
    int retryCount,
    Duration retryDelay,
  });

  Future<List<ApiTxLink>> getTxLinks({
    required String address,
    int retryCount,
    Duration retryDelay,
  });

  Future<List<ApiTransaction>> getTxsForAddress(
    String address, {
    int limit,
    int offset,
    int retryCount,
    Duration retryDelay,
  });

  Future<int> getTxCount({
    required String address,
    int retryCount,
    Duration retryDelay,
  });

  Future<ApiTransaction> getTransaction({
    required String id,
    int retryCount,
    Duration retryDelay,
  });

  Future<List<ApiTransaction>> getTransactions({
    required Iterable<String> ids,
    int retryCount,
    Duration retryDelay,
  });
}

class EmptyKaspaApi implements KaspaApi {
  @override
  Future<ApiAddressBalance> getBalance({
    required String address,
    int retryCount = 3,
    Duration retryDelay = const Duration(seconds: 1),
  }) async {
    return ApiAddressBalance(address: address, balance: 0);
  }

  @override
  Future<ApiTransaction> getTransaction({
    required String id,
    int retryCount = 3,
    Duration retryDelay = const Duration(seconds: 1),
  }) async {
    return ApiTransaction(
      transactionId: id,
      blockTime: 0,
      isAccepted: false,
      inputs: [],
      outputs: [],
    );
  }

  @override
  Future<List<ApiTransaction>> getTransactions({
    required Iterable<String> ids,
    int retryCount = 3,
    Duration retryDelay = const Duration(seconds: 1),
  }) async {
    return [];
  }

  @override
  Future<List<ApiTxLink>> getTxLinks({
    required String address,
    int retryCount = 3,
    Duration retryDelay = const Duration(seconds: 1),
  }) async {
    return [];
  }

  @override
  Future<List<ApiUtxo>> getUtxos({
    required String address,
    int retryCount = 3,
    Duration retryDelay = const Duration(seconds: 1),
  }) async {
    return [];
  }

  Future<int> getTxCount({
    required String address,
    int retryCount = 3,
    Duration retryDelay = const Duration(seconds: 1),
  }) async {
    return 0;
  }

  Future<List<ApiTransaction>> getTxsForAddress(
    String address, {
    int limit = 100,
    int offset = 0,
    int retryCount = 3,
    Duration retryDelay = const Duration(seconds: 1),
  }) async {
    return [];
  }
}

class MainnetKaspaApi implements KaspaApi {
  final String baseUrl;

  MainnetKaspaApi(this.baseUrl);

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

  Future<List<ApiTransaction>> getTxsForAddress(
    String address, {
    int limit = 100,
    int offset = 0,
    int retryCount = 3,
    Duration retryDelay = const Duration(seconds: 1),
  }) async {
    final url =
        '$baseUrl/addresses/$address/full-transactions?limit=$limit&offset=$offset';

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
        final count = data['total'];
        return count;
      } else {
        throw Exception('Failed to get transactions count');
      }
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

  Future<ApiTransaction> getTransaction({
    required String id,
    int retryCount = 3,
    Duration retryDelay = const Duration(seconds: 1),
  }) async {
    final url = '$baseUrl/transactions/$id';
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
    int retryCount = 3,
    Duration retryDelay = const Duration(seconds: 1),
  }) async {
    final url = '$baseUrl/transactions/search';
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
}
