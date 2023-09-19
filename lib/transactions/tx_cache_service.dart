import 'dart:async';

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:logger/logger.dart';

import '../database/boxes.dart';
import '../kaspa/kaspa.dart';
import 'transaction_types.dart';
import 'tx_cache_index.dart';

class TxCacheService {
  // Index of transaction ids ordered by timestamp
  final TxCacheIndex _txIndex;

  // Wallet transactions with cached input addresses and amounts
  final LazyTypedBox<Tx> txBox;

  // A cache of transactions that are currently loaded in memory
  final memCache = <String, ApiTransaction>{};

  late final KaspaApiService api;
  final Logger log;

  int get txCount => _txIndex.length;

  TxCacheService({
    required IndexedTypedBox<TxIndex> txIndexBox,
    required this.txBox,
    required this.log,
  }) : _txIndex = TxCacheIndex(txIndexBox);

  Future<void> _cacheInputsFor(Iterable<ApiTransaction> txs) async {
    final missingIds = <String>{};
    for (final tx in txs) {
      for (final input in tx.inputs) {
        if (input.previousOutpointAmount != null &&
            input.previousOutpointAddress != null) {
          continue;
        }
        final hash = input.previousOutpointHash;
        if (!memCache.containsKey(hash)) {
          missingIds.add(hash);
        }
      }
    }

    if (missingIds.isEmpty) {
      return;
    }

    final cachedIds = <String>{};
    for (final inputId in missingIds) {
      if (_txIndex.contains(inputId)) {
        final tx = await txBox.tryGet(inputId);
        if (tx != null) {
          memCache[inputId] = tx.apiTx;
          cachedIds.add(inputId);
        }
      }
    }

    missingIds.removeAll(cachedIds);
    final extraTxs = await api.getTxsWithIds(missingIds);
    memCache.addEntries(extraTxs.map((e) => MapEntry(e.transactionId, e)));
  }

