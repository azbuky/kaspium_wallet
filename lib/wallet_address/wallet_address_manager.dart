import 'package:collection/collection.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

import 'wallet_address.dart';

class WalletAddressManager {
  final AddressType type;
  final int bufferSize;

  WalletAddressManager({
    required this.type,
    required this.bufferSize,
    required Iterable<WalletAddress> addresses,
  }) {
    addresses.forEach(_updateAddress);
  }

  final _addresses = <WalletAddress?>[];
  final _addressIndexMap = <String, int>{};

  int _lastUsedIndex = -1;

  Iterable<String> get allAddresses =>
      _addresses.whereNotNull().map((e) => e.encoded);

  IList<WalletAddress> get activeAddresses =>
      IList(_addresses.take(lastUsedIndex + 1).whereNotNull());

  int get lastUsedIndex => _lastUsedIndex;
  int get nextUnusedIndex => _lastUsedIndex + 1;

  WalletAddress? get lastUsedAddress => addressAtIndex(lastUsedIndex);
  WalletAddress? get nextUnusedAddress => addressAtIndex(nextUnusedIndex);

  IList<int> get missingAddresses {
    if (_addresses.length == _addressIndexMap.length) {
      return const IListConst([]);
    }
    return IList(_addresses.indexed
        .where((address) => address.$2 == null)
        .map((values) => values.$1));
  }

  WalletAddress? addressAtIndex(int index) {
    try {
      return _addresses[index];
    } catch (e) {
      return null;
    }
  }

  WalletAddress? getAddress(String address) {
    if (_addressIndexMap[address] case int index) {
      return addressAtIndex(index);
    }

    return null;
  }

  bool containsAddress(String address) => _addressIndexMap.containsKey(address);
  int? indexOfAddress(String address) => _addressIndexMap[address];

  String? nameForAddress(String address) => getAddress(address)?.name;

  void updateAddress(WalletAddress address) => _updateAddress(address);

  void updateAddresses(Iterable<WalletAddress> addresses) =>
      addresses.forEach(_updateAddress);

  void _updateAddress(WalletAddress address) {
    if (address.type != type) {
      return;
    }

    if (address.index >= _addresses.length) {
      _addresses.length = address.index + 1;
    }
    _addresses[address.index] = address;
    _addressIndexMap[address.encoded] = address.index;
    if (address.used && address.index > _lastUsedIndex) {
      _lastUsedIndex = address.index;
    }
    if (_lastUsedIndex + bufferSize >= _addresses.length) {
      _addresses.length = _lastUsedIndex + bufferSize + 1;
    }
  }
}
