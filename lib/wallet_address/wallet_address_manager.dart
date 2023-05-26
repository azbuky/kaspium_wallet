import 'package:fast_immutable_collections/fast_immutable_collections.dart';

import 'wallet_address.dart';

class WalletAddressManager {
  final AddressType type;

  final _addresses = <int, WalletAddress>{};
  final _addressIndexMap = <String, int>{};

  int _lastUsedIndex = 0;

  WalletAddress? addressAtIndex(int index) => _addresses[index];

  Iterable<String> get addresses => _addresses.values.map((e) => e.encoded);

  IList<WalletAddress> get orderedAddresses =>
      IList(_addresses.values).sort((a1, a2) => a1.index.compareTo(a2.index));

  int get nextUnusedIndex => _lastUsedIndex + 1;

  WalletAddress get lastUsedAddress => _addresses[_lastUsedIndex]!;

  WalletAddressManager({
    required this.type,
    required Iterable<WalletAddress> addresses,
  }) {
    addresses.where((address) => address.type == type).forEach(addAddress);
  }

  bool containsAddress(String address) => _addressIndexMap.containsKey(address);
  int? indexOfAddress(String address) => _addressIndexMap[address];

  String? nameForAddress(String address) =>
      _addresses[_addressIndexMap[address] ?? -1]?.name;

  void addAddress(WalletAddress address) {
    _addresses[address.index] = address;
    _addressIndexMap[address.encoded] = address.index;
    if (address.index > _lastUsedIndex) {
      _lastUsedIndex = address.index;
    }
  }

  void updateAddress(WalletAddress address) {
    _addresses[address.index] = address;
  }
}
