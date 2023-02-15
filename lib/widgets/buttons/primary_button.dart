import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app_providers.dart';

class PrimaryButton extends ConsumerWidget {
  final String title;
  final EdgeInsetsGeometry margin;
  final bool disabled;
  final Function? onPressed;

  const PrimaryButton({
    Key? key,
    required this.title,
    this.margin = EdgeInsets.zero,
    this.disabled = false,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              boxShadow: [theme.boxShadowButton],
            ),
            height: 55,
            margin: margin,
            child: TextButton(
              style: disabled
                  ? styles.disabledPrimaryButtonStyle
                  : styles.primaryButtonStyle,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: styles.textStyleButtonPrimary,
                  maxLines: 1,
                ),
              ),
              onPressed: () {
                if (!disabled) {
                  onPressed?.call();
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}
