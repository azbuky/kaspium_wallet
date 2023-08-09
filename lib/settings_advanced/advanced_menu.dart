import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../l10n/l10n.dart';
import '../settings_drawer/single_line_item.dart';
import '../wallet_address/address_discovery.dart';
import '../wallet_address/wallet_address.dart';
import '../widgets/app_icon_button.dart';
import '../widgets/gradient_widgets.dart';

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

    Future<void> compoundUtxos() async {
      print('Compound UTXOs');
    }

    Future<void> scanMoreAddresses() async {
      print('Scan more addresses');

      final l10n = l10nOf(context);

      final network = ref.read(networkProvider);
      final auth = ref.read(walletAuthProvider.notifier);
      final addressGenerator = auth.addressGenerator(network);
      final client = ref.read(kaspaClientProvider);
      final api = ref.read(kaspaApiServiceProvider);

      final addresses = ref.read(addressNotifierProvider);

      final addressDiscovery = AddressDiscovery(
        addressGenerator: addressGenerator,
        client: client,
        api: api,
      );

      bool cancelled = false;

      final result = await addressDiscovery.addressDiscovery(
        startReceiveIndex: addresses.nextUnusedReceiveIndex,
        startChangeIndex: addresses.nextUnusedChangeIndex,
        maxGap: 10,
        addressNameCallback: (type, index) {
          return type == AddressType.receive
              ? l10n.receiveIndexParam('$index')
              : l10n.changeIndexParam('$index');
        },
        onProgress: (type, index) {
          print('Progress: $type $index');
          return !cancelled;
        },
      );
      print(result);
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
                          l10n.preferences,
                          style: styles.textStyleAppTextFieldHint,
                        ),
                      ),
                      Divider(height: 2, color: theme.text15),
                      SingleLineItem(
                        heading: l10n.compoundUtxos,
                        settingIcon: Icons.refresh,
                        iconSize: 28,
                        onPressed: compoundUtxos,
                      ),
                      Divider(height: 2, color: theme.text15),
                      SingleLineItem(
                        heading: l10n.scanMoreAddresses,
                        settingIcon: Icons.account_balance_wallet,
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
