import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app_providers.dart';
import '../../dotk/dotk_proven_name.dart';
import 'address_text_type.dart';

class AddressThreeLineText extends ConsumerWidget {
  final String address;
  final AddressTextType type;
  final String? label;
  final bool labelProven;
  final TextAlign textAlign;

  const AddressThreeLineText({
    super.key,
    required this.address,
    this.type = .PRIMARY,
    this.label,
    this.labelProven = false,
    this.textAlign = .center,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);

    final lineLength = address.length ~/ 3;
    final separatorIndex = address.indexOf(':') + 1;
    final firstLineIndex = textAlign == .center ? 25 : lineLength + 4;
    final secondLineIndex = textAlign == .center ? 45 : 2 * firstLineIndex;
    final checksumLength = 8;
    final checksumIndex = address.length - checksumLength;

    final addressPartOne = address.substring(0, separatorIndex);
    final addressPartTwo = address.substring(separatorIndex, firstLineIndex);
    final addressPartThree = address.substring(firstLineIndex, secondLineIndex);
    final addressPartFour = address.substring(secondLineIndex, checksumIndex);
    final addressPartFive = address.substring(checksumIndex);

    final mapping = <AddressTextType,
        (TextStyle, TextStyle, TextStyle, TextStyle, TextStyle)>{
      AddressTextType.PRIMARY60: (
        styles.textStyleAddressPrimary60,
        styles.textStyleAddressText60,
        styles.textStyleAddressText60,
        styles.textStyleAddressText60,
        styles.textStyleAddressPrimary60,
      ),
      AddressTextType.PRIMARY: (
        styles.textStyleAddressPrimary,
        styles.textStyleAddressText90,
        styles.textStyleAddressText90,
        styles.textStyleAddressText90,
        styles.textStyleAddressPrimary,
      ),
      AddressTextType.SUCCESS: (
        styles.textStyleAddressSuccess,
        styles.textStyleAddressText90,
        styles.textStyleAddressText90,
        styles.textStyleAddressText90,
        styles.textStyleAddressSuccess
      ),
      AddressTextType.SUCCESS_FULL: (
        styles.textStyleAddressSuccess,
        styles.textStyleAddressSuccess,
        styles.textStyleAddressSuccess,
        styles.textStyleAddressSuccess,
        styles.textStyleAddressSuccess
      ),
    };

    return Column(
      crossAxisAlignment: textAlign == .center ? .center : .start,
      children: [
        if (label != null)
          labelProven
              ? DotkProvenName(
                  label!,
                  style: mapping[type]?.$1,
                  textAlign: textAlign,
                )
              : Text(label!, style: mapping[type]?.$1, textAlign: textAlign),
        RichText(
          textAlign: textAlign,
          text: TextSpan(
            children: [
              TextSpan(
                text: addressPartOne,
                style: mapping[type]?.$1,
              ),
              TextSpan(
                text: addressPartTwo,
                style: mapping[type]?.$2,
              ),
            ],
          ),
        ),
        RichText(
          textAlign: textAlign,
          text: TextSpan(
            children: [
              TextSpan(
                text: addressPartThree,
                style: mapping[type]?.$3,
              ),
            ],
          ),
        ),
        RichText(
          textAlign: textAlign,
          text: TextSpan(
            children: [
              TextSpan(
                text: addressPartFour,
                style: mapping[type]?.$4,
              ),
              TextSpan(
                text: addressPartFive,
                style: mapping[type]?.$5,
              ),
            ],
          ),
        )
      ],
    );
  }
}
