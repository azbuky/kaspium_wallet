import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import 'dialog.dart';

class LogoutButton extends ConsumerWidget {
  const LogoutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final l10n = ref.watch(l10nProvider);
    final styles = ref.watch(stylesProvider);

    void logout() {
      Navigator.of(context).pushNamedAndRemoveUntil('/logout', (_) => false);
    }

    void confirmLogout() {
      AppDialogs.showConfirmDialog(
        context,
        l10n.areYouSure,
        l10n.logoutDialogContent,
        l10n.YES,
        logout,
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
