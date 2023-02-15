import 'package:flutter/services.dart';

/// Input formatter that ensures only one space between words
class SingleSpaceFormatter extends TextInputFormatter {
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    // Don't allow first character to be a space
    if (newValue.text.length < oldValue.text.length) {
      return newValue;
    } else if (oldValue.text.length == 0 && newValue.text == ' ') {
      return oldValue;
    } else if (oldValue.text.endsWith(' ') && newValue.text.endsWith('  ')) {
      return oldValue;
    }

    return newValue;
  }
}
