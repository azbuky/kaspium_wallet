import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../l10n/l10n.dart';
import '../settings/available_language.dart';
import '../widgets/app_simpledialog.dart';

class LanguageDialog extends ConsumerWidget {
  const LanguageDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    final style = styles.textStyleDialogOptions;
    final uStyle = style.copyWith(color: Colors.grey);

    return AppSimpleDialog(
      title: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Text(
          l10n.language,
          style: styles.textStyleDialogHeader,
        ),
      ),
      children: [
        for (final value in AvailableLanguage.values)
          Builder(builder: (context) {
            final isAvailable = LanguageSetting.isAvailable(value);
            return SimpleDialogOption(
              onPressed:
                  isAvailable ? () => Navigator.pop(context, value) : null,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  LanguageSetting(value).getDisplayName(context),
                  style: isAvailable ? style : uStyle,
                ),
              ),
            );
          }),
      ],
    );
  }
}
