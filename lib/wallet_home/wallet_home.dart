import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../kaspa/kaspa.dart';
import '../l10n/l10n.dart';
import '../main_card/main_card.dart';
import '../transactions/transactions_widget.dart';
import '../util/ui_util.dart';
import '../utxos/utxos_widget.dart';
import '../widgets/gradient_widgets.dart';
import 'wallet_action_buttons.dart';

final _walletWatcherProvider = Provider.autoDispose((ref) {
  ref.watch(virtualDaaScoreProvider);
  ref.watch(virtualSelectedParentBlueScoreStreamProvider);

  ref.watch(addressNotifierProvider);
  ref.watch(balanceNotifierProvider);
  ref.watch(txNotifierProvider);
  ref.watch(utxoNotifierProvider);
  ref.watch(utxoListProvider);
});

class WalletHome extends HookConsumerWidget {
  const WalletHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    ref.watch(_walletWatcherProvider);

    useEffect(() {
      final notifier = ref.read(appLinkProvider.notifier);
      return notifier.addListener(
        (appLink) {
          if (appLink == null) {
            return;
          }
          final prefix = ref.read(addressPrefixProvider);
          final uri = KaspaUri.tryParse(appLink, prefix: prefix);
          Future.microtask(() {
            UIUtil.showSendFlow(
              context,
              ifNullMessage: l10n.kaspaUriInvalid,
              theme: theme,
              uri: uri,
            );
            notifier.state = null;
          });
        },
        fireImmediately: true,
      );
    }, const []);

    return Column(
      children: [
        Expanded(
          child: DefaultTabController(
            length: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const MainCard(),
                Container(
                  margin: const EdgeInsetsDirectional.fromSTEB(16, 2, 16, 10),
                  child: TabBar(
                    indicatorWeight: 3,
                    indicatorColor: theme.primary60,
                    indicatorPadding:
                        const EdgeInsets.symmetric(horizontal: 20),
                    tabs: [
                      Tab(
                        child: Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: Text(
                            l10n.transactionsUppercase,
                            textAlign: TextAlign.center,
                            style: styles.textStyleTabLabel,
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          padding: const EdgeInsets.only(top: 20),
                          width: double.infinity,
                          child: Text(
                            l10n.utxosUppercase,
                            textAlign: TextAlign.center,
                            style: styles.textStyleTabLabel,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Stack(
                        children: [
                          const TransactionsWidget(),
                          const TopGradientWidget(),
                          const BottomGradientWidget(),
                        ],
                      ),
                      Stack(
                        children: [
                          const UtxosWidget(),
                          const TopGradientWidget(),
                          const BottomGradientWidget(),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const WalletActionButtons(),
      ],
    );
  }
}
