import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';

class ValidationText extends ConsumerWidget {
  final String data;
  const ValidationText(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);

    return Container(
      margin: const EdgeInsets.only(top: 5, bottom: 5),
      child: Text(
        data,
        style: styles.textStyleParagraphThinPrimary,
      ),
    );
  }
}
