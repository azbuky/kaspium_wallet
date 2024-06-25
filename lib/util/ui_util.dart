import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oktoast/oktoast.dart';

import '../app_providers.dart';
import '../kaspa/kaspa.dart';
import '../l10n/l10n.dart';
import '../send_sheet/send_confirm_sheet.dart';
import '../send_sheet/send_sheet.dart';
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

  static Future<void> showSendFlow(
    BuildContext context, {
    required WidgetRef ref,
    required KaspaUri uri,
  }) async {
    final theme = ref.read(themeProvider);

    final amount = uri.amount;
    if (amount == null) {
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

    try {
      final changeAddress = await addressNotifier.nextChangeAddress;
      final tx = walletService.createSendTx(
        toAddress: uri.address,
        amountRaw: amount.raw,
        spendableUtxos: spendableUtxos,
        feePerInput: kFeePerInput,
        changeAddress: changeAddress.address,
        note: uri.message,
      );

      Sheets.showAppHeightNineSheet(
        context: context,
        theme: theme,
        widget: SendConfirmSheet(tx: tx),
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
    BigInt? fee,
  }) {
    final l10n = l10nOf(context);
    if (amount.raw != BigInt.zero) {
      final amountStr = NumberUtil.formatedAmount(amount);
      final amountConfirm = l10n.amountConfirm(amountStr, amount.symbolLabel);
      action += '\n$amountConfirm';
    }
    if (fee != null && fee != BigInt.zero) {
      final kaspa = TokenInfo.kaspa;
      final feeStr = NumberUtil.approxAmountRaw(fee, kaspa.decimals);
      final feeConfirm = l10n.feeConfirm(feeStr, kaspa.symbolLabel);
      action += '\n$feeConfirm';
    }
    return action;
  }
}
