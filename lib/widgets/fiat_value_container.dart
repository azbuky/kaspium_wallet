import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../kaspa/kaspa.dart';
import 'fiat_value_widget.dart';

class FiatValueContainer extends ConsumerWidget {
  final Widget child;
  final Amount amount;
  const FiatValueContainer({
    super.key,
    required this.child,
    required this.amount,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        child,
        FiatValueWidget(amount: amount),
      ],
    );
  }
}
