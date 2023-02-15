import 'dart:typed_data';

import 'package:coinslib/coinslib.dart';

import '../utils.dart';
import 'bip32_kdx.dart';
import 'wallet/version.dart';

const kSeedSize = 64;

class KeyPair {
  final Uint8List privateKey;
  final Uint8List publicKey;
  const KeyPair({
    required this.privateKey,
    required this.publicKey,
  });
}

class Wallet {
  final Uint8List _seed;
  final bool _isKDXCompatible;
  const Wallet._(this._seed, this._isKDXCompatible);

  String hdPublicKey(NetworkType networkType) =>
      Wallet.hdPublicKeyFromSeed(_seed, networkType: networkType);

  factory Wallet.forSeed(Uint8List seed, {bool isKDXCompatible = false}) {
    if (seed.length != kSeedSize) {
      throw Exception('Invalid seed length');
    }
    return Wallet._(seed, isKDXCompatible);
  }

  factory Wallet.forSeedHex(String seed) => Wallet.forSeed(hexToBytes(seed));

  factory Wallet.forEntropy(Uint8List entropy) =>
      Wallet.forEntropyHex(entropy.hex);

  factory Wallet.forEntropyHex(String entropyHex) =>
      Wallet.forMnemonic(entropyHexToMnemonic(entropyHex));

  factory Wallet.forMnemonic(String mnemonic) =>
      Wallet.forSeed(mnemonicToSeed(mnemonic),
          isKDXCompatible: mnemonic.length == 12);

  KeyPair deriveKeyPair({
    required int typeIndex,
    required int index,
  }) {
    return _isKDXCompatible
        ? deriveKeyPairFromSeedKdx(_seed, typeIndex: typeIndex, index: index)
        : deriveKeyPairFromSeed(_seed, typeIndex: typeIndex, index: index);
  }

  static KeyPair deriveKeyPairFromSeed(
    Uint8List seed, {
    required int typeIndex,
    required int index,
  }) {
    final bip32 = BIP32.fromSeed(seed, kaspaMainnet);
    final child = bip32.derivePath("m/44'/111111'/0'");
    final key = child.derive(typeIndex).derive(index);

    return KeyPair(
      privateKey: key.privateKey!,
      publicKey: key.publicKey.sublist(1),
    );
  }

  static String hdPublicKeyFromSeed(
    Uint8List seed, {
    required NetworkType networkType,
  }) {
    final bip32 = BIP32.fromSeed(seed, networkType);
    final child = bip32.derivePath("m/44'/111111'/0'");
    return child.neutered().toBase58();
  }

  static KeyPair deriveKeyPairFromSeedKdx(
    Uint8List seed, {
    required int typeIndex,
    required int index,
  }) {
    final bip32 = BIP32Kdx.fromSeed(seed, kaspaMainnet);
    final key = bip32.derivePath("m/44'/972/0'/$typeIndex'/$index'");
    return KeyPair(
      privateKey: key.privateKey!,
      publicKey: key.publicKey.sublist(1),
    );
  }

  static Uint8List derivePublicKeyFromHDPublicKey(
    String hdPublicKey, {
    required typeIndex,
    required int index,
  }) {
    final bip32 = BIP32.fromBase58(hdPublicKey, kaspaMainnet);
    final key = bip32.derive(typeIndex).derive(index);

    return key.publicKey.sublist(1);
  }
}
