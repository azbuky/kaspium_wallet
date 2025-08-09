import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../app_router.dart';
import '../l10n/l10n.dart';
import 'dialog.dart';

class LogoutButton extends ConsumerWidget {
  const LogoutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    void confirmLogout() {
      AppDialogs.showConfirmDialog(
        context,
        l10n.areYouSure,
        l10n.logoutDialogContent,
        l10n.yesUppercase,
        () => appRouter.logout(context),
      );
    }

    return TextButton(
      style: styles.dialogButtonStyle,
      onPressed: confirmLogout,
      child: Container(
        child: Row(children: [
          Icon(AppIcons.logout, size: 16, color: theme.text),
          const SizedBox(width: 4),
          Text(
            l10n.logout,
            style: styles.textStyleLogoutButton,
          ),
        ]),
      ),
    );
  }
}
