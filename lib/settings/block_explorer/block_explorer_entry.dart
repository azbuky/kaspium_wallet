import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app_icons.dart';
import '../../app_router.dart';
import '../../core/core_providers.dart';
import '../../l10n/l10n.dart';
import '../../settings_drawer/double_line_item.dart';
import '../../widgets/app_simpledialog.dart';
import 'block_explorer_providers.dart';
import 'block_explorer_setting.dart';
import 'block_explorers.dart';

class BlockExplorerEntry extends ConsumerWidget {
  const BlockExplorerEntry({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = l10nOf(context);

    final blockExplorer = ref.watch(blockExplorerProvider);
    return DoubleLineItem(
      heading: l10n.blockExplorer,
      defaultMethod: BlockExplorerSetting(blockExplorer),
      icon: AppIcons.search,
      onPressed: () => _explorerDialog(context, ref),
    );
  }

  Future<void> _explorerDialog(BuildContext context, WidgetRef ref) async {
    final selection = await showAppDialog<BlockExplorer>(
        context: context,
        builder: (context) {
          return AppSimpleDialog(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                l10nOf(context).blockExplorer,
                style: ref.read(stylesProvider).textStyleDialogHeader,
              ),
            ),
            children: _buildExplorerOptions(context, ref),
          );
        });
    if (selection != null) {
      final notifier = ref.read(blockExplorerSettingsProvider.notifier);
      final networkId = ref.read(networkIdProvider);

      notifier.updateBlockExplorer(selection, networkId: networkId);
    }
  }

  List<Widget> _buildExplorerOptions(BuildContext context, WidgetRef ref) {
    final networkId = ref.read(networkIdProvider);
    final options = kBlockExplorersOptions[networkId] ?? [];
    return options.map((value) {
      final styles = ref.read(stylesProvider);
      return SimpleDialogOption(
        onPressed: () => appRouter.pop(context, withResult: value),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(value.name, style: styles.textStyleDialogOptions),
              Text(value.url, style: styles.addressText),
            ],
          ),
        ),
      );
    }).toList();
  }
}
