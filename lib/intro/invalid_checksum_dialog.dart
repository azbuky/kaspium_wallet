import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../l10n/l10n.dart';
import '../widgets/app_simpledialog.dart';

class InvalidChecksumDialog extends HookConsumerWidget {
  const InvalidChecksumDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    final title = l10n.invalidSecretPhrase;
    final content = l10n.invalidSecretPhraseDetails;
    final confirmation = l10n.invalidSecretPhraseConfirmation;

    final isChecked = useState(false);

    return AppAlertDialog(
      title: Text(
        title,
        style: styles.textStyleButtonPrimaryOutline,
      ),
      contentPadding: const EdgeInsetsDirectional.fromSTEB(12, 20, 24, 12),
      content: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 12),
              child: Text(
                content,
                style: styles.textStyleParagraph,
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  value: isChecked.value,
                  visualDensity: VisualDensity.compact,
                  checkColor: theme.text,
                  activeColor: theme.primary,
                  onChanged: (value) {
                    isChecked.value = value!;
                  },
                ),
                Text(confirmation),
              ],
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          style: styles.dialogButtonStyle,
          child: Text(
            isChecked.value ? l10n.doContinue : l10n.goBackButton,
            style: styles.textStyleDialogOptions,
          ),
          onPressed: () {
            Navigator.of(context).pop(isChecked.value);
          },
        )
      ],
    );
  }
}
