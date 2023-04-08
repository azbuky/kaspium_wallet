import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../l10n/l10n.dart';
import '../widgets/buttons.dart';
import '../widgets/gradient_widgets.dart';
import '../widgets/sheet_util.dart';
import '../widgets/sheet_widget.dart';
import 'node_add_sheet.dart';
import 'node_item.dart';
import 'node_providers.dart';
import 'node_types.dart';

class ListViewEndItem extends ConsumerWidget {
  final Widget child;

  const ListViewEndItem({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        child,
        Divider(height: 2, color: theme.text15),
      ],
    );
  }
}

class ViteNodesSheet extends ConsumerWidget {
  const ViteNodesSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final l10n = l10nOf(context);

    final items = ref.watch(kaspaNodeOptionsProvider);

    void addNode() {
      Sheets.showAppHeightNineSheet(
        context: context,
        theme: theme,
        widget: const NodeAddSheet(),
      );
    }

    return SheetWidget(
      title: l10n.nodesSheetTitle,
      mainWidget: Stack(
        children: [
          ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(vertical: 10),
            itemCount: items.length + 1,
            itemBuilder: (BuildContext context, int index) {
              if (index == items.length) {
                return Divider(height: 2, color: theme.text15);
              }
              final config = ActiveNodeConfig(config: items[index]);
              return ProviderScope(
                overrides: [
                  kaspaNodeConfigItemProvider.overrideWithValue(config),
                ],
                child: const NodeItem(),
              );
            },
          ),
          const ListTopGradient(),
          const ListBottomGradient(),
        ],
      ),
      bottomWidget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(children: [
          PrimaryButton(
            title: l10n.addNode,
            onPressed: addNode,
          ),
          const SizedBox(height: 16),
          PrimaryOutlineButton(
            title: l10n.close,
            onPressed: () => Navigator.pop(context),
          ),
        ]),
      ),
    );
  }
}
