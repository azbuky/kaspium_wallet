import 'package:automatic_animated_list/automatic_animated_list.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

import '../app_providers.dart';
import '../kaspa/kaspa.dart';
import '../l10n/l10n.dart';
import '../settings/tx_settings.dart';
import '../utxos/utxos_notifier.dart';
import '../wallet/wallet_types.dart';
import '../wallet_address/wallet_address_notifier.dart';
import 'transaction_card.dart';
import 'transaction_empty_list.dart';
import 'transaction_types.dart';

List<TxListItem> _txListItemsFromTxs(
  Iterable<Tx> txs, {
  required TxFilter txFilter,
  required WalletAddressNotifier addressNotifier,
  required UtxosNotifier utxoNotifier,
}) {
  return txs.expand<TxListItem>((tx) {
    if (txFilter == TxFilter.hideNotAcceptedCoinbase &&
        tx.apiTx.inputs.isEmpty &&
        !tx.apiTx.isAccepted) {
      return [];
    }

    final hasWalletInputs = tx.inputData.nonNulls.any(
          (input) => addressNotifier.containsAddress(input.address),
        ) ||
        tx.apiTx.inputs.any(
          (input) => utxoNotifier.isWalletOutpoint(
            Outpoint(
              transactionId: input.previousOutpointHash,
              index: input.previousOutpointIndex.toInt(),
            ),
          ),
        );

    final outputs = tx.apiTx.outputs;
    final hasSingleChangeOutput = tx.apiTx.outputs.length == 1 &&
        addressNotifier.containsChangeAddress(
          tx.apiTx.outputs.first.scriptPublicKeyAddress,
        );

    if (hasWalletInputs && hasSingleChangeOutput) {
      return [
        TxListItem.txItem(
          TxItem(
            tx: tx,
            outputIndex: 0,
            type: TxItemType.compound,
          ),
        ),
      ];
    }

    final listItems = <TxListItem>[];
    for (final output in outputs) {
      final address = output.scriptPublicKeyAddress;
      if (addressNotifier.containsChangeAddress(address) &&
          outputs.last == output) {
        continue;
      }
      if (addressNotifier.containsAddress(address) && hasWalletInputs) {
        final listItem = TxListItem.txItem(TxItem(
          tx: tx,
          outputIndex: output.index,
          type: TxItemType.thisWallet,
        ));
        listItems.add(listItem);
        continue;
      }
      if (addressNotifier.containsAddress(address)) {
        final listItem = TxListItem.txItem(TxItem(
          tx: tx,
          outputIndex: output.index,
          type: TxItemType.receive,
        ));
        listItems.add(listItem);
      }
      if (hasWalletInputs) {
        final listItem = TxListItem.txItem(TxItem(
          tx: tx,
          outputIndex: output.index,
          type: TxItemType.send,
        ));
        listItems.add(listItem);
      }
    }

    return listItems;
  }).toList(growable: false);
}

final _txListItemsProvider =
    Provider.autoDispose.family<List<TxListItem>, WalletInfo>((ref, wallet) {
  final addressNotifier = ref.watch(addressNotifierProvider.notifier);
  final utxoNotifier = ref.watch(utxoNotifierProvider.notifier);
  final txNotifier = ref.watch(txNotifierForWalletProvider(wallet));
  final txFilter = ref.watch(txFilterProvider);

  final pendingItems = _txListItemsFromTxs(
    txNotifier.pendingTxs,
    txFilter: txFilter,
    addressNotifier: addressNotifier,
    utxoNotifier: utxoNotifier,
  )
      .map((item) => item.maybeWhen(
            txItem: (txItem) => TxListItem.pendingTxItem(
              txItem.copyWith(pending: true),
            ),
            orElse: () => item,
          ))
      .toList(growable: false);

  final txItems = _txListItemsFromTxs(txNotifier.loadedTxs,
      txFilter: txFilter,
      addressNotifier: addressNotifier,
      utxoNotifier: utxoNotifier);

  return [...pendingItems, ...txItems, TxListItem.loader(txNotifier.hasMore)];
});

class TransactionsWidget extends ConsumerWidget {
  const TransactionsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    final wallet = ref.watch(selectedWalletProvider);
    if (wallet == null) {
      return const SizedBox();
    }

    final txNotifier = ref.watch(txNotifierForWalletProvider(wallet));
    final items = ref.watch(_txListItemsProvider(wallet));

    Future<void> refresh() async {
      ref.read(hapticUtilProvider).success();

      // refresh remote data
      final remote = ref.read(remoteRefreshProvider.notifier);
      remote.update((state) => state + 1);

      final networkError = ref.read(networkErrorProvider);
      if (networkError) {
        final _ = ref.refresh(kaspaClientProvider);
      }

      final balanceNotifier = ref.read(balanceNotifierProvider);
      final utxosNotifier = ref.read(utxoNotifierProvider);
      final addresses = ref.read(allAddressesProvider);
      await balanceNotifier.refresh(addresses);
      await utxosNotifier.refresh(addresses: addresses);

      final addressNotifier = ref.read(addressNotifierProvider);
      final pendingAddresses = addressNotifier.receiveAddresses
          .followedBy(addressNotifier.changeAddresses)
          .where((address) => address.used == false)
          .map((e) => e.encoded)
          .toIList();

      final usedAddresses = await txNotifier.refreshWalletTxs(
        balances: balanceNotifier.balances,
        pendingAddresses: pendingAddresses,
      );
      await addressNotifier.markUsed(usedAddresses);
    }

    void loadMore() {
      // wait for scroll to settle before loading more txs
      Future.delayed(const Duration(milliseconds: 500), () {
        txNotifier.loadMore();
      });
    }

    return LazyLoadScrollView(
      onEndOfPage: loadMore,
      child: RefreshIndicator(
        color: theme.primary,
        backgroundColor: theme.backgroundDark,
        onRefresh: refresh,
        child: !txNotifier.loading && items.length == 1
            ? const TransactionEmptyList()
            : AutomaticAnimatedList<TxListItem>(
                key: PageStorageKey(wallet),
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsetsDirectional.fromSTEB(0, 6, 0, 28),
                insertDuration: const Duration(milliseconds: 500),
                removeDuration: const Duration(milliseconds: 500),
                keyingFunction: (item) => Key(item.id),
                items: items,
                itemBuilder: (context, item, animation) {
                  final card = item.when(
                    pendingTxItem: (item) => TransactionCard(item: item),
                    txItem: (item) => TransactionCard(item: item),
                    loader: (hasMore) {
                      if (!hasMore) return const SizedBox();
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            l10n.loadingTransactions,
                            style: styles.textStyleParagraph,
                          ),
                        ),
                      );
                    },
                  );
                  return FadeTransition(
                    key: Key(item.id),
                    opacity: animation,
                    child: txNotifier.firstLoad
                        ? card
                        : SizeTransition(
                            sizeFactor: CurvedAnimation(
                              parent: animation,
                              curve: Curves.easeOut,
                              reverseCurve: Curves.easeIn,
                            ),
                            child: card,
                          ),
                  );
                },
              ),
      ),
    );
  }
}
