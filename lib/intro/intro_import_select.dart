import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../l10n/l10n.dart';
import '../widgets/buttons.dart';
import 'intro_providers.dart';

class ImportWalletTypeCard extends ConsumerWidget {
  final String title;
  final String description;
  final VoidCallback onPressed;

  const ImportWalletTypeCard({
    super.key,
    required this.title,
    required this.description,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 6,
        horizontal: 28,
      ),
      child: Container(
        child: TextButton(
          style: styles.darkCardButtonStyle,
          onPressed: onPressed,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 14,
              horizontal: 12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  title,
                  style: styles.textStyleAccount.copyWith(color: theme.text),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: styles.textStyleSettingItemSubheader,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class IntroImportSelect extends ConsumerWidget {
  const IntroImportSelect({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final l10n = l10nOf(context);

    void importWallet() {
      final notifier = ref.read(introStateProvider.notifier);
      notifier.importWallet();
    }

    void importLegacyWallet() {
      final notifier = ref.read(introStateProvider.notifier);
      notifier.importLegacyWallet();
    }

    void importViewOnlyWallet() {
      final notifier = ref.read(introStateProvider.notifier);
      notifier.importViewOnlyWallet();
    }

    void goBack() {
      final intro = ref.read(introStateProvider.notifier);
      intro.goBack();
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: theme.backgroundDark,
      body: SafeArea(
        minimum: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * 0.035,
          top: MediaQuery.of(context).size.height * 0.075,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImportWalletTypeCard(
              title: 'Import 24 Word Seed Phrase',
              description: 'Compatible with Cli Wallet and Ledger',
              onPressed: importWallet,
            ),
            ImportWalletTypeCard(
              title: 'Import 12 Word Seed Phrase',
              description: 'Compatible with Web Wallet and KDX',
              onPressed: importLegacyWallet,
            ),
            ImportWalletTypeCard(
              title: 'Import Watch Only Wallet',
              description:
                  'View the balance and transactions of a wallet without importing the Seed Phrase',
              onPressed: importViewOnlyWallet,
            ),
            Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(children: [
                PrimaryButton(
                  title: l10n.goBackButton,
                  onPressed: goBack,
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
