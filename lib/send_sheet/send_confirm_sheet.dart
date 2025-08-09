import 'dart:async';

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../app_router.dart';
import '../kaspa/kaspa.dart';
import '../l10n/l10n.dart';
import '../util/numberutil.dart';
import '../util/ui_util.dart';
import '../utxos/utxos_selection_page.dart';
import '../widgets/address_card.dart';
import '../widgets/amount_card.dart';
import '../widgets/app_text_field.dart';
import '../widgets/buttons.dart';
import '../widgets/dialog.dart';
import '../widgets/gradient_widgets.dart';
import '../widgets/sheet_util.dart';
import '../widgets/sheet_widget.dart';
import 'fee_sheet.dart';
import 'send_complete_sheet.dart';
import 'send_note_widget.dart';

class SendConfirmSheet extends HookConsumerWidget {
  final SendTx sendTx;
  final bool rbf;

  SendConfirmSheet({
    super.key,
    required this.sendTx,
    this.rbf = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    final sendTxState = useState(sendTx);
    final tx = sendTxState.value;

    final toAddress = tx.toAddress;
    final amount = tx.amount;
    final fee = tx.fee;
    final note = tx.note;

    Future<void> sendTransaction() async {
      final walletService = ref.read(walletServiceProvider);

      try {
        AppDialogs.showInProgressDialog(
          context,
          l10n.sendTxProgressTitle,
          l10n.sendTxProgressDescription,
        );

        final txId = await walletService.sendTransaction(tx.tx, rbf: rbf);
        ref.invalidate(pendingTxsProvider);

        if (tx.note case final txNote?) {
          final notes = ref.read(txNotesProvider);
          notes.addNoteForTxId(txId, txNote);
        }

        appRouter.pop(context);

        final sheet = SendCompleteSheet(
          amount: amount,
          toAddress: toAddress,
          txId: txId,
          note: tx.note,
          rbf: rbf,
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
      final symbol = ref.read(symbolProvider(amount));
      final formatedAmount = NumberUtil.formatedAmount(amount);
      return '${l10n.sendConfirm} $formatedAmount $symbol';
    }

    bool checkInsufficientBalance() {
      final balance = ref.read(totalBalanceProvider);

      return balance.raw < amount.raw + fee.raw;
    }

    Future<void> updateTx({
      List<Utxo>? selectedUtxos,
      required Amount priorityFee,
    }) async {
      final addressNotifier = ref.read(addressNotifierProvider);
      final changeAddress = await addressNotifier.nextChangeAddress;
      final spendableUtxos = ref.read(spendableUtxosProvider);
      final txBuilder = TransactionBuilder(
        utxos: spendableUtxos,
        feePerInput: kFeePerInput,
        priorityFee: priorityFee,
      );

      final newTx = txBuilder.createUnsignedTransaction(
        toAddress: toAddress,
        amountRaw: amount.raw,
        changeAddress: changeAddress.address,
        preselectedUtxos: selectedUtxos,
      );

      sendTxState.value = tx.copyWith(
        tx: newTx,
        utxos: txBuilder.selectedUtxos,
        userSelected: selectedUtxos != null,
        change: txBuilder.change,
        changeAddress: txBuilder.changeAddress,
        baseFee: txBuilder.baseFee,
        priorityFee: txBuilder.priorityFee,
      );
    }

    Future<void> selectUtxos({required Amount priorityFee}) async {
      final notifier = ref.read(selectedUtxosProvider.notifier);
      notifier.state = ISet(tx.userSelectedUtxos);

      final selectedUtxos = await Sheets.showAppHeightNineSheet<List<Utxo>>(
        context: context,
        theme: theme,
        widget: UtxosSelectionPage(tx: tx.copyWith(priorityFee: priorityFee)),
      );

      if (selectedUtxos != null) {
        await updateTx(
          selectedUtxos: selectedUtxos,
          priorityFee: priorityFee,
        );
      }
    }

    Future<void> adjustFee({Amount? requiredPriorityFee}) async {
      Amount priorityFee = tx.priorityFee;
      if (requiredPriorityFee != null &&
          requiredPriorityFee.raw > priorityFee.raw) {
        priorityFee = requiredPriorityFee;
      }

      final newPriorityFee = await Sheets.showAppHeightNineSheet<Amount>(
        context: context,
        widget: FeeSheet(
          baseFee: tx.baseFee,
          priorityFee: priorityFee,
          txMass: tx.mass,
          rbf: rbf,
        ),
        theme: theme,
      );

      if (newPriorityFee != null) {
        try {
          await updateTx(
            selectedUtxos: tx.userSelectedUtxos,
            priorityFee: newPriorityFee,
          );
        } catch (e) {
          // if (tx.userSelected) {
          //   selectUtxos(priorityFee: newPriorityFee);
          // } else {
          UIUtil.showSnackbar(l10n.insufficientBalance, context);
          appRouter.pop(context);
          //}
        }
      }
    }

    Future<void> onConfirm() async {
      final symbol = ref.read(kasSymbolProvider);
      final insufficientBalance = checkInsufficientBalance();
      if (insufficientBalance) {
        AppDialogs.showInfoDialog(
          context,
          l10n.insufficientBalance,
          l10n.insufficientBalanceDetails.replaceAll('KAS', symbol),
        );
        return;
      }

      // handle RBF
      if (rbf) {
        final pendingTx = ref.read(txNotifierProvider).pendingTxs.first;
        final fees = pendingTx.fees;
        if (tx.fee.raw <= fees.baseFee.raw + fees.priorityFee.raw) {
          final requiredPriorityFee =
              Amount.raw(fees.priorityFee.raw + BigInt.one);
          adjustFee(requiredPriorityFee: requiredPriorityFee);
          return;
        }
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
      title: l10n.sendConfirm,
      mainWidget: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AmountCard(
                  amount: amount,
                  // rightButton: TextFieldButton(
                  //   icon: Icons.sort,
                  //   onPressed: () => selectUtxos(priorityFee: tx.priorityFee),
                  // ),
                ),
                // "TO" text
                Container(
                  margin: const EdgeInsets.only(top: 30, bottom: 10),
                  child: Text(
                    l10n.sendToAddressTitle.toUpperCase(),
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
                AmountCard(
                  amount: fee,
                  rightButton: TextFieldButton(
                    icon: Icons.add,
                    onPressed: adjustFee,
                  ),
                ),
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
