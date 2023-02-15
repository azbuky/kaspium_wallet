import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';

class SheetHandle extends ConsumerWidget {
  const SheetHandle({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 5,
      width: 64,
      decoration: BoxDecoration(
        color: theme.text10,
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}
