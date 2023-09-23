import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../wallet_address/address_details_sheet.dart';
import 'sheet_util.dart';

class SelectedWalletButton extends ConsumerWidget {
  final Size size;

  const SelectedWalletButton({
    Key? key,
    this.size = const Size(60, 45),
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final account = ref.watch(receiveAddressProvider);
    final wallet = ref.watch(walletProvider);

    void showAccountDetails() {
      Sheets.showAppHeightNineSheet(
        context: context,
        theme: theme,
        widget: AddressDetailsSheet(address: account),
      );
    }

    return Stack(
      children: [
        Center(
          child: Container(
            width: size.width,
            height: size.height,
            alignment: Alignment(-1, 0),
            child: Icon(
              AppIcons.accountwallet,
              color: theme.success,
              size: size.height,
            ),
          ),
        ),
        Center(
          child: Container(
            width: size.width,
            height: size.height,
            alignment: AlignmentDirectional(0, 0.3),
            child: Text(
              wallet.getShortName().toUpperCase(),
              textAlign: TextAlign.center,
              style: styles.textStyleAccountShortNameSelected,
            ),
          ),
        ),
        Center(
          child: Container(
            width: size.width,
            height: size.height,
            child: TextButton(
              style: styles.walletButtonStyle,
              child: SizedBox(
                width: size.width,
                height: size.height,
              ),
              onPressed: showAccountDetails,
            ),
          ),
        ),
      ],
    );
  }
}
