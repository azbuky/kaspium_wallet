import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app_providers.dart';

class PrimaryOutlineButton extends ConsumerWidget {
  final String title;
  final EdgeInsetsGeometry margin;
  final Function? onPressed;
  final bool disabled;

  const PrimaryOutlineButton({
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
              color: theme.backgroundDark,
              borderRadius: BorderRadius.circular(100),
              boxShadow: [theme.boxShadowButton],
            ),
            height: 55,
            margin: margin,
            child: OutlinedButton(
              style: disabled
                  ? styles.disabledPrimaryOutlinedButtonStyle
                  : styles.outlinedPrimaryButtonStyle,
              onPressed: () {
                if (!disabled) {
                  onPressed?.call();
                }
              },
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: disabled
                      ? styles.textStyleButtonPrimaryOutlineDisabled
                      : styles.textStyleButtonPrimaryOutline,
                  maxLines: 1,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PrimaryOutlineDarkButton extends ConsumerWidget {
  final String title;
  final EdgeInsetsGeometry margin;
  final Function? onPressed;
  final bool disabled;

  const PrimaryOutlineDarkButton({
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
              color: theme.backgroundDarkest,
              borderRadius: BorderRadius.circular(100),
              boxShadow: [theme.boxShadowButton],
            ),
            height: 55,
            margin: margin,
            child: OutlinedButton(
              style: disabled
                  ? styles.disabledPrimaryOutlinedDarkButtonStyle
                  : styles.outlinedPrimaryDarkButtonStyle,
              onPressed: () {
                if (!disabled) {
                  onPressed?.call();
                }
              },
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: disabled
                      ? styles.textStyleButtonPrimaryOutlineDisabled
                      : styles.textStyleButtonPrimaryOutline,
                  maxLines: 1,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
