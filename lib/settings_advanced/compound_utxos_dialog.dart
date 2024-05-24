import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../kaspa/kaspa.dart';
import '../l10n/l10n.dart';
import '../util/numberutil.dart';
import '../util/ui_util.dart';
import '../widgets/app_simpledialog.dart';
import '../widgets/dialog.dart';

class CompoundUtxosDialog extends ConsumerWidget {
  final bool lightMode;

  const CompoundUtxosDialog({
    super.key,
    this.lightMode = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    final utxos = ref.watch(utxoListProvider);
    final balance = ref.watch(formatedTotalBalanceProvider);
    final maxSend = NumberUtil.formatedAmount(ref.watch(maxSendProvider));

    Future<void> sendCompoundTx() async {
      try {
        AppDialogs.showInProgressDialog(
          context,
          l10n.compoundingUtxos,
          l10n.compoundingMessage,
        );

        final walletService = ref.read(walletServiceProvider);
        final addressNotifier = ref.read(addressNotifierProvider);
        final changeAddress = await addressNotifier.nextChangeAddress;

        final spendableUtxos = ref.read(spendableUtxosProvider);
        if (spendableUtxos.length <= 1) {
          UIUtil.showSnackbar(l10n.compoundTooFewUtxos, context);
          Navigator.of(context).pop();
          return;
        }
        final compoundTx = walletService.createCompoundTx(
          compoundAddress: changeAddress.address,
          spendableUtxos: spendableUtxos,
          feePerInput: kFeePerInput,
        );
        await walletService.sendTransaction(compoundTx);
        await addressNotifier.addAddress(changeAddress.copyWith(used: true));

        if (lightMode) {
          // give some time for compound tx to broadcast and get accepted
          await Future.delayed(const Duration(seconds: 5));
          // close both dialogs
          Navigator.of(context).pop();
        }

        UIUtil.showSnackbar(l10n.compoundSuccess, context);
      } catch (e) {
        UIUtil.showSnackbar(l10n.compoundFailure, context);
      } finally {
        Navigator.of(context).pop();
      }
    }

    Future<void> compound() async {
      final authUtil = ref.read(authUtilProvider);
      final message = l10n.compoundUtxosConfirmation;
      final auth = await authUtil.authenticate(context, message, message);
      if (auth) {
        await sendCompoundTx();
      }
    }

    return AppAlertDialog(
      title: Text(
        lightMode ? l10n.compoundRequired : l10n.compoundUtxosConfirmation,
        style: styles.textStyleDialogHeader,
      ),
      content: lightMode
          ? Text(
              l10n.compoundRequiredDescription,
              style: styles.textStyleSettingItemHeader,
            )
          : Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        l10n.utxosUppercase,
                        style: styles.textStyleSettingItemHeader,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                          l10n.balance,
                          style: styles.textStyleSettingItemHeader,
                        ),
                      ),
                      Text(
                        l10n.maxSend,
                        style: styles.textStyleSettingItemHeader,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          '${utxos.length}',
                          style: styles.textStyleSettingItemHeader,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                          '$balance KAS',
                          style: styles.textStyleSettingItemHeader,
                        ),
                      ),
                      Container(
                        child: Text(
                          '${maxSend} KAS',
                          style: styles.textStyleSettingItemHeader,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
      actions: [
        TextButton(
          style: styles.dialogButtonStyle,
          onPressed: () => Navigator.of(context).pop(),
          child: Text(
            l10n.closeUppercased,
            style: styles.textStyleDialogOptions,
          ),
        ),
        TextButton(
          style: styles.dialogButtonStyle,
          child: Text(
            l10n.compoundUppercased,
            style: styles.textStyleDialogOptions,
          ),
          onPressed: compound,
        ),
      ],
    );
  }
}
