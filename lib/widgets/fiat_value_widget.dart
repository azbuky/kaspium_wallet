import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../kaspa/kaspa.dart';
import '../wallet_balance/wallet_balance_providers.dart';

class FiatValueWidget extends ConsumerWidget {
  final Amount amount;
  const FiatValueWidget({
    super.key,
    required this.amount,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);

    final fiatValue = ref.watch(formatedFiatForAmountProvider(amount));

    return Visibility(
      visible: amount.value != Decimal.zero,
      child: Container(
        child: Text(
          '≈ $fiatValue',
          style: styles.textStyleTransactionAmount,
        ),
      ),
    );
  }
}
