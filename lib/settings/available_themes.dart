import 'package:flutter/material.dart';

import '../l10n/l10n.dart';
import '../themes/themes.dart';
import 'setting_item.dart';

enum ThemeOptions {
  KASPIUM_DARK,
  KASPIUM_LIGHT,
  KASPIUM_AMOLED_DARK,
}

class ThemeSetting extends SettingSelectionItem {
  final ThemeOptions theme;

  const ThemeSetting(this.theme);

  String getDisplayName(BuildContext context) {
    final l10n = l10nOf(context);

    switch (theme) {
      case ThemeOptions.KASPIUM_LIGHT:
        return l10n.themeLight;
      case ThemeOptions.KASPIUM_DARK:
        return l10n.themeDark;
      case ThemeOptions.KASPIUM_AMOLED_DARK:
        return l10n.themeAMOLEDDark;
    }
  }

  BaseTheme getTheme() {
    switch (theme) {
      case ThemeOptions.KASPIUM_LIGHT:
        return KaspiumLightTheme();
      case ThemeOptions.KASPIUM_DARK:
        return KaspiumDarkTheme();
      case ThemeOptions.KASPIUM_AMOLED_DARK:
        return KaspiumAMOLEDDarkTheme();
    }
  }

  // For saving to shared prefs
  String getId() => theme.name;
}
