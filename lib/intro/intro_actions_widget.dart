import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/core_providers.dart';
import '../widgets/buttons.dart';
import 'intro_providers.dart';

class IntroActionsWidget extends ConsumerWidget {
  const IntroActionsWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    void newWallet() {
      final notifier = ref.read(introStateProvider.notifier);
      notifier.newWallet();
    }

    void importWallet() {
      final notifier = ref.read(introStateProvider.notifier);
      notifier.importWallet();
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
