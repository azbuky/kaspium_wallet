import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';

enum AddressTextType { PRIMARY60, PRIMARY, SUCCESS }

class OneOrThreeLineAddressText extends ConsumerWidget {
  final String address;
  final String? contactName;
  final AddressTextType type;

  const OneOrThreeLineAddressText({
    Key? key,
    required this.address,
    required this.type,
    this.contactName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);
    // One line for small displays
    if (MediaQuery.of(context).size.height < 667) {
      String stringPartOne = address.substring(0, 11);
      String stringPartFive = address.substring(49);
      switch (type) {
        case AddressTextType.PRIMARY60:
          return Column(
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: '',
                  children: [
                    TextSpan(
                      text: stringPartOne,
                      style: styles.textStyleAddressPrimary60,
                    ),
                    TextSpan(
                      text: "...",
                      style: styles.textStyleAddressText60,
                    ),
                    TextSpan(
                      text: stringPartFive,
                      style: styles.textStyleAddressPrimary60,
                    ),
                  ],
                ),
              ),
            ],
          );
        case AddressTextType.PRIMARY:
          return Column(
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: '',
                  children: [
                    TextSpan(
                      text: stringPartOne,
                      style: styles.textStyleAddressPrimary,
                    ),
                    TextSpan(
                      text: "...",
                      style: styles.textStyleAddressText90,
                    ),
                    TextSpan(
                      text: stringPartFive,
                      style: styles.textStyleAddressPrimary,
                    ),
                  ],
                ),
              ),
            ],
          );
        case AddressTextType.SUCCESS:
          return Column(
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: '',
                  children: [
                    TextSpan(
                      text: stringPartOne,
                      style: styles.textStyleAddressSuccess,
                    ),
                    TextSpan(
                      text: "...",
                      style: styles.textStyleAddressText90,
                    ),
                    TextSpan(
                      text: stringPartFive,
                      style: styles.textStyleAddressSuccess,
                    ),
                  ],
                ),
              ),
            ],
          );
      }
    }
    // Three line
    String stringPartOne = address.substring(0, 6);
    String stringPartTwo = address.substring(6, 25);
    String stringPartThree = address.substring(25, 45);
    String stringPartFour = address.substring(45, address.length - 8);
    String stringPartFive = address.substring(address.length - 8);
    switch (type) {
      case AddressTextType.PRIMARY60:
        return Column(
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: '',
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
              textAlign: TextAlign.center,
              text: TextSpan(
                text: '',
                children: [
                  TextSpan(
                    text: stringPartThree,
                    style: styles.textStyleAddressText60,
                  ),
                ],
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: '',
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
      case AddressTextType.PRIMARY:
        Widget contactWidget = contactName != null
            ? RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: contactName, style: styles.textStyleAddressPrimary))
            : SizedBox();
        return Column(
          children: [
            contactWidget,
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: '',
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
              textAlign: TextAlign.center,
              text: TextSpan(
                text: '',
                children: [
                  TextSpan(
                    text: stringPartThree,
                    style: styles.textStyleAddressText90,
                  ),
                ],
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: '',
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
      case AddressTextType.SUCCESS:
        Widget contactWidget = contactName != null
            ? RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: contactName, style: styles.textStyleAddressSuccess))
            : SizedBox();
        return Column(
          children: [
            contactWidget,
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: '',
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
              textAlign: TextAlign.center,
              text: TextSpan(
                text: '',
                children: [
                  TextSpan(
                    text: stringPartThree,
                    style: styles.textStyleAddressText90,
                  ),
                ],
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: '',
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
    }
  }
}
