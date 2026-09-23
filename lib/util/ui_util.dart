import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oktoast/oktoast.dart';

import '../app_providers.dart';
import '../app_router.dart';
import '../kaspa/kaspa.dart';
import '../l10n/l10n.dart';
import '../send_sheet/send_confirm_sheet.dart';
import '../send_sheet/send_sheet.dart';
import '../transactions/transaction_types.dart';
import '../widgets/dialog.dart';
import '../widgets/pending_tx_dialog.dart';
import '../widgets/sheet_util.dart';
import '../widgets/toast_widget.dart';

abstract class UIUtil {
  static void showSnackbar(String content) => showToastWidget(
    ToastWidget(content: content),
    dismissOtherToast: true,
    duration: Duration(milliseconds: 3000),
  );

  static Future<void> showCancelTransactionFlow(
    BuildContext context, {
    required WidgetRef ref,
    required Tx tx,
  }) async {
    final l10n = l10nOf(context);

    try {
      final walletService = ref.read(walletServiceProvider);
      final utxoNotifier = ref.read(utxoNotifierProvider);
      final feeRate = ref.read(feeRateProvider);

      Utxo? getUtxo() {
        for (final input in tx.apiTx.inputs) {
          final utxo = utxoNotifier.utxoForOutpoint(input.previousOutpoint);
          if (utxo != null) return utxo;
        }
        return null;
      }

      final utxo = getUtxo();
      if (utxo == null) {
        UIUtil.showSnackbar(l10n.cancelTransactionError);
        return;
      }
      final compoundAddress = Address.decodeAddress(utxo.address);
      final minFee = Amount.raw(tx.fee.raw + .one);
      final cancelTx = walletService.createCompoundTx(
        compoundAddress: compoundAddress,
        utxos: [utxo],
        feeRate: feeRate,
        minFee: minFee,
      );

      // Authenticate
      final message = l10n.cancelTransaction;
      final authUtil = ref.read(authUtilProvider);
      final auth = await authUtil.authenticateForSecret(context, message);

      if (!context.mounted) return;
      if (!auth) return;

      try {
        AppDialogs.showInProgressDialog(
          context,
          l10n.feeUpdateTitle,
          l10n.sendTxProgressDescription,
        );

        final txId = await walletService.sendTransaction(cancelTx.tx, rbf: true);
        ref.read(txMonitorProvider).watch(txId);
        ref.invalidate(pendingTxsProvider);

        UIUtil.showSnackbar(l10n.cancelTransactionSuccess);

        if (!context.mounted) return;
        appRouter.pop(context);
      } catch (e) {
        UIUtil.showSnackbar(l10n.feeUpdateError);
        appRouter.pop(context);
      }
    } catch (e) {
      UIUtil.showSnackbar(l10n.feeUpdateError);
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
      rbf =
          await showDialog<bool>(
            context: context,
            builder: (_) => const PendingTxDialog(),
          ) ??
          false;
      if (rbf == false) {
        return (cont: false, rbf: rbf);
      }
    }

    return (cont: true, rbf: rbf);
  }

  static Future<void> showCompoundFlow(
    BuildContext context, {
    required WidgetRef ref,
  }) => _showTxFlow(context, ref: ref, uri: null);

  static Future<void> showSendFlow(
    BuildContext context, {
    required WidgetRef ref,
    required KaspaUri uri,
    String? toLabel,
  }) => _showTxFlow(context, ref: ref, uri: uri, toLabel: toLabel);

  /// [toLabel] is a `.k` name this wallet resolved to [uri]'s address. A label
  /// a scanned uri carries is never shown on the confirm sheet.
  static Future<void> _showTxFlow(
    BuildContext context, {
    required WidgetRef ref,
    required KaspaUri? uri,
    String? toLabel,
  }) async {
    final theme = ref.read(themeProvider);
    final l10n = l10nOf(context);

    final amount = uri?.amount;
    if (uri != null && amount == null) {
      Sheets.showAppHeightNineSheet(
        context: context,
        theme: theme,
        widget: SendSheet(uri: uri),
      );
      return;
    }

    final spendableUtxos = ref.read(spendableUtxosProvider);
    final walletService = ref.read(walletServiceProvider);
    final addressNotifier = ref.read(addressNotifierProvider);
    final feeRate = ref.read(feeRateProvider);

    if (uri == null && spendableUtxos.length <= 1) {
      UIUtil.showSnackbar(l10n.compoundTooFewUtxos);
      return;
    }

    try {
      final (:cont, :rbf) = await checkForPendingTx(context, ref: ref);
      if (!cont) return;

      final changeAddress = await addressNotifier.changeAddress;

      if (!context.mounted) return;

      Amount? minFee;
      if (rbf) {
        final txNotifier = ref.read(txNotifierProvider);
        if (txNotifier.pendingTxs.firstOrNull case final pendingTx?) {
          minFee = .raw(pendingTx.fee.raw + .one);
        }
      }

      SendTx sendTx;
      if (uri case final uri?) {
        if (amount == null) {
          showSnackbar('Missing amount to send');
          return;
        }
        sendTx = walletService.createSendTx(
          toAddress: uri.address,
          amount: amount,
          spendableUtxos: spendableUtxos,
          feeRate: feeRate,
          minFee: minFee,
          changeAddress: changeAddress.address,
          note: uri.message,
        );
      } else {
        sendTx = walletService.createCompoundTx(
          compoundAddress: changeAddress.address,
          utxos: spendableUtxos,
          feeRate: feeRate,
          minFee: minFee,
        );
      }

      Sheets.showAppHeightNineSheet(
        context: context,
        theme: theme,
        widget: SendConfirmSheet(sendTx: sendTx, rbf: rbf, toLabel: toLabel),
      );
    } catch (e) {
      showSnackbar(e.toString());
    }
  }
}
