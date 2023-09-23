import 'dart:typed_data';

import 'kaspa.dart';

typedef LegacyPubKeyCallback = Future<Uint8List> Function({
  required int typeIndex,
  required int index,
});

abstract class HdAddressGenerator {
  Address get mainAddress;
  AddressPrefix get addressPrefix => mainAddress.prefix;

  const HdAddressGenerator();
  Future<Address> receiveAddressAtIndex(int index) =>
      addressAtIndex(typeIndex: 0, index: index);

  Future<Address> changeAddressAtIndex(int index) =>
      addressAtIndex(typeIndex: 1, index: index);

  Future<Address> addressAtIndex({
    required int typeIndex,
    required int index,
  });
}

class SchnorrAddressGenerator extends HdAddressGenerator {
  late final HdWalletView wallet;
  late final Address mainAddress;

  SchnorrAddressGenerator({
    required String hdPublicKey,
    required AddressPrefix addressPrefix,
  }) {
    wallet = HdWalletViewSchnorr(hdPublicKey);
    final pubKey = wallet.derivePublicKey(typeIndex: 0, index: 0);
    mainAddress = Address.publicKey(prefix: addressPrefix, publicKey: pubKey);
  }

  Future<Address> addressAtIndex({
    required int typeIndex,
    required int index,
  }) async {
    final pubKey = wallet.derivePublicKey(typeIndex: typeIndex, index: index);
    return Address.publicKey(prefix: addressPrefix, publicKey: pubKey);
  }
}

class EcdsaAddressGenerator extends HdAddressGenerator {
  late final HdWalletView wallet;
  late final Address mainAddress;

  EcdsaAddressGenerator({
    required String hdPublicKey,
    required AddressPrefix addressPrefix,
  }) {
    wallet = HdWalletViewECDSA(hdPublicKey);
    final pubKey = wallet.derivePublicKey(typeIndex: 0, index: 0);
    mainAddress = Address.pubKeyECDSA(prefix: addressPrefix, publicKey: pubKey);
  }

  Future<Address> addressAtIndex({
    required int typeIndex,
    required int index,
  }) async {
    final pubKey = wallet.derivePublicKey(typeIndex: typeIndex, index: index);
    return Address.pubKeyECDSA(prefix: addressPrefix, publicKey: pubKey);
  }
}

class LegacyAddressGenerator extends HdAddressGenerator {
  final LegacyPubKeyCallback pubKeyCallback;
  final Address mainAddress;
  LegacyAddressGenerator({
    required this.pubKeyCallback,
    required this.mainAddress,
  });

  Future<Address> addressAtIndex({
    required int typeIndex,
    required int index,
  }) async {
    final publicKey = await pubKeyCallback(index: index, typeIndex: typeIndex);
    return Address.publicKey(prefix: addressPrefix, publicKey: publicKey);
  }
}
