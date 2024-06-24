import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../util/random_util.dart';

class Vault {
  static const _pinKey = 'fkaspium_pin';
  static const _sessionKey = 'fkaspium_session';
  static const _dbKey = 'aa721440b4f52bca';

  final _secureStorage = const FlutterSecureStorage();

  const Vault();

  Future<void> set(String key, String? value) {
    return _secureStorage.write(key: key, value: value);
  }

  Future<String?> get(String key, {String? defaultValue}) async {
    return await _secureStorage.read(key: key) ?? defaultValue;
  }

  Future<void> delete(String key) => _secureStorage.delete(key: key);
  Future<void> deleteAll() => _secureStorage.deleteAll();

  Future<String?> getPin() => get(_pinKey);
  Future<void> setPin(String? pin) => set(_pinKey, pin);
  Future<void> deletePin() => _secureStorage.delete(key: _pinKey);
  Future<bool> get pinIsSet async => (await get(_pinKey)) != null;

  Future<String> getDbKey() async {
    var key = await get(_dbKey);
    if (key == null) {
      key = RandomUtil.generateKey();
      await set(_dbKey, key);
    }
    return key;
  }

  /// Used to keep the seed in-memory in the session without being plaintext
  Future<String> getSessionKey() async =>
      await get(_sessionKey) ?? await updateSessionKey();

  Future<String> updateSessionKey() async {
    final key = RandomUtil.generateEncryptionSecret(25);
    await set(_sessionKey, key);
    return key;
  }
}
