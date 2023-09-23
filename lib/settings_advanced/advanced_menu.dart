import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../l10n/l10n.dart';
import '../settings_drawer/double_line_item_two.dart';
import '../widgets/app_icon_button.dart';
import '../widgets/app_simpledialog.dart';
import '../widgets/gradient_widgets.dart';
import 'address_discovery_dialog.dart';
import 'compound_utxos_dialog.dart';

class AdvancedMenu extends ConsumerWidget {
  final VoidCallback onBackAction;
  const AdvancedMenu({
    Key? key,
    required this.onBackAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    final wallet = ref.watch(walletProvider);

    Future<void> compoundUtxos() async {
      await showAppDialog(
        context: context,
        builder: (_) => const CompoundUtxosDialog(),
      );
    }

    Future<void> scanMoreAddresses() async {
      await showAppDialog(
        context: context,
        builder: (_) => const AddressDiscoveryDialog(),
      );
    }

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
                    l10n.advancedHeader,
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
                          l10n.manage,
                          style: styles.textStyleAppTextFieldHint,
                        ),
                      ),
                      if (!wallet.isViewOnly) ...[
                        Divider(height: 2, color: theme.text15),
                        DoubleLineItemTwo(
                          heading: l10n.compoundUtxos,
                          text: l10n.compoundUtxosDescription,
                          icon: Icons.refresh,
                          iconSize: 28,
                          onPressed: compoundUtxos,
                        ),
                      ],
                      Divider(height: 2, color: theme.text15),
                      DoubleLineItemTwo(
                        heading: l10n.addressDiscovery,
                        text: l10n.scanMoreAddresses,
                        icon: Icons.account_balance_wallet,
                        iconSize: 28,
                        onPressed: scanMoreAddresses,
                      ),
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
