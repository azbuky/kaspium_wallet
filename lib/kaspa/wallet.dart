import 'dart:typed_data';

import 'package:coinslib/coinslib.dart';

import '../utils.dart';
import 'bip32_kdx.dart';
import 'network.dart';
import 'types/address_prefix.dart';

const kSeedSize = 64;

const kKaspaDerivationPath = "m/44'/111111'/0'";
const kLegacyDerivationPath = "m/44'/972/0'";

String convertHdPublicKey(String hdPubKey, KaspaNetwork toNetwork) {
  final network = networkForKpub(hdPubKey);
  if (network == toNetwork) {
    return hdPubKey;
  }

  final networkType = networkTypeForNetwork(network);
  final bip32 = BIP32.fromBase58(hdPubKey, networkType);
  final toNetworkType = networkTypeForNetwork(toNetwork);
  bip32.network = toNetworkType;
  return bip32.toBase58();
}

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

enum HdWalletType {
  schnorr,
  ecdsa,
  legacy,
}

class KeyPair {
  final Uint8List privateKey;
  final Uint8List publicKey;

  const KeyPair({required this.privateKey, required this.publicKey});
}

abstract class HdWalletView {
  Uint8List derivePublicKey({
    required int typeIndex,
    required int index,
  });
}

class HdWalletViewECDSA extends HdWalletView {
  late final BIP32 _bip32;

  HdWalletViewECDSA(String hdPublicKey) {
    final network = networkForKpub(hdPublicKey);
    final networkType = networkTypeForNetwork(network);
    _bip32 = BIP32.fromBase58(hdPublicKey, networkType);
  }

  @override
  Uint8List derivePublicKey({
    required int typeIndex,
    required int index,
  }) {
    final key = _bip32.derive(typeIndex).derive(index);
    return key.publicKey;
  }
}

class HdWalletViewSchnorr extends HdWalletViewECDSA {
  HdWalletViewSchnorr(String hdPublicKey) : super(hdPublicKey);

  @override
  Uint8List derivePublicKey({
    required int typeIndex,
    required int index,
  }) {
    final pubKey = super.derivePublicKey(typeIndex: typeIndex, index: index);
    return pubKey.sublist(1);
  }
}

abstract class HdWallet implements HdWalletView {
  HdWalletType get type;

  const HdWallet._();

  factory HdWallet.forSeed(Uint8List seed, {required HdWalletType type}) {
    if (seed.length != kSeedSize) {
      throw Exception('Invalid seed length');
    }
    return switch (type) {
      HdWalletType.ecdsa => HdWalletEcdsa(seed),
      HdWalletType.schnorr => HdWalletSchnorr(seed),
      HdWalletType.legacy => HdWalletLegacy(seed),
    };
  }

  factory HdWallet.forSeedHex(String seed, {required HdWalletType type}) =>
      HdWallet.forSeed(hexToBytes(seed), type: type);

  KeyPair deriveKeyPair({
    required int typeIndex,
    required int index,
  });

  Uint8List derivePublicKey({
    required int typeIndex,
    required int index,
  }) {
    final keyPair = deriveKeyPair(typeIndex: typeIndex, index: index);
    return keyPair.publicKey;
  }

  static String hdPublicKeyFromSeed(
    Uint8List seed, {
    required NetworkType networkType,
  }) {
    final bip32 = BIP32.fromSeed(seed, networkType);
    final child = bip32.derivePath(kKaspaDerivationPath);
    return child.neutered().toBase58();
  }
}

class HdWalletEcdsa extends HdWallet {
  late final BIP32 _bip32;

  HdWalletEcdsa(Uint8List seed) : super._() {
    _bip32 = BIP32.fromSeed(seed).derivePath(kKaspaDerivationPath);
  }

  @override
  HdWalletType get type => HdWalletType.ecdsa;

  @override
  KeyPair deriveKeyPair({required int typeIndex, required int index}) {
    final key = _bip32.derive(typeIndex).derive(index);

    return KeyPair(
      privateKey: key.privateKey!,
      publicKey: key.publicKey,
    );
  }
}

class HdWalletSchnorr extends HdWalletEcdsa {
  HdWalletSchnorr(Uint8List seed) : super(seed);

  @override
  HdWalletType get type => HdWalletType.schnorr;

  @override
  KeyPair deriveKeyPair({required int typeIndex, required int index}) {
    final key = super.deriveKeyPair(typeIndex: typeIndex, index: index);

    return KeyPair(
      privateKey: key.privateKey,
      publicKey: key.publicKey.sublist(1),
    );
  }
}

class HdWalletLegacy extends HdWallet {
  late final BIP32 _bip32;

  HdWalletLegacy(Uint8List seed) : super._() {
    _bip32 = BIP32Kdx.fromSeed(seed);
  }

  @override
  HdWalletType get type => HdWalletType.legacy;

  @override
  KeyPair deriveKeyPair({required int typeIndex, required int index}) {
    final key = _bip32.derivePath("$kLegacyDerivationPath/$typeIndex'/$index'");
    return KeyPair(
      privateKey: key.privateKey!,
      publicKey: key.publicKey.sublist(1),
    );
  }
}
