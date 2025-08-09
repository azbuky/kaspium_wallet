import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/core_providers.dart';
import 'available_currency.dart';
import 'available_language.dart';
import 'available_themes.dart';
import 'block_explorer_notifier.dart';
import 'block_explorer_settings.dart';
import 'currency_notifier.dart';
import 'language_notifier.dart';
import 'settings_repository.dart';
import 'theme_setting_notifier.dart';

final _settingsBoxProvider = Provider((ref) {
  final db = ref.watch(dbProvider);
  final box = db.getGenericBox(db.settingsBox);
  return box;
});

final settingsRepositoryProvider = Provider((ref) {
  final box = ref.watch(_settingsBoxProvider);
  return SettingsRepository(box);
});

final blockExplorerSettingsProvider =
    StateNotifierProvider<BlockExplorerNotifier, BlockExplorerSettings>((ref) {
  final repository = ref.watch(settingsRepositoryProvider);
  return BlockExplorerNotifier(repository);
});

final themeSettingProvider =
    StateNotifierProvider<ThemeSettingNotifier, ThemeSetting>((ref) {
  final sharedPrefsUtil = ref.watch(sharedPrefsUtilProvider);
  return ThemeSettingNotifier(sharedPrefsUtil);
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
