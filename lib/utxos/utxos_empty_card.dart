import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../l10n/l10n.dart';

class UtxosEmptyCard extends ConsumerWidget {
  const UtxosEmptyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);

    return Container(
      margin: EdgeInsetsDirectional.fromSTEB(14.0, 4.0, 14.0, 4.0),
      decoration: BoxDecoration(
        color: theme.backgroundDark,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [theme.boxShadow],
      ),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 7.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                ),
                color: theme.primary,
                boxShadow: [theme.boxShadow],
              ),
            ),
            Flexible(
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 14.0, horizontal: 15.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: _getExampleHeaderSpan(context, ref),
                ),
              ),
            ),
            Container(
              width: 7.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
                color: theme.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextSpan _getExampleHeaderSpan(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    final workingStr = l10n.emptyCardIntroUtxos;

    if (!workingStr.contains('KASPA')) {
      return TextSpan(
        text: workingStr,
        style: styles.textStyleTransactionWelcome,
      );
    }
    // Colorize Kaspa
    List<String> splitStr = workingStr.split('KASPA');
    if (splitStr.length != 2) {
      return TextSpan(
        text: workingStr,
        style: styles.textStyleTransactionWelcome,
      );
    }
    return TextSpan(
      children: [
        TextSpan(
          text: splitStr[0],
          style: styles.textStyleTransactionWelcome,
        ),
        TextSpan(
          text: 'KASPA',
          style: styles.textStyleTransactionWelcomePrimary,
        ),
        TextSpan(
          text: splitStr[1],
          style: styles.textStyleTransactionWelcome,
        ),
      ],
    );
  }
}
