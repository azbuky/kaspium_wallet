import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../l10n/l10n.dart';

class TxNoteWidget extends ConsumerWidget {
  final String note;

  const TxNoteWidget({Key? key, required this.note}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        RichText(
          text: TextSpan(children: [
            TextSpan(
              text: l10n.noteLabel + ' ',
              style: styles.textStyleTransactionAmountSmall
                  .copyWith(color: theme.primary),
            ),
            TextSpan(
              text: note,
              style: styles.textStyleTransactionAmountSmall
                  .copyWith(color: theme.text60),
            ),
          ]),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
