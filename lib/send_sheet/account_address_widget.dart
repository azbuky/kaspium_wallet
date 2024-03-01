import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../wallet_address/wallet_address.dart';
import '../widgets/address_widgets.dart';

class AccountAddressWidget extends ConsumerWidget {
  final WalletAddress address;

  const AccountAddressWidget({
    super.key,
    required this.address,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10, left: 30, right: 30),
          child: RichText(
            textAlign: TextAlign.start,
            text: TextSpan(text: address.name, style: styles.textStyleAccount),
          ),
        ),
        // Address Text
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: AddressAdaptiveText(
            address: address.encoded,
            type: AddressTextType.PRIMARY60,
          ),
        ),
      ],
    );
  }
}
