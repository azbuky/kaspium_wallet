import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/core_providers.dart';
import 'available_currency.dart';
import 'available_language.dart';
import 'available_themes.dart';
import 'currency_notifier.dart';
import 'language_notifier.dart';
import 'settings_repository.dart';
import 'theme_setting_notifier.dart';

export 'block_explorer/block_explorer_providers.dart';
export 'kaspa_api_settings/kaspa_api_settings_providers.dart';
export 'kasplex_settings/kasplex_settings_providers.dart';
export 'node_settings/node_settings_providers.dart';

final _settingsBoxProvider = Provider((ref) {
  final db = ref.watch(dbProvider);
  final box = db.getGenericBox(db.settingsBox);
  return box;
});

final settingsRepositoryProvider = Provider((ref) {
  final box = ref.watch(_settingsBoxProvider);
  return SettingsRepository(box);
});

final currencyProvider =
    StateNotifierProvider<CurrencyNotifier, AvailableCurrency>((ref) {
  final sharedPrefsUtil = ref.watch(sharedPrefsUtilProvider);
  return CurrencyNotifier(sharedPrefsUtil);
});

final languageProvider =
    StateNotifierProvider<LanguageNotifier, LanguageSetting>((ref) {
  final sharedPrefsUtil = ref.watch(sharedPrefsUtilProvider);
  return LanguageNotifier(sharedPrefsUtil);
});

final themeSettingProvider =
    StateNotifierProvider<ThemeSettingNotifier, ThemeSetting>((ref) {
  final sharedPrefsUtil = ref.watch(sharedPrefsUtilProvider);
  return ThemeSettingNotifier(sharedPrefsUtil);
});
