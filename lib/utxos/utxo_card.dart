import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../kaspa/transaction/types.dart';
import '../kaspa/types.dart';
import '../l10n/l10n.dart';
import '../transactions/transaction_details_sheet.dart';
import '../util/numberutil.dart';
import '../widgets/sheet_util.dart';

class UtxoCard extends ConsumerWidget {
  final Utxo item;
  final bool selectable;

  const UtxoCard({
    Key? key,
    required this.item,
    this.selectable = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final l10n = l10nOf(context);
    final styles = ref.watch(stylesProvider);

    final amount = Amount.raw(item.utxoEntry.amount);
    final kasSymbol = ref.watch(kasSymbolProvider);
    final formatedValue = NumberUtil.formatedAmount(amount);

    final fiatValue = ref.watch(formatedFiatForAmountProvider(amount));
    final addressNotifier = ref.watch(addressNotifierProvider);

    void showTxDetails() {
      Sheets.showAppHeightEightSheet(
        context: context,
        widget: TransactionDetailsSheet(
          transactionId: item.outpoint.transactionId,
          address: item.address,
        ),
        theme: theme,
      );
    }

    void updateSelected(bool? value) {
      if (value == null) {
        return;
      }

      final notifier = ref.read(selectedUtxosProvider.notifier);
      if (value) {
        notifier.update((state) => state.add(item));
      } else {
        notifier.update((state) => state.remove(item));
      }
    }

    void onPressed() {
      if (selectable) {
        final selectedUtxos = ref.read(selectedUtxosProvider);
        final isSelected = selectedUtxos.contains(item);
        updateSelected(!isSelected);
      } else {
        showTxDetails();
      }
    }

    return Container(
      margin: EdgeInsetsDirectional.fromSTEB(14, 4, 14, 4),
      decoration: BoxDecoration(
        color: theme.backgroundDark,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [theme.boxShadow],
      ),
      child: TextButton(
        style: styles.cardButtonStyle,
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (selectable)
                Consumer(builder: (context, ref, child) {
                  final selected = ref.watch(
                    selectedUtxosProvider.select(
                      (value) => value.contains(item),
                    ),
                  );
                  return Checkbox(value: selected, onChanged: updateSelected);
                }),
              Flexible(
                flex: 1,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              addressNotifier.nameForAddress(item.address) ??
                                  l10n.address,
                              style: styles.textStyleTransactionAmountSmall,
                            ),
                            Text(
                              item.address,
                              style: styles.textStyleCurrencyAlt,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              l10n.transactionId,
                              style: styles.textStyleTransactionAmountSmall,
                            ),
                            Text(
                              item.outpoint.transactionId,
                              textAlign: TextAlign.start,
                              style: styles.textStyleCurrencyAlt,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              l10n.amount,
                              style: styles.textStyleTransactionAmountSmall,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RichText(
                                  maxLines: 2,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: formatedValue,
                                        style: styles.textStyleCurrencyAlt,
                                      ),
                                      TextSpan(
                                        text: ' $kasSymbol',
                                        style: styles.textStyleCurrencyAlt,
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  '≈ $fiatValue',
                                  style: styles.textStyleTransactionAmount,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
