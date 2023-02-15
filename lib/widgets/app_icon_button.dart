import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';

class AppIconButton extends ConsumerWidget {
  final IconData icon;
  final Size size;
  final VoidCallback? onPressed;

  const AppIconButton({
    Key? key,
    required this.icon,
    this.size = const Size(40, 40),
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    return Container(
      height: size.height,
      width: size.width,
      child: TextButton(
        style: styles.appIconButtonStyle,
        child: Icon(icon, color: theme.text),
        onPressed: onPressed,
      ),
    );
  }
}
