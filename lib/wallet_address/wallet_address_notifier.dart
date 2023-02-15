import 'package:coinslib/coinslib.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

import '../database/boxes.dart';
import '../kaspa/kaspa.dart';
import '../util/safe_change_notifier.dart';
import 'wallet_address.dart';

String _addressKey({
  required int index,
  required AddressType type,
}) =>
    '$type#$index';

abstract class WalletAddressAware {
  Iterable<String> get allAddresses;
  bool containsAddress(String address);
  String? keyForAddress(String address);
}

class WalletAddressNotifier extends SafeChangeNotifier
    implements WalletAddressAware {
  late final Map<int, WalletAddress> _receiveAddresses;
  late final Map<String, int> _receiveAddressIndexMap;

  late final Map<int, WalletAddress> _changeAddresses;
  late final Map<String, int> _changeAddressIndexMap;

  late final TypedBox<WalletAddress> _walletAddressBox;

  final BIP32 hdPublicKey;
  final AddressPrefix addressPrefix;

  int lastUsedReceiveIndex = 0;
  int lastUsedChangeIndex = 0;

  WalletAddress get receiveAddress => _receiveAddresses[lastUsedReceiveIndex]!;
  WalletAddress get selected => receiveAddress;

  WalletAddress? getReceiveAddressWithIndex(int index) =>
      _receiveAddresses[index];
  WalletAddress? getChangeAddressWithIndex(int index) =>
      _changeAddresses[index];

  IList<WalletAddress> get receiveAddresses =>
      IList(_receiveAddresses.values).sort(
        (a1, a2) => a1.index.compareTo(a2.index),
      );
  IList<WalletAddress> get changeAddresses =>
      IList(_changeAddresses.values).sort(
        (a1, a2) => a1.index.compareTo(a2.index),
      );

  Iterable<String> get allAddresses =>
      (_receiveAddresses.values.toList() + _changeAddresses.values.toList())
          .map((e) => e.address.encoded);

  int get firstAvailableIndex {
    return lastUsedReceiveIndex + 1;
  }

  WalletAddress get nextReceiveAddress {
    final index = lastUsedReceiveIndex + 1;
    final bip32 = hdPublicKey.derive(0).derive(index);
    final address = Address.fromPublicKey(
      bip32.publicKey.sublist(1),
      prefix: addressPrefix,
    );
    final walletAddress = WalletAddress(
      index: index,
      type: AddressType.receive,
      address: address,
      name: 'Receive $index',
    );
    return walletAddress;
  }

  WalletAddress get nextChangeAddress {
    final index = lastUsedChangeIndex + 1;
    final bip32 = hdPublicKey.derive(1).derive(index);
    final address = Address.fromPublicKey(
      bip32.publicKey.sublist(1),
      prefix: addressPrefix,
    );
    final walletAddress = WalletAddress(
      index: index,
      type: AddressType.change,
      address: address,
      name: 'Change $index',
    );
    return walletAddress;
  }

  void initAddresses(Map<String, WalletAddress> allAddresses) {
    for (final address in allAddresses.values) {
      if (address.type == AddressType.receive) {
        _receiveAddresses[address.index] = address;
        if (lastUsedReceiveIndex < address.index) {
          lastUsedReceiveIndex = address.index;
        }
      } else {
        _changeAddresses[address.index] = address;
        if (lastUsedChangeIndex < address.index) {
          lastUsedChangeIndex = address.index;
        }
      }
    }

    final bip32 = hdPublicKey.derive(0).derive(lastUsedReceiveIndex);
    final receiveAddress = Address.fromPublicKey(
      bip32.publicKey.sublist(1),
      prefix: addressPrefix,
    );

    _receiveAddresses.putIfAbsent(
      lastUsedReceiveIndex,
      () {
        final address = WalletAddress(
          index: lastUsedReceiveIndex,
          type: AddressType.receive,
          address: receiveAddress,
          name: 'Receive $lastUsedReceiveIndex',
        );
        _walletAddressBox.set(
            _addressKey(
              index: lastUsedReceiveIndex,
              type: AddressType.receive,
            ),
            address);
        return address;
      },
    );

    _receiveAddressIndexMap = Map.fromEntries(_receiveAddresses.values.map(
      (e) => MapEntry(e.encoded, e.index),
    ));

    if (lastUsedChangeIndex > 0) {
      final bip32Change = hdPublicKey.derive(1).derive(lastUsedChangeIndex);
      final changeAddress = Address.fromPublicKey(
        bip32Change.publicKey.sublist(1),
        prefix: addressPrefix,
      );
      _changeAddresses.putIfAbsent(lastUsedChangeIndex, () {
        final address = WalletAddress(
            index: lastUsedChangeIndex,
            type: AddressType.change,
            address: changeAddress,
            name: 'Change $lastUsedChangeIndex');
        _walletAddressBox.set(
            _addressKey(
              index: lastUsedChangeIndex,
              type: AddressType.change,
            ),
            address);
        return address;
      });
    }
    _changeAddressIndexMap = Map.fromEntries(_changeAddresses.values.map(
      (e) => MapEntry(e.encoded, e.index),
    ));
  }

  WalletAddressNotifier({
    required TypedBox<WalletAddress> addressBox,
    required this.hdPublicKey,
    //required KaspaApi api,
    required this.addressPrefix,
  }) {
    _receiveAddresses = {};
    _changeAddresses = {};
    _walletAddressBox = addressBox;

    final allAddresses = _walletAddressBox.getAll();
    initAddresses(allAddresses);
  }

  bool containsAddress(String address) {
    return containsReceiveAddress(address) || containsChangeAddress(address);
  }

  bool containsReceiveAddress(String address) {
    return indexOfReceiveAddress(address) != null;
  }

  bool containsChangeAddress(String address) {
    return indexOfChangeAddress(address) != null;
  }

  int? indexOfReceiveAddress(String address) {
    return _receiveAddressIndexMap[address];
  }

  int? indexOfChangeAddress(String address) {
    return _changeAddressIndexMap[address];
  }

  bool isAddressSelected(WalletAddress address) {
    return address.type == AddressType.receive &&
        address.index == selected.index;
  }

  String? nameForAddress(String address) {
    final name = _changeAddresses[_changeAddressIndexMap[address] ?? -1]?.name;
    if (name != null) {
      return name;
    }
    return _receiveAddresses[_receiveAddressIndexMap[address] ?? -1]?.name;
  }

  // Future<void> selectAccountAsync(WalletAddress address) async {
  //   if (address == selected) {
  //     return;
  //   }

  //   if (_receiveAddresses[address.index] == null) {
  //     _addAddress(address);
  //   }
  //   notifyListeners();
  // }

  // void removeAccount(WalletAddress address) {
  //   if (address.index == _receiveAddress.index) {
  //     return;
  //   }

  //   _receiveAddresses.remove(address.index);
  //   _walletAddressBox.remove(
  //     addressKey(
  //       index: address.index,
  //       type: address.type,
  //     ),
  //   );
  //   _receiveAddressIndexMap.remove(address.label);

  //   notifyListeners();
  // }

  void _addAddress(WalletAddress address) {
    switch (address.type) {
      case AddressType.receive:
        if (address.index > lastUsedReceiveIndex) {
          lastUsedReceiveIndex = address.index;
        }
        _receiveAddresses[address.index] = address;
        _receiveAddressIndexMap[address.encoded] = address.index;
        break;
      case AddressType.change:
        if (address.index > lastUsedChangeIndex) {
          lastUsedChangeIndex = address.index;
        }
        _changeAddresses[address.index] = address;
        _changeAddressIndexMap[address.encoded] = address.index;
        break;
    }

    _walletAddressBox.set(
        _addressKey(
          index: address.index,
          type: address.type,
        ),
        address);
  }

  void addAddress(WalletAddress address) {
    _addAddress(address);

    notifyListeners();
  }

  String? keyForAddress(String address) {
    final receiveIndex = indexOfReceiveAddress(address);
    if (receiveIndex != null) {
      return _addressKey(
        index: receiveIndex,
        type: AddressType.receive,
      );
    }
    final changeIndex = indexOfChangeAddress(address);
    if (changeIndex != null) {
      return _addressKey(
        index: changeIndex,
        type: AddressType.change,
      );
    }
    return null;
  }

  void changeAddressName(WalletAddress address, String name) {
    address = address.copyWith(name: name);
    final index = address.index;

    switch (address.type) {
      case AddressType.receive:
        _receiveAddresses[index] = address;
        _receiveAddressIndexMap[address.encoded] = index;
        break;
      case AddressType.change:
        _changeAddresses[index] = address;
        _changeAddressIndexMap[address.encoded] = index;
        break;
    }

    _walletAddressBox.set(
      _addressKey(
        index: address.index,
        type: address.type,
      ),
      address,
    );

    notifyListeners();
  }

  Future<Address> addressForIndex(int index, AddressType type) async {
    final typeIndex = type == AddressType.receive ? 0 : 1;
    final bip32 = hdPublicKey.derive(typeIndex).derive(index);
    final address = Address.fromPublicKey(
      bip32.publicKey.sublist(1),
      prefix: addressPrefix,
    );

    return address;
  }

  static Future<DiscoveryResult> addressDiscoveryFor({
    required BIP32 hdPublicKey,
    required AddressPrefix addressPrefix,
    required AddressType type,
    required int currentIndex,
    required KaspaClient client,
    required KaspaApi api,
    int maxGap = 5,
    int maxRetries = 3,
    void Function(AddressType type, int index)? onProgress,
  }) async {
    bool done = false;

    int retryCount = 0;
    int lastUsedIndex = currentIndex;

    final typeIndex = typeIndexForAddressType(type);

    final addresses = <WalletAddress>{};
    final unused = <WalletAddress>[];
    final txIds = <String>{};

    while (!done) {
      onProgress?.call(type, currentIndex);

      final bip32 = hdPublicKey.derive(typeIndex).derive(currentIndex);
      final address = Address.fromPublicKey(
        bip32.publicKey.sublist(1),
        prefix: addressPrefix,
      );

      final name = type == AddressType.receive
          ? 'Receive $currentIndex'
          : 'Change $currentIndex';
      final walletAddress = WalletAddress(
        index: currentIndex,
        type: type,
        address: address,
        name: name,
      );

      try {
        final address = walletAddress.address.encoded;
        final txLinks = await api.getTxLinks(address: address);

        for (final txLink in txLinks) {
          if (txLink.txReceived != null) {
            txIds.add(txLink.txReceived!);
          }
          if (txLink.txSpent != null) {
            txIds.add(txLink.txSpent!);
          }
        }

        if (txLinks.isNotEmpty) {
          addresses.addAll(unused);
          unused.clear();
          addresses.add(walletAddress);
          lastUsedIndex = currentIndex;
        } else {
          unused.add(walletAddress);
        }
        retryCount = 0;
      } catch (e) {
        retryCount += 1;
        await Future.delayed(const Duration(seconds: 1));
      }

      if (retryCount > maxRetries) {
        done = true;
      }

      if (currentIndex - lastUsedIndex >= maxGap) {
        if (unused.isNotEmpty && type == AddressType.receive) {
          addresses.add(unused.first);
        }
        done = true;
      }

      currentIndex++;
    }

    return DiscoveryResult(addresses: addresses, txIds: txIds);
  }

  static Future<DiscoveryResult> addressDiscovery({
    required BIP32 hdPublicKey,
    required AddressPrefix addressPrefix,
    required KaspaClient client,
    required KaspaApi api,
    required int startReceiveIndex,
    required int startChangeIndex,
    void Function(AddressType type, int index)? onProgress,
  }) async {
    final receiveResult = await addressDiscoveryFor(
      hdPublicKey: hdPublicKey,
      addressPrefix: addressPrefix,
      type: AddressType.receive,
      currentIndex: startReceiveIndex,
      client: client,
      api: api,
      onProgress: onProgress,
    );

    final changeResult = await addressDiscoveryFor(
      hdPublicKey: hdPublicKey,
      addressPrefix: addressPrefix,
      type: AddressType.change,
      currentIndex: startChangeIndex,
      client: client,
      api: api,
      onProgress: onProgress,
    );

    return DiscoveryResult(
      addresses: receiveResult.addresses.union(
        changeResult.addresses,
      ),
      txIds: receiveResult.txIds.union(
        changeResult.txIds,
      ),
    );
  }
}

class DiscoveryResult {
  final Set<WalletAddress> addresses;
  final Set<String> txIds;

  const DiscoveryResult({
    required this.addresses,
    required this.txIds,
  });
}
