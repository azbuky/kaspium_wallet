import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../themes/themes.dart';
import 'setting_item.dart';

enum ThemeOptions {
  KASPIUM_DARK,
  KASPIUM_LIGHT,
  // VITERIUM,
  // SAPPHIRIUM,
  // PILLIUM,
  // NATRIUM,
  // TITANIUM,
  // INDIUM,
  // NEPTUNIUM,
  // THORIUM,
  // CARBON,
}

class ThemeSetting extends SettingSelectionItem {
  final ThemeOptions theme;

  const ThemeSetting(this.theme);

  String getDisplayName(WidgetRef ref) {
    switch (theme) {
      // case ThemeOptions.CARBON:
      //   return "Carbon";
      // case ThemeOptions.THORIUM:
      //   return "Thorium";
      // case ThemeOptions.NEPTUNIUM:
      //   return "Neptunium";
      // case ThemeOptions.INDIUM:
      //   return "Indium";
      // case ThemeOptions.TITANIUM:
      //   return "Titanium";
      // case ThemeOptions.NATRIUM:
      //   return "Natrium";
      // case ThemeOptions.VITERIUM:
      //   return "Viterium";
      // case ThemeOptions.SAPPHIRIUM:
      //   return "Sapphirium";
      // case ThemeOptions.PILLIUM:
      //   return "Pillium";
      case ThemeOptions.KASPIUM_LIGHT:
        return "Light Theme";
      case ThemeOptions.KASPIUM_DARK:
        return "Dark Theme";
    }
  }

  BaseTheme getTheme() {
    switch (theme) {
      // case ThemeOptions.CARBON:
      //   return CarbonTheme();
      // case ThemeOptions.THORIUM:
      //   return ThoriumTheme();
      // case ThemeOptions.NEPTUNIUM:
      //   return NeptuniumTheme();
      // case ThemeOptions.INDIUM:
      //   return IndiumTheme();
      // case ThemeOptions.TITANIUM:
      //   return TitaniumTheme();
      // case ThemeOptions.NATRIUM:
      //   return NatriumTheme();
      // case ThemeOptions.VITERIUM:
      //   return ViteriumTheme();
      // case ThemeOptions.SAPPHIRIUM:
      //   return SapphiriumTheme();
      // case ThemeOptions.PILLIUM:
      //   return PilliumTheme();
      case ThemeOptions.KASPIUM_LIGHT:
        return KaspiumLightTheme();
      case ThemeOptions.KASPIUM_DARK:
        return KaspiumDarkTheme();
    }
  }

  // For saving to shared prefs
  String getId() => theme.name;
}
