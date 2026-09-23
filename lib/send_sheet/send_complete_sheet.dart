import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../kaspa/kaspa.dart';
import '../l10n/l10n.dart';
import '../widgets/action_buttons_wrapper.dart';
import '../widgets/address_card.dart';
import '../widgets/amount_label.dart';
import '../widgets/dismiss_action_buttons.dart';
import '../widgets/scrollable_wrapper.dart';
import '../widgets/sheet_handle.dart';
import '../widgets/sheet_wrapper.dart';
import '../widgets/txid_card.dart';
import 'send_note_widget.dart';

class SendCompleteSheet extends HookConsumerWidget {
  final Amount amount;
  final Address toAddress;
  final String txId;
  final String? note;
  final String? toLabel;

  const SendCompleteSheet({
    super.key,
    required this.amount,
    required this.toAddress,
    required this.txId,
    this.note,
    this.toLabel,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    return SheetWrapper(
      child: Column(
        children: [
          const SheetHandle(),
          const SizedBox(height: 15),
          //A main container that holds the amount, address and "SENT TO" texts
          Expanded(
            child: ScrollableWrapper(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: .center,
                  children: [
                    Container(
                      alignment: const AlignmentDirectional(0, 0),
                      margin: const .only(top: 50, bottom: 25),
                      child: Icon(
                        AppIcons.success,
                        size: 80,
                        color: theme.primary,
                      ),
                    ),
                    const SizedBox(height: 20),
                    AmountLabel(amount: amount),
                    // Container for the "SENT TO" text
                    Container(
                      margin: const .only(top: 30, bottom: 10),
                      alignment: .center,
                      child: Text(
                        l10n.sentTo.toUpperCase(),
                        style: styles.textStyleHeader2Colored,
                      ),
                    ),
                    AddressCard(
                      address: toAddress,
                      type: .PRIMARY,
                      label: toLabel,
                      labelProven: toLabel != null,
                    ),
                    const SizedBox(height: 30),
                    TxIdCard(txId: txId),
                    const SizedBox(height: 20),
                    if (note != null)
                      Padding(
                        padding: const .only(top: 10, bottom: 10),
                        child: SendNoteWidget(note: note!),
                      ),
                  ],
                ),
              ),
            ),
          ),
          ActionButtonsWrapper(
            buttons: const [
              CloseActionButton(),
            ],
          ),
        ],
      ),
    );
  }
}
