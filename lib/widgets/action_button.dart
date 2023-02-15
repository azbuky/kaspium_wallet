import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/core_providers.dart';
import '../receive/receive_sheet.dart';
import '../send_sheet/send_sheet.dart';
import 'sheet_util.dart';

class ActionButton extends ConsumerWidget {
  final String title;
  final VoidCallback? onPressed;

  const ActionButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        boxShadow: [theme.boxShadowButton],
      ),
      height: 55,
      child: TextButton(
        style: styles.primaryButtonStyle,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: styles.textStyleButtonPrimary,
            maxLines: 1,
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}

class ReceiveActionButton extends ConsumerWidget {
  final VoidCallback? onPressed;

  const ReceiveActionButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final l10n = ref.watch(l10nProvider);

    return ActionButton(
      title: l10n.receive,
      onPressed: () {
        onPressed?.call();
        Sheets.showAppHeightEightSheet(
          context: context,
          widget: const ReceiveSheet(),
          theme: theme,
        );
      },
    );
  }
}

class SendActionButton extends ConsumerWidget {
  final VoidCallback? onPressed;
  const SendActionButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final l10n = ref.watch(l10nProvider);

    return ActionButton(
      title: l10n.send,
      onPressed: () {
        onPressed?.call();
        Sheets.showAppHeightNineSheet(
          context: context,
          widget: const SendSheet(),
          theme: theme,
        );
      },
    );
  }
}
