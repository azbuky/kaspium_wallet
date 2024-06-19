import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import 'kas_icon_widget.dart';

class FiatModeIcon extends ConsumerWidget {
  final bool fiatMode;
  const FiatModeIcon({super.key, required this.fiatMode});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);
    final currency = ref.watch(currencyProvider);

    return fiatMode
        ? FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              currency.symbol,
              style: styles.textStyleParagraphPrimary,
            ),
          )
        : Image.asset(kKasIconPath, width: 40, height: 40);
  }
}
