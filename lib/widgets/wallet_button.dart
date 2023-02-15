import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../wallet_address/wallet_address.dart';

class WalletButton extends ConsumerWidget {
  final WalletAddress address;
  final Size size;

  const WalletButton({
    Key? key,
    required this.address,
    this.size = const Size(48, 36),
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    // void selectAccount() {
    //   final accounts = ref.read(walletManagerProvider);
    //   accounts.selectAddress(account);
    // }

    return Stack(
      children: [
        Center(
          child: Icon(
            AppIcons.accountwallet,
            color: theme.primary,
            size: size.height,
          ),
        ),
        Center(
          child: Container(
            width: size.width,
            height: size.height,
            alignment: AlignmentDirectional(0, 0.3),
            child: Text(
              address.getShortName().toUpperCase(),
              style: styles.textStyleAccountShortName,
            ),
          ),
        ),
        // Center(
        //   child: Container(
        //     width: size.width,
        //     height: size.height,
        //     color: Colors.transparent,
        //     child: TextButton(
        //       style: styles.walletButtonStyle,
        //       onPressed: selectAccount,
        //       child: Container(
        //         width: size.width,
        //         height: size.height,
        //         color: Colors.transparent,
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
