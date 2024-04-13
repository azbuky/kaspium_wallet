import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../wallet_address/wallet_addresses_sheet.dart';
import '../widgets/sheet_util.dart';

class AccountSwitcher extends ConsumerWidget {
  const AccountSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    void showAccountsSheet() {
      Sheets.showAppHeightNineSheet(
        context: context,
        theme: theme,
        widget: const WalletAddressesSheet(),
      );
    }

    return Container(
      height: 36,
      width: 36,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: TextButton(
        style: styles.roundButtonStyle,
        onPressed: showAccountsSheet,
        child: Icon(
          AppIcons.accountswitcher,
          size: 36,
          color: theme.primary,
        ),
      ),
    );
  }
}
