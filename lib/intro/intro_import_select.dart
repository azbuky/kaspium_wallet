import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../l10n/l10n.dart';
import '../widgets/buttons.dart';
import 'intro_back_button.dart';
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
    final styles = ref.watch(stylesProvider);
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
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsetsDirectional.only(start: 20),
                child: const IntroBackButton(),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 40, right: 40, top: 10),
              alignment: AlignmentDirectional(-1, 0),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  l10n.importWallet,
                  style: styles.textStyleHeaderColored,
                  maxLines: 1,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 40, right: 40, top: 15),
              alignment: Alignment.centerLeft,
              child: Text(
                l10n.importWalletDescription,
                style: styles.textStyleParagraph,
                textAlign: TextAlign.start,
              ),
            ),
            ImportWalletTypeCard(
              title: l10n.importOptionStandardWalletTitle,
              description: l10n.importOptionStandardWalletDescription,
              onPressed: importWallet,
            ),
            ImportWalletTypeCard(
              title: l10n.importOptionLegacyWalletTitle,
              description: l10n.importOptionLegacyWalletDescription,
              onPressed: importLegacyWallet,
            ),
            ImportWalletTypeCard(
              title: l10n.importOptionKpubTitle,
              description: l10n.importOptionKpubDescription,
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
