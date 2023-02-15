import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../settings/available_language.dart';
import '../util/sharedprefsutil.dart';

class LanguageNotifier extends StateNotifier<LanguageSetting> {
  final SharedPrefsUtil sharedPrefsUtil;

  LanguageNotifier(this.sharedPrefsUtil) : super(sharedPrefsUtil.getLanguage());

  Future<void> updateLanguage(LanguageSetting language) {
    state = language;
    return sharedPrefsUtil.setLanguage(language);
  }
}
