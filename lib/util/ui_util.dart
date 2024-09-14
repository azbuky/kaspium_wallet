import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oktoast/oktoast.dart';

import '../app_providers.dart';
import '../app_router.dart';
import '../kaspa/kaspa.dart';
import '../kaspa/transaction/mass_calculator.dart';
import '../l10n/l10n.dart';
import '../send_sheet/fee_sheet.dart';
import '../send_sheet/send_complete_sheet.dart';
import '../send_sheet/send_confirm_sheet.dart';
import '../send_sheet/send_sheet.dart';
import '../transactions/transaction_types.dart';
import '../widgets/app_simpledialog.dart';
import '../widgets/dialog.dart';
import '../widgets/pending_tx_dialog.dart';
import '../widgets/sheet_util.dart';
import '../widgets/toast_widget.dart';
import 'numberutil.dart';

abstract class UIUtil {
  static double drawerWidth(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return (width < 375) ? width * 0.94 : width * 0.85;
  }

  static void showSnackbar(String content, BuildContext context) {
    showToastWidget(
      ToastWidget(content: content),
      dismissOtherToast: true,
      duration: Duration(milliseconds: 3000),
    );
  }

  static Future<void> showUpdateFeeFlow(
    BuildContext context, {
    required WidgetRef ref,
    required Tx tx,
    required String address,
  }) async {
    final theme = ref.read(themeProvider);
    final l10n = l10nOf(context);

    try {
      final walletService = ref.read(walletServiceProvider);
      final notes = ref.read(txNotesProvider);
      final notifier = ref.read(addressNotifierProvider);
      final spendableUtxos = ref.read(spendableUtxosProvider);

      final amount = Amount.raw(BigInt.from(tx.apiTx.outputs.first.amount));
      final fees = tx.fees;

      final changeAddress = await notifier.nextChangeAddress;

      final toAddress = Address.tryParse(
        address,
        expectedPrefix: changeAddress.address.prefix,
      );

      if (toAddress == null) {
        UIUtil.showSnackbar(l10n.feeUpdateAddressError, context);
        return;
      }

      final txBuilder = TransactionBuilder(
        utxos: spendableUtxos,
        feePerInput: kFeePerInput,
        priorityFee: fees.priorityFee,
      );
      final newTx = txBuilder.rebuildTransaction(
        tx.apiTx,
        toAddress: toAddress,
        changeAddress: changeAddress.address,
      );

      if (newTx == null) {
        UIUtil.showSnackbar(l10n.feeUpdateRebuildError, context);
        return;
      }

      final massCalculator = MassCalculator(
        massPerTxByte: 1,
        massPerScriptPubKeyByte: 10,
        massPerSigOp: 1000,
        storageMassParameter: kStorageMassParameter,
      );

      final mass = massCalculator.calcTxOverallMass(tx: newTx);

      final priorityFee = Amount.raw(fees.priorityFee.raw + BigInt.one);
      final newPriorityFee = await Sheets.showAppHeightNineSheet<Amount>(
        context: context,
        widget: FeeSheet(
          baseFee: fees.baseFee,
          priorityFee: priorityFee,
          txMass: mass,
          rbf: true,
        ),
        theme: theme,
      );

      if (newPriorityFee == null) {
        // cancelled
        return;
      }

      Transaction? replacementTx;
      if (tx.apiTx.outputs.length == 1 &&
          tx.apiTx.outputs.first.scriptPublicKeyAddress ==
              changeAddress.address.encoded) {
        // compound tx
        final sendTx = walletService.createCompoundTx(
          compoundAddress: changeAddress.address,
          spendableUtxos: spendableUtxos,
          feePerInput: kFeePerInput,
          priorityFee: newPriorityFee,
        );
        replacementTx = sendTx.tx;
      } else {
        final newTxBuilder = TransactionBuilder(
          utxos: spendableUtxos,
          feePerInput: kFeePerInput,
          priorityFee: newPriorityFee,
        );
        replacementTx = newTxBuilder.rebuildTransaction(
          tx.apiTx,
          toAddress: toAddress,
          changeAddress: changeAddress.address,
        );
      }

      if (replacementTx == null) {
        UIUtil.showSnackbar(l10n.feeUpdateRebuildError2, context);
        return;
      }

      final note = notes.getNoteForTxId(tx.id);

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
        final symbol = ref.read(symbolProvider(amount));
        final formatedAmount = NumberUtil.formatedAmount(amount);
        final message = '${l10n.sendConfirm} $formatedAmount $symbol';
        auth = await authUtil.authenticate(context, message, message);
      }

      if (!auth) {
        return;
      }

      try {
        AppDialogs.showInProgressDialog(
          context,
          l10n.feeUpdateTitle,
          l10n.sendTxProgressDescription,
        );

        final txId = await walletService.sendTransaction(
          replacementTx,
          rbf: true,
        );

        ref.invalidate(pendingTxsProvider);

        if (note != null) {
          notes.addNoteForTxId(txId, note.note);
        }

        final sheet = SendCompleteSheet(
          amount: amount,
          toAddress: toAddress,
          txId: txId,
          note: note?.note,
        );

        Sheets.showAppHeightNineSheet(
          context: context,
          theme: theme,
          closeOnTap: true,
          removeUntilHome: true,
          widget: sheet,
        );
      } catch (e) {
        UIUtil.showSnackbar(l10n.feeUpdateError, context);
        appRouter.pop(context);
      }
    } catch (e) {
      UIUtil.showSnackbar(l10n.feeUpdateError, context);
    }
  }

  static Future<({bool cont, bool rbf})> checkForPendingTx(
    BuildContext context, {
    required WidgetRef ref,
  }) async {
    final txNotifier = ref.read(txNotifierProvider);
    final pendingTxs = txNotifier.pendingTxs;

    bool rbf = false;
    if (pendingTxs.isNotEmpty) {
      rbf = await showAppDialog<bool>(
            context: context,
            builder: (_) => PendingTxDialog(
              pendingTx: pendingTxs.first,
              safeContext: context,
              safeRef: ref,
            ),
          ) ??
          false;
      if (rbf == false) {
        return (cont: false, rbf: rbf);
      }
    }

    return (cont: true, rbf: rbf);
  }

  // static Future<void> checkForPendingTx(
  //   BuildContext context, {
  //   required WidgetRef ref,
  //   required void Function(bool rbf) onContinue,
  // }) async {
  //   final txNotifier = ref.read(txNotifierProvider);
  //   final pendingTxs = txNotifier.pendingTxs;

  //   bool rbf = false;
  //   if (pendingTxs.isNotEmpty) {
  //     rbf = await showAppDialog<bool>(
  //           context: context,
  //           builder: (_) => PendingTxDialog(pendingTx: pendingTxs.first),
  //         ) ??
  //         false;
  //     if (rbf == false) {
  //       return;
  //     }
  //   }

  //   onContinue(rbf);
  // }

  static Future<void> showSendFlow(
    BuildContext context, {
    required WidgetRef ref,
    required KaspaUri uri,
    bool useRbf = false,
  }) async {
    final theme = ref.read(themeProvider);

    final amount = uri.amount;
    if (amount == null) {
      final (:cont, :rbf) = useRbf
          ? (cont: true, rbf: true)
          : await UIUtil.checkForPendingTx(context, ref: ref);
      if (cont) {
        Sheets.showAppHeightNineSheet(
          context: context,
          theme: theme,
          widget: SendSheet(uri: uri, rbf: rbf),
        );
      }

      return;
    }

    final spendableUtxos = ref.read(spendableUtxosProvider);
    final walletService = ref.read(walletServiceProvider);
    final addressNotifier = ref.read(addressNotifierProvider);

    final (:cont, :rbf) = useRbf
        ? (cont: true, rbf: true)
        : await UIUtil.checkForPendingTx(context, ref: ref);

    if (!cont) {
      return;
    }

    try {
      final changeAddress = await addressNotifier.nextChangeAddress;

      Amount? priorityFee;
      if (rbf) {
        final pendingTx = ref.read(txNotifierProvider).pendingTxs.first;
        priorityFee = Amount.raw(pendingTx.fees.priorityFee.raw + BigInt.one);
      }

      final sendTx = walletService.createSendTx(
        toAddress: uri.address,
        amount: amount,
        spendableUtxos: spendableUtxos,
        feePerInput: kFeePerInput,
        priorityFee: priorityFee,
        changeAddress: changeAddress.address,
        note: uri.message,
      );

      Sheets.showAppHeightNineSheet(
        context: context,
        theme: theme,
        widget: SendConfirmSheet(sendTx: sendTx, rbf: rbf),
      );
    } catch (e) {
      UIUtil.showSnackbar(e.toString(), context);
      return;
    }
  }

  static bool smallScreen(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return height < 667;
  }

  static String authMessage({
    required BuildContext context,
    required String action,
    required Amount amount,
    required String symbol,
    BigInt? fee,
  }) {
    final l10n = l10nOf(context);
    if (amount.raw != BigInt.zero) {
      final amountStr = NumberUtil.formatedAmount(amount);
      final amountConfirm = l10n.amountConfirm(amountStr, symbol);
      action += '\n$amountConfirm';
    }
    if (fee != null && fee != BigInt.zero) {
      final kaspa = TokenInfo.kaspa;
      final feeStr = NumberUtil.approxAmountRaw(fee, kaspa.decimals);
      final feeConfirm = l10n.feeConfirm(feeStr, symbol);
      action += '\n$feeConfirm';
    }
    return action;
  }
}
