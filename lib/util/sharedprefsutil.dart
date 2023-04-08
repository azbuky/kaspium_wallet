import 'dart:async';
import 'dart:convert';

import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../settings/authentication_method.dart';
import '../settings/available_currency.dart';
import '../settings/available_language.dart';
import '../settings/available_themes.dart';
import '../settings/device_lock_timeout.dart';

/// Price conversion preference values
enum PriceConversion { BTC, NONE, HIDDEN }

/// Singleton wrapper for shared preferences
class SharedPrefsUtil {
  final SharedPreferences sharedPrefs;
  SharedPrefsUtil(this.sharedPrefs);

  // Keys
  static const String first_launch_key = 'fkaspium_first_launch';
  static const String auth_method = 'fkaspium_auth_method';
  static const String cur_currency = 'fkaspium_currency_pref';
  static const String cur_language = 'fkaspium_language_pref';
  static const String cur_theme = 'fkaspium_theme_pref';
  static const String firstcontact_added = 'fkaspium_first_contact_added';
  static const String lock_kaspium = 'fkaspium_lock_dev';
  static const String kaspium_lock_timeout = 'fkaspium_lock_timeout';
  // If user has seen the root/jailbreak warning yet
  static const String has_shown_root_warning = 'fkaspium_root_warn';
  // For maximum pin attempts
  static const String pin_attempts = 'fkaspium_pin_attempts';
  static const String pin_lock_until = 'fkaspium_lock_duraton';
  static const String notice_shown = 'fkaspium_notice_shown';

  // For plain-text data
  Future<bool> set<T>(String key, T value) async {
    if (value is bool) {
      return sharedPrefs.setBool(key, value);
    } else if (value is String) {
      return sharedPrefs.setString(key, value);
    } else if (value is double) {
      return sharedPrefs.setDouble(key, value);
    } else if (value is int) {
      return sharedPrefs.setInt(key, value);
    }
    return false;
  }

  T get<T>(String key, {required T defaultValue}) {
    final value = sharedPrefs.get(key);
    if (value == null || !(value is T)) return defaultValue;
    return value as T;
  }

  /// Set a key with an expiry, expiry is in seconds
  Future<void> setWithExpiry(String key, dynamic value, int expiry) async {
    int expiryVal;
    if (expiry != -1) {
      DateTime now = DateTime.now().toUtc();
      DateTime expired = now.add(Duration(seconds: expiry));
      expiryVal = expired.millisecondsSinceEpoch;
    } else {
      expiryVal = expiry;
    }
    Map<String, dynamic> msg = {'data': value, 'expiry': expiryVal};
    String serialized = json.encode(msg);
    set(key, serialized);
  }

  /// Get a key that has an expiry
  Future<T?> getWithExpiry<T>(String key) async {
    String? val = get(key, defaultValue: null);
    if (val == null) {
      return null;
    }
    Map<String, dynamic> msg = json.decode(val);
    if (msg['expiry'] != -1) {
      DateTime expired = DateTime.fromMillisecondsSinceEpoch(msg['expiry']);
      if (DateTime.now().toUtc().difference(expired).inMinutes > 0) {
        await remove(key);
        return null;
      }
    }
    return msg['data'];
  }

  Future<void> remove(String key) => sharedPrefs.remove(key);

  // Key-specific helpers

  Future<void> setHasSeenRootWarning() {
    return set(has_shown_root_warning, true);
  }

  bool getHasSeenRootWarning() =>
      get(has_shown_root_warning, defaultValue: false);

  Future<void> setFirstLaunch() => set(first_launch_key, false);
  bool getFirstLaunch() => get(first_launch_key, defaultValue: true);

  Future<void> setFirstContactAdded(bool value) =>
      set(firstcontact_added, value);

  bool getFirstContactAdded() => get(firstcontact_added, defaultValue: false);

  Future<void> setNoticeShown(bool value) => set(notice_shown, value);
  bool getNoticeShown() => get(notice_shown, defaultValue: false);

