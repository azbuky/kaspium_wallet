import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app_providers.dart';

class TextOutlineButton extends ConsumerWidget {
  final String title;
  final EdgeInsetsGeometry margin;
  final Function? onPressed;
  final bool disabled;

  const TextOutlineButton({
    Key? key,
    required this.title,
    required this.margin,
    this.onPressed,
    this.disabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    return Row(children: [
      Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: theme.backgroundDark,
            borderRadius: BorderRadius.circular(100),
            boxShadow: [theme.boxShadowButton],
          ),
          height: 55,
          margin: margin,
          child: OutlinedButton(
            style: styles.outlinedButtonStyle,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: styles.textStyleButtonTextOutline,
                maxLines: 1,
              ),
            ),
            onPressed: () {
              if (onPressed != null) {
                onPressed!();
              }
            },
          ),
        ),
      ),
    ]);
  }
}
