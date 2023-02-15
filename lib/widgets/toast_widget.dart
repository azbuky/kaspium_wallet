import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';

class ToastWidget extends ConsumerWidget {
  final String content;

  const ToastWidget({
    Key? key,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    return LayoutBuilder(builder: (context, constratins) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        width: constratins.maxWidth,
        decoration: BoxDecoration(
          color: theme.primary,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: theme.barrier,
              offset: const Offset(0, 15),
              blurRadius: 30,
              spreadRadius: -5,
            ),
          ],
        ),
        child: Text(
          content,
          style: styles.textStyleSnackbar,
          textAlign: TextAlign.start,
        ),
      );
    });
  }
}
