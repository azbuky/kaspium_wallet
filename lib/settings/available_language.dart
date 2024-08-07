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
  // A
  AFRICAANS("af", "Afrikaans (af)"),
  ALBANIAN("sq", "Albanian (sq)"),
  // B
  INDONESIAN("id", "Bahasa Indonesia (id)"),
  MALAY("ms", "Bahasa Melayu (ms)"),
  BENGALI("bn", "Bengali (bn)"),
  // C
  CATALAN("ca", "Català (ca)"),
  CZECH("cs", "Czech (cs)"),
  // D
  DANISH("da", "Dansk (da)"),
  GERMAN("de", "Deutsch (de)"),
  // E
  SPANISH("es", "Español (es)"),
  BASQUE("eu", "Euskera (eu)"),
  // F
  FRENCH("fr", "Français (fr)"),
  // G
  GREEK("el", "Greek (el)"),
  // H
  HEBREW("he", "Hebrew (he)"),
  // I
  ITALIAN("it", "Italiano (it)"),
  // J, K
  // L
  LATVIAN("lv", "Latviešu (lv)"),
  // M
  HUNGARIAN("hu", "Magyar (hu)"),
  // N
  DUTCH("nl", "Nederlands (nl)"),
  NORWEGIAN("no", "Norsk (no)"),
  // O
  // P
  POLISH("pl", "Polski (pl)"),
  PORTUGUESE("pt", "Português (pt)"),
  // Q
  GEORGIAN("ka", "ქართული (ka)"),
  // R
  ROMANIAN("ro", "Română (ro)"),
  RUSSIAN("ru", "Русский (ru)"),
  // S
  SLOVAKIA("sk", "Slovakia (sk)"),
  SLOVENIAN("sl", "Slovenščina (sl)"),
  SWEDISH("sv", "Svenska (sv)"),
  FINNISH("fi", "Suomi (fi)"),
  SERBIAN("sr", "Српски (sr)"),
  // T
  TAGALOG("tl", "Tagalog (tl)"),
  TELUGU("te", "Telugu (te)"),
  // U
  URDU("ur", "Urdu (ur)"),
  UKRAINIAN("uk", "Українська (uk)"),
  // V
  VIETNAMESE("vi", "Tiếng Việt (vi)"),
  TURKISH("tr", "Türkçe (tr)"),
  // W,X,Y,Z

  // Non-latin a/o not know where to sort them in
  ARABIC("ar", "العَرَبِيَّة‎ (ar)"),
  BULGARIAN("bg", "Български (bg)"),
  CHINESE("zh", "中文 (zh)"),
  HINDI("hi", "हिन्दी (hi)"),
  JAPANESE("ja", "日本語 (ja)"),
  KOREAN("ko", "한국어 (ko)"),
  PERSIAN("fa", "فارسی (fa)"),
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
    if (language == AvailableLanguage.DEFAULT) {
      return l10nOf(context).systemDefault;
    }
    return language.descriptiveName;
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
