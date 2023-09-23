import 'package:intl/intl.dart';

import 'vault.dart';

class PinLockout {
  static const _pin_attempts = 'fkaspium_pin_attempts';
  static const _pin_lock_until = 'fkaspium_lock_duraton';

  final Vault vault;
  PinLockout(this.vault);

  Future<int> getUnlockAttempts() async =>
      int.tryParse(await vault.get(_pin_attempts) ?? '0') ?? 0;

  Future<int> incrementUnlockAttempts() async {
    final lockAtempts = await getUnlockAttempts() + 1;
    await vault.set(_pin_attempts, '$lockAtempts');
    return lockAtempts;
  }

  Future<void> resetUnlockAttempts() async {
    await vault.delete(_pin_attempts);
    await vault.delete(_pin_lock_until);
  }

  Future<bool> shouldLock() async {
    final lockedUntil = await vault.get(_pin_lock_until);
    final unlockAttempts = await getUnlockAttempts();
    return lockedUntil != null || unlockAttempts >= 5;
  }

  String _getDateString(int minutes) {
    final duration = Duration(minutes: minutes);
    final date = DateTime.now().toUtc().add(duration);
    return DateFormat.yMd().add_jms().format(date);
  }

  Future<void> updateLockDate() async {
    int attempts = await getUnlockAttempts();
    if (attempts >= 20) {
      // 4+ failed attempts
      await vault.set(
        _pin_lock_until,
        _getDateString(24 * 60), // 24 hours
      );
    } else if (attempts >= 15) {
      // 3 failed attempts
      await vault.set(
        _pin_lock_until,
        _getDateString(15), // 15 minutes
      );
    } else if (attempts >= 10) {
      // 2 failed attempts
      await vault.set(
        _pin_lock_until,
        _getDateString(5), // 5 minutes
      );
    } else if (attempts >= 5) {
      await vault.set(
        _pin_lock_until,
        _getDateString(1), // 1 minute
      );
    }
  }

  Future<DateTime?> getLockDate() async {
    String? lockDateStr = await vault.get(_pin_lock_until, defaultValue: null);
    if (lockDateStr == null) {
      return null;
    }
    return DateFormat.yMd().add_jms().parseUtc(lockDateStr);
  }
}
