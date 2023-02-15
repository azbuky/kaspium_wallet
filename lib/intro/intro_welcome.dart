import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import 'intro_actions_widget.dart';

class IntroWelcome extends ConsumerWidget {
  const IntroWelcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    final styles = ref.watch(stylesProvider);
    final theme = ref.watch(themeProvider);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: theme.backgroundDark,
      body: SafeArea(
        minimum: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * 0.035,
          top: MediaQuery.of(context).size.height * 0.10,
        ),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: FractionallySizedBox(
                      widthFactor: 0.4,
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Image.asset('assets/kaspa.png'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 20,
                      ),
                      child: AutoSizeText(
                        l10n.welcomeText,
                        style: styles.textStyleParagraph,
                        minFontSize: 18,
                        maxLines: 4,
                        stepGranularity: 0.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const IntroActionsWidget(),
          ],
        ),
      ),
    );
  }
}
