import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import 'intro_providers.dart';

class IntroBackButton extends ConsumerWidget {
  const IntroBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    void goBack() {
      final intro = ref.read(introStateProvider.notifier);
      intro.goBack();
    }

    return Container(
      height: 50,
      width: 50,
      child: TextButton(
        style: styles.roundedTextButtonStyle,
        onPressed: goBack,
        child: Icon(AppIcons.back, color: theme.text, size: 24),
      ),
    );
  }
}
