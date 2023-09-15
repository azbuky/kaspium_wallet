import 'package:collection/collection.dart';

import '../database/boxes.dart';
import 'indexable_skip_list.dart';
import 'transaction_types.dart';

class TxCacheIndex {
  final IndexedTypedBox<TxIndex> _txIndexBox;
  final _idMap = <String, TxIndex>{};
  final _indexList = IndexableSkipList<TxIndex, TxIndex>((a, b) {
    if (a.txId == b.txId) {
      return 0;
    }
    final timeCompare = b.blockTime.compareTo(a.blockTime);
    if (timeCompare == 0) {
      return a.txId.compareTo(b.txId);
    }
    return timeCompare;
  });

  TxCacheIndex(this._txIndexBox) {
    final index = _txIndexBox.getAll();
    _idMap.addEntries(index.mapIndexed((idx, e) {
      // fake blockTime for old txs
      if (e.blockTime == 0) {
        e = e.copyWith(blockTime: idx);
      }
      _indexList.insert(e, e);
      return MapEntry(e.txId, e);
    }));
  }

  TxIndex? tryGetAt(int index) {
    try {
      return _indexList.getAt(index);
    } catch (_) {
      return null;
    }
  }

  Iterable<TxIndex> indexAfter(String? txId) {
    if (txId == null) {
      return _indexList.values;
    }
    final index = _idMap[txId];
    if (index == null) {
      return [];
    }
    return _indexList.valuesFromKey(index).skip(1);
  }

  bool contains(String txId) => _idMap.containsKey(txId);

  int get length => _indexList.length;
  Iterable<String> get txIds => _indexList.keys.map((index) => index.txId);

  Future<void> add(TxIndex txIndex) async {
    if (contains(txIndex.txId)) {
      return;
    }

    _idMap[txIndex.txId] = txIndex;
    _indexList.insert(txIndex, txIndex);
    await _txIndexBox.add(txIndex);
  }

  Future<void> addAll(Iterable<TxIndex> txIndexes) async {
    // remove duplicates
    final indexes = txIndexes
        .where((txIndex) => !contains(txIndex.txId))
        .toList(growable: false);

    if (indexes.isEmpty) {
      return;
    }

    // sort ascending by blockTime
    indexes.sort((t1, t2) => t1.blockTime.compareTo(t2.blockTime));

    await _txIndexBox.addAll(indexes);
    _idMap.addEntries(indexes.map((e) {
      _indexList.insert(e, e);
      return MapEntry(e.txId, e);
    }));
  }
}
