import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../app_providers.dart';
import '../../app_router.dart';
import '../../l10n/l10n.dart';
import '../../widgets/app_simpledialog.dart';

class KasplexConfirmDialog extends HookConsumerWidget {
  const KasplexConfirmDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    return AppAlertDialog(
      title: Text(
        'Enable Kasplex KRC20 features?',
        style: styles.textStyleButtonPrimaryOutline,
      ),
      contentPadding: const EdgeInsetsDirectional.fromSTEB(12, 20, 24, 12),
      content: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 12),
              child: Text(
                'Do you want to enable Kasplex KRC20 features in Kaspium?',
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
            l10n.noUppercase,
            style: styles.textStyleDialogOptions,
          ),
          onPressed: () => appRouter.pop(context, withResult: false),
        ),
        TextButton(
          style: styles.dialogButtonStyle,
          child: Text(
            l10n.yesUppercase,
            style: styles.textStyleDialogOptions,
          ),
          onPressed: () => appRouter.pop(context, withResult: true),
        ),
      ],
    );
  }
}
