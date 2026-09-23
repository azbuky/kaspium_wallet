import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../app_icons.dart';
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
    final kasSymbol = ref.watch(kasSymbolProvider);

    final output = tx.apiTx.outputs[item.outputIndex];

    final amountRaw = output.amount;
    final amount = Amount.raw(.from(amountRaw));

    final formatedValue = NumberUtil.formatedAmount(amount);

    final contacts = ref.watch(contactsProvider);
    final address = output.scriptPublicKeyAddress;
    final contact = contacts.getContactWithAddress(
      address,
      includeLabels: true,
    );
    final isContact = contact != null;
    final isThisWallet = addressNotifier.containsAddress(address);
    final isSendType = item.type == .send;
    // A contact the user named wins over the name the registry knows, and
    // this wallet's own addresses are not labelled with its own names
    final dotkName = isContact || isThisWallet
        ? null
        : ref.watch(dotkNameForAddressProvider(address));

    final txDate = DateTime.fromMillisecondsSinceEpoch(tx.apiTx.blockTime);

    final locale = Localizations.localeOf(context).languageCode;
    final formater = DateFormat('dd-MM-yyyy HH:mm', locale);
    final date = formater.format(txDate);

    final txTypeIcon = switch (item.type) {
      .send => Icon(AppIcons.sent, color: theme.text60, size: 18),
      .receive => Icon(AppIcons.received, color: theme.primary, size: 18),
      .thisWallet => Icon(Icons.swap_vert, color: theme.primary, size: 18),
      .compound => Icon(Icons.refresh, color: theme.primary, size: 18),
    };

    void showTxDetails() {
      Sheets.showAppHeightNineSheet(
        context: context,
        theme: theme,
        animationDurationMs: 175,
        fullHeight: true,
        widget: TransactionDetailsSheet(
          transactionId: tx.id,
          address: address,
          displayContactButton: !isContact,
          txItem: item,
        ),
      );
    }

    return Container(
      margin: .fromSTEB(14, 4, 14, 4),
      decoration: BoxDecoration(
        color: theme.backgroundDark,
        borderRadius: .circular(10),
        boxShadow: [theme.boxShadow],
      ),
      child: TextButton(
        style: styles.cardButtonStyle,
        onPressed: showTxDetails,
        child: Padding(
          padding: const .symmetric(vertical: 14, horizontal: 12),
          child: Row(
            children: [
              Container(
                margin: const .directional(end: 12),
                child: txTypeIcon,
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        RichText(
                          maxLines: 2,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: formatedValue,
                                style: styles.textStyleTransactionAmount
                                    .copyWith(fontSize: AppFontSizes.small),
                              ),
                              TextSpan(
                                text: ' $kasSymbol',
                                style: styles.textStyleTransactionUnit.copyWith(
                                  fontSize: AppFontSizes.small,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          item.pending ? l10n.txPending : date,
                          textAlign: .start,
                          style: styles.textStyleTransactionType.copyWith(
                            fontWeight: .w400,
                            fontSize: AppFontSizes.smallest,
                            color: theme.text60,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Column(
                      crossAxisAlignment: .start,
                      children: [
                        Row(
                          mainAxisAlignment: .spaceBetween,
                          children: [
                            Text(
                              l10n.transactionId,
                              style: styles.textStyleTransactionAmountSmall,
                            ),
                            Consumer(
                              builder: (context, ref, _) {
                                final txState = ref.watch(
                                  txConfirmationStatusProvider(item),
                                );
                                return Container(
                                  margin: const .only(top: 0, bottom: 4),
                                  child: TransactionStateTag(state: txState),
                                );
                              },
                            ),
                          ],
                        ),
                        Text(
                          tx.id,
                          style: styles.textStyleTransactionType.copyWith(
                            color: theme.text60,
                          ),
                          maxLines: 2,
                          overflow: .ellipsis,
                        ),
                        Row(
                          children: [
                            if (isThisWallet && isSendType) ...[
                              Text(
                                l10n.thisWallet,
                                style: styles.textStyleTransactionAmountSmall,
                              ),
                              const SizedBox(width: 8),
                            ],
                            if (isContact) ...[
                              Text(
                                contact.name,
                                style: styles.textStyleTransactionAmountSmall,
                              ),
                            ] else if (dotkName != null) ...[
                              Flexible(
                                child: Text(
                                  dotkName,
                                  style: styles.textStyleTransactionAmountSmall,
                                  maxLines: 1,
                                  overflow: .ellipsis,
                                ),
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
