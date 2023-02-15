import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';

/// Custom locale-specific uppercase/lowercase methods
class CaseChange {
  static String toUpperCase(String input, WidgetRef ref) {
    Locale locale =
        Locale(ref.read(languageProvider).getLocaleString());
    if (locale.languageCode == 'tr') {
      input = input.replaceAll("i", "İ");
    } else if (locale.languageCode == 'de') {
      input = input.replaceAll("ß", "SS");
    }
    return input.toUpperCase();
  }
}
