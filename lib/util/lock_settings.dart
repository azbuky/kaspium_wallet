import 'vault.dart';

class LockSettings {
  static const _kaspium_lock = 'fkaspium_lock_dev';
  static const _kaspium_autolock = 'fkaspium_autolock_dev';

  static const _true = 'true';
  static const _false = 'false';

  final Vault vault;
  LockSettings(this.vault);

  Future<void> setLock(bool value) =>
      vault.set(_kaspium_lock, value ? _true : _false);

  Future<bool> getLock() async =>
      (await vault.get(_kaspium_lock) ?? _true) == _true;

  Future<void> setAutoLock(bool value) =>
      vault.set(_kaspium_autolock, value ? _true : _false);

  Future<bool> getAutoLock() async =>
      (await vault.get(_kaspium_autolock) ?? _true) == _true;
}
