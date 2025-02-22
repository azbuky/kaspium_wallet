import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../l10n/l10n.dart';
import '../settings/block_explorer.dart';
import '../settings/kaspa_api_settings.dart';
import '../settings/kasplex_settings.dart';
import '../settings/node_settings.dart';
import '../widgets/app_icon_button.dart';
import '../widgets/gradient_widgets.dart';

class NetworkMenu extends ConsumerWidget {
  final VoidCallback onBackAction;

  const NetworkMenu({super.key, required this.onBackAction});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    return Container(
      decoration: BoxDecoration(
        color: theme.backgroundDark,
        boxShadow: [
          BoxShadow(
            color: theme.barrierWeakest,
            offset: Offset(-5, 0),
            blurRadius: 20,
          ),
        ],
      ),
      child: SafeArea(
        minimum: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * 0.035,
          top: 60,
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10, top: 5),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
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
                    padding: const EdgeInsets.only(top: 15),
                    children: [
                      Container(
                        margin: const EdgeInsetsDirectional.only(
                          start: 30,
                          bottom: 10,
                        ),
                        child: Text(
                          l10n.preferences,
                          style: styles.textStyleAppTextFieldHint,
                        ),
                      ),
                      Divider(height: 2, color: theme.text15),
                      const NodeSettingsEntry(),
                      Divider(height: 2, color: theme.text15),
                      const KaspaApiSettingsUrlEntry(),
                      Divider(height: 2, color: theme.text15),
                      const KasplexSettingsApiUrlEntry(),
                      Divider(height: 2, color: theme.text15),
                      const BlockExplorerEntry(),
                    ],
                  ),
                  const ListBottomGradient(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
