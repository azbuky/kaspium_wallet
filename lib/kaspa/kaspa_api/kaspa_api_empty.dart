import 'kaspa_api_base.dart';
import 'types.dart';

class KaspaApiEmpty implements KaspaApi {
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
    ResolvePreviousOutpoints resolvePreviousOutpoints =
        ResolvePreviousOutpoints.light,
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
    ResolvePreviousOutpoints resolvePreviousOutpoints =
        ResolvePreviousOutpoints.light,
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

  Future<List<ApiTxId>> getTxIdsForAddress(
    String address, {
    int limit = 500,
    int offset = 100,
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
    ResolvePreviousOutpoints resolvePreviousOutpoints =
        ResolvePreviousOutpoints.light,
    int limit = 100,
    int offset = 0,
    int retryCount = 3,
    Duration retryDelay = const Duration(seconds: 1),
  }) async {
    return [];
  }

  Future<List<ApiTransaction>> getAllTxsForAddress(
    String address, {
    ResolvePreviousOutpoints resolvePreviousOutpoints =
        ResolvePreviousOutpoints.light,
    int pageSize = 100,
    int maxPages = 100,
    required bool Function(List<ApiTransaction> txs) shouldLoadMore,
    int retryCount = 3,
    Duration retryDelay = const Duration(seconds: 1),
  }) async {
    return [];
  }
}
