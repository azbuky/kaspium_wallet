import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/core_providers.dart';
import '../../l10n/l10n.dart';

class Bip39PassphraseLabel extends ConsumerWidget {
  const Bip39PassphraseLabel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.check_box_outlined, size: 20, color: theme.primary),
          const SizedBox(width: 8, height: 40),
          Text(
            l10n.bip39Passphrase,
            style: styles.textStyleDialogOptions,
          ),
        ],
      ),
    );
  }
}
