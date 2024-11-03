import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../app_router.dart';
import '../l10n/l10n.dart';
import 'app_simpledialog.dart';

class PendingTxDialog extends ConsumerWidget {
  const PendingTxDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

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
            l10n.cancel,
            style: styles.textStyleDialogOptions,
          ),
          onPressed: () => appRouter.pop(context, withResult: false),
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
