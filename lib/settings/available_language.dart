import 'package:flutter/material.dart';

import '../l10n/l10n.dart';
import 'setting_item.dart';

enum AvailableLanguage {
  DEFAULT("en", "Default"),
  ENGLISH("en", "English (en)"),
  ARABIC("ar", "العَرَبِيَّة‎ (ar)"),
  INDONESIAN("id", "Bahasa Indonesia (id)"),
  MALAY("ms", "Bahasa Melayu (ms)"),
  BENGALI("bn", "Bengali (bn)"),
  BULGARIAN("bg", "Български език (bg)"),
  CATALAN("ca", "Català (ca)"),
  CHINESE_SIMPLIFIED("zh-Hans", "简体字 (zh-Hans)"),
  CHINESE_TRADITIONAL("zh-Hant", "繁體中文 (zh-Hant)"),
  DANISH("da", "Dansk (da)"),
  GERMAN("de", "Deutsch (de)"),
  SPANISH("es", "Español (es)"),
  FRENCH("fr", "Français (fr)"),
  HEBREW("he", "Hebrew (he)"),
  HINDI("hi", "हिन्दी (hi)"),
  ITALIAN("it", "Italiano (it)"),
  JAPANESE("ja", "日本語 (ja)"),
  KOREAN("ko", "한국어 (ko)"),
  LATVIAN("lv", "Latviešu (lv)"),
  HUNGARIAN("hu", "Magyar (hu)"),
  DUTCH("nl", "Nederlands (nl)"),
  NORWEGIAN("no", "Norsk (no)"),
  POLISH("pl", "Polski (pl)"),
  PORTUGUESE("pt", "Português (pt)"),
  ROMANIAN("ro", "Română (ro)"),
  RUSSIAN("ru", "Русский язык (ru)"),
  SLOVENIAN("sl", "Slovenščina (sl)"),
  SWEDISH("sv", "Svenska (sv)"),
  TAGALOG("tl", "Tagalog (tl)"),
  VIETNAMESE("vi", "Tiếng Việt (vi)"),
  TURKISH("tr", "Türkçe (tr)"),
  UKRAINIAN("uk", "Ukrainian (uk)"),
  ;

  const AvailableLanguage(this.localeString, this.name);

  final String localeString;
  final String name;
}

/// Represent the available languages our app supports
class LanguageSetting implements SettingSelectionItem {
  static bool isAvailable(AvailableLanguage language) {
    return true;
  }

  final AvailableLanguage language;

  const LanguageSetting(this.language);

  String getDisplayName(BuildContext context) {
    return language.name;
    // ...
    // case AvailableLanguage.BENGALI:
    //   return ;
    // default:
    //   return l10nOf(context).systemDefault;
    // ...
  }

  String getLocaleString() {
    return language.localeString;
  }

  Locale? getLocale() {
    String localeStr = getLocaleString();
    if (localeStr == 'DEFAULT') {
      return null;
    } else if (localeStr == 'zh-Hans' || localeStr == 'zh-Hant') {
      return Locale.fromSubtags(
          languageCode: 'zh', scriptCode: localeStr.split('-')[1]);
    }
    return Locale(localeStr);
  }

  // For saving to shared prefs
  String getId() => language.name;
}
