import 'dart:convert';
import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';
import 'package:hex/hex.dart';
import 'package:pointycastle/digests/blake2b.dart';
// ignore: implementation_imports
import 'package:pointycastle/src/utils.dart' as p_utils;

import 'bip39/bip39.dart' as bip39;

const kaspaDecimals = 8;
const _seedLength = 128;

bool isValidSeed(String seed) {
  return isHex(seed) && seed.length == _seedLength;
}

extension ToBigInt on Int64 {
  BigInt toUnsignedBigInt() => BigInt.parse(toStringUnsigned());
}

extension ToInt64 on BigInt {
  Int64 toInt64() =>
      Int64.fromBytesBigEndian(leftPadBytes(bigIntToBytesUnsigned(this), 8));
}

/// Converts a `List<int>` to a [Uint8List].
///
/// Attempts to cast to a [Uint8List] first to avoid creating an unnecessary
/// copy.
extension AsUint8List on List<int> {
  Uint8List asUint8List() {
    final self = this; // Local variable to allow automatic type promotion.
    return (self is Uint8List) ? self : Uint8List.fromList(this);
  }
}

extension Uint8ListUtils on Uint8List {
  String get hex => bytesToHex(this);
  String get toBase64 => bytesToBase64(this);
  Uint8List get complement => Uint8List.fromList(map((e) => ~e).toList());
}

Uint8List leftPadBytes(Uint8List bytes, int size) {
  if (bytes.lengthInBytes >= size) {
    return bytes;
  }

  final result = Uint8List(size);
  result.setAll(size - bytes.lengthInBytes, bytes);
  return result;
}

Uint8List rightPadBytes(Uint8List bytes, int size) {
  if (bytes.lengthInBytes >= size) {
    return bytes;
  }

  final result = Uint8List(size);
  result.setAll(0, bytes);
  return result;
}

String bytesToHex(Uint8List bytes) => HEX.encode(bytes);

Uint8List hexToBytes(String hex) => Uint8List.fromList(HEX.decode(hex));

String bytesToBase64(Uint8List bytes) => base64.encode(bytes);

Uint8List base64ToBytes(String data) => base64.decode(data);

Uint8List stringToBytesUtf8(String str) => utf8.encode(str);

String bytesUtf8ToString(Uint8List bytes) => utf8.decode(bytes);

BigInt bytesToBigInt(Uint8List bytes) => p_utils.decodeBigInt(bytes);

BigInt bytesToBigIntUnsigned(Uint8List bytes) =>
    p_utils.decodeBigIntWithSign(1, bytes);

Uint8List bigIntToBytes(BigInt bigInt) => p_utils.encodeBigInt(bigInt);
Uint8List bigIntToBytesUnsigned(BigInt bigInt) =>
    p_utils.encodeBigIntAsUnsigned(bigInt);

RegExp _hexRegExp = RegExp(r'^[0-9a-fA-F]+$');

bool isHex(String hex) => _hexRegExp.hasMatch(hex);

Uint8List digest({required Uint8List data, int digestSize = 32}) {
  final blake2b = Blake2bDigest(digestSize: digestSize);
  final output = blake2b.process(data);

  return output;
}

String hash(String data) => digest(data: stringToBytesUtf8(data)).hex;

// mnemonic helpers

String generateMnemonic({int strength = 256}) =>
    bip39.generateMnemonic(strength: strength);

const kMnemonicWordList = bip39.WORDLIST;

final _kMnemonicWords = kMnemonicWordList.toSet();

bool isValidMnemonicWord(String word) {
  return _kMnemonicWords.contains(word);
}

// Generic bip39 validation
bool isValidMnemonic(String mnemonic, {bool verifyChecksum = true}) {
  final words = mnemonic.split(' ');
  return (words.length >= 12 && words.length <= 24 && words.length % 3 == 0) &&
      words.every((word) => isValidMnemonicWord(word)) &&
      (verifyChecksum ? bip39.validateMnemonic(mnemonic) : true);
}

String mnemonicToSeedHex(String mnemonic, {String passphrase = ''}) =>
    bip39.mnemonicToSeed(mnemonic, passphrase: passphrase).hex;
