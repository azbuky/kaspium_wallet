import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../kaspa/kaspa.dart';
import '../util/numberutil.dart';

class FiatValueWidget extends ConsumerWidget {
  final Amount amount;
  final bool showAmount;
  final String hint;

  const FiatValueWidget({
    super.key,
    required this.amount,
    this.showAmount = false,
    this.hint = '',
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final fiatValue = ref.watch(formatedFiatForAmountProvider(amount));
    final amountValue = NumberUtil.formatedAmount(amount);
    final symbol = ref.watch(kasSymbolProvider);

    return Visibility(
      visible: amount.value != Decimal.zero,
      replacement: hint.isEmpty
          ? const SizedBox.shrink()
          : Text(
              hint,
              style: styles.textStyleTransactionAmount.copyWith(
                color: theme.text30,
                fontWeight: FontWeight.w100,
              ),
            ),
      child: Container(
        child: Text(
          showAmount ? '≈ $amountValue $symbol' : '≈ $fiatValue',
          style: styles.textStyleTransactionAmount,
        ),
      ),
    );
  }
}
