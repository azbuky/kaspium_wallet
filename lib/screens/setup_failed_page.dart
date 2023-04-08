import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/core_providers.dart';
import '../l10n/l10n.dart';
import '../util/ui_util.dart';
import '../widgets/buttons.dart';

class SetupFailedPage extends ConsumerWidget {
  final Object? error;
  final Function onRestart;

  const SetupFailedPage({
    Key? key,
    required this.error,
    required this.onRestart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: theme.backgroundDark,
      body: SafeArea(
        minimum: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * 0.035,
        ),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FractionallySizedBox(
                    widthFactor: 0.4,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Image.asset('assets/kaspa.png'),
                    ),
                  ),
                  Text(
                    l10n.setupFailedMessage,
                    style: styles.textStyleSettingItemHeaderLarge,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                children: [
                  PrimaryButton(
                    title: l10n.copyErrorButton,
                    onPressed: () async {
                      await Clipboard.setData(
                        ClipboardData(text: error.toString()),
                      );
                      UIUtil.showSnackbar(l10n.errorMessageCopied, context);
                    },
                  ),
                  const SizedBox(height: 16),
                  PrimaryOutlineButton(
                    title: l10n.restartSetupButton,
                    onPressed: onRestart,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
