import 'package:collection/collection.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:logger/logger.dart';

import '../database/boxes.dart';
import '../kaspa/kaspa.dart';
import '../util/safe_change_notifier.dart';

String _outpointKey(Outpoint outpoint) =>
    '${outpoint.transactionId}:${outpoint.index}';

String _utxoKey(Utxo utxo) => _outpointKey(utxo.outpoint);

class UtxosNotifier extends SafeChangeNotifier {
  final KaspaClient client;
  final TypedBox<Utxo> utxoBox;
  final Logger log;

  late final Map<String, Set<Utxo>> utxosByAddress = {};

  final utxoIds = <String>{};

  ListSet<Utxo>? _utxoList;

  ListSet<Utxo> get utxoList {
    if (_utxoList == null) {
      _utxoList = ListSet.of(
        utxosByAddress.values.flattened,
        sort: true,
        compare: (a, b) =>
            b.utxoEntry.blockDaaScore.compareTo(a.utxoEntry.blockDaaScore),
      );
    }
    return _utxoList!;
  }

  UtxosNotifier({
    required this.client,
    required this.utxoBox,
    required this.log,
  }) {
    final utxos = utxoBox.getAll().values;
    for (final utxo in utxos) {
      final set = utxosByAddress.putIfAbsent(utxo.address, () => <Utxo>{});
      set.add(utxo);
    }
    utxoIds.addAll(utxos.map(_utxoKey));
    _utxoList = null;
  }

  bool isWalletOutpoint(Outpoint outpoint) {
    final key = _outpointKey(outpoint);
    return utxoIds.contains(key);
  }

  void utxosChanged({
    required Iterable<Utxo> removed,
    required Iterable<Utxo> added,
  }) {
    log.d('Utxos changed ${removed.length} ${added.length}');
    _removeUtxos(removed);
    _addUtxos(added);

    _utxoList = null;
    notifyListeners();
  }

  void _removeUtxos(Iterable<Utxo> utxos) {
    for (final utxo in utxos) {
      final set = utxosByAddress.putIfAbsent(utxo.address, () => <Utxo>{});
      final removed = set.remove(utxo);
      log.d('$removed $utxo');
      if (!removed) {
        log.d(set.firstWhereOrNull((e) =>
            utxo.outpoint.index == e.outpoint.index &&
            utxo.outpoint.transactionId == e.outpoint.transactionId));
      }
      utxoBox.remove(_utxoKey(utxo));
    }
  }

  void _addUtxos(Iterable<Utxo> utxos) {
    for (final utxo in utxos) {
      final set = utxosByAddress.putIfAbsent(utxo.address, () => <Utxo>{});
      set.add(utxo);
      utxoBox.set(_utxoKey(utxo), utxo);
      utxoIds.add(_utxoKey(utxo));
    }
  }

  Future<void> refresh({required Iterable<String> addresses}) async {
    final oldUtxos = <String, Set<Utxo>>{};
    for (final address in addresses) {
      final set = utxosByAddress[address];
      if (set == null || set.isEmpty) continue;
      oldUtxos[address] = Set.of(set);
    }

    final utxos = await client.getUtxosByAddresses(addresses);

    final newUtxos = <String, Set<Utxo>>{};
    for (final utxo in utxos.map(Utxo.fromRpc)) {
      final set = newUtxos.putIfAbsent(utxo.address, () => <Utxo>{});
      set.add(utxo);
    }

    for (final address in addresses) {
      final mergeSet = utxosByAddress.putIfAbsent(address, () => <Utxo>{});
      final oldSet = oldUtxos[address];
      final newSet = newUtxos[address];

      if (oldSet != null && oldSet.isNotEmpty) {
        mergeSet.removeAll(oldSet);
      }
      if (newSet != null && newSet.isNotEmpty) {
        mergeSet.addAll(newSet);
      }

      // update box
      final removeSet = (oldSet ?? <Utxo>{}).difference(newSet ?? <Utxo>{});
      final addSet = (newSet ?? <Utxo>{}).difference(oldSet ?? <Utxo>{});
      for (final utxo in removeSet) {
        utxoBox.remove(_utxoKey(utxo));
      }
      for (final utxo in addSet) {
        utxoBox.set(_utxoKey(utxo), utxo);
        utxoIds.add(_utxoKey(utxo));
      }
    }

    _utxoList = null;
    notifyListeners();
  }
}
