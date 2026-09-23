import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../l10n/l10n.dart';
import '../../settings_drawer/double_line_item_two.dart';
import '../../widgets/app_simpledialog.dart';
import 'dotk_settings_dialog.dart';
import 'dotk_settings_providers.dart';

class DotkSettingsEntry extends ConsumerWidget {
  const DotkSettingsEntry({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = l10nOf(context);

    final dotkEnabled = ref.watch(dotkEnabledProvider);

    final selectedOption = dotkEnabled ? l10n.on : l10n.off;

    Future<void> showDialog() async {
      final selection = await showAppDialog<bool>(
        context: context,
        builder: (_) => const DotkSettingsDialog(),
      );
      if (selection != null) {
        final notifier = ref.read(dotkSettingsProvider.notifier);
        notifier.setEnabled(selection);
      }
    }

    return DoubleLineItemTwo(
      heading: '.k names',
      text: selectedOption,
      icon: Icons.badge_outlined,
      onPressed: showDialog,
    );
  }
}
