import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../l10n/l10n.dart';
import '../../settings_drawer/double_line_item_two.dart';
import '../../widgets/app_simpledialog.dart';
import 'kasplex_settings_dialog.dart';
import 'kasplex_settings_providers.dart';

class Krc20SettingsEntry extends ConsumerWidget {
  const Krc20SettingsEntry({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = l10nOf(context);

    final krc20Enabled = ref.watch(krc20EnabledProvider);

    final selectedOption = krc20Enabled ? l10n.on : l10n.off;

    Future<void> showDialog() async {
      final selection = await showAppDialog<bool>(
        context: context,
        builder: (_) => const Krc20SettingsDialog(),
      );
      if (selection != null) {
        final notifier = ref.read(kasplexSettingsProvider.notifier);
        notifier.setKrc20Enabled(selection);
      }
    }

    return DoubleLineItemTwo(
      heading: 'KRC20',
      text: selectedOption,
      icon: Icons.token,
      iconSize: 28,
      onPressed: showDialog,
    );
  }
}
