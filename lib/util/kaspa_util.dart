import 'package:flutter/foundation.dart';

import '../encrypt/crypter.dart';
import '../kaspa/transaction/transaction_util.dart';
import '../utils.dart';

class KaspaUtil {
  const KaspaUtil();

  static const seedLength = 128;

  static bool isValidSeed(String seed) {
    return isHex(seed) && seed.length == seedLength;
  }

  static bool isEncryptedHex(String hex) {
    try {
      final bytes = hexToBytes(hex.substring(0, 16));
      final salted = bytesUtf8ToString(bytes);
      return salted == 'Salted__';
    } catch (e) {
      return false;
    }
  }

  static List<String> mnemonicWordsFromEntropyHex(String entropyHex) {
    return entropyHexToMnemonic(entropyHex).split(' ');
  }

  static String seedFromMnemonic(String mnemonic) {
    return mnemonicToSeed(mnemonic).hex;
  }

  static Uint8List decrypt(Uint8List data, String password) {
    return NanoCrypt.decrypt(data, password);
  }

  static String decryptHex(String value, String password) {
    return bytesToHex(decrypt(hexToBytes(value), password));
  }

  static String decryptToText(String value, String password) {
    return bytesUtf8ToString(decrypt(hexToBytes(value), password));
  }

  static String? tryDecryptHex(String? value, String password) {
    if (value == null) return null;
    return decryptHex(value, password);
  }

  static Uint8List encrypt(Uint8List data, String password) {
    return NanoCrypt.encrypt(data, password);
  }

  static String encryptHex(String value, String password) {
    return bytesToHex(encrypt(hexToBytes(value), password));
  }

  static String? maybeEncryptHex(String? value, String password) {
    if (value == null) return null;
    return encryptHex(value, password);
  }

  static String encryptText(String value, String password) {
    return bytesToHex(encrypt(stringToBytesUtf8(value), password));
  }

  static String? maybeEncryptText(String? value, String password) {
    if (value == null) return null;
    return encryptText(value, password);
  }

  static Future<Uint8List> computeSignDataSchnorr(
    Uint8List data,
    Uint8List privateKey,
  ) {
    return compute(_computeSignDataSchnorr, [data, privateKey]);
  }
}

Uint8List _computeSignDataSchnorr(List<Uint8List> params) {
  return signSchnorr(hash: params.first, privateKey: params.last);
}
