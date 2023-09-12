import 'package:fast_immutable_collections/fast_immutable_collections.dart';

import '../database/boxes.dart';
import '../kaspa/kaspa.dart';
import '../util/safe_change_notifier.dart';
import 'wallet_address.dart';
import 'wallet_address_aware.dart';
import 'wallet_address_manager.dart';

class WalletAddressNotifier extends SafeChangeNotifier
    implements WalletAddressAware {
  late final WalletAddressManager _receive;
  late final WalletAddressManager _change;

  final TypedBox<WalletAddress> _walletAddressBox;
  final HdAddressGenerator addressGenerator;
  final AddressNameCallback addressNameCallback;

  late final defaultReceiveAddress = WalletAddress(
    index: 0,
    type: AddressType.receive,
    name: addressNameCallback(AddressType.receive, 0),
    address: addressGenerator.mainAddress,
    used: false,
  );

  WalletAddress get receiveAddress =>
      _receive.nextUnusedAddress ??
      _receive.lastUsedAddress ??
      defaultReceiveAddress;
  WalletAddress get selected => receiveAddress;

  WalletAddress? getReceiveAddressWithIndex(int index) =>
      _receive.addressAtIndex(index);
  WalletAddress? getChangeAddressWithIndex(int index) =>
      _change.addressAtIndex(index);

  IList<WalletAddress> get receiveAddresses => _receive.usedAddresses
      .addAll(receiveAddress.used ? const [] : [receiveAddress]);
  IList<WalletAddress> get changeAddresses => _change.usedAddresses;

  int get lastUsedReceiveIndex => _receive.lastUsedIndex;
  int get lastUsedChangeIndex => _change.lastUsedIndex;

  IList<String> get allAddresses =>
      IList(_receive.allAddresses.followedBy(_change.allAddresses));

  Future<WalletAddress> get nextChangeAddress async {
    final index = _change.nextUnusedIndex;

    final walletAddress = await _getWalletAddress(
      index: index,
      type: AddressType.change,
    );
    return walletAddress;
  }

  Future<WalletAddress> _getWalletAddress({
    required int index,
    required AddressType type,
  }) async {
    final cached = switch (type) {
      AddressType.receive => _receive.addressAtIndex(index),
      AddressType.change => _change.addressAtIndex(index),
    };
    if (cached != null) {
      return cached;
    }

    final address = await addressGenerator.addressAtIndex(
      typeIndex: type.index,
      index: index,
    );
    final walletAddress = WalletAddress(
      index: index,
      type: type,
      address: address,
      name: addressNameCallback(type, index),
      used: false,
    );
    return walletAddress;
  }

  WalletAddressNotifier({
    required TypedBox<WalletAddress> addressBox,
    required this.addressGenerator,
    required this.addressNameCallback,
  }) : _walletAddressBox = addressBox {
    final allAddresses = _walletAddressBox.getAll();
    final bufferSize = 100;

    _receive = WalletAddressManager(
      type: AddressType.receive,
      bufferSize: bufferSize,
      addresses: allAddresses.values,
    );

    _change = WalletAddressManager(
      type: AddressType.change,
      bufferSize: bufferSize,
      addresses: allAddresses.values,
    );
    fillMissingAddresses();
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

  int? indexOfReceiveAddress(String address) =>
      _receive.indexOfAddress(address);

  int? indexOfChangeAddress(String address) => _change.indexOfAddress(address);

  bool isAddressSelected(WalletAddress address) {
    return address.type == AddressType.receive &&
        address.index == selected.index;
  }

  String? nameForAddress(String address) {
    return _receive.nameForAddress(address) ?? _change.nameForAddress(address);
  }

  Future<void> _addAddress(WalletAddress address) async {
    switch (address.type) {
      case AddressType.receive:
        _receive.updateAddress(address);
        break;
      case AddressType.change:
        _change.updateAddress(address);
        break;
    }

    return _walletAddressBox.set(address.key, address);
  }

  Future<void> addNewReceiveAddress() => markUsed([receiveAddress.encoded]);

  Future<void> addAddress(WalletAddress address) async {
    await _addAddress(address);

    fillMissingAddresses();

    notifyListeners();
  }

  Future<void> addAddresses(Iterable<WalletAddress> addresses) async {
    if (addresses.isEmpty) {
      return;
    }

    for (final address in addresses) {
      await _addAddress(address);
    }

    fillMissingAddresses();

    notifyListeners();
  }

  String? keyForAddress(String address) {
    final receiveIndex = indexOfReceiveAddress(address);
    if (receiveIndex != null) {
      return WalletAddress.keyForAddressAtIndex(
        receiveIndex,
        type: AddressType.receive,
      );
    }
    final changeIndex = indexOfChangeAddress(address);
    if (changeIndex != null) {
      return WalletAddress.keyForAddressAtIndex(
        changeIndex,
        type: AddressType.change,
      );
    }
    return null;
  }

  // Change to updateAddress
  Future<void> changeAddressName(WalletAddress address, String name) async {
    address = address.copyWith(name: name);
    switch (address.type) {
      case AddressType.receive:
        _receive.updateAddress(address);
        break;
      case AddressType.change:
        _change.updateAddress(address);
        break;
    }

    await _walletAddressBox.set(address.key, address);

    notifyListeners();
  }

  Future<void> fillMissingAddresses() async {
    bool updated = false;
    for (final index in _receive.missingAddresses) {
      final address = await _getWalletAddress(
        index: index,
        type: AddressType.receive,
      );
      _receive.updateAddress(address);
      await _walletAddressBox.set(address.key, address);
      updated = true;
    }

    for (final index in _change.missingAddresses) {
      final address = await _getWalletAddress(
        index: index,
        type: AddressType.change,
      );
      _change.updateAddress(address);
      await _walletAddressBox.set(address.key, address);
      updated = true;
    }

    if (updated) {
      notifyListeners();
    }
  }

  WalletAddress? getAddress(String address) {
    final receive = _receive.getAddress(address);
    if (receive != null) {
      return receive;
    }
    final change = _change.getAddress(address);
    if (change != null) {
      return change;
    }
    return null;
  }

  Future<void> markUsed(Iterable<String> addresses) async {
    for (final address in addresses) {
      final wa = getAddress(address);
      if (wa == null || wa.used) {
        continue;
      }
      await _addAddress(wa.copyWith(used: true));
    }
    fillMissingAddresses();
    notifyListeners();
  }
}
