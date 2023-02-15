import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../settings/available_themes.dart';
import '../util/sharedprefsutil.dart';

class ThemeSettingNotifier extends StateNotifier<ThemeSetting> {
  final SharedPrefsUtil sharedPrefsUtil;

  ThemeSettingNotifier(this.sharedPrefsUtil)
      : super(sharedPrefsUtil.getTheme());

  Future<void> updateTheme(ThemeSetting themeSetting) {
    state = themeSetting;
    return sharedPrefsUtil.setTheme(themeSetting);
  }
}
