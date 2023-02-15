import 'dart:ui';

const supportedLocales = const [
  const Locale('en', 'US'), // English
  const Locale('he', 'IL'), // Hebrew
  const Locale('de', 'DE'), // German
  const Locale('da'), // Danish
  const Locale('bg'), // Bulgarian
  const Locale('es'), // Spanish
  const Locale('hi'), // Hindi
  const Locale('hu'), // Hungarian
  const Locale('hi'), // Hindi
  const Locale('id'), // Indonesian
  const Locale('it'), // Italian
  const Locale('ja'), // Japanese
  const Locale('ko'), // Korean
  const Locale('ms'), // Malay
  const Locale('nl'), // Dutch
  const Locale('pl'), // Polish
  const Locale('pt'), // Portugese
  const Locale('ro'), // Romanian
  const Locale('ru'), // Russian
  const Locale('sl'), // Slovenian
  const Locale('sv'), // Swedish
  const Locale('tl'), // Tagalog
  const Locale('tr'), // Turkish
  const Locale('vi'), // Vietnamese
  const Locale('ca'), // Catalan
  const Locale('uk'), // Ukrainian
  const Locale('no'), // Norwegian
  const Locale.fromSubtags(
    languageCode: 'zh',
    scriptCode: 'Hans',
  ), // Chinese Simplified
  const Locale.fromSubtags(
    languageCode: 'zh',
    scriptCode: 'Hant',
  ), // Chinese Traditional
  const Locale('ar'), // Arabic
  const Locale('lv'), // Latvian
  // Currency-default requires country included
  const Locale("es", "AR"),
  const Locale("en", "AU"),
  const Locale("pt", "BR"),
  const Locale("en", "CA"),
  const Locale("de", "CH"),
  const Locale("es", "CL"),
  const Locale("zh", "CN"),
  const Locale("cs", "CZ"),
  const Locale("da", "DK"),
  const Locale("fr", "FR"),
  const Locale("en", "GB"),
  const Locale("zh", "HK"),
  const Locale("hu", "HU"),
  const Locale("id", "ID"),
  const Locale("he", "IL"),
  const Locale("hi", "IN"),
  const Locale("ja", "JP"),
  const Locale("ko", "KR"),
  const Locale("es", "MX"),
  const Locale("ta", "MY"),
  const Locale("en", "NZ"),
  const Locale("tl", "PH"),
  const Locale("ur", "PK"),
  const Locale("pl", "PL"),
  const Locale("ru", "RU"),
  const Locale("sv", "SE"),
  const Locale("zh", "SG"),
  const Locale("th", "TH"),
  const Locale("tr", "TR"),
  const Locale("en", "TW"),
  const Locale("es", "VE"),
  const Locale("en", "ZA"),
  const Locale("en", "US"),
  const Locale("es", "AR"),
  const Locale("de", "AT"),
  const Locale("fr", "BE"),
  const Locale("de", "BE"),
  const Locale("nl", "BE"),
  const Locale("tr", "CY"),
  const Locale("et", "EE"),
  const Locale("fi", "FI"),
  const Locale("fr", "FR"),
  const Locale("el", "GR"),
  const Locale("es", "AR"),
  const Locale("en", "IE"),
  const Locale("it", "IT"),
  const Locale("es", "AR"),
  const Locale("lv", "LV"),
  const Locale("lt", "LT"),
  const Locale("fr", "LU"),
  const Locale("en", "MT"),
  const Locale("nl", "NL"),
  const Locale("pt", "PT"),
  const Locale("sk", "SK"),
  const Locale("sl", "SI"),
  const Locale("es", "ES"),
  const Locale("ar", "AE"), // UAE
  const Locale("ar", "SA"), // Saudi Arabia
  const Locale("ar", "KW"), // Kuwait
  const Locale("uk", "UA"), // Ukraine
  const Locale("no", "NO"), // Norway
];
