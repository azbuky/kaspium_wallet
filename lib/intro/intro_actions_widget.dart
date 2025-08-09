import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_router.dart';
import '../l10n/l10n.dart';
import '../util/ui_util.dart';
import '../widgets/buttons.dart';
import 'intro_providers.dart';

class IntroActionsWidget extends ConsumerWidget {
  const IntroActionsWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = l10nOf(context);

    void newWallet() {
      final notifier = ref.read(introStateProvider.notifier);
      try {
        notifier.newWallet();
      } catch (e) {
        UIUtil.showSnackbar(l10n.somethingWentWrong, context);
        appRouter.reload(context);
      }
    }

    void importWallet() {
      final notifier = ref.read(introStateProvider.notifier);
      notifier.importSelect();
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28),
      child: Column(children: [
        PrimaryButton(
          title: l10n.newWallet,
          onPressed: newWallet,
        ),
        const SizedBox(height: 16),
        PrimaryOutlineButton(
          title: l10n.importWallet,
          onPressed: importWallet,
        ),
      ]),
    );
  }
}
