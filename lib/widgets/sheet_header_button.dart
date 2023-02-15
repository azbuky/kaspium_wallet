import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';

class SheetHeaderButton extends ConsumerWidget {
  final IconData icon;
  final bool visible;
  final VoidCallback? onPressed;

  const SheetHeaderButton({
    Key? key,
    required this.icon,
    this.visible = true,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    return Container(
      width: 50,
      height: 50,
      child: Visibility(
        visible: visible,
        maintainSize: true,
        maintainAnimation: true,
        maintainState: true,
        child: TextButton(
          style: styles.sheetHeaderButtonStyle,
          onPressed: onPressed,
          child: Icon(icon, size: 24, color: theme.text),
        ),
      ),
    );
  }
}
