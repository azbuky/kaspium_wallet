import 'package:flutter/services.dart';

/// Input formatter that ensures text starts with @
class ContactFormatter extends TextInputFormatter {
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    String workingText = newValue.text;
    if (!workingText.startsWith('@')) {
      workingText = '@' + workingText;
    }

    List<String> splitStr = workingText.split('@');
    // If this string contains more than 1 @, remove all but the first one
    if (splitStr.length > 2) {
      workingText = '@' + workingText.replaceAll(r'@', '');
    }

    // If nothing changed, return original
    if (workingText == newValue.text) {
      return newValue;
    }

    return newValue.copyWith(
        text: workingText,
        selection: TextSelection.collapsed(offset: workingText.length));
  }
}
