import 'dart:async';

import 'package:logger/logger.dart';

import '../database/boxes.dart';
import '../kaspa/kaspa.dart';
import 'transaction_types.dart';

class TxCacheService {
  // Index of transaction ids ordered by timestamp
  final IndexedTypedBox<TxIndex> txIndexBox;
  // Wallet transactions with cached imput addresses and amounts
  final LazyTypedBox<Tx> txBox;

  final KaspaApi api;
  final Logger log;

  // Transaction ids of this wallet
  late final txIds = Set.of(
    txIndexBox.getAll().map((e) => e.txId),
  );

  // A cache of transactions that are currently loaded in memory
  late final txCache = <String, ApiTransaction>{};

  late final coinbaseTxIds = <String>{};

  TxCacheService({
    required this.txIndexBox,
    required this.txBox,
    required this.api,
    required this.log,
  });

  Future<void> _cacheInputTxsFor(List<ApiTransaction> txs) async {
    final inputIds = <String>{};
    for (final tx in txs) {
      for (final input in tx.inputs) {
        final hash = input.previousOutpointHash;
        if (!txCache.containsKey(hash)) {
          inputIds.add(hash);
        }
      }
    }

    if (inputIds.isEmpty) {
      return;
    }

    final cachedIds = <String>{};
    for (final extraId in inputIds) {
      if (txIds.contains(extraId)) {
        final tx = await txBox.tryGet(extraId);
        if (tx != null) {
          txCache[extraId] = tx.apiTx;
          cachedIds.add(extraId);
        }
      }
    }

    inputIds.removeAll(cachedIds);
    final extraTxs = await api.getTransactions(ids: inputIds);
    txCache.addEntries(extraTxs.map((e) => MapEntry(e.transactionId, e)));
  }

  // Builds a Tx object from an ApiTransaction object using cached input txs
  Tx _txForApiTx(ApiTransaction apiTx) {
    final inputs = apiTx.inputs.map((input) {
      final inputTx = txCache[input.previousOutpointHash];
      if (inputTx == null) {
        log.e('Missing input tx for $input');
        return null;
      }
      final outpointIndex = input.previousOutpointIndex.toInt();
      final outpoint = inputTx.outputs[outpointIndex];
      return TxInputData(
        address: outpoint.scriptPublicKeyAddress,
        amount: outpoint.amount,
      );
    }).toList();

    final tx = Tx(
      apiTx: apiTx,
      inputData: inputs,
    );

    return tx;
  }

  Future<Tx> txForApiTx(ApiTransaction apiTx) async {
    await _cacheInputTxsFor([apiTx]);

    final tx = _txForApiTx(apiTx);

    return tx;
  }

  Future<List<Tx>> txsForApiTxs(List<ApiTransaction> apiTxs) async {
    await _cacheInputTxsFor(apiTxs);

    final txs = apiTxs.map(_txForApiTx).toList();

    return txs;
  }

  Future<void> cacheTxsForAddresses(
    Iterable<String> addresses,
  ) async {
    final txMap = <String, ApiTransaction>{};
    for (final address in addresses) {
      int offset = 0;
      int count = 100;

      while (count == 100) {
        final txs = await api.getTxsForAddress(
          address,
          offset: offset,
          limit: count,
        );
        try {
          txMap.addEntries(txs.map((e) => MapEntry(e.transactionId, e)));
        } catch (e) {
          log.e('Failed to fetch txs', e);
          continue;
        }
        count = txs.length;
        offset += count;
      }
    }

    await cacheApiTxs(txMap.values.toList());
  }

  Future<List<Tx>> cacheApiTxs(List<ApiTransaction> apiTxs) async {
    txCache.addEntries(apiTxs.map((e) => MapEntry(e.transactionId, e)));

    apiTxs.sort((t1, t2) => t1.blockTime.compareTo(t2.blockTime));

    final sortedIds = apiTxs.map((tx) => tx.transactionId);

    final txs = await txsForApiTxs(apiTxs);

    final txIndexes = txs
        .where((tx) => !txIds.contains(tx.id))
        .map((tx) => TxIndex(txId: tx.id))
        .toList();

    txIds.addAll(sortedIds);
    await txIndexBox.addAll(txIndexes);
    await txBox.setAll(Map.fromEntries(
      txs.map((tx) => MapEntry(tx.id, tx)),
    ));

    return txs;
  }

  Future<List<Tx>> cacheTxsWithIds(Iterable<String> ids) async {
    try {
      final apiTxs = await api.getTransactions(ids: ids);

      final txs = await cacheApiTxs(apiTxs);

      return txs;
    } catch (e) {
      log.e('Failed to update transactions', e);
      return [];
    }
  }

  bool isWalletId(String id) {
    return txIds.contains(id) || coinbaseTxIds.contains(id);
  }

  bool isCached(ApiTransaction apiTx) {
    return txIds.contains(apiTx.transactionId);
  }

  Future<void> cacheTransaction(ApiTransaction apiTx) async {
    txCache[apiTx.transactionId] = apiTx;
  }

  Future<Tx> addWalletTx(ApiTransaction apiTx) async {
    txCache[apiTx.transactionId] = apiTx;

    final tx = await txForApiTx(apiTx);

    await txBox.set(tx.id, tx);

    // Don't add coinbase txs to index if tx is not accepted
    if (apiTx.isAccepted || apiTx.inputs.isNotEmpty) {
      txIds.add(apiTx.transactionId);
      final txIndex = TxIndex(txId: tx.id);
      await txIndexBox.add(txIndex);
    } else {
      coinbaseTxIds.add(apiTx.transactionId);
    }

    return tx;
  }

  Future<List<Tx>> getWalletTxs({
    required int start,
    required int end,
  }) async {
    final txs = <Tx>[];
    for (int i = start; i < end; ++i) {
      final txId = txIndexBox.tryGetAt(i);
      if (txId == null) {
        log.e('Failed to load tx id at index $i');
        continue;
      }
      final tx = await txBox.tryGet(txId.txId);
      if (tx == null) {
        log.e('Failed to load tx with id $txId');
        continue;
      }
      txs.add(tx);
    }

    txCache.addEntries(
      txs.map((e) => MapEntry(e.id, e.apiTx)),
    );

    return txs;
  }
}
