import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../widgets/reactive_refresh.dart';
import 'utxo_card.dart';
import 'utxos_empty_card.dart';

class UtxosWidget extends HookConsumerWidget {
  const UtxosWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final utxoList = ref.watch(utxoListProvider);

    final isRefreshing = useState(false);
    final isMounted = useIsMounted();

    Future<void> refresh() async {
      if (isRefreshing.value) {
        return;
      }
      isRefreshing.value = true;
      ref.read(hapticUtilProvider).success();

      final networkError = ref.read(networkErrorProvider);
      if (networkError) {
        ref.invalidate(kaspaClientProvider);
      }

      final addresses = ref.read(allAddressesProvider);
      final notifier = ref.read(utxoNotifierProvider);
      await notifier.refresh(addresses: addresses);
      if (isMounted()) {
        isRefreshing.value = false;
      }
    }

    return ReactiveRefreshIndicator(
      isRefreshing: isRefreshing.value,
      onRefresh: refresh,
      child: !isRefreshing.value && utxoList.isEmpty
          ? ListView(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 15),
              children: const [UtxosEmptyCard()],
            )
          : ListView.builder(
              key: const PageStorageKey('utxo-list'),
              padding: const EdgeInsets.only(top: 6, bottom: 28),
              itemCount: utxoList.length,
              itemBuilder: (context, index) {
                final item = utxoList[index];
                return UtxoCard(item: item);
              },
            ),
    );
  }
}
