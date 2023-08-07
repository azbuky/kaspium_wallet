import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app_providers.dart';
import 'address_text_type.dart';

class AddressOneLineText extends ConsumerWidget {
  final String address;
  final AddressTextType type;
  final String? label;

  const AddressOneLineText({
    Key? key,
    required this.address,
    this.type = AddressTextType.PRIMARY,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);

    final separatorIndex = address.indexOf(':');
    final checksumLength = 8;
    final checksumIndex = address.length - checksumLength;

    final addressPartOne = address.substring(0, separatorIndex + 7);
    final addressPartTwo = address.substring(checksumIndex);

    final mapping = <AddressTextType, (TextStyle, TextStyle, TextStyle)>{
      AddressTextType.PRIMARY60: (
        styles.textStyleAddressPrimary60,
        styles.textStyleAddressText60,
        styles.textStyleAddressPrimary60,
      ),
      AddressTextType.PRIMARY: (
        styles.textStyleAddressPrimary,
        styles.textStyleAddressText90,
        styles.textStyleAddressPrimary,
      ),
      AddressTextType.SUCCESS: (
        styles.textStyleAddressSuccess,
        styles.textStyleAddressText90,
        styles.textStyleAddressSuccess
      ),
      AddressTextType.SUCCESS_FULL: (
        styles.textStyleAddressSuccess,
        styles.textStyleAddressSuccess,
        styles.textStyleAddressSuccess
      ),
    };

    return Column(
      children: [
        if (label != null) Text(label!, style: mapping[type]?.$1),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(text: addressPartOne, style: mapping[type]?.$1),
              TextSpan(text: '…', style: mapping[type]?.$2),
              TextSpan(text: addressPartTwo, style: mapping[type]?.$3),
            ],
          ),
        ),
      ],
    );
  }
}
