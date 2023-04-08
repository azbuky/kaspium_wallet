import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../l10n/l10n.dart';
import '../widgets/buttons/success_outline_button.dart';

class TransferCompleteSheet extends ConsumerWidget {
  final String transferAmount;
  const TransferCompleteSheet({
    Key? key,
    required this.transferAmount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    return SafeArea(
      minimum: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height * 0.035,
      ),
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            //A container for the paragraph and seed
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Success tick (icon)
                  Container(
                    margin: const EdgeInsets.only(bottom: 30),
                    child: Icon(
                      AppIcons.success,
                      size: 100,
                      color: theme.success,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height * 0.2,
                      maxWidth: MediaQuery.of(context).size.width * 0.6,
                    ),
                    child: Stack(
                      children: [],
                    ),
                  ),
                  Container(
                    alignment: AlignmentDirectional(-1, 0),
                    margin: EdgeInsets.symmetric(horizontal: 60),
                    child: Text(
                      l10n.transferComplete(transferAmount),
                      style: styles.textStyleParagraphSuccess,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Container(
                    alignment: AlignmentDirectional(-1, 0),
                    margin: EdgeInsets.symmetric(horizontal: 60),
                    child: Text(
                      l10n.transferClose,
                      style: styles.textStyleParagraph,
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),
            SuccessOutlineButton(
              title: l10n.close.toUpperCase(),
              margin: const EdgeInsets.only(left: 28, right: 28, top: 8),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}
