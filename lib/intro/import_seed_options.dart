import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../app_router.dart';
import '../l10n/l10n.dart';
import '../widgets/app_simpledialog.dart';
import '../widgets/sheet_util.dart';
import 'widgets/bip39_passphrase_sheet.dart';

enum ImportSeedOptions {
  bip39Passphrase,
}

class ImportSeedOptionsDialog extends ConsumerWidget {
  const ImportSeedOptionsDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    return AppSimpleDialog(
      title: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Text(
          l10n.importWalletAdvancedOptions,
          style: styles.textStyleDialogHeader,
        ),
      ),
      children: [
        SimpleDialogOption(
          child: Text(
            l10n.bip39Passphrase,
            style: styles.textStyleDialogOptions,
          ),
          onPressed: () => appRouter.pop(
            context,
            withResult: ImportSeedOptions.bip39Passphrase,
          ),
        ),
      ],
    );
  }
}

class ImportSeedOptionsButton extends ConsumerWidget {
  const ImportSeedOptionsButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    return Container(
      height: 50,
      width: 50,
      child: TextButton(
        style: styles.roundedTextButtonStyle,
        onPressed: () async {
          final selection = await showAppDialog<ImportSeedOptions>(
            context: context,
            builder: (_) => const ImportSeedOptionsDialog(),
          );

          switch (selection) {
            case ImportSeedOptions.bip39Passphrase:
              Sheets.showAppHeightEightSheet(
                context: context,
                widget: Bip39PassphraseSheet(),
                theme: theme,
              );
            default:
          }
        },
        child: Icon(AppIcons.settings, color: theme.text, size: 24),
      ),
    );
  }
}
