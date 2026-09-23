import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../l10n/l10n.dart';
import '../settings/block_explorer.dart';
import '../settings/dotk_settings.dart';
import '../settings/kaspa_api_settings.dart';
// import '../settings/kasplex_settings.dart';
import '../settings/node_settings.dart';
import '../widgets/app_icon_button.dart';
import '../widgets/drawer_wrapper.dart';
import '../widgets/gradient_widgets.dart';
import '../widgets/item_divider.dart';
import 'settings_header.dart';

class NetworkMenu extends ConsumerWidget {
  final VoidCallback onBackAction;

  const NetworkMenu({super.key, required this.onBackAction});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    return DrawerWrapper(
      child: Column(
        children: [
          Container(
            margin: const .only(bottom: 10, top: 5),
            child: Row(
              children: [
                Padding(
                  padding: const .symmetric(horizontal: 10),
                  child: AppIconButton(
                    icon: AppIcons.back,
                    onPressed: onBackAction,
                  ),
                ),
                Text(
                  l10n.networkHeader,
                  style: styles.textStyleSettingsHeader,
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                ListView(
                  padding: const .only(top: 15),
                  children: [
                    SettingsHeader(title: l10n.preferences),
                    const ItemDivider(),
                    const NodeSettingsEntry(),
                    const ItemDivider(),
                    const KaspaApiSettingsUrlEntry(),
                    const ItemDivider(),
                    const DotkSettingsEntry(),
                    const ItemDivider(),
                    const DotkSettingsUrlEntry(),
                    // const ItemDivider(),
                    // const KasplexSettingsApiUrlEntry(),
                    const ItemDivider(),
                    const BlockExplorerEntry(),
                  ],
                ),
                const ListBottomGradient(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
