import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../app_router.dart';
import '../kaspa/kaspa.dart';
import '../l10n/l10n.dart';
import '../util/numberutil.dart';
import '../util/ui_util.dart';
import '../widgets/address_card.dart';
import '../widgets/amount_card.dart';
import '../widgets/buttons.dart';
import '../widgets/dialog.dart';
import '../widgets/gradient_widgets.dart';
import '../widgets/sheet_util.dart';
import '../widgets/sheet_widget.dart';
import 'send_complete_sheet.dart';
import 'send_note_widget.dart';

class SendConfirmSheet extends HookConsumerWidget {
  final SendTx tx;

  SendConfirmSheet({
    Key? key,
    required this.tx,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    final toAddress = tx.toAddress;
    final amount = tx.amount;

    final fee = tx.fee;
    final note = tx.note;

    final title = l10n.sendConfirm;
    final toTitle = l10n.sendToAddressTitle;

    Future<void> sendTransaction() async {
      final walletService = ref.read(walletServiceProvider);

      try {
        AppDialogs.showInProgressDialog(
          context,
          l10n.sendTxProgressTitle,
          l10n.sendTxProgressDescription,
        );

        final txId = await walletService.sendTransaction(tx);

        if (tx.changeAddress case final changeAddress?) {
          final addressNotifier = ref.read(addressNotifierProvider);
          await addressNotifier.markUsed([changeAddress.encoded]);
        }

        if (tx.note case final txNote?) {
          final notes = ref.read(txNotesProvider);
          notes.addNoteForTxId(txId, txNote);
        }

        appRouter.pop(context);

        final sheet = SendCompleteSheet(
          amount: tx.amount,
          toAddress: tx.toAddress,
          txId: txId,
          note: tx.note,
        );

        Sheets.showAppHeightNineSheet(
          context: context,
          theme: theme,
          closeOnTap: true,
          removeUntilHome: true,
          widget: sheet,
        );
      } catch (e, st) {
        final log = ref.read(loggerProvider);
        log.e('Failed to send transaction', error: e, stackTrace: st);

        UIUtil.showSnackbar(l10n.sendError, context);
        appRouter.pop(context);
      }
    }

    String authMessage() {
      final formatedAmount = NumberUtil.formatedAmount(amount);
      return '${l10n.sendConfirm} ${formatedAmount} ${amount.symbolLabel}';
    }

    String? checkMissingBalance() {
      final balanceRaw = ref.read(totalBalanceProvider).raw;

      if (balanceRaw < amount.raw + fee) {
        return amount.symbolLabel;
      }

      return null;
    }

    Future<void> onConfirm() async {
      final symbolLabel = checkMissingBalance();
      if (symbolLabel != null) {
        AppDialogs.showInfoDialog(
          context,
          l10n.insufficientBalance,
          l10n.insufficientBalanceDetails,
        );
        return;
      }

      // Authenticate
      final walletAuth = ref.read(walletAuthProvider.notifier);
      final authUtil = ref.read(authUtilProvider);
      bool auth = false;
      if (walletAuth.needsPasswordAuth) {
        auth = await authUtil.authenticateWithPassword(
          context,
          validator: (password) => walletAuth.unlock(password: password),
        );
      } else {
        final message = authMessage();
        auth = await authUtil.authenticate(context, message, message);
      }
      if (auth) {
        await sendTransaction();
      }
    }

    return SheetWidget(
      title: title,
      mainWidget: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AmountCard(amount: amount),
                // "TO" text
                Container(
                  margin: const EdgeInsets.only(top: 30, bottom: 10),
                  child: Text(
                    toTitle.toUpperCase(),
                    style: styles.textStyleSubHeader,
                  ),
                ),
                AddressCard(address: toAddress),
                Container(
                  margin: const EdgeInsets.only(top: 30, bottom: 10),
                  child: Text(
                    l10n.fee.toUpperCase(),
                    style: styles.textStyleSubHeader,
                  ),
                ),
                AmountCard(amount: Amount.raw(fee)),
                if (note != null)
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                      bottom: 10,
                    ),
                    child: SendNoteWidget(note: note),
                  ),
              ],
            ),
          ),
          const ListTopGradient(),
          const ListBottomGradient(),
        ],
      ),
      bottomWidget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          children: [
            PrimaryButton(
              title: l10n.confirm,
              onPressed: onConfirm,
            ),
            const SizedBox(height: 16),
            PrimaryOutlineButton(
              title: l10n.cancel,
              onPressed: () => appRouter.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
