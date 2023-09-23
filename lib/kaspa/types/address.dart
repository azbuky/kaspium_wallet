import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../bech32/bech32.dart' as bech32;
import '../kaspa.dart';

part 'address.freezed.dart';

const kAddressIdPubKey = 0x00;
const kAddressIdPubKeyECDSA = 0x01;
const kAddressIdScriptHash = 0x08;

const kPublicKeyLength = 32;
const kPublicKeySizeECDSA = 33;

class UnknownAddressTypeException implements Exception {
  final int type;

  UnknownAddressTypeException(this.type);

  @override
  String toString() => 'UnknownAddressType: $type';
}

@freezed
class Address with _$Address {
  Address._();
  @Assert('publicKey.length == kPublicKeyLength')
  factory Address.publicKey({
    required AddressPrefix prefix,
    required Uint8List publicKey,
  }) = _AddressPublicKey;

  @Assert('publicKey.length == kPublicKeySizeECDSA')
  factory Address.pubKeyECDSA({
    required AddressPrefix prefix,
    required Uint8List publicKey,
  }) = _AddressPubKeyECDSA;

  factory Address.scriptHash({
    required AddressPrefix prefix,
    required Uint8List hash,
  }) = _AddressScriptHash;

  String encodeAddress() {
    return when(
      publicKey: (prefix, publicKey) => _encodeAddress(
        prefix: prefix,
        payload: publicKey,
        version: kAddressIdPubKey,
      ),
      pubKeyECDSA: (prefix, publicKey) => _encodeAddress(
        prefix: prefix,
        payload: publicKey,
        version: kAddressIdPubKeyECDSA,
      ),
      scriptHash: (prefix, hash) => _encodeAddress(
        prefix: prefix,
        payload: hash,
        version: kAddressIdScriptHash,
      ),
    );
  }

  String _encodeAddress({
    required AddressPrefix prefix,
    required Uint8List payload,
    required int version,
  }) {
    final words = bech32.bytesToWords(([version] + payload).asUint8List());
    final data = bech32.Bech32(prefix.toString(), words);
    final address = bech32.bech32.encode(data);
    return address;
  }

  static Address decodeAddress(
    String address, [
    AddressPrefix expectedPrefix = AddressPrefix.unknown,
  ]) {
    final decoded = bech32.bech32.decode(address);
    final prefix = AddressPrefix.parseBech32Prefix(decoded.hrp);

    if (expectedPrefix != AddressPrefix.unknown && expectedPrefix != prefix) {
      throw Exception('Invalid prefix');
    }

    final data = bech32.wordsToBytes(decoded.data.asUint8List());
    final version = data.first;
    final payload = data.sublist(1);

    switch (version) {
      case kAddressIdPubKey:
        return Address.publicKey(prefix: prefix, publicKey: payload);
      case kAddressIdPubKeyECDSA:
        return Address.pubKeyECDSA(prefix: prefix, publicKey: payload);
      case kAddressIdScriptHash:
        return Address.scriptHash(prefix: prefix, hash: payload);
      default:
        throw UnknownAddressTypeException(version);
    }
  }

  Uint8List scriptAddress() {
    return when(
      publicKey: (_, publicKey) => UnmodifiableUint8ListView(publicKey),
      pubKeyECDSA: (_, publicKey) => UnmodifiableUint8ListView(publicKey),
      scriptHash: (_, hash) => UnmodifiableUint8ListView(hash),
    );
  }

  bool isForPrefix(AddressPrefix prefix) => this.prefix == prefix;

  @override
  String toString() => encoded;

  late final String encoded = encodeAddress();

  static Address? tryParse(
    String address, {
    required AddressPrefix expectedPrefix,
  }) {
    try {
      return decodeAddress(address, expectedPrefix);
    } catch (_) {
      return null;
    }
  }

  static bool isValid(String address, AddressPrefix expectedPrefix) =>
      Address.tryParse(address, expectedPrefix: expectedPrefix) != null;

  factory Address.fromJson(String json) {
    return decodeAddress(json);
  }

  String toJson() {
    return encoded;
  }
}
