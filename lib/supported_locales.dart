import 'dart:ui';

const supportedLocales = const [
  // Base language:
  const Locale('en', 'US'), // English

  // Translations:
  // (Currency-default requires country included)
  const Locale('af'), // Afrikaans
  const Locale('ar'), // Arabic
  const Locale("ar", "AE"), // UAE
  const Locale("ar", "KW"), // Kuwait
  const Locale("ar", "SA"), // Saudi Arabia
  const Locale('bg'), // Bulgarian
  const Locale('bn'), // Bengali
  const Locale('ca'), // Catalan
  const Locale('cs'), // Czech
  const Locale("cs", "CZ"),
  const Locale('da'), // Danish
  const Locale("da", "DK"),
  const Locale('de', 'DE'), // German
  const Locale("de", "CH"),
  const Locale("de", "AT"),
  const Locale("de", "BE"),
  const Locale("el", "GR"),
  const Locale("en", "AU"),
  const Locale("en", "CA"),
  const Locale("en", "GB"),
  const Locale("en", "IE"),

  const Locale("en", "MT"),
  const Locale("en", "NZ"),
  const Locale("en", "TW"),
  const Locale("en", "US"),
  const Locale("en", "ZA"),
  const Locale('es'), // Spanish
  const Locale("es", "AR"),
  const Locale("es", "CL"),
  const Locale("es", "ES"),
  const Locale("es", "MX"),
  const Locale("es", "VE"),
  const Locale("et", "EE"),
  const Locale('fa', 'IR'), // Persian
  const Locale('fi'), // Finnish
  const Locale("fi", "FI"),
  const Locale('fr'), // French
  const Locale("fr", "BE"),
  const Locale("fr", "FR"),
  const Locale("fr", "LU"),
  const Locale('he', 'IL'), // Hebrew
  const Locale('hi'), // Hindi
  const Locale("hi", "IN"),
  const Locale('hu'), // Hungarian
  const Locale("hu", "HU"),
  const Locale('id'), // Indonesian
  const Locale("id", "ID"),
  const Locale('it'), // Italian
  const Locale("it", "IT"),
  const Locale('ja'), // Japanese
  const Locale("ja", "JP"),
  const Locale('ko'), // Korean
  const Locale("ko", "KR"),
  const Locale("lt", "LT"),
  const Locale('lv'), // Latvian
  const Locale("lv", "LV"),
  const Locale('ms'), // Malay
  const Locale('nl'), // Dutch
  const Locale("nl", "BE"),
  const Locale("nl", "NL"),
  const Locale('no'), // Norwegian
  const Locale("no", "NO"), // Norway
  const Locale('pl'), // Polish
  const Locale("pl", "PL"),
  const Locale('pt'), // Portugese
  const Locale("pt", "BR"),
  const Locale("pt", "PT"),
  const Locale('ro'), // Romanian
  const Locale('ru'), // Russian
  const Locale("ru", "RU"),
  const Locale("sk", "SK"),
  const Locale('sl'), // Slovenian
  const Locale("sl", "SI"),
  const Locale('sq'), // Albanian
  const Locale('sv'), // Swedish
  const Locale("sv", "SE"),
  const Locale("ta", "MY"),
  const Locale("th", "TH"),
  const Locale('tl'), // Tagalog
  const Locale("tl", "PH"),
  const Locale('tr'), // Turkish
  const Locale("tr", "CY"),
  const Locale("tr", "TR"),
  const Locale('uk'), // Ukrainian
  const Locale("uk", "UA"), // Ukraine
  const Locale('ur'), // Urdu
  const Locale("ur", "PK"),
  const Locale('vi'), // Vietnamese
  const Locale('zh'), // Chinese
  const Locale("zh", "CN"),
  const Locale("zh", "HK"),
  const Locale("zh", "SG"),
  const Locale.fromSubtags(
    languageCode: 'zh',
    scriptCode: 'Hans',
  ), // Chinese Simplified
  const Locale.fromSubtags(
    languageCode: 'zh',
    scriptCode: 'Hant',
  ), // Chinese Traditional
];
