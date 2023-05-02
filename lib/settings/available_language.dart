import 'package:flutter/material.dart';

import '../l10n/l10n.dart';
import 'setting_item.dart';

enum AvailableLanguage {
  // Default and base language
  DEFAULT("default", "Default"),
  ENGLISH("en", "English (en)"),

  // Supported languages
  // This list is sorted by the 2nd parameter, as this order is
  // used within the app on the language selection list.
  AFRICAANS("af","Afrikaans (af)"),
  ALBANIAN("sq","Albanian (sq)"),
  ARABIC("ar", "العَرَبِيَّة‎ (ar)"),
  INDONESIAN("id", "Bahasa Indonesia (id)"),
  MALAY("ms", "Bahasa Melayu (ms)"),
  BENGALI("bn", "Bengali (bn)"),
  BULGARIAN("bg", "Български език (bg)"),
  CATALAN("ca", "Català (ca)"),
  CHINESE("zh", "中文 (zh)"),
  // CHINESE_SIMPLIFIED("zh-Hans", "简体中文 (zh-Hans)"),
  // CHINESE_TRADITIONAL("zh-Hant", "繁體中文 (zh-Hant)"),
  CZECH("cs", "Czech (cs)"),
  DANISH("da", "Dansk (da)"),
  GERMAN("de", "Deutsch (de)"),
  SPANISH("es", "Español (es)"),
  FINNISH("fi", "Finnish (fi)"),
  FRENCH("fr", "Français (fr)"),
  GREEK("el", "Greek (el)"),
  HEBREW("he", "Hebrew (he)"),
  HINDI("hi", "हिन्दी (hi)"),
  ITALIAN("it", "Italiano (it)"),
  JAPANESE("ja", "日本語 (ja)"),
  KOREAN("ko", "한국어 (ko)"),
  LATVIAN("lv", "Latviešu (lv)"),
  HUNGARIAN("hu", "Magyar (hu)"),
  DUTCH("nl", "Nederlands (nl)"),
  NORWEGIAN("no", "Norsk (no)"),
  PERSIAN("fa", "فارسی (fa)"),
  POLISH("pl", "Polski (pl)"),
  PORTUGUESE("pt", "Português (pt)"),
  ROMANIAN("ro", "Română (ro)"),
  RUSSIAN("ru", "Русский (ru)"),
  SLOVENIAN("sl", "Slovenščina (sl)"),
  SWEDISH("sv", "Svenska (sv)"),
  TAGALOG("tl", "Tagalog (tl)"),
  VIETNAMESE("vi", "Tiếng Việt (vi)"),
  TURKISH("tr", "Türkçe (tr)"),
  UKRAINIAN("uk", "Українська (uk)"),
  URDU("ur", "Urdu (ur)"),
  ;

  const AvailableLanguage(this.localeString, this.descriptiveName);

  final String localeString;
  final String descriptiveName;
}

/// Represent the available languages our app supports
class LanguageSetting implements SettingSelectionItem {
  static bool isAvailable(AvailableLanguage language) {
    return true;
  }

  final AvailableLanguage language;

  const LanguageSetting(this.language);

  String getDisplayName(BuildContext context) {
    return language.descriptiveName;
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
    if (localeStr == 'default') {
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
