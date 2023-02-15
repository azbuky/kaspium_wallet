import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../wallet_address/address_providers.dart';
import '../widgets/address/address_three_line_left_text.dart';

class AccountWidget extends ConsumerWidget {
  const AccountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);
    final l10n = ref.watch(l10nProvider);

    final address = ref.watch(receiveWalletAddressProvider);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          alignment: Alignment.centerLeft,
          fit: BoxFit.scaleDown,
          child: Text(
            l10n.receiveAddress,
            style: styles.textStyleAccount,
          ),
        ),
        AddressThreeLineLeftText(address: address.encoded),
      ],
    );
  }
}
