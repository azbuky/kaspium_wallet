import 'package:decimal/decimal.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kaspium_wallet/kaspa/kaspa.dart';
import 'package:kaspium_wallet/util/numberutil.dart';

void main() {
  group('NumberUtil.formatAmount', () {
    test('Zero value', () {
      final amount = Amount.raw(BigInt.zero);
      final formated = NumberUtil.formatedAmount(amount);
      expect(formated, equals('0'));
    });

    test('Big value', () {
      final amount = Amount.value(Decimal.parse('123456789.12345678'));
      final formated = NumberUtil.formatedAmount(amount);
      expect(formated, equals('123,456,789.12'));
    });
    test('No decimals', () {
      final amount = Amount.value(Decimal.parse('123456789'));
      final formated = NumberUtil.formatedAmount(amount);
      expect(formated, equals('123,456,789'));
    });

    test('One decimal', () {
      final amount = Amount.value(Decimal.parse('12345678.9'));
      final formated = NumberUtil.formatedAmount(amount);
      expect(formated, equals('12,345,678.9'));
    });
  });
}
