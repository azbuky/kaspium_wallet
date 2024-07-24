import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
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
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    final wallet = ref.watch(walletProvider);

    return SheetWidget(
      title: l10n.secretPhrase,
      mainWidget: ListView(
        children: [
          Container(
            child: MnemonicDisplay(wordList: mnemonic, obscured: true),
          ),
          const SizedBox(height: 30),
          if (wallet.usesBip39Passphrase)
            Text(
              l10n.bip39PassphraseNote,
              style: styles.textStyleAddressText60,
              textAlign: TextAlign.center,
            ),
        ],
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
