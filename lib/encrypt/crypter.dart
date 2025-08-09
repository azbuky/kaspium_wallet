import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'aes/aes_cbcpkcs7.dart';
import 'kdf/kdf.dart';
import 'kdf/sha256_kdf.dart';
import 'model/keyiv.dart';

/// Utility for encrypting and decrypting
class NanoCrypt {
  /// Decrypts a value with a password using AES/CBC/PKCS7
  /// KDF is Sha256KDF if not specified
  static Uint8List decrypt(Uint8List value, String password, {KDF? kdf}) {
    kdf = kdf ?? Sha256KDF();
    Uint8List valBytes = Uint8List.fromList(value);

    Uint8List salt = valBytes.sublist(8, 16);
    KeyIV key = kdf.deriveKey(password, salt: salt);

    // Decrypt
    Uint8List encData = valBytes.sublist(16);

    return AesCbcPkcs7.decrypt(encData, key: key.key, iv: key.iv);
  }

  /// Encrypts a value using AES/CBC/PKCS7
  /// KDF is Sha256KDF if not specified
  static Uint8List encrypt(Uint8List value, String password, {KDF? kdf}) {
    kdf = kdf ?? Sha256KDF();
    Uint8List valBytes = Uint8List.fromList(value);

    // Generate a random salt
    Uint8List salt = Uint8List(8);
    Random rng = Random.secure();
    for (int i = 0; i < 8; i++) {
      salt[i] = rng.nextInt(256);
    }

    KeyIV keyInfo = kdf.deriveKey(password, salt: salt);

    Uint8List seedEncrypted =
        AesCbcPkcs7.encrypt(valBytes, key: keyInfo.key, iv: keyInfo.iv);

    return Uint8List.fromList(utf8.encode('Salted__') + salt + seedEncrypted);
  }
}
