import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

import '../app_localization.dart';
import '../kaspa/kaspa.dart';
import '../widgets/toast_widget.dart';
import 'numberutil.dart';

class UIUtil {
  final AppLocalization l10n;
  const UIUtil(this.l10n);

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

  static bool smallScreen(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return height < 667;
  }

  String authMessage(String action, Amount amount, BigInt? fee) {
    if (amount.raw != BigInt.zero) {
      final amountStr = NumberUtil.formatedAmount(amount);
      final amountConfirm = l10n.amountConfirm
          .replaceAll('%1', amountStr)
          .replaceAll('%2', amount.symbolLabel);
      action += '\n$amountConfirm';
    }
    if (fee != null && fee != BigInt.zero) {
      final kaspa = TokenInfo.kaspa;
      final feeStr = NumberUtil.approxAmountRaw(fee, kaspa.decimals);
      final feeConfirm = l10n.feeConfirm
          .replaceAll('%1', feeStr)
          .replaceAll('%2', kaspa.symbolLabel);
      action += '\n$feeConfirm';
    }
    return action;
  }
}
