import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app_providers.dart';

class AddressTwoLineShortText extends ConsumerWidget {
  final String address;

  const AddressTwoLineShortText({
    Key? key,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: address.substring(0, 11),
                style: styles.textStyleAddressPrimary60,
              ),
              TextSpan(
                text: address.substring(11, 18),
                style: styles.textStyleAddressText60,
              ),
            ],
          ),
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: '...' + address.substring(40, 45),
                style: styles.textStyleAddressText60,
              ),
              TextSpan(
                text: address.substring(45),
                style: styles.textStyleAddressPrimary60,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
