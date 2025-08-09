import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../app_router.dart';
import '../kaspa/kaspa.dart';
import '../l10n/l10n.dart';
import '../widgets/address_card.dart';
import '../widgets/address_widgets.dart';
import '../widgets/amount_label.dart';
import '../widgets/buttons.dart';
import '../widgets/gradient_widgets.dart';
import '../widgets/sheet_handle.dart';
import '../widgets/txid_card.dart';
import 'send_note_widget.dart';

class SendCompleteSheet extends HookConsumerWidget {
  final Amount amount;
  final Address toAddress;
  final String txId;
  final String? note;
  final bool rbf;

  const SendCompleteSheet({
    Key? key,
    required this.amount,
    required this.toAddress,
    required this.txId,
    this.note,
    this.rbf = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    return SafeArea(
      minimum: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height * 0.035,
      ),
      child: Column(
        children: [
          const SheetHandle(),
          //A main container that holds the amount, address and "SENT TO" texts
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: const AlignmentDirectional(0, 0),
                        margin: const EdgeInsets.only(top: 50, bottom: 25),
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
                        margin: const EdgeInsets.only(top: 30, bottom: 10),
                        alignment: Alignment.center,
                        child: Text(
                          l10n.sentTo.toUpperCase(),
                          style: styles.textStyleHeader2Colored,
                        ),
                      ),
                      AddressCard(
                        address: toAddress,
                        type: AddressTextType.PRIMARY,
                      ),
                      const SizedBox(height: 30),
                      TxIdCard(txId: txId),
                      const SizedBox(height: 20),
                      if (note != null)
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 20),
                          child: SendNoteWidget(note: note!),
                        ),
                    ],
                  ),
                ),
                const ListTopGradient(),
                const ListBottomGradient(),
              ],
            ),
          ),
          PrimaryOutlineButton(
            title: l10n.close,
            margin: const EdgeInsets.only(left: 28, right: 28, top: 8),
            onPressed: () => appRouter.pop(context),
          ),
        ],
      ),
    );
  }
}
