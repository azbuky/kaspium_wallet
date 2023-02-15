import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app_providers.dart';
import 'address_three_line_text.dart';

class AddressThreeLineLeftText extends ConsumerWidget {
  final String address;
  final AddressThreeLineTextType type;
  final String? label;

  const AddressThreeLineLeftText({
    Key? key,
    required this.address,
    this.type = AddressThreeLineTextType.PRIMARY,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final length = address.length ~/ 3;
    final separatorIndex = address.indexOf(':');
    String stringPartOne = address.substring(0, separatorIndex + 1);
    String stringPartTwo = address.substring(separatorIndex + 1, length + 4);
    String stringPartThree = address.substring(length + 4, 2 * (length + 4));
    String stringPartFour =
        address.substring(2 * length + 6, address.length - 8);
    String stringPartFive = address.substring(address.length - 8);

    final styles = ref.watch(stylesProvider);

    switch (type) {
      case AddressThreeLineTextType.PRIMARY60:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: stringPartOne,
                    style: styles.textStyleAddressPrimary60,
                  ),
                  TextSpan(
                    text: stringPartTwo,
                    style: styles.textStyleAddressText60,
                  ),
                ],
              ),
            ),
            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: stringPartThree,
                    style: styles.textStyleAddressText60,
                  ),
                ],
              ),
            ),
            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: stringPartFour,
                    style: styles.textStyleAddressText60,
                  ),
                  TextSpan(
                      text: stringPartFive,
                      style: styles.textStyleAddressPrimary60),
                ],
              ),
            )
          ],
        );
      case AddressThreeLineTextType.PRIMARY:
        Widget contactWidget = label != null
            ? RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  text: label,
                  style: styles.textStyleAddressPrimary,
                ),
              )
            : const SizedBox();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            contactWidget,
            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: stringPartOne,
                    style: styles.textStyleAddressPrimary,
                  ),
                  TextSpan(
                    text: stringPartTwo,
                    style: styles.textStyleAddressText90,
                  ),
                ],
              ),
            ),
            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: stringPartThree,
                    style: styles.textStyleAddressText90,
                  ),
                ],
              ),
            ),
            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: stringPartFour,
                    style: styles.textStyleAddressText90,
                  ),
                  TextSpan(
                    text: stringPartFive,
                    style: styles.textStyleAddressPrimary,
                  ),
                ],
              ),
            )
          ],
        );
      case AddressThreeLineTextType.SUCCESS:
        Widget contactWidget = label != null
            ? RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                    text: label, style: styles.textStyleAddressSuccess))
            : SizedBox();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            contactWidget,
            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: stringPartOne,
                    style: styles.textStyleAddressSuccess,
                  ),
                  TextSpan(
                    text: stringPartTwo,
                    style: styles.textStyleAddressText90,
                  ),
                ],
              ),
            ),
            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: stringPartThree,
                    style: styles.textStyleAddressText90,
                  ),
                ],
              ),
            ),
            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: stringPartFour,
                    style: styles.textStyleAddressText90,
                  ),
                  TextSpan(
                    text: stringPartFive,
                    style: styles.textStyleAddressSuccess,
                  ),
                ],
              ),
            )
          ],
        );
      case AddressThreeLineTextType.SUCCESS_FULL:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: stringPartOne,
                    style: styles.textStyleAddressSuccess,
                  ),
                  TextSpan(
                    text: stringPartTwo,
                    style: styles.textStyleAddressSuccess,
                  ),
                ],
              ),
            ),
            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: stringPartThree,
                    style: styles.textStyleAddressSuccess,
                  ),
                ],
              ),
            ),
            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: stringPartFour,
                    style: styles.textStyleAddressSuccess,
                  ),
                  TextSpan(
                    text: stringPartFive,
                    style: styles.textStyleAddressSuccess,
                  ),
                ],
              ),
            )
          ],
        );
    }
  }
}
