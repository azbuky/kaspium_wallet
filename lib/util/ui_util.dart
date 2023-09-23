import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

import '../kaspa/kaspa.dart';
import '../l10n/l10n.dart';
import '../send_sheet/send_confirm_sheet.dart';
import '../send_sheet/send_sheet.dart';
import '../themes/base_theme.dart';
import '../transactions/send_tx.dart';
import '../widgets/sheet_util.dart';
import '../widgets/toast_widget.dart';
import 'numberutil.dart';

abstract class UIUtil {
  static double drawerWidth(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return (width < 375) ? width * 0.94 : width * 0.85;
  }

  static void showSnackbar(String content, BuildContext context) {
    showToastWidget(
      ToastWidget(content: content),
      dismissOtherToast: true,
      duration: Duration(milliseconds: 3000),
    );
  }

  static void showSendFlow(
    BuildContext context, {
    required String ifNullMessage,
    required BaseTheme theme,
    required KaspaUri? uri,
  }) {
    if (uri == null) {
      UIUtil.showSnackbar(ifNullMessage, context);
      return;
    }

    final amount = uri.amount;
    Widget widget;
    if (amount != null) {
      final tx = SendTx(
        uri: uri,
        amountRaw: amount.raw,
        note: uri.message,
      );
      widget = SendConfirmSheet(tx: tx);
    } else {
      widget = SendSheet(
        uri: uri,
        note: uri.message,
      );
    }
    Sheets.showAppHeightNineSheet(
      context: context,
      theme: theme,
      widget: widget,
    );
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