  // Builds a Tx object from an ApiTransaction object using cached input txs
  Tx _txForApiTx(ApiTransaction apiTx, {int? lastUpdate}) {
    final inputs = apiTx.inputs.map((input) {
      // use new available input amount and address from apiTx
      if (input.previousOutpointAmount != null &&
          input.previousOutpointAddress != null) {
        return TxInputData(
          address: input.previousOutpointAddress!,
          amount: input.previousOutpointAmount!,
        );
      }

      final inputTx = memCache[input.previousOutpointHash];
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
      lastUpdate: lastUpdate ?? _refreshTimestamp,
    );

    return tx;
  }

  Future<Iterable<Tx>> _txsForApiTxs(Iterable<ApiTransaction> apiTxs) async {
    await _cacheInputsFor(apiTxs);

    final txs = apiTxs.map(_txForApiTx);

    return txs;
  }

  Future<List<Tx>> cacheWalletTxs(Iterable<ApiTransaction> apiTxs) async {
    final newTxs = apiTxs.where((tx) => !_txIndex.contains(tx.transactionId));
    if (newTxs.isEmpty) {
      return [];
    }

    memCache.addEntries(newTxs.map((e) => MapEntry(e.transactionId, e)));

    final txs = await _txsForApiTxs(newTxs);

    final txIndexes = txs.map(
      (tx) => TxIndex(
        txId: tx.id,
        blockTime: tx.apiTx.blockTime,
      ),
    );

    await _txIndex.addAll(txIndexes);

    await txBox.setAll(Map.fromEntries(
      txs.map((tx) => MapEntry(tx.id, tx)),
    ));

    return txs.toList();
  }

  Future<void> addWalletTxIds(Iterable<ApiTxId> apiTxIds) async {
    await _txIndex.addAll(apiTxIds.map(
      (e) => TxIndex(
        txId: e.transactionId,
        blockTime: e.blockTime ?? 0,
      ),
    ));
  }

  bool isWalletTxId(String id) {
    return _txIndex.contains(id);
  }

  void addToMemcache(ApiTransaction apiTx) {
    memCache[apiTx.transactionId] = apiTx;
  }

  Future<Tx> addWalletTx(ApiTransaction apiTx) async {
    addToMemcache(apiTx);

    await _cacheInputsFor([apiTx]);

    final tx = _txForApiTx(apiTx);

    await txBox.set(tx.id, tx);

    final txIndex = TxIndex(txId: tx.id, blockTime: tx.apiTx.blockTime);
    await _txIndex.add(txIndex);

    return tx;
  }

  int get _refreshTimestamp => DateTime.now().toUtc().millisecondsSinceEpoch;

  bool _needsRefresh(Tx tx) {
    final isCoinbase = tx.apiTx.inputs.isEmpty;
    final delta = Duration(seconds: isCoinbase ? 100 : 10).inMilliseconds;
    final notFresh = _refreshTimestamp > tx.lastUpdate + 2000;
    final needsRefresh = tx.lastUpdate < tx.apiTx.blockTime + delta;
    return notFresh && needsRefresh;
  }

  Future<Iterable<Tx>> getWalletTxsAfter({String? txId, int count = 10}) async {
    final txs = <Tx?>[];
    final missingTxIds = <String, int>{};
    for (final index in _txIndex.indexAfter(txId).take(count)) {
      final tx = await txBox.tryGet(index.txId);
      if (tx == null || _needsRefresh(tx)) {
        missingTxIds[index.txId] = txs.length;
      }
      txs.add(tx);
    }
    if (missingTxIds.isNotEmpty) {
      final missingTxs = await api.getTxsWithIds(missingTxIds.keys);
      for (final tx in missingTxs) {
        final index = missingTxIds[tx.transactionId];
        if (index == null) {
          log.e('Missing tx index for ${tx.transactionId}');
          continue;
        }
        txs[index] = await addWalletTx(tx);
      }
    }

    return txs.whereType<Tx>();
  }

  Future<ApiTransaction?> _getApiTxWithId(String id) async {
    if (memCache[id] case final apiTx?) {
      return apiTx;
    }

    final tx = await txBox.tryGet(id);
    if (tx?.apiTx case final apiTx?) {
      return apiTx;
    }

    final remote = await api.getTxWithId(id);
    return remote;
  }

  Future<void> updateAcceptedTxs(
    Iterable<String> acceptedTxIds, {
    required String acceptingBlockHash,
    required int acceptingBlockBlueScore,
  }) async {
    final walletTxs = <ApiTransaction>[];
    for (final id in acceptedTxIds) {
      final tx = await _getApiTxWithId(id);
      if (tx == null) {
        continue;
      }
      walletTxs.add(tx);
    }

    for (final tx in walletTxs) {
      final newTx = tx.copyWith(
        isAccepted: true,
        acceptingBlockHash: acceptingBlockHash,
        acceptingBlockBlueScore: acceptingBlockBlueScore,
      );
      await addWalletTx(newTx);
    }
  }

  // Returns cached balances and tx count for each address
  Future<Map<String, (BigInt, int)>> getCachedBalances() async {
    final balanceMap = <String, (BigInt, int)>{};

    for (final id in _txIndex.txIds) {
      final tx = await txBox.tryGet(id);
      if (tx == null || tx.apiTx.isAccepted == false) {
        continue;
      }

      for (final output in tx.apiTx.outputs) {
        balanceMap.update(
          output.scriptPublicKeyAddress,
          (value) => (value.$1 + BigInt.from(output.amount), value.$2),
          ifAbsent: () => (BigInt.from(output.amount), 0),
        );
      }
      for (final input in tx.inputData) {
        if (input == null) {
          continue;
        }
        balanceMap.update(
          input.address,
          (value) => (value.$1 - BigInt.from(input.amount), value.$2),
          ifAbsent: () => (BigInt.from(-input.amount), 0),
        );
      }

      final addresses = Set.of(
        tx.apiTx.outputs
            .map((e) => e.scriptPublicKeyAddress)
            .followedBy(tx.inputData.mapNotNull((e) => e?.address)),
      );
      for (final address in addresses) {
        balanceMap.update(
          address,
          (value) => (value.$1, value.$2 + 1),
          ifAbsent: () => (BigInt.zero, 1),
        );
      }
    }
    return balanceMap;
  }
}
