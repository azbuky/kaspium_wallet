import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../kaspa/kaspa.dart';
import 'fiat_value_widget.dart';

class FiatValueContainer extends ConsumerWidget {
  final Widget child;
  final Amount amount;
  final bool showAmount;
  final String hint;

  const FiatValueContainer({
    super.key,
    required this.child,
    required this.amount,
    this.showAmount = false,
    this.hint = '',
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        child,
        FiatValueWidget(
          amount: amount,
          showAmount: showAmount,
          hint: hint,
        ),
      ],
    );
  }
}
