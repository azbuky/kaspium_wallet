import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app_icons.dart';
import '../app_providers.dart';
import '../wallet_balance/wallet_balance_providers.dart';

class BalanceWidget extends ConsumerWidget {
  const BalanceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final btcBalance = ref.watch(formatedTotalBtcProvider);
    final fiatBalance = ref.watch(formatedTotalFiatProvider);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(AppIcons.btc, color: theme.text60, size: 18),
            const SizedBox(width: 4),
            Text(
              btcBalance,
              textAlign: TextAlign.end,
              style: styles.textStyleCurrencyAlt.copyWith(fontSize: 18),
            ),
          ],
        ),
        Text(
          '≈ $fiatBalance',
          textAlign: TextAlign.end,
          style: styles.textStyleTransactionAmountSmall,
        ),
      ],
    );
  }
}
