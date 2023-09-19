import 'dart:async';

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:logger/logger.dart';

import '../kaspa/kaspa.dart';
import '../util/safe_change_notifier.dart';
import 'transaction_types.dart';
import 'tx_cache_service.dart';

class TransactionNotifier extends SafeChangeNotifier {
  final TxCacheService cache;

  KaspaApiService get api => cache.api;
  Logger get log => cache.log;

  var loadedTxs = IList<Tx>();
  bool get hasMore => loadedTxs.length < cache.txCount;

  bool _loading = false;
  bool get loading => _loading;
  String? _lastLoadedTxId;

  bool _firstLoad = true;
  bool get firstLoad => _firstLoad;

  TransactionNotifier({required this.cache});

  void addToMemcache(ApiTransaction tx) {
    // Don't cache coinbase transactions
    if (tx.inputs.isEmpty) {
      return;
    }
    cache.addToMemcache(tx);
  }

  Future<void> addWalletTx(ApiTransaction apiTx) async {
    if (cache.isWalletTxId(apiTx.transactionId)) {
      return;
    }

    log.d('Adding wallet transaction ${apiTx.transactionId}');

    final tx = await cache.addWalletTx(apiTx);
    loadedTxs = loadedTxs.insert(0, tx);

    notifyListeners();
  }

  Future<void> processAcceptedTxIds(
    Iterable<String> acceptedTxIds, {
    required String acceptingBlockHash,
    required KaspaClient client,
  }) async {
    final walletIds = acceptedTxIds.where(cache.isWalletTxId);
    if (walletIds.isEmpty) {
      return;
    }

    final block = await client.getBlockByHash(
      acceptingBlockHash,
      includeTransactions: false,
    );

    await cache.updateAcceptedTxs(
      walletIds,
      acceptingBlockHash: acceptingBlockHash,
      acceptingBlockBlueScore: block.verboseData.blueScore.toInt(),
    );
  }

  Future<void> fetchNewTxsForAddresses(Iterable<String> addresses) async {
    final apiTxs = <ApiTransaction>[];
    try {
      for (final address in addresses) {
        final txsForAddress = await api.getTxsForAddress(
          address,
          pageSize: 20,
          maxPages: 100,
          shouldLoadMore: (txs) {
            return !cache.isWalletTxId(txs.last.transactionId);
          },
        );
        apiTxs.addAll(txsForAddress);
      }
    } catch (e) {
      log.e('Failed to update transactions', e);
    }

    if (apiTxs.isEmpty) {
      return;
    }

    try {
      final newTxs = await cache.cacheWalletTxs(apiTxs);

      loadedTxs = await _loadTxs(count: loadedTxs.length + newTxs.length);
      _lastLoadedTxId = loadedTxs.lastOrNull?.id;

      notifyListeners();
    } catch (e) {
      log.e('Failed to update transactions', e);
    }
  }

  Future<IList<Tx>> _loadTxs({String? startId, int count = 10}) async {
    final it = await cache.getWalletTxsAfter(txId: startId, count: count);
    final txs = it.toIList();

    return txs;
  }

  Future<void> loadMore([int count = 10]) async {
    if (_loading || !hasMore) {
      return;
    }
    _loading = true;
    _firstLoad = loadedTxs.isEmpty;
    try {
      final txs = await _loadTxs(startId: _lastLoadedTxId, count: count);

      loadedTxs = loadedTxs.addAll(txs);
      _lastLoadedTxId = txs.lastOrNull?.id ?? _lastLoadedTxId;

      notifyListeners();
    } catch (e) {
      log.e(e);
    }
    _loading = false;
  }

  Future<void> reload() async {
    if (_loading) {
      return;
    }
    _loading = true;
    try {
      loadedTxs = await _loadTxs(count: loadedTxs.length);
      _lastLoadedTxId = loadedTxs.lastOrNull?.id;

      notifyListeners();
    } catch (e) {
      log.e(e);
    }
    _loading = false;
  }

  Future<IList<String>> refreshWalletTxs({
    required IMap<String, BigInt> balances,
    required IList<String> pendingAddresses,
  }) async {
    if (_loading) {
      return IList();
    }
    _loading = true;

    final uncheckedAddresses = Set.of(pendingAddresses);
    final refreshAddresses = <String>{};

    try {
      final cachedBalances = await cache.getCachedBalances();

      for (final balance in balances.entries) {
        final cached = cachedBalances[balance.key] ?? (BigInt.zero, 0);
        if (balance.value == cached.$1) {
          if (balance.value != BigInt.zero) {
            uncheckedAddresses.remove(balance.key);
          }
          continue;
        }

        final txCount = await api.getTxCountForAddress(balance.key);
        if (txCount != cached.$2) {
          refreshAddresses.add(balance.key);
        }
      }

      for (final address in uncheckedAddresses) {
        final txCount = await api.getTxCountForAddress(address);
        if (txCount != 0) {
          refreshAddresses.add(address);
        }
      }

      if (refreshAddresses.isNotEmpty) {
        await fetchNewTxsForAddresses(refreshAddresses);
      }
    } catch (e) {
      log.e(e);
    }
    _loading = false;

    return refreshAddresses.toIList();
  }
}
