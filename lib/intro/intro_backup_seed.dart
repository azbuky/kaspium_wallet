import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../l10n/l10n.dart';
import '../widgets/buttons/primary_button.dart';
import '../widgets/mnemonic_display.dart';
import 'intro_back_button.dart';
import 'intro_providers.dart';
import 'widgets/new_mnemonic_button.dart';

class IntroBackupSeed extends ConsumerWidget {
  const IntroBackupSeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    final introData = ref.watch(introDataProvider);
    final mnemonic = introData.mnemonic?.split(' ');

    void goNext() {
      final intro = ref.read(introStateProvider.notifier);
      intro.showIntroBackupConfirm();
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
            //A widget that holds the header, the paragraph, the seed, "seed copied" text and the back button
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.only(start: 20),
                        child: const IntroBackButton(),
                      ),
                      const SizedBox(width: 50),
                      // Switch between Secret Phrase and Seed
                      // Container(
                      //   margin: EdgeInsetsDirectional.only(
                      //     end: smallScreen(context) ? 15 : 20,
                      //   ),
                      //   height: 50,
                      //   width: 50,
                      //   child: FlatButton(
                      //     highlightColor: theme.text15,
                      //     splashColor: theme.text15,
                      //     onPressed: () {
                      //       setState(() {
                      //         _showMnemonic = !_showMnemonic;
                      //       });
                      //     },
                      //     shape: RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(50)),
                      //     padding: EdgeInsets.zero,
                      //     child: Icon(
                      //       _showMnemonic ? AppIcons.seed : Icons.vpn_key,
                      //       color: theme.text,
                      //       size: 24,
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                  // The header
                  Container(
                    margin: const EdgeInsets.only(left: 40, right: 40, top: 10),
                    alignment: AlignmentDirectional(-1, 0),
                    child: Row(
                      children: [
                        Container(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width - 140,
                          ),
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              l10n.secretPhrase,
                              style: styles.textStyleHeaderColored,
                              maxLines: 1,
                            ),
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsetsDirectional.only(start: 10, end: 10),
                          child: Icon(
                            //showMnemonic ? Icons.vpn_key : AppIcons.seed,
                            Icons.vpn_key,
                            //size: showMnemonic ? 36 : 24,
                            size: 36,
                            color: theme.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Mnemonic word list
                  if (mnemonic != null) ...[
                    MnemonicDisplay(wordList: mnemonic),
                    const SizedBox(height: 20),
                    NewMnemonicButton(
                      strength: mnemonic.length == 12 ? 256 : 128,
                    ),
                  ] else
                    const SizedBox(),
                ],
              ),
            ),
            // Next Screen Button
            PrimaryButton(
              title: l10n.backupConfirmButton,
              margin: const EdgeInsets.symmetric(horizontal: 28),
              onPressed: goNext,
            ),
          ],
        ),
      ),
    );
  }
}
