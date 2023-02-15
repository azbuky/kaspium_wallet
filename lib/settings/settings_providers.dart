import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../database/boxes.dart';
import '../database/database.dart';
import 'available_currency.dart';
import 'available_language.dart';
import 'available_themes.dart';
import 'block_explorer_notifier.dart';
import 'block_explorer_settings.dart';
import 'currency_notifier.dart';
import 'language_notifier.dart';
import 'theme_setting_notifier.dart';

typedef TypeFactory<T> = T Function<T>(dynamic);

class SettingsRepository {
  final GenericBox box;
  const SettingsRepository(this.box);

  Future<void> remove(String key) => box.remove(key);
}

final _settingsBoxProvider = Provider((ref) {
  final db = ref.watch(dbProvider);
  final box = db.getGenericBox(kSettingsBox);
  return box;
});

final settingsRepositoryProvider = Provider((ref) {
  final box = ref.watch(_settingsBoxProvider);
  return SettingsRepository(box);
});

final themeSettingProvider =
    StateNotifierProvider<ThemeSettingNotifier, ThemeSetting>((ref) {
  final sharedPrefsUtil = ref.watch(sharedPrefsUtilProvider);
  return ThemeSettingNotifier(sharedPrefsUtil);
});

final currencyProvider =
    StateNotifierProvider<CurrencyNotifier, AvailableCurrency>((ref) {
  final deviceLocale = ref.watch(deviceLocaleProvider);
  final sharedPrefsUtil = ref.watch(sharedPrefsUtilProvider);
  final currency = sharedPrefsUtil.getCurrency(deviceLocale);
  return CurrencyNotifier(currency, sharedPrefsUtil);
});

final blockExplorerSettingsProvider =
    StateNotifierProvider<BlockExplorerNotifier, BlockExplorerSettings>((ref) {
  final repository = ref.watch(settingsRepositoryProvider);
  return BlockExplorerNotifier(repository);
});

final languageProvider =
    StateNotifierProvider<LanguageNotifier, LanguageSetting>((ref) {
  final sharedPrefsUtil = ref.watch(sharedPrefsUtilProvider);
  return LanguageNotifier(sharedPrefsUtil);
});
