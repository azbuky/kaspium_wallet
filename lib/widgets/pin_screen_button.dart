import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';

class PinScreenButton extends ConsumerWidget {
  final String text;
  final double size;
  final void Function(String text) onTap;

  const PinScreenButton({
    Key? key,
    required this.text,
    this.size = 100,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    return Container(
      height: size,
      width: size,
      child: InkWell(
        borderRadius: BorderRadius.circular(200),
        highlightColor: theme.primary15,
        splashColor: theme.primary30,
        onTap: () => onTap(text),
        child: Container(
          alignment: const AlignmentDirectional(0, 0),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: styles.textStyleButtonPrimaryOutline,
          ),
        ),
      ),
    );
  }
}
