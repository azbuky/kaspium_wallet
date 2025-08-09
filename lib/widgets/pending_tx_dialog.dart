import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../app_router.dart';
import '../l10n/l10n.dart';
import '../transactions/transaction_types.dart';
import '../util/ui_util.dart';
import 'app_simpledialog.dart';

class PendingTxDialog extends HookConsumerWidget {
  final Tx pendingTx;
  final BuildContext safeContext;
  final WidgetRef safeRef;

  const PendingTxDialog({
    super.key,
    required this.pendingTx,
    required this.safeContext,
    required this.safeRef,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    Future<void> updateFee() async {
      final address = pendingTx.apiTx.outputs.first.scriptPublicKeyAddress;
      UIUtil.showUpdateFeeFlow(
        safeContext,
        ref: safeRef,
        tx: pendingTx,
        address: address,
      );
    }

    return AppAlertDialog(
      title: Text(
        l10n.txPendingTitle,
        style: styles.textStyleButtonPrimaryOutline,
      ),
      contentPadding: const EdgeInsetsDirectional.fromSTEB(12, 20, 24, 12),
      content: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 12),
              child: Text(
                l10n.txPendingContent,
                style: styles.textStyleParagraph,
              ),
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
      actions: [
        TextButton(
          style: styles.dialogButtonStyle,
          child: Text(
            l10n.txPendingActionUpdateFee,
            style: styles.textStyleDialogOptions,
          ),
          onPressed: () async {
            appRouter.pop(context);
            updateFee();
          },
        ),
        TextButton(
          style: styles.dialogButtonStyle,
          child: Text(
            l10n.txPendingActionRbf,
            style: styles.textStyleDialogOptions,
          ),
          onPressed: () => appRouter.pop(context, withResult: true),
        ),
      ],
    );
  }
}
