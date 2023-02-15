import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../widgets/buttons.dart';
import 'intro_back_button.dart';
import 'intro_providers.dart';

class IntroBackupSafety extends ConsumerWidget {
  const IntroBackupSafety({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = ref.watch(l10nProvider);

    void goNext() {
      final intro = ref.read(introStateProvider.notifier);
      intro.showIntroBackup();
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
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.only(start: 20),
                      child: const IntroBackButton(),
                    ),
                  ]),
                  Container(
                    margin:
                        const EdgeInsetsDirectional.only(start: 40, top: 15),
                    child: Icon(
                      AppIcons.security,
                      size: 60,
                      color: theme.primary,
                    ),
                  ),
                  // The header
                  Container(
                    margin: const EdgeInsets.only(left: 40, right: 40, top: 10),
                    alignment: AlignmentDirectional(-1, 0),
                    child: AutoSizeText(
                      l10n.secretInfoHeader,
                      style: styles.textStyleHeaderColored,
                      stepGranularity: 0.1,
                      maxLines: 1,
                      minFontSize: 12,
                    ),
                  ),
                  // The paragraph
                  Container(
                    margin: const EdgeInsets.only(left: 40, right: 40, top: 15),
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        AutoSizeText(
                          l10n.secretInfo,
                          style: styles.textStyleParagraph,
                          maxLines: 5,
                          stepGranularity: 0.5,
                        ),
                        Container(
                          margin: const EdgeInsetsDirectional.only(top: 15),
                          child: AutoSizeText(
                            l10n.secretWarning,
                            style: styles.textStyleParagraphPrimary,
                            maxLines: 4,
                            stepGranularity: 0.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            PrimaryButton(
              title: l10n.gotItButton,
              margin: const EdgeInsets.fromLTRB(28, 0, 28, 8),
              onPressed: goNext,
            ),
          ],
        ),
      ),
    );
  }
}
