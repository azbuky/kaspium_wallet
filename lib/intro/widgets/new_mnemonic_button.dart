import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app_providers.dart';
import '../../app_router.dart';
import '../../l10n/l10n.dart';
import '../../util/ui_util.dart';
import '../intro_providers.dart';

class NewMnemonicButton extends ConsumerWidget {
  final int strength;
  const NewMnemonicButton({
    super.key,
    required this.strength,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);
    final text =
        strength == 128 ? l10n.secretPhrase12Words : l10n.secretPhrase24Words;

    void generateNewMnemonic() {
      final notifier = ref.read(introDataProvider.notifier);
      Future.microtask(() {
        try {
          notifier.generateNewMnemonic(strength: strength);
        } catch (e) {
          UIUtil.showSnackbar(l10n.somethingWentWrong, context);
          appRouter.reload(context);
        }
      });
    }

    return TextButton(
      style: styles.smallOutlinedPrimaryButtonStyle,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.cached, size: 20),
            const SizedBox(width: 8),
            Text(text),
          ],
        ),
      ),
      onPressed: generateNewMnemonic,
    );
  }
}
