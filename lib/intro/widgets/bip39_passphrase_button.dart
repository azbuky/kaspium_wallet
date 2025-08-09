import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/core_providers.dart';
import '../../widgets/sheet_util.dart';
import '../intro_providers.dart';
import 'bip39_passphrase_label.dart';
import 'bip39_passphrase_sheet.dart';

class Bip39PassphraseButton extends ConsumerWidget {
  const Bip39PassphraseButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final hasBip39Passphrase = ref.watch(
      introDataProvider.select((value) => value.bip39Passphrase.isNotEmpty),
    );

    if (!hasBip39Passphrase) {
      return const SizedBox();
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 20),
        TextButton(
          style: styles.dialogButtonStyle,
          child: const Bip39PassphraseLabel(),
          onPressed: () {
            Sheets.showAppHeightEightSheet(
              context: context,
              widget: const Bip39PassphraseSheet(),
              theme: theme,
            );
          },
        ),
      ],
    );
  }
}
