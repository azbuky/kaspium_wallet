import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../app_router.dart';
import '../fee/fee_sheet.dart';
import '../kaspa/kaspa.dart';
import '../l10n/l10n.dart';
import '../util/numberutil.dart';
import '../util/ui_util.dart';
import '../utxos/utxos_selection_page.dart';
import '../wallet_address/address_selection_sheet.dart';
import '../wallet_address/wallet_address.dart';
import '../widgets/action_buttons_wrapper.dart';
import '../widgets/address_card.dart';
import '../widgets/amount_card.dart';
import '../widgets/app_text_field.dart';
import '../widgets/buttons.dart';
import '../widgets/dialog.dart';
import '../widgets/dismiss_action_buttons.dart';
import '../widgets/scrollable_wrapper.dart';
import '../widgets/sheet_util.dart';
import '../widgets/sheet_widget.dart';
import 'send_complete_sheet.dart';
import 'send_note_widget.dart';

class SendConfirmSheet extends HookConsumerWidget {
  final SendTx sendTx;
  final bool rbf;

  /// The `.k` name the user typed, shown above the address it resolved to.
  final String? toLabel;

  const SendConfirmSheet({
    super.key,
    required this.sendTx,
    this.rbf = false,
    this.toLabel,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    final sendTxState = useState(sendTx);
    final tx = sendTxState.value;
    // fee floor explicitly chosen by the user in the fee sheet
    final userMinFee = useState(Amount.zero);

    final toAddress = tx.address;
    final amount = tx.amount;
    final fee = tx.fee;
    final note = tx.note;
    final isCompoundTx = tx.isCompoundTx;

    Future<void> sendTransaction() async {
      final walletService = ref.read(walletServiceProvider);

      try {
        AppDialogs.showInProgressDialog(
          context,
          l10n.sendTxProgressTitle,
          l10n.sendTxProgressDescription,
        );

        final txId = await walletService.sendTransaction(tx.tx, rbf: rbf);

        if (!context.mounted) return;

        ref.read(txMonitorProvider).watch(txId);
        ref.invalidate(pendingTxsProvider);

        if (tx.note case final txNote?) {
          final notes = ref.read(txNotesProvider);
          notes.addNoteForTxId(txId, txNote);
        }

        appRouter.pop(context);

        if (isCompoundTx) {
          appRouter.pop(context);
          UIUtil.showSnackbar(l10n.compoundSuccess);
        } else {
          final sheet = SendCompleteSheet(
            amount: amount,
            toAddress: toAddress,
            txId: txId,
            note: tx.note,
            toLabel: toLabel,
          );

          Sheets.showAppHeightNineSheet(
            context: context,
            theme: theme,
            fullHeight: true,
            closeOnTap: true,
            removeUntilHome: true,
            widget: sheet,
          );
        }
      } catch (e, st) {
        final log = ref.read(loggerProvider);
        log.e('Failed to send transaction', error: e, stackTrace: st);

        UIUtil.showSnackbar(l10n.sendError);
        appRouter.pop(context);
      }
    }

    String authMessage() {
      final symbol = ref.read(symbolProvider(amount));
      final formatedAmount = NumberUtil.formatedAmount(amount);
      final message = isCompoundTx ? l10n.compoundUppercased : l10n.sendConfirm;
      return '$message $formatedAmount $symbol';
    }

    bool checkInsufficientBalance() {
      final balance = ref.read(totalBalanceProvider);

      return balance.raw < amount.raw + fee.raw;
    }

    void updateTx({required List<Utxo> selectedUtxos, required Amount minFee}) {
      final spendableUtxos = ref.read(spendableUtxosProvider);
      final walletService = ref.read(walletServiceProvider);
      final feeRate = ref.read(feeRateProvider);

      try {
        if (isCompoundTx) {
          sendTxState.value = walletService
              .createCompoundTx(
                compoundAddress: tx.changeAddress,
                utxos: selectedUtxos.isEmpty ? spendableUtxos : selectedUtxos,
                feeRate: feeRate,
                minFee: minFee,
              )
              .copyWith(userSelected: selectedUtxos.isNotEmpty);
          return;
        }
        sendTxState.value = walletService.createSendTx(
          toAddress: tx.address,
          amount: tx.amount,
          spendableUtxos: spendableUtxos,
          selectedUtxos: selectedUtxos,
          feeRate: feeRate,
          minFee: minFee,
          changeAddress: tx.changeAddress,
          payload: tx.payload,
          note: tx.note,
        );
      } catch (_) {
        UIUtil.showSnackbar(l10n.utxoSelectionHint);
      }
    }

    Future<void> selectUtxos() async {
      final minFee = userMinFee.value;
      final selectedUtxos = await Sheets.showAppHeightNineSheet<List<Utxo>>(
        context: context,
        theme: theme,
        fullHeight: true,
        widget: UtxosSelectionPage(tx: tx, minFee: minFee),
      );

      if (selectedUtxos != null) {
        updateTx(selectedUtxos: selectedUtxos, minFee: minFee);
      }
    }

    Future<void> selectAddress() async {
      final selected = await Sheets.showAppHeightNineSheet<WalletAddress>(
        context: context,
        theme: theme,
        fullHeight: true,
        widget: const AddressSelectionSheet(),
      );

      if (selected == null || selected.address == tx.changeAddress) return;
      if (!context.mounted) return;

      final walletService = ref.read(walletServiceProvider);

      try {
        sendTxState.value = walletService
            .createCompoundTx(
              compoundAddress: selected.address,
              utxos: tx.utxos,
              feeRate: kMinFeeRate,
              minFee: tx.fee,
            )
            .copyWith(userSelected: tx.userSelected);
      } catch (_) {
        UIUtil.showSnackbar(l10n.sendError);
      }
    }

    Future<void> authAndSend() async {
      // Authenticate
      final message = authMessage();
      final authUtil = ref.read(authUtilProvider);
      final auth = await authUtil.authenticateForSecret(context, message);

      if (auth) sendTransaction();
    }

    void checkFee() {
      // soft cap on fee of 1 KAS
      if (tx.fee.raw > kSompiPerKaspa) {
        final symbol = ref.read(kasSymbolProvider);
        final feeFormated = NumberUtil.formatedAmount(tx.fee);
        final feeAmount = l10n.feeHighDescriptionAmount(feeFormated, symbol);
        AppDialogs.showConfirmDialog(
          context,
          l10n.feeHighTitle,
          '$feeAmount\n\n${l10n.feeHighDescription}',
          l10n.send.toUpperCase(),
          authAndSend,
        );
      } else {
        authAndSend();
      }
    }

    Future<void> adjustFee({Amount? minFee}) async {
      final newTx = await Sheets.showAppHeightNineSheet<SendTx>(
        context: context,
        theme: theme,
        widget: FeeSheet(minFee: minFee ?? .zero, tx: tx),
      );

      if (newTx != null) {
        sendTxState.value = newTx;
        userMinFee.value = newTx.fee;
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
        final txNotifier = ref.read(txNotifierProvider);
        if (txNotifier.pendingTxs.firstOrNull case final pendingTx?) {
          final minFee = Amount.raw(pendingTx.fee.raw + .one);
          if (fee.raw < minFee.raw) {
            adjustFee(minFee: minFee);
            return;
          }
        }
      }

      checkFee();
    }

    return SheetWidget(
      title: tx.isCompoundTx ? l10n.compoundUppercased : l10n.sendConfirm,
      mainWidget: ScrollableWrapper(
        child: SingleChildScrollView(
          padding: const .only(top: 20, bottom: 20),
          child: Column(
            mainAxisSize: .min,
            children: [
              AmountCard(
                amount: amount,
                rightButton: rbf
                    ? null
                    : TextFieldButton(
                        icon: Icons.sort,
                        onPressed: selectUtxos,
                      ),
              ),
              // "TO" text
              Container(
                margin: const .only(top: 30, bottom: 10),
                child: Text(
                  l10n.sendToAddressTitle.toUpperCase(),
                  style: styles.textStyleSubHeader,
                ),
              ),
              AddressCard(
                address: toAddress,
                label: toLabel,
                labelProven: toLabel != null,
                onPressed: isCompoundTx && !rbf ? selectAddress : null,
              ),
              Container(
                margin: const .only(top: 30, bottom: 10),
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
                  padding: const .only(top: 30, bottom: 10),
                  child: SendNoteWidget(note: note),
                ),
            ],
          ),
        ),
      ),
      bottomWidget: ActionButtonsWrapper(
        buttons: [
          PrimaryButton(title: l10n.confirm, onPressed: onConfirm),
          const CancelActionButton(),
        ],
      ),
    );
  }
}
