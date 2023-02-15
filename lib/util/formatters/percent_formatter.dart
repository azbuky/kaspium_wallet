import 'package:flutter/services.dart';

class PercentFormatter extends TextInputFormatter {
  final String decimalSeparator;

  final symbols = <String>{};

  PercentFormatter({
    required this.decimalSeparator,
  }) {
    symbols.addAll([decimalSeparator]);
    symbols.addAll('0123456789'.split(''));
  }

  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final inputSymbols = newValue.text.trim().split('');
    if (!symbols.containsAll(inputSymbols)) {
      return oldValue;
    }

    if (!inputSymbols.contains(decimalSeparator) &&
        (inputSymbols.length > 3 ||
            (inputSymbols.length == 3 && inputSymbols[0] != '1'))) {
      return oldValue;
    }

    String workingText = newValue.text;
    while (workingText.length > 1 && workingText[0] == '0') {
      workingText = workingText.substring(1);
    }
    if (workingText.startsWith(decimalSeparator)) {
      workingText = '0$workingText';
    }
    final splitStrs = workingText.split(decimalSeparator);
    if (splitStrs.length > 1 &&
        (splitStrs[1].length > 2 || splitStrs[0].length == 3)) {
      return oldValue;
    }

    workingText = workingText.replaceAll(decimalSeparator, '');

    if (workingText.length > 5 ||
        (workingText.length == 5 && workingText[0] != '1')) {
      return oldValue;
    }

    return newValue;
  }
}
