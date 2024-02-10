import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../app_providers.dart';
import '../app_styles.dart';
import '../kaspa/kaspa.dart';
import '../l10n/l10n.dart';
import '../util/numberutil.dart';
import '../widgets/sheet_util.dart';
import 'transaction_details_sheet.dart';
import 'transaction_state_tag.dart';
import 'transaction_types.dart';
import 'tx_address_widget.dart';
import 'tx_note_widget.dart';

class TransactionCard extends ConsumerWidget {
  final TxItem item;

  const TransactionCard({super.key, required this.item});

  Tx get tx => item.tx;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final l10n = l10nOf(context);
    final styles = ref.watch(stylesProvider);

    final addressNotifier = ref.watch(addressNotifierProvider.notifier);
    final note = ref.watch(txNoteProvider(tx.id));

    final output = tx.apiTx.outputs[item.outputIndex];

    final amountRaw = output.amount;
    final amount = Amount.raw(BigInt.from(amountRaw));

    final formatedValue = NumberUtil.formatedAmount(amount);

    final contacts = ref.watch(contactsProvider);
    final address = output.scriptPublicKeyAddress;
    final contact = contacts.getContactWithAddress(
      address,
      includeLabels: true,
    );
    final isContact = contact != null;
    final isThisWallet = addressNotifier.containsAddress(address);
    final isSendType = item.type == TxItemType.send;

    final txDate = DateTime.fromMillisecondsSinceEpoch(tx.apiTx.blockTime);

    IconData icon;
    Color iconColor;
    final locale = Localizations.localeOf(context).languageCode;
    final formater = DateFormat('dd-MM-yyyy HH:mm', locale);
    final date = formater.format(txDate);
    switch (item.type) {
      case TxItemType.send:
        icon = Icons.remove;
        iconColor = theme.primary;
        break;
      case TxItemType.receive:
        icon = Icons.add;
        iconColor = theme.primary;
        break;
      case TxItemType.compound:
        icon = Icons.refresh;
        iconColor = theme.primary;
        break;
    }

    void showTxDetails() {
      Sheets.showAppHeightEightSheet(
        context: context,
        widget: TransactionDetailsSheet(
          transactionId: tx.id,
          address: address,
          displayContactButton: !isContact,
        ),
        theme: theme,
        animationDurationMs: 175,
      );
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
        onPressed: showTxDetails,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(icon, color: iconColor, size: 18),
                      RichText(
                        maxLines: 2,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: formatedValue,
                              style: styles.textStyleTransactionAmount
                                  .copyWith(fontSize: AppFontSizes.medium),
                            ),
                            TextSpan(
                              text: ' KAS',
                              style: styles.textStyleTransactionUnit.copyWith(
                                fontSize: AppFontSizes.medium,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text(
                    date,
                    textAlign: TextAlign.start,
                    style: styles.textStyleTransactionType.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: AppFontSizes.smallest,
                        color: theme.text60),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              l10n.transactionId,
                              style: styles.textStyleTransactionAmountSmall,
                            ),
                            Consumer(builder: (context, ref, _) {
                              final txState = ref.watch(
                                txConfirmationStatusProvider(tx),
                              );
                              return Container(
                                margin: const EdgeInsetsDirectional.only(
                                  top: 0,
                                  bottom: 4,
                                ),
                                child: TransactionStateTag(state: txState),
                              );
                            }),
                          ],
                        ),
                        Text(
                          '${tx.id}',
                          style: styles.textStyleTransactionType
                              .copyWith(color: theme.text60),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            if (isThisWallet && isSendType) ...[
                              Text(
                                '${l10n.thisWallet}',
                                style: styles.textStyleTransactionAmountSmall,
                              ),
                              const SizedBox(width: 8),
                            ],
                            if (isContact) ...[
                              Text(
                                '${contact.name}',
                                style: styles.textStyleTransactionAmountSmall,
                              ),
                            ],
                          ],
                        ),
                        TxAddressWidget(address: address),
                        if (note != null) ...[
                          const SizedBox(height: 4),
                          TxNoteWidget(note: note.note),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
