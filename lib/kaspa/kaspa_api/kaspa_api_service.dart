import 'package:collection/collection.dart';

import 'kaspa_api_base.dart';
import 'types.dart';

class KaspaApiService {
  final KaspaApi _api;
  const KaspaApiService(this._api);

  Future<int> getTxCountForAddress(
    String address, {
    int retryCount = 3,
    Duration retryDelay = const Duration(seconds: 1),
  }) {
    return _api.getTxCount(
      address: address,
      retryCount: retryCount,
      retryDelay: retryDelay,
    );
  }

  Future<List<ApiTxId>> getTxIdsForAddress(
    String address, {
    int pageSize = 500,
    int maxPages = 100,
    int retryCount = 3,
    Duration retryDelay = const Duration(seconds: 1),
  }) async {
    bool loadMore = true;
    int page = 0;
    final txIds = <ApiTxId>[];

    while (loadMore) {
      final txPage = await _api.getTxIdsForAddress(
        address,
        limit: pageSize,
        offset: page * pageSize,
        retryCount: retryCount,
        retryDelay: retryDelay,
      );
      txIds.addAll(txPage);

      page += 1;
      loadMore = txPage.length == pageSize && page < maxPages;
    }

    return txIds;
  }

  Future<List<ApiTransaction>> getTxsForAddress(
    String address, {
    ResolvePreviousOutpoints resolvePreviousOutpoints =
        ResolvePreviousOutpoints.light,
    int pageSize = 20,
    int maxPages = 100,
    required bool Function(List<ApiTransaction> txs) shouldLoadMore,
    int retryCount = 3,
    Duration retryDelay = const Duration(seconds: 1),
  }) async {
    bool loadMore = true;
    int page = 0;
    final txs = <ApiTransaction>[];

    while (loadMore) {
      final txPage = await _api.getTxsForAddress(
        address,
        resolvePreviousOutpoints: resolvePreviousOutpoints,
        limit: pageSize,
        offset: page * pageSize,
        retryCount: retryCount,
        retryDelay: retryDelay,
      );
      txs.addAll(txPage);

      page += 1;
      loadMore = txPage.length == pageSize &&
          shouldLoadMore(txPage) &&
          page < maxPages;
    }

    return txs;
  }

  Future<List<ApiTransaction>> getTxsWithIds(
    Iterable<String> ids, {
    ResolvePreviousOutpoints resolvePreviousOutpoints =
        ResolvePreviousOutpoints.light,
    int retryCount = 3,
    Duration retryDelay = const Duration(seconds: 1),
  }) async {
    final txs = <ApiTransaction>[];
    for (final idsSlice in ids.slices(10)) {
      final results = await _api.getTransactions(
        ids: idsSlice,
        resolvePreviousOutpoints: resolvePreviousOutpoints,
        retryCount: retryCount,
        retryDelay: retryDelay,
      );
      txs.addAll(results);
    }
    return txs;
  }

  Future<ApiTransaction?> getTxWithId(
    String id, {
    ResolvePreviousOutpoints resolvePreviousOutpoints =
        ResolvePreviousOutpoints.light,
    int retryCount = 3,
    Duration retryDelay = const Duration(seconds: 1),
  }) {
    return _api.getTransaction(
      id: id,
      resolvePreviousOutpoints: resolvePreviousOutpoints,
      retryCount: retryCount,
      retryDelay: retryDelay,
    );
  }
}
