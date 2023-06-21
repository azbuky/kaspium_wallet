import 'package:kaspium_wallet/kaspa/kaspa.dart';

class KaspaApiService {
  final KaspaApi api;
  const KaspaApiService(this.api);

  Future<List<ApiTxId>> getAllTxIdsForAddress(
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
      final txPage = await api.getTxIdsForAddress(
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

  Future<List<ApiTransaction>> getAllTxsForAddress(
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
      final txPage = await api.getTxsForAddress(
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
}
