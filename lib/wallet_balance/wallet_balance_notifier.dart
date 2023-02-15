import 'package:fast_immutable_collections/fast_immutable_collections.dart';

import '../database/boxes.dart';
import '../kaspa/kaspa.dart';
import '../util/safe_change_notifier.dart';
import '../wallet_address/wallet_address_notifier.dart';

class WalletBalanceNotifier extends SafeChangeNotifier {
  final TypedBox<AddressBalance> balanceBox;
  final WalletAddressAware addressAware;

  final Map<String, BigInt> _balances = {};
  BigInt _totalBalance = BigInt.zero;

  WalletBalanceNotifier({
    required this.balanceBox,
    required this.addressAware,
  }) {
    final balances = balanceBox.getAll();
    for (final balance in balances.values) {
      final newBalance = balance.balance;
      if (!addressAware.containsAddress(balance.address)) {
        continue;
      }
      _balances[balance.address] = newBalance;
    }
    _totalBalance += _balances.values.fold(BigInt.zero, (a, b) => a + b);
  }

  IMap<String, BigInt> get balances => _balances.toIMap();
  Amount get totalBalance => Amount.raw(_totalBalance);

  ISet<AddressBalance> _lastRefreshChanges = ISet();
  Iterable<AddressBalance> get lastRefreshChanges => _lastRefreshChanges;

  Amount balanceForAddress(String address) =>
      Amount.raw(_balances[address] ?? BigInt.zero);

  void updateBalances(Iterable<AddressBalance> entries) {
    final changes = <AddressBalance>{};
    for (final entry in entries) {
      final newBalance = entry.balance;
      final oldBalance = _balances[entry.address] ?? BigInt.zero;

      if (newBalance != oldBalance) {
        changes.add(entry);
        _balances[entry.address] = newBalance;

        final key = addressAware.keyForAddress(entry.address);
        if (key != null) {
          balanceBox.set(key, entry);
        }
        _totalBalance += newBalance - oldBalance;
      }
    }

    if (changes.isNotEmpty) {
      _lastRefreshChanges = changes.toISet();
    }

    notifyListeners();
  }

  void updateWithUtxoChanges({
    required Iterable<Utxo> added,
    required Iterable<Utxo> removed,
  }) {
    final balanceChanges = <String, AddressBalance>{};

    for (final utxo in removed) {
      final address = utxo.address;
      final amount = utxo.utxoEntry.amount;

      final balance = _balances.update(
        address,
        (value) => value - amount,
        ifAbsent: () => BigInt.zero,
      );

      final key = addressAware.keyForAddress(address);
      if (key != null) {
        balanceChanges[key] = AddressBalance(
          address: address,
          balance: balance,
        );
      }

      _totalBalance -= amount;
    }

    for (final utxo in added) {
      final address = utxo.address;
      final amount = utxo.utxoEntry.amount;

      final balance = _balances.update(
        address,
        (value) => value + amount,
        ifAbsent: () => amount,
      );

      final key = addressAware.keyForAddress(address);
      if (key != null) {
        balanceChanges[key] = AddressBalance(
          address: address,
          balance: balance,
        );
      }

      _totalBalance += amount;
    }

    if (balanceChanges.isNotEmpty) {
      balanceBox.setAll(balanceChanges);
    }

    notifyListeners();
  }
}
