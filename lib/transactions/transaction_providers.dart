import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/core_providers.dart';
import '../database/boxes.dart';
import '../kaspa/kaspa.dart';
import '../utxos/utxos_providers.dart';
import '../wallet/wallet_types.dart';
import '../wallet_address/address_providers.dart';
import '../wallet_auth/wallet_auth_providers.dart';
import '../wallet_balance/wallet_balance_providers.dart';
import 'transaction_notifier.dart';
import 'transaction_types.dart';
import 'tx_cache_service.dart';

// All new transactions
final _newTransactionProvider = StreamProvider((ref) {
  final client = ref.watch(kaspaClientProvider);

  final newBlocks = client.notifyBlockAdded();

  return newBlocks.expand(
    (element) => element.block.transactions.map(ApiTransaction.fromRpc),
  );
});

final _newWalletTransactionProvider = StreamProvider.autoDispose((ref) {
  final newTxs = ref.watch(_newTransactionProvider.stream);
  final addressNotifier = ref.watch(addressNotifierProvider.notifier);
  final utxosNotifier = ref.watch(utxoNotifierProvider.notifier);

  return newTxs.where((event) {
    return event.outputs.any((output) {
          final address = output.scriptPublicKeyAddress;
          return addressNotifier.containsAddress(address);
        }) ||
        event.inputs.any((input) {
          final outpoint = Outpoint(
            transactionId: input.previousOutpointHash,
            index: input.previousOutpointIndex.toInt(),
          );
          return utxosNotifier.isWalletOutpoint(outpoint);
        });
  }).distinct((previous, next) {
    return previous.transactionId == next.transactionId;
  });
});

final _acceptedTransactionIdsProvider = StreamProvider((ref) {
  final client = ref.watch(kaspaClientProvider);
  return client
      .notifyVirtualSelectedParentChainChanged(
        includeAcceptedTransactionIds: true,
      )
      .expand((event) => event.acceptedTransactionIds);
});

final _txBoxProvider =
    Provider.autoDispose.family<LazyTypedBox<Tx>, WalletInfo>((ref, wallet) {
  final db = ref.watch(dbProvider);
  final network = ref.watch(networkProvider);

  final txBoxKey = wallet.boxInfo.getBoxInfo(network).tx.boxKey;
  return db.getLazyTypedBox<Tx>(txBoxKey);
});

final _txIndexBoxProvider = Provider.autoDispose
    .family<IndexedTypedBox<TxIndex>, WalletInfo>((ref, wallet) {
  final db = ref.watch(dbProvider);
  final network = ref.watch(networkProvider);

  final txIndexBoxKey = wallet.getBoxInfo(network).txIndex.boxKey;
  return db.getIndexedTypedBox<TxIndex>(txIndexBoxKey);
});

final txServiceProvider =
    Provider.autoDispose.family<TxCacheService, WalletInfo>((ref, wallet) {
  final txIndexBox = ref.watch(_txIndexBoxProvider(wallet));
  final txBox = ref.watch(_txBoxProvider(wallet));
  final api = ref.watch(kaspaApiProvider);
  final log = ref.watch(loggerProvider);

  return TxCacheService(
    txIndexBox: txIndexBox,
    txBox: txBox,
    api: api,
    log: log,
  );
});

final txNotifierProvider = Provider.autoDispose((ref) {
  final wallet = ref.watch(walletProvider);
  final txNotifier = ref.watch(txNotifierForWalletProvider(wallet));
  return txNotifier;
});

final txNotifierForWalletProvider = ChangeNotifierProvider.autoDispose
    .family<TransactionNotifier, WalletInfo>((ref, wallet) {
  final service = ref.watch(txServiceProvider(wallet));

  final notifier = TransactionNotifier(service: service);
  notifier.loadMore();

  // Refresh transactions when balance changes
  ref.listen(lastRefreshBalanceChangesProvider, (_, next) {
    if (next.isEmpty) {
      return;
    }
    notifier.updateTxsForAddresses(next.map((e) => e.address));
  }, fireImmediately: true);

  // Cache new transactions
  ref.listen(_newTransactionProvider, (_, next) {
    final tx = next.valueOrNull;
    if (tx == null) {
      return;
    }
    //log.d('Caching txId ${tx.transactionId}');
    notifier.cacheTransaction(tx);
  });

  // Add new wallet transactions
  ref.listen(_newWalletTransactionProvider, (_, next) {
    final tx = next.valueOrNull;
    if (tx == null) {
      return;
    }
    //log.d('New wallet tx: $tx');
    notifier.addWalletTx(tx);
  });

  // Update transaction status
  ref.listen(_acceptedTransactionIdsProvider, (_, next) {
    final ids = next.valueOrNull;
    if (ids == null) {
      return;
    }
    //log.d('Got new accepted ${ids.acceptedTransactionIds}');
    final client = ref.read(kaspaClientProvider);

    notifier.processAcceptedTxIds(
      ids.acceptedTransactionIds,
      acceptingBlockHash: ids.acceptingBlockHash,
      client: client,
    );
  });

  ref.onDispose(() {
    notifier.disposed = true;
  });

  return notifier;
});

final txConfirmationStatusProvider =
    Provider.autoDispose.family<TxState, Tx>((ref, tx) {
  final blueScore = ref.watch(virtualSelectedParentBlueScoreProvider);

  final kNoConfirmations = BigInt.from(100);
  final txBlueScore = tx.apiTx.acceptingBlockBlueScore;

  if (!tx.apiTx.isAccepted || txBlueScore == null) {
    return const TxState.unconfirmed();
  }

  final confirmations = blueScore - BigInt.from(txBlueScore);
  if (confirmations >= kNoConfirmations) {
    return const TxState.confirmed();
  }

  return TxState.confirming(confirmations);
});
