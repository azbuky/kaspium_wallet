import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app_providers.dart';

class AddressShortText extends ConsumerWidget {
  final String address;
  const AddressShortText({Key? key, required this.address}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);

    final separatorIndex = address.indexOf(':');
    final stringPartOne = address.substring(0, separatorIndex + 11);

    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
          text: stringPartOne,
          style: styles.textStyleAddressPrimary,
        ),
      ]),
    );
  }
}
