import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../widgets/address_widgets.dart';

class AccountAddressWidget extends ConsumerWidget {
  const AccountAddressWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);

    final account = ref.watch(receiveWalletAddressProvider);

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10, left: 30, right: 30),
          child: RichText(
            textAlign: TextAlign.start,
            text: TextSpan(text: account.name, style: styles.textStyleAccount),
          ),
        ),
        // Address Text
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: AddressAdaptiveText(
            address: account.encoded,
            type: AddressTextType.PRIMARY60,
          ),
        ),
      ],
    );
  }
}
