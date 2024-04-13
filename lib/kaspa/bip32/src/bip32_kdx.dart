import 'dart:convert';
import 'dart:typed_data';

import '../../bs58check/bs58check.dart' as bs58check;
import 'bip32_base.dart';
import 'models/networks.dart' as networks;
import 'models/networks.dart';
import 'utils/crypto.dart';
import 'utils/ecurve.dart' as ecc;

class BIP32Kdx extends BIP32 {
  BIP32Kdx(super._d, super._Q, super.chainCode, super.network);

  @override
  BIP32 derive(int index) {
    if (index > uInt32Max || index < 0) throw ArgumentError("Expected UInt32");
    final isHardened = index >= highestBit;
    Uint8List data = Uint8List(37);
    if (isHardened) {
      if (isNeutered()) {
        throw ArgumentError("Missing private key for hardened child key");
      }
      data[0] = 0x00;
      data.setRange(1, 33, privateKey!);
      data.buffer.asByteData().setUint32(33, index);
    } else {
      data = Uint8List(36);
      data.setRange(0, 32, publicKey.sublist(1));
      data.buffer.asByteData().setUint32(32, index);
    }
    final i = hmacSHA512(chainCode, data);
    final il = i.sublist(0, 32);
    final ir = i.sublist(32);
    if (!ecc.isPrivate(il)) {
      return derive(index + 1);
    }
    BIP32Kdx hd;
    if (!isNeutered()) {
      final ki = ecc.privateAdd(privateKey!, il);
      if (ki == null) return derive(index + 1);
      hd = BIP32Kdx.fromPrivateKey(ki, ir, network);
    } else {
      final ki = ecc.pointAddScalar(publicKey, il, true);
      if (ki == null) return derive(index + 1);
      hd = BIP32Kdx.fromPublicKey(ki, ir, network);
    }
    hd.depth = depth + 1;
    hd.index = index;
    hd.parentFingerprint = fingerprint.buffer.asByteData().getUint32(0);
    return hd;
  }

  factory BIP32Kdx.fromBase58(String string, [NetworkType? nw]) {
    Uint8List buffer = bs58check.decode(string);
    if (buffer.length != 78) throw ArgumentError("Invalid buffer length");
    NetworkType network = nw ?? networks.bitcoin;
    ByteData bytes = buffer.buffer.asByteData();
    // 4 bytes: version bytes
    var version = bytes.getUint32(0);
    if (version != network.bip32.private && version != network.bip32.public) {
      throw ArgumentError("Invalid network version");
    }
    // 1 byte: depth: 0x00 for master nodes, 0x01 for level-1 descendants, ...
    var depth = buffer[4];

    // 4 bytes: the fingerprint of the parent's key (0x00000000 if master key)
    var parentFingerprint = bytes.getUint32(5);
    if (depth == 0) {
      if (parentFingerprint != 0x00000000) {
        throw ArgumentError("Invalid parent fingerprint");
      }
    }

    // 4 bytes: child number. This is the number i in xi = xpar/i, with xi the key being serialized.
    // This is encoded in MSB order. (0x00000000 if master key)
    var index = bytes.getUint32(9);
    if (depth == 0 && index != 0) throw ArgumentError("Invalid index");

    // 32 bytes: the chain code
    Uint8List chainCode = buffer.sublist(13, 45);
    BIP32Kdx hd;

    // 33 bytes: private key data (0x00 + k)
    if (version == network.bip32.private) {
      if (bytes.getUint8(45) != 0x00) {
        throw ArgumentError("Invalid private key");
      }
      Uint8List k = buffer.sublist(46, 78);
      hd = BIP32Kdx.fromPrivateKey(k, chainCode, network);
    } else {
      // 33 bytes: public key data (0x02 + X or 0x03 + X)
      Uint8List X = buffer.sublist(45, 78);
      hd = BIP32Kdx.fromPublicKey(X, chainCode, network);
    }
    hd.depth = depth;
    hd.index = index;
    hd.parentFingerprint = parentFingerprint;
    return hd;
  }

  factory BIP32Kdx.fromPublicKey(
    Uint8List publicKey,
    Uint8List chainCode, [
    NetworkType? nw,
  ]) {
    NetworkType network = nw ?? networks.bitcoin;
    if (!ecc.isPoint(publicKey)) {
      throw ArgumentError("Point is not on the curve");
    }
    return BIP32Kdx(null, publicKey, chainCode, network);
  }

  factory BIP32Kdx.fromPrivateKey(
    Uint8List privateKey,
    Uint8List chainCode, [
    NetworkType? nw,
  ]) {
    NetworkType network = nw ?? networks.bitcoin;
    if (privateKey.length != 32) {
      throw ArgumentError(
        "Expected property privateKey of type Buffer(Length: 32)",
      );
    }
    if (!ecc.isPrivate(privateKey)) {
      throw ArgumentError("Private key not in range [1, n]");
    }
    return BIP32Kdx(privateKey, null, chainCode, network);
  }

  factory BIP32Kdx.fromSeed(Uint8List seed, [NetworkType? nw]) {
    if (seed.length < 16) {
      throw ArgumentError("Seed should be at least 128 bits");
    }
    if (seed.length > 64) {
      throw ArgumentError("Seed should be at most 512 bits");
    }
    NetworkType network = nw ?? networks.bitcoin;
    final i = hmacSHA512(utf8.encode("Bitcoin seed"), seed);
    final il = i.sublist(0, 32);
    final ir = i.sublist(32);
    return BIP32Kdx.fromPrivateKey(il, ir, network);
  }
}
