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
  final TypedBox<Utxo> _utxoBox;
  final KaspaClient client;
  final Logger log;

  final _utxosByAddress = <String, Set<Utxo>>{};
  final _balancesByAddress = <String, BigInt>{};

  final _utxoIds = <String>{};

  List<Utxo>? _utxoList;
  List<Utxo> get utxoList {
    if (_utxoList == null) {
      _utxoList = ListSet.of(
        _utxosByAddress.values.flattened,
        sort: true,
        compare: (a, b) =>
            b.utxoEntry.blockDaaScore.compareTo(a.utxoEntry.blockDaaScore),
      );
    }
    return _utxoList!;
  }

  UtxosNotifier({
    required TypedBox<Utxo> utxoBox,
    required this.client,
    required this.log,
  }) : _utxoBox = utxoBox {
    final utxos = _utxoBox.getAll().values;
    for (final utxo in utxos) {
      final set = _utxosByAddress.putIfAbsent(utxo.address, () => <Utxo>{});
      set.add(utxo);
      _balancesByAddress.update(
          utxo.address, (value) => value + utxo.utxoEntry.amount,
          ifAbsent: () => utxo.utxoEntry.amount);
    }
    _utxoIds.addAll(utxos.map(_utxoKey));
    _utxoList = null;
  }

  bool isWalletOutpoint(Outpoint outpoint) {
    final key = _outpointKey(outpoint);
    return _utxoIds.contains(key);
  }

  Future<void> refreshWithBalances({
    required IMap<String, BigInt> balances,
  }) async {
    final addresses = <String>{};
    for (final balance in balances.entries) {
      final utxosBalance = _balancesByAddress[balance.key] ?? BigInt.zero;
      if (balance.value != utxosBalance) {
        addresses.add(balance.key);
      }
    }
    if (addresses.isNotEmpty) {
      return refresh(addresses: addresses);
    }
  }

  Future<void> refresh({required Iterable<String> addresses}) async {
    final oldUtxos = <String, Set<Utxo>>{};
    for (final address in addresses) {
      final set = _utxosByAddress[address];
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
      final oldSet = oldUtxos[address] ?? {};
      final newSet = newUtxos[address] ?? {};

      _utxosByAddress[address] = newSet;
      _balancesByAddress[address] = newSet.fold(
        BigInt.zero,
        (total, utxo) => total + utxo.utxoEntry.amount,
      );

      // update box
      final removeSet = oldSet.difference(newSet);
      final addSet = newSet.difference(oldSet);
      _utxoBox.removeAll(removeSet.map(_utxoKey));
      _utxoBox.setAll(
        Map.fromEntries(addSet.map(
          (utxo) => MapEntry(_utxoKey(utxo), utxo),
        )),
      );

      // update id set
      _utxoIds.addAll(addSet.map((utxo) => _utxoKey(utxo)));
    }

    _utxoList = null;
    notifyListeners();
  }
}
