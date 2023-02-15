import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';

class TxAddressWidget extends ConsumerWidget {
  final String address;

  const TxAddressWidget({Key? key, required this.address}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final index = address.indexOf(':') + 1;
    final prefix = address.substring(0, index);
    final data = address.substring(index);

    return RichText(
      text: TextSpan(children: [
        TextSpan(
          text: prefix,
          style: styles.textStyleCurrencyAlt.copyWith(color: theme.primary60),
        ),
        TextSpan(
          text: data,
          style: styles.textStyleCurrencyAlt,
        ),
      ]),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
