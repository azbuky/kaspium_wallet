import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../l10n/l10n.dart';
import '../widgets/address_widgets.dart';

class AccountWidget extends ConsumerWidget {
  const AccountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

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
        AddressThreeLineText(
          address: address.encoded,
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}
