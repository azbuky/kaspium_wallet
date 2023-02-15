import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app_providers.dart';

enum AddressOneLineTextType { PRIMARY60, PRIMARY, SUCCESS }

class AddressOneLineText extends ConsumerWidget {
  final String address;
  final AddressOneLineTextType type;
  const AddressOneLineText({
    Key? key,
    required this.address,
    this.type = AddressOneLineTextType.PRIMARY,
  }) :
        super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);

    final stringPartOne = address.substring(0, 11);
    final stringPartFive = address.substring(49);

    switch (type) {
      case AddressOneLineTextType.PRIMARY60:
        return Column(
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
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
      case AddressOneLineTextType.PRIMARY:
        return Column(
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
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
      case AddressOneLineTextType.SUCCESS:
        return Column(
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
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
}
