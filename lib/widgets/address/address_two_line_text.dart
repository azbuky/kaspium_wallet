import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app_providers.dart';

class AddressTwoLineText extends ConsumerWidget {
  final String address;
  const AddressTwoLineText({
    Key? key,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);
    final fSplit = address.indexOf(':');
    final split = 34;
    final lSplit = address.length - 8;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: address.substring(0, fSplit),
                style: styles.textStyleAddressPrimary60,
              ),
              TextSpan(
                text: address.substring(fSplit, split),
                style: styles.textStyleAddressText60,
              ),
            ],
          ),
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: address.substring(split, lSplit),
                style: styles.textStyleAddressText60,
              ),
              TextSpan(
                text: address.substring(lSplit),
                style: styles.textStyleAddressPrimary60,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
