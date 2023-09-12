import 'package:fast_immutable_collections/fast_immutable_collections.dart';

import '../database/boxes.dart';
import '../kaspa/kaspa.dart';
import '../util/safe_change_notifier.dart';
import 'wallet_address.dart';
import 'wallet_address_aware.dart';
import 'wallet_address_manager.dart';

class WalletAddressNotifier extends SafeChangeNotifier
    implements WalletAddressAware {
  late final WalletAddressManager _receiveAddressManager;
  late final WalletAddressManager _changeAddressManager;

  final TypedBox<WalletAddress> _walletAddressBox;
  final HdAddressGenerator addressGenerator;
  final AddressNameCallback addressNameCallback;

  WalletAddress get receiveAddress => _receiveAddressManager.lastUsedAddress;
  WalletAddress get selected => receiveAddress;

  WalletAddress? getReceiveAddressWithIndex(int index) =>
      _receiveAddressManager.addressAtIndex(index);
  WalletAddress? getChangeAddressWithIndex(int index) =>
      _changeAddressManager.addressAtIndex(index);

  IList<WalletAddress> get receiveAddresses =>
      _receiveAddressManager.orderedAddresses;
  IList<WalletAddress> get changeAddresses =>
      _changeAddressManager.orderedAddresses;

  int get nextUnusedReceiveIndex => _receiveAddressManager.nextUnusedIndex;
  int get nextUnusedChangeIndex => _changeAddressManager.nextUnusedIndex;

  Iterable<String> get allAddresses => _receiveAddressManager.addresses
      .followedBy(_changeAddressManager.addresses);

  Future<WalletAddress> get nextReceiveAddress async {
    final index = _receiveAddressManager.nextUnusedIndex;
    final type = AddressType.receive;
    final address = await addressGenerator.addressAtIndex(
      typeIndex: type.index,
      index: index,
    );

    final walletAddress = WalletAddress(
      index: index,
      type: type,
      address: address,
      name: addressNameCallback(type, index),
    );
    return walletAddress;
  }

  Future<WalletAddress> get nextChangeAddress async {
    final index = _changeAddressManager.nextUnusedIndex;
    final type = AddressType.change;
    final address = await addressGenerator.addressAtIndex(
      typeIndex: type.index,
      index: index,
    );

    final walletAddress = WalletAddress(
      index: index,
      type: AddressType.change,
      address: address,
      name: addressNameCallback(type, index),
    );
    return walletAddress;
  }

  WalletAddressNotifier({
    required TypedBox<WalletAddress> addressBox,
    required this.addressGenerator,
    required this.addressNameCallback,
  }) : _walletAddressBox = addressBox {
    final allAddresses = _walletAddressBox.getAll();

    final index = 0;
    final type = AddressType.receive;
    final defaultReceiveAddress = WalletAddress(
      index: index,
      type: type,
      name: addressNameCallback(type, index),
      address: addressGenerator.mainAddress,
    );

    _receiveAddressManager = WalletAddressManager(
      type: AddressType.receive,
      addresses: allAddresses.values.followedBy([defaultReceiveAddress]),
    );

    _changeAddressManager = WalletAddressManager(
      type: AddressType.change,
      addresses: allAddresses.values,
    );
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
      _receiveAddressManager.indexOfAddress(address);

  int? indexOfChangeAddress(String address) =>
      _changeAddressManager.indexOfAddress(address);

  bool isAddressSelected(WalletAddress address) {
    return address.type == AddressType.receive &&
        address.index == selected.index;
  }

  String? nameForAddress(String address) {
    return _receiveAddressManager.nameForAddress(address) ??
        _changeAddressManager.nameForAddress(address);
  }

  Future<void> _addAddress(WalletAddress address) {
    switch (address.type) {
      case AddressType.receive:
        _receiveAddressManager.addAddress(address);
        break;
      case AddressType.change:
        _changeAddressManager.addAddress(address);
        break;
    }

    return _walletAddressBox.set(address.key, address);
  }

  Future<void> addAddress(WalletAddress address) async {
    await _addAddress(address);

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
        _receiveAddressManager.updateAddress(address);
        break;
      case AddressType.change:
        _changeAddressManager.updateAddress(address);
        break;
    }

    await _walletAddressBox.set(address.key, address);

    notifyListeners();
  }
}
