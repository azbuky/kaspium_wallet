import 'types.dart';

export 'kaspa_api_mainnet.dart';

enum ResolvePreviousOutpoints {
  no,
  light,
  full,
}

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

  @Deprecated('Use getTxIdsForAddress instead')
  Future<List<ApiTxLink>> getTxLinks({
    required String address,
    int retryCount,
    Duration retryDelay,
  });

  Future<int> getTxCount({
    required String address,
    int retryCount,
    Duration retryDelay,
  });

  Future<List<ApiTxId>> getTxIdsForAddress(
    String address, {
    int limit,
    int offset,
    int retryCount,
    Duration retryDelay,
  });

  Future<List<ApiTransaction>> getTxsForAddress(
    String address, {
    ResolvePreviousOutpoints resolvePreviousOutpoints,
    int limit,
    int offset,
    int retryCount,
    Duration retryDelay,
  });

  Future<ApiTransaction> getTransaction({
    required String id,
    ResolvePreviousOutpoints resolvePreviousOutpoints,
    int retryCount,
    Duration retryDelay,
  });

  Future<List<ApiTransaction>> getTransactions({
    required Iterable<String> ids,
    ResolvePreviousOutpoints resolvePreviousOutpoints,
    int retryCount,
    Duration retryDelay,
  });
}
