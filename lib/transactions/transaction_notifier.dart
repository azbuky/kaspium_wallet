import 'dart:async';
import 'dart:math';

import 'package:collection/collection.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:logger/logger.dart';

import '../kaspa/kaspa.dart';
import '../util/safe_change_notifier.dart';
import 'transaction_types.dart';
import 'tx_cache_service.dart';

class TransactionNotifier extends SafeChangeNotifier {
  final TxCacheService service;

  KaspaApi get api => service.api;
  Logger get log => service.log;

  final loadedTxs = <Tx>[];

  late int lastLoadedTxIndex = service.txIds.length;

  bool get hasMore => lastLoadedTxIndex > 0;

  bool _loading = false;
  bool get loading => _loading;

  TransactionNotifier({required this.service});

  void cacheTransaction(ApiTransaction tx) {
    service.cacheTransaction(tx);
  }

  Future<void> addWalletTx(ApiTransaction apiTx) async {
    if (service.isCached(apiTx)) {
      return;
    }

    log.d('Adding wallet transaction ${apiTx.transactionId}');

    final tx = await service.addWalletTx(apiTx);

    if (apiTx.isAccepted || apiTx.inputs.isNotEmpty) {
      loadedTxs.insert(0, tx);
    }

    notifyListeners();
  }

  Future<void> processAcceptedTxIds(
    Iterable<String> acceptedTxIds, {
    required String acceptingBlockHash,
    required KaspaClient client,
  }) async {
    if (acceptedTxIds.isEmpty) {
      return;
    }

    final walletIds = acceptedTxIds.where((id) => service.isWalletId(id));

    final walletTxs = await Future.wait(
      walletIds.map((id) async {
        return service.txCache[id] ?? (await service.txBox.tryGet(id))?.apiTx;
      }),
    );

    final txs = walletTxs.whereNotNull();
    if (txs.isEmpty) {
      return;
    }

    final block = await client.getBlockByHash(acceptingBlockHash);

    final acceptedTxs = txs.map((tx) {
      final acceptedTx = tx.copyWith(
        isAccepted: true,
        acceptingBlockHash: acceptingBlockHash,
        acceptingBlockBlueScore: block.verboseData.blueScore.toInt(),
      );
      return acceptedTx;
    });

    final acceptedIds = acceptedTxs.map((tx) => tx.transactionId);
    log.d('Updating accepted txs $acceptedIds');

    await _updateAcceptedTxs(acceptedTxs);
  }

  Future<void> _updateAcceptedTxs(Iterable<ApiTransaction> acceptedTxs) async {
    if (acceptedTxs.isEmpty) {
      return;
    }

    for (final apiTx in acceptedTxs) {
      service.txCache[apiTx.transactionId] = apiTx;

      final tx = await service.txForApiTx(apiTx);
      service.txBox.set(tx.id, tx);

      final index = loadedTxs.indexWhere((element) => element.id == tx.id);
      if (index != -1) {
        loadedTxs[index] = tx;
      } else {
        loadedTxs.insert(0, tx);
      }
    }

    notifyListeners();
  }

  Future<void> updateTxsForAddresses(Iterable<String> addresses) async {
    final updatedIds = <String>{};
    try {
      for (final address in addresses) {
        final txLinks = await api.getTxLinks(address: address);
        for (final link in txLinks) {
          final receivedId = link.txReceived;
          if (receivedId != null) {
            updatedIds.add(receivedId);
          }
          final spentId = link.txSpent;
          if (spentId != null) {
            updatedIds.add(spentId);
          }
        }
      }
    } catch (e) {
      log.e('Failed to update transactions', e);
      return;
    }

    final newTxIds = updatedIds.difference(service.txIds);
    if (newTxIds.isEmpty) {
      return;
    }

    await fetchTxsWithIds(newTxIds);
  }

  Future<void> fetchTxsWithIds(Iterable<String> ids) async {
    try {
      final txs = await service.cacheTxsWithIds(ids);

      loadedTxs.insertAll(0, txs.reversed);
    } catch (e) {
      log.e('Failed to update transactions', e);
      return;
    }

    notifyListeners();
  }

  Future<void> _checkForNotAccepted(Iterable<Tx> txs) async {
    final notAcceptedIds =
        txs.where((tx) => !tx.apiTx.isAccepted).map((tx) => tx.id);

    if (notAcceptedIds.isEmpty) {
      return;
    }

    final updated = await api.getTransactions(ids: notAcceptedIds);
    final accepted = updated.where((tx) => tx.isAccepted);
    if (accepted.isNotEmpty) {
      await _updateAcceptedTxs(accepted);
    }
  }

  Future<List<Tx>> _loadTxs({
    required int start,
    required int end,
  }) async {
    final txs = await service.getWalletTxs(start: start, end: end);

    _checkForNotAccepted(txs);

    return txs;
  }

  Future<void> loadMore([int count = 20]) async {
    if (_loading) {
      return;
    }
    _loading = true;
    try {
      final start = max(0, lastLoadedTxIndex - count);
      final end = lastLoadedTxIndex;

      if (end == 0) {
        _loading = false;
        return;
      }
      final txs = await _loadTxs(start: start, end: end);

      loadedTxs.addAll(txs.reversed);
      lastLoadedTxIndex = start;

      notifyListeners();
    } catch (e) {
      log.e(e);
    } finally {
      _loading = false;
    }
  }

  Future<void> refreshWalletTxs(IMap<String, BigInt> balances) async {
    if (_loading) {
      return;
    }

    _loading = true;

    _checkForNotAccepted(loadedTxs);

    final addressMap = <String, BigInt>{};
    try {
      for (final id in service.txIds) {
        final tx = await service.txBox.tryGet(id);
        if (tx == null) {
          continue;
        }
        for (final output in tx.apiTx.outputs) {
          addressMap.update(
            output.scriptPublicKeyAddress,
            (value) => value + BigInt.from(output.amount),
            ifAbsent: () => BigInt.from(output.amount),
          );
        }
        for (final input in tx.inputData) {
          if (input == null) {
            continue;
          }
          addressMap.update(
            input.address,
            (value) => value - BigInt.from(input.amount),
            ifAbsent: () => BigInt.from(-input.amount),
          );
        }
      }

      final refreshAddresses = <String>{};
      for (final entry in balances.entries) {
        if (entry.value != addressMap[entry.key]) {
          refreshAddresses.add(entry.key);
        }
      }

      if (refreshAddresses.isNotEmpty) {
        await updateTxsForAddresses(refreshAddresses);
      }
    } catch (e) {
      log.e(e);
    } finally {
      _loading = false;
    }
  }
}
