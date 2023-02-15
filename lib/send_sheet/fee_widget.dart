import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../kaspa/kaspa.dart';

class FeeWidget extends ConsumerWidget {
  final Amount amount;
  const FeeWidget({
    Key? key,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = ref.watch(l10nProvider);

    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.105,
        right: MediaQuery.of(context).size.width * 0.105,
        top: 5,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        color: theme.backgroundDarkest,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            l10n.feeTitle,
            style: styles.textStyleDataTypeHeaderHighlight,
          ),
          Text(
            '${amount.value} ${amount.symbolLabel}',
            textAlign: TextAlign.center,
            style: styles.textStyleAddressText90,
          ),
        ],
      ),
    );
  }
}
