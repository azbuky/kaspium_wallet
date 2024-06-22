import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_router.dart';
import '../l10n/l10n.dart';
import '../widgets/buttons.dart';
import '../widgets/mnemonic_display.dart';
import '../widgets/sheet_widget.dart';

class SeedBackupSheet extends HookConsumerWidget {
  final List<String> mnemonic;
  const SeedBackupSheet({Key? key, required this.mnemonic}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = l10nOf(context);

    return SheetWidget(
      title: l10n.secretPhrase,
      mainWidget: Container(
        child: MnemonicDisplay(wordList: mnemonic, obscured: true),
      ),
      bottomWidget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: PrimaryButton(
          title: l10n.close,
          onPressed: () => appRouter.pop(context),
        ),
      ),
    );
  }
}
