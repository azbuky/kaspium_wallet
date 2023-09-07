import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import 'utxo_card.dart';
import 'utxos_empty_card.dart';

class UtxosWidget extends ConsumerWidget {
  const UtxosWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);

    final utxoList = ref.watch(utxoListProvider);

    Future<void> refresh() async {
      ref.read(hapticUtilProvider).success();

      final networkError = ref.read(networkErrorProvider);
      if (networkError) {
        ref.invalidate(kaspaClientProvider);
      }

      final addresses = ref.read(allAddressesProvider);
      final notifier = ref.read(utxoNotifierProvider);
      await notifier.refresh(addresses: addresses);
    }

    return RefreshIndicator(
      color: theme.primary,
      backgroundColor: theme.backgroundDark,
      onRefresh: refresh,
      child: utxoList.isEmpty
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