  Future<void> setAuthMethod(AuthenticationMethod method) =>
      set(auth_method, method.getId());

  AuthenticationMethod getAuthMethod() =>
      AuthenticationMethod(AuthMethod.values.byName(get(
        auth_method,
        defaultValue: AuthMethod.BIOMETRICS.name,
      )));

  Future<void> setCurrency(AvailableCurrency currency) =>
      set(cur_currency, currency.getId());

  AvailableCurrency getCurrency() =>
      AvailableCurrency(AvailableCurrencies.values.byName(get(
        cur_currency,
        defaultValue: AvailableCurrencies.USD.name,
      )));

  Future<void> setLanguage(LanguageSetting language) =>
      set(cur_language, language.getId());

  LanguageSetting getLanguage() {
    final language = AvailableLanguage.values.byName(
      get(
        cur_language,
        defaultValue: AvailableLanguage.DEFAULT.name,
      ),
    );
    return LanguageSetting(language);
  }

  Future<void> setTheme(ThemeSetting theme) => set(cur_theme, theme.getId());
  ThemeSetting getTheme() {
    return ThemeSetting(ThemeOptions.values.byName(get(
      cur_theme,
      defaultValue: ThemeOptions.KASPIUM_DARK.name,
    )));
  }

  Future<void> setLock(bool value) => set(lock_kaspium, value);
  bool getLock() => get(lock_kaspium, defaultValue: false);

  Future<void> setLockTimeout(LockTimeoutSetting setting) =>
      set(kaspium_lock_timeout, setting.getId());

  LockTimeoutSetting getLockTimeout() =>
      LockTimeoutSetting(LockTimeoutOption.values.byName(get(
        kaspium_lock_timeout,
        defaultValue: LockTimeoutOption.ONE.name,
      )));

  // Locking out when max pin attempts exceeded
  int getLockAttempts() => get(pin_attempts, defaultValue: 0);

  Future<void> incrementLockAttempts() =>
      set(pin_attempts, (getLockAttempts()) + 1);

  Future<void> resetLockAttempts() async {
    await sharedPrefs.remove(pin_attempts);
    await sharedPrefs.remove(pin_lock_until);
  }

  bool shouldLock() {
    if (get(pin_lock_until, defaultValue: null) != null ||
        getLockAttempts() >= 5) {
      return true;
    }
    return false;
  }

  Future<void> updateLockDate() async {
    int attempts = getLockAttempts();
    if (attempts >= 20) {
      // 4+ failed attempts
      await set<String>(
          pin_lock_until,
          DateFormat.yMd()
              .add_jms()
              .format(DateTime.now().toUtc().add(Duration(hours: 24))));
    } else if (attempts >= 15) {
      // 3 failed attempts
      await set<String>(
          pin_lock_until,
          DateFormat.yMd()
              .add_jms()
              .format(DateTime.now().toUtc().add(Duration(minutes: 15))));
    } else if (attempts >= 10) {
      // 2 failed attempts
      await set<String>(
          pin_lock_until,
          DateFormat.yMd()
              .add_jms()
              .format(DateTime.now().toUtc().add(Duration(minutes: 5))));
    } else if (attempts >= 5) {
      await set<String>(
          pin_lock_until,
          DateFormat.yMd()
              .add_jms()
              .format(DateTime.now().toUtc().add(Duration(minutes: 1))));
    }
  }

  DateTime? getLockDate() {
    String? lockDateStr = get(pin_lock_until, defaultValue: null);
    if (lockDateStr == null) {
      return null;
    }
    return DateFormat.yMd().add_jms().parseUtc(lockDateStr);
  }

  // For logging out
  Future<void> deleteAll() {
    return Future.wait([
      sharedPrefs.remove(cur_currency),
      sharedPrefs.remove(auth_method),
      sharedPrefs.remove(lock_kaspium),
      sharedPrefs.remove(pin_attempts),
      sharedPrefs.remove(pin_lock_until),
      sharedPrefs.remove(kaspium_lock_timeout),
      sharedPrefs.remove(has_shown_root_warning),
    ]);
  }
}
