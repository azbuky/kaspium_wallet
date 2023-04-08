import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/core_providers.dart';
import '../l10n/l10n.dart';
import '../settings/available_themes.dart';
import '../widgets/app_simpledialog.dart';

class ThemeDialog extends ConsumerWidget {
  const ThemeDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    return AppSimpleDialog(
      title: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Text(
          l10n.themeHeader,
          style: styles.textStyleDialogHeader,
        ),
      ),
      children: [
        for (final value in ThemeOptions.values)
          SimpleDialogOption(
            onPressed: () => Navigator.pop(context, value),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                ThemeSetting(value).getDisplayName(context),
                style: styles.textStyleDialogOptions,
              ),
            ),
          ),
      ],
    );
  }
}
