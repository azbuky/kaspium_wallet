import 'dart:math';

import 'package:decimal/decimal.dart';
import 'package:decimal/intl.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

import '../numberutil.dart';

class CurrencyFormatter extends TextInputFormatter {
  String groupSeparator;
  String decimalSeparator;
  int maxDecimalDigits;

  final numberFormat = NumberFormat.decimalPattern();
  final symbols = <String>{};

  Decimal? tryParse(String text) {
    final canonical = text.replaceAll(groupSeparator, '')
      ..replaceAll(decimalSeparator, '.');
    return Decimal.tryParse(canonical);
  }

  CurrencyFormatter({
    required this.groupSeparator,
    required this.decimalSeparator,
    this.maxDecimalDigits = NumberUtil.maxDecimalDigits,
  }) {
    symbols.addAll([groupSeparator, decimalSeparator]);
    symbols.addAll('0123456789'.split(''));
  }

  String _formatNumber(String numberStr) {
    final number = Decimal.tryParse(numberStr);
    if (number != null) {
      return numberFormat.format(DecimalIntl(number));
    }
    return numberStr;
  }

  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    String workingText = newValue.text;
    // Only allow digits and separators
    final inputSymbols = workingText.split('');
    if (!symbols.containsAll(inputSymbols)) {
      if (decimalSeparator == ',' && workingText.endsWith('.')) {
        workingText =
            workingText.replaceRange(workingText.length - 1, null, ',');
      } else if (decimalSeparator == '.' && workingText.endsWith(',')) {
        workingText =
            workingText.replaceRange(workingText.length - 1, null, '.');
      } else {
        return oldValue;
      }
    }

    // Workaround for iOS Number Keyboard missmatch
    if (workingText.endsWith(groupSeparator)) {
      workingText = workingText.substring(
            0,
            workingText.length - groupSeparator.length,
          ) +
          decimalSeparator;
    }
    workingText = workingText.replaceAll(groupSeparator, '');
    if (workingText.isEmpty) {
      return newValue;
    }
    // If contains more than 2 decimal separators in newValue, return oldValue
    if (decimalSeparator.allMatches(workingText).length > 1) {
      return oldValue;
    } else if (workingText.startsWith(decimalSeparator)) {
      workingText = '0' + workingText;
    }

    List<String> splitStr = workingText.split(decimalSeparator);

    if (splitStr.length == 1) {
      final newText = _formatNumber(splitStr[0]);
      return newValue.copyWith(
        text: newText,
        selection: TextSelection.collapsed(offset: newText.length),
      );
    }

    final newText = _formatNumber(splitStr[0]) +
        decimalSeparator +
        splitStr[1].substring(0, min(splitStr[1].length, maxDecimalDigits));

    if (newValue.text == newText) {
      return newValue;
    }
    return newValue.copyWith(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }
}
