import 'dart:math';

import 'package:decimal/decimal.dart';
import 'package:decimal/intl.dart';
import 'package:intl/intl.dart';

import '../kaspa/kaspa.dart';

class NumberUtil {
  static const int maxDecimalDigits = 8; // Max digits after decimal
  static final min6DigitsValue = Decimal.parse('0.000001');
  static final min4DigitsValue = Decimal.parse('0.0001');

  static String textFieldFormatedAmount(Amount amount) {
    return formatedAmount(amount);
  }

  static String formatedAmount(Amount amount) {
    final amountStr = getStringFromRaw(amount.raw, amount.decimals);

    var strScale = amountStr.length - amountStr.indexOf('.') - 1;
    if (strScale == amountStr.length) {
      strScale = 0;
    }

    var value = amount.value;
    if (value == Decimal.zero) {
      return '0';
    }

    final valueScale = max(value.scale - value.precision + 9, 2);
    final scale = min(min(valueScale, strScale), amount.decimals);
    value = value.truncate(scale: scale);

    final format = NumberFormat.currency(
      name: '',
      symbol: '',
      decimalDigits: scale,
    );
    final formatter = DecimalFormatter(format);
    final formated = formatter.format(value).trim();

    return formated;
  }

  static String formatedBalance(AddressBalance balance) {
    return formatedAmount(Amount.raw(balance.balance));
  }

  static BigInt getRawFromDecimal(Decimal value, int decimals) {
    final raw = value.shift(decimals).toBigInt();
    return raw;
  }

  static Decimal getDecimalFromRaw(BigInt raw, int decimals) {
    final result = raw.toDecimal().shift(-decimals);
    return result;
  }

  /// Return raw as a normal amount.
  ///
  /// @param raw 100000000000000000000000000000
  /// @returns 1
  ///
  static String getStringFromRaw(
    BigInt raw,
    int decimals, [
    int maxDigits = 8,
  ]) {
    final decimal = getDecimalFromRaw(raw, decimals);
    String asString = decimal.toStringAsFixed(decimals);
    var split = asString.split(".");
    if (split.length > 1) {
      // Remove trailing 0s from this
      if (int.tryParse(split[1]) == 0) {
        asString = split[0];
      } else {
        String newStr = split[0] + ".";
        String digits = split[1];
        int endIndex = digits.length;
        for (int i = 1; i <= digits.length; i++) {
          if (int.tryParse(digits[digits.length - i]) == 0) {
            endIndex--;
          } else {
            break;
          }
        }
        endIndex = min(endIndex, maxDigits);
        digits = digits.substring(0, endIndex);
        newStr = split[0] + "." + digits;
        asString = newStr;
      }
    }
    return asString;
  }

  static BigInt? tryParseAmountAsRaw(String amount, int decimals) {
    final decimal = Decimal.tryParse(amount);
    return decimal?.shift(decimals).toBigInt();
  }

  static BigInt parseAmountAsRaw(String amount, int decimals) {
    Decimal decimal = Decimal.parse(amount);
    return decimal.shift(decimals).toBigInt();
  }

  static String approx({required Amount amount, int precision = 6}) {
    return approxAmountRaw(amount.raw, amount.decimals, precision);
  }

  static String approxAmountRaw(
    BigInt amountRaw,
    int decimals, [
    int precision = 8,
  ]) {
    // Indicate that this is a special amount if some digits are not displayed
    if (getStringFromRaw(amountRaw, decimals, precision) ==
        getDecimalFromRaw(amountRaw, decimals).toString()) {
      final amount = getStringFromRaw(amountRaw, decimals, precision);
      return amount;
    } else {
      final amount =
          getDecimalFromRaw(amountRaw, decimals).toStringAsFixed(precision);
      return '~' + amount;
    }
  }

  /// Sanitize a number as something that can actually
  /// be parsed. Expects "." to be decimal separator
  /// @param amount $1,512
  /// @returns 1.512
  static String sanitizeNumber(String input,
      {int maxDecimalDigits = maxDecimalDigits}) {
    String sanitized = "";
    List<String> splitStr = input.split(".");
    if (splitStr.length > 1) {
      if (splitStr[1].length > maxDecimalDigits) {
        splitStr[1] = splitStr[1].substring(0, maxDecimalDigits);
        input = splitStr[0] + "." + splitStr[1];
      }
    }
    for (int i = 0; i < input.length; i++) {
      try {
        if (input[i] == ".") {
          sanitized = sanitized + input[i];
        } else {
          int.parse(input[i]);
          sanitized = sanitized + input[i];
        }
      } catch (e) {}
    }
    return sanitized;
  }
}
