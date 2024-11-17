import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/core_providers.dart';
import '../../l10n/l10n.dart';
import '../../settings_drawer/double_line_item.dart';
import '../../widgets/sheet_util.dart';
import 'node_setting.dart';
import 'node_settings_providers.dart';
import 'nodes_sheet.dart';

class NodeSettingsEntry extends ConsumerWidget {
  const NodeSettingsEntry({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = l10nOf(context);

    final nodeConfig = ref.watch(kaspaNodeConfigProvider);

    void showNodeSheet() {
      final theme = ref.read(themeProvider);
      Sheets.showAppHeightNineSheet(
        context: context,
        theme: theme,
        widget: const NodesSheet(),
      );
    }

    return DoubleLineItem(
      heading: l10n.nodeAddress,
      defaultMethod: NodeSetting(nodeConfig.config),
      icon: Icons.settings_ethernet,
      onPressed: showNodeSheet,
    );
  }
}
