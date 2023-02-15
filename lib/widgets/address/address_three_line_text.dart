import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app_providers.dart';

enum AddressThreeLineTextType { PRIMARY60, PRIMARY, SUCCESS, SUCCESS_FULL }

class AddressThreeLineText extends ConsumerWidget {
  final String address;
  final AddressThreeLineTextType type;
  final String? label;

  const AddressThreeLineText({
    Key? key,
    required this.address,
    this.type = AddressThreeLineTextType.PRIMARY,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);

    final separatorIndex = address.indexOf(':');
    final addressPartOne = address.substring(0, separatorIndex + 1);
    final addressPartTwo = address.substring(separatorIndex + 1, 25);
    final addressPartThree = address.substring(25, 45);
    final addressPartFour = address.substring(45, address.length - 8);
    final addressPartFive = address.substring(address.length - 8);

    switch (type) {
      case AddressThreeLineTextType.PRIMARY60:
        return Column(
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: addressPartOne,
                    style: styles.textStyleAddressPrimary60,
                  ),
                  TextSpan(
                    text: addressPartTwo,
                    style: styles.textStyleAddressText60,
                  ),
                ],
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: addressPartThree,
                    style: styles.textStyleAddressText60,
                  ),
                ],
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: addressPartFour,
                    style: styles.textStyleAddressText60,
                  ),
                  TextSpan(
                      text: addressPartFive,
                      style: styles.textStyleAddressPrimary60),
                ],
              ),
            )
          ],
        );
      case AddressThreeLineTextType.PRIMARY:
        Widget contactWidget = label != null
            ? RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: label,
                  style: styles.textStyleAddressPrimary,
                ),
              )
            : const SizedBox();
        return Column(
          children: [
            contactWidget,
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: addressPartOne,
                    style: styles.textStyleAddressPrimary,
                  ),
                  TextSpan(
                    text: addressPartTwo,
                    style: styles.textStyleAddressText90,
                  ),
                ],
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: addressPartThree,
                    style: styles.textStyleAddressText90,
                  ),
                ],
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: addressPartFour,
                    style: styles.textStyleAddressText90,
                  ),
                  TextSpan(
                    text: addressPartFive,
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
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: label, style: styles.textStyleAddressSuccess))
            : SizedBox();
        return Column(
          children: [
            contactWidget,
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: addressPartOne,
                    style: styles.textStyleAddressSuccess,
                  ),
                  TextSpan(
                    text: addressPartTwo,
                    style: styles.textStyleAddressText90,
                  ),
                ],
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: addressPartThree,
                    style: styles.textStyleAddressText90,
                  ),
                ],
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: addressPartFour,
                    style: styles.textStyleAddressText90,
                  ),
                  TextSpan(
                    text: addressPartFive,
                    style: styles.textStyleAddressSuccess,
                  ),
                ],
              ),
            )
          ],
        );
      case AddressThreeLineTextType.SUCCESS_FULL:
        return Column(
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: addressPartOne,
                    style: styles.textStyleAddressSuccess,
                  ),
                  TextSpan(
                    text: addressPartTwo,
                    style: styles.textStyleAddressSuccess,
                  ),
                ],
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: addressPartThree,
                    style: styles.textStyleAddressSuccess,
                  ),
                ],
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: addressPartFour,
                    style: styles.textStyleAddressSuccess,
                  ),
                  TextSpan(
                    text: addressPartFive,
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
