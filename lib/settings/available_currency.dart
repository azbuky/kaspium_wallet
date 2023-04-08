import 'package:flutter/material.dart';

import 'setting_item.dart';

enum AvailableCurrencies {
  USD,
  ARS,
  AUD,
  BRL,
  CAD,
  CHF,
  CLP,
  CNY,
  CZK,
  DKK,
  EUR,
  GBP,
  UAH,
  HKD,
  HUF,
  IDR,
  ILS,
  INR,
  JPY,
  KRW,
  KWD,
  MXN,
  MYR,
  NOK,
  NZD,
  PHP,
  PKR,
  PLN,
  RUB,
  SAR,
  SEK,
  SGD,
  THB,
  TRY,
  TWD,
  AED,
  // VES,
  ZAR,
  VND,
}

/// Represent the available authentication methods our app supports
class AvailableCurrency extends SettingSelectionItem {
  final AvailableCurrencies currency;

  const AvailableCurrency(this.currency);

  String getIso4217Code() {
    return currency.toString().split('.')[1];
  }

  String getDisplayName(BuildContext context) {
    return getCurrencySymbol() + " " + getDisplayNameNoSymbol();
  }

  String getDisplayNameNoSymbol() {
    switch (getIso4217Code()) {
      case "ARS":
        return "Argentine Peso";
      case "AUD":
        return "Australian Dollar";
      case "BRL":
        return "Brazilian Real";
      case "CAD":
        return "Canadian Dollar";
      case "CHF":
        return "Swiss Franc";
      case "CLP":
        return "Chilean Peso";
      case "CNY":
        return "Chinese Yuan";
      case "CZK":
        return "Czech Koruna";
      case "DKK":
        return "Danish Krone";
      case "EUR":
        return "Euro";
      case "GBP":
        return "Great Britain Pound";
      case "HKD":
        return "Hong Kong Dollar";
      case "HUF":
        return "Hungarian Forint";
      case "IDR":
        return "Indonesian Rupiah";
      case "ILS":
        return "Israeli Shekel";
      case "INR":
        return "Indian Rupee";
      case "JPY":
        return "Japanese Yen";
      case "KRW":
        return "South Korean Won";
      case "KWD":
        return "Kuwaiti Dinar";
      case "MXN":
        return "Mexican Peso";
      case "MYR":
        return "Malaysian Ringgit";
      case "NOK":
        return "Norwegian Krone";
      case "NZD":
        return "New Zealand Dollar";
      case "PHP":
        return "Philippine Peso";
      case "PKR":
        return "Pakistani Rupee";
      case "PLN":
        return "Polish Zloty";
      case "RUB":
        return "Russian Ruble";
      case "SAR":
        return "Saudi Riyal";
      case "SEK":
        return "Swedish Krona";
      case "SGD":
        return "Singapore Dollar";
      case "THB":
        return "Thai Baht";
      case "TRY":
        return "Turkish Lira";
      case "TWD":
        return "Taiwan Dollar";
      case "AED":
        return "UAE Dirham";
      case "VES":
        return "Venezuelan Bolivar";
      case "ZAR":
        return "South African Rand";
      case "UAH":
        return "Ukraine Hryvnia";
      case "VND":
        return "Vietnamese Đồng";
      case "USD":
      default:
        return "US Dollar";
    }
  }

  String getCurrencySymbol() {
    switch (getIso4217Code()) {
      case "ARS":
        return "\$";
      case "AUD":
        return "\$";
      case "BRL":
        return "R\$";
      case "CAD":
        return "\$";
      case "CHF":
        return "CHF";
      case "CLP":
        return "\$";
      case "CNY":
        return "¥";
      case "CZK":
        return "Kč";
      case "DKK":
        return "kr.";
      case "EUR":
        return "€";
      case "GBP":
        return "£";
      case "HKD":
        return "HK\$";
      case "HUF":
        return "Ft";
      case "IDR":
        return "Rp";
      case "ILS":
        return "₪";
      case "INR":
        return "₹";
      case "JPY":
        return "¥";
      case "KRW":
        return "₩";
      case "KWD":
        return "KD";
      case "MXN":
        return "\$";
      case "MYR":
        return "RM";
      case "NOK":
        return "kr";
      case "NZD":
        return "\$";
      case "PHP":
        return "₱";
      case "PKR":
        return "Rs";
      case "PLN":
        return "zł";
      case "RUB":
        return "\u20BD";
      case "SAR":
        return "SR";
      case "SEK":
        return "kr";
      case "SGD":
        return "\$";
      case "THB":
        return "THB";
      case "TRY":
        return "₺";
      case "TWD":
        return "NT\$";
      case "AED":
        return "د.إ";
      case "VES":
        return "VES";
      case "ZAR":
        return "R\$";
      case "UAH":
        return "₴";
      case "VND":
        return "₫";
      case "USD":
      default:
        return "\$";
    }
  }

  // For saving to shared prefs
  String getId() => currency.name;
}
