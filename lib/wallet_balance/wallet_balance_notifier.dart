import 'package:fast_immutable_collections/fast_immutable_collections.dart';

import '../database/boxes.dart';
import '../kaspa/kaspa.dart';
import '../util/safe_change_notifier.dart';
import '../wallet_address/wallet_address_notifier.dart';

class WalletBalanceNotifier extends SafeChangeNotifier {
  final TypedBox<AddressBalance> _balanceBox;
  final WalletAddressAware addressAware;
  final KaspaClient client;

  final Map<String, BigInt> _balances = {};
  BigInt _totalBalance = BigInt.zero;

  WalletBalanceNotifier({
    required TypedBox<AddressBalance> balanceBox,
    required this.addressAware,
    required this.client,
  }) : _balanceBox = balanceBox {
    final balances = _balanceBox.getAll();
    for (final balance in balances.values) {
      final newBalance = balance.balance;
      if (!addressAware.containsAddress(balance.address)) {
        continue;
      }
      _balances[balance.address] = newBalance;
    }
    _totalBalance = _balances.values.fold(BigInt.zero, (a, b) => a + b);
  }

  IMap<String, BigInt>? _cachedBalances;
  IMap<String, BigInt> get balances {
    if (_cachedBalances == null) {
      _cachedBalances = _balances.toIMap();
    }
    return _cachedBalances!;
  }

  Amount get totalBalance => Amount.raw(_totalBalance);

  IMap<String, AddressBalance> _lastRefreshChanges = IMap();
  IMap<String, AddressBalance> get lastRefreshChanges => _lastRefreshChanges;

  Amount balanceForAddress(String address) =>
      Amount.raw(_balances[address] ?? BigInt.zero);

  Future<void> refresh([Iterable<String>? addresses]) async {
    if (addresses == null) {
      addresses = addressAware.allAddresses;
    }
    if (addresses.isEmpty) {
      return;
    }
    final newBalances = await client.getBalancesByAddresses(addresses);
    final entries = newBalances.map(AddressBalance.fromRpc);

    final changes = <String, AddressBalance>{};
    for (final entry in entries) {
      final newBalance = entry.balance;
      final oldBalance = _balances[entry.address] ?? BigInt.zero;

      if (newBalance != oldBalance) {
        changes[entry.address] = entry;
        _balances[entry.address] = newBalance;

        final key = addressAware.keyForAddress(entry.address);
        if (key != null) {
          _balanceBox.set(key, entry);
        }
        _totalBalance += newBalance - oldBalance;
      }
    }

    if (changes.isNotEmpty) {
      _lastRefreshChanges = changes.toIMap();
    }

    _cachedBalances = null;
    notifyListeners();
  }
}
