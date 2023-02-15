import 'package:coinslib/coinslib.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

import '../kaspa/kaspa.dart';
import 'wallet_address.dart';

AddressPrefix addressPrefixForNetwork(KaspaNetwork network) {
  switch (network) {
    case KaspaNetwork.mainnet:
      return AddressPrefix.kaspa;
    case KaspaNetwork.testnet:
      return AddressPrefix.kaspaTest;
    case KaspaNetwork.devnet:
      return AddressPrefix.kaspaDev;
    case KaspaNetwork.simnet:
      return AddressPrefix.kaspaSim;
  }
}

// Not used yet
class WalletAddressManager {
  final AddressType type;
  final KaspaNetwork network;

  late final Map<int, WalletAddress> _addresses;
  late final Map<String, int> _addressIndexMap;

  int _lastIndex = 1;

  WalletAddress? getAddressWithIndex(int index) => _addresses[index];

  IList<WalletAddress> get addresses =>
      IList(_addresses.values).sort((a1, a2) => a1.index.compareTo(a2.index));

  int get firstAvailableIndex => _lastIndex + 1;

  WalletAddressManager({
    required this.type,
    required this.network,
    required Iterable<WalletAddress> addresses,
  }) {
    _addresses = {};
    _addressIndexMap = {};

    for (final address in addresses) {
      if (address.type != type) {
        continue;
      }
      _addresses[address.index] = address;
      _addressIndexMap[address.address.encoded] = address.index;
      if (_lastIndex < address.index) {
        _lastIndex = address.index;
      }
    }
  }

  bool containsAddress(String address) => _addressIndexMap.containsKey(address);
  int? indexOfAddress(String address) => _addressIndexMap[address];

  bool isAddressSelected(WalletAddress address) {
    return address.index == _lastIndex;
  }

  WalletAddress get selectedAddress => _addresses[_lastIndex]!;

  WalletAddress newAddress(BIP32 bip32) {
    final index = firstAvailableIndex;
    final typeIndex = type == AddressType.receive ? 0 : 1;
    final publicKey = bip32.derive(typeIndex).derive(index).publicKey;
    final prefix = addressPrefixForNetwork(network);
    final name =
        type == AddressType.receive ? 'Receive $index' : 'Change $index';
    final address = WalletAddress(
      index: index,
      type: type,
      name: name,
      address: Address.fromPublicKey(publicKey, prefix: prefix),
    );
    _addAddress(address);
    return address;
  }

  void _addAddress(WalletAddress address) {
    _addresses[address.index] = address;
    _addressIndexMap[address.address.encoded] = address.index;
    if (_lastIndex < address.index) {
      _lastIndex = address.index;
    }
  }
}
