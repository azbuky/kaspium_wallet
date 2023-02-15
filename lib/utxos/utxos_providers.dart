import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../database/boxes.dart';
import '../kaspa/transaction/types.dart';
import '../wallet_address/address_providers.dart';
import '../wallet_balance/wallet_balance_providers.dart';
import 'utxos_notifier.dart';

final _utxoBoxProvider = Provider.autoDispose<TypedBox<Utxo>>((ref) {
  final boxInfo = ref.watch(walletBoxInfoProvider);
  final db = ref.watch(dbProvider);

  final boxKey = boxInfo.utxo.boxKey;
  final box = db.getTypedBox<Utxo>(boxKey);

  return box;
});

final utxosChangedProvider = StreamProvider.autoDispose((ref) {
  final client = ref.watch(kaspaClientProvider);
  final addresses = ref.watch<Iterable<String>>(allAddressesProvider);

  return client.notifyUtxosChanged(addresses);
});

final utxoNotifierProvider =
    ChangeNotifierProvider.autoDispose<UtxosNotifier>((ref) {
  final client = ref.watch(kaspaClientProvider);
  final utxoBox = ref.watch(_utxoBoxProvider);
  final log = ref.watch(loggerProvider);

  final notifier = UtxosNotifier(
    client: client,
    utxoBox: utxoBox,
    log: log,
  );

  ref.listen(lastRefreshBalanceChangesProvider, (_, changes) {
    if (changes.isEmpty) {
      return;
    }

    notifier.refresh(addresses: changes.map((e) => e.address));
  }, fireImmediately: true);

  ref.listen(utxosChangedProvider, (_, next) {
    final message = next.valueOrNull;
    if (message == null) {
      return;
    }

    log.d(message);

    Future.microtask(() {
      notifier.utxosChanged(
        removed: message.removed.map(Utxo.fromRpc),
        added: message.added.map(Utxo.fromRpc),
      );
    });
  });

  return notifier;
});

final utxoListProvider = Provider.autoDispose<List<Utxo>>((ref) {
  return ref.watch(utxoNotifierProvider.select((value) => value.utxoList));
});

final spendableUtxosProvider = Provider.autoDispose<List<Utxo>>((ref) {
  final spendableUtxos = ref.watch(utxoListProvider);

  final virtualDaaScore = ref.read(lastKnownVirtualDaaScoreProvider);
  spendableUtxos
      .sort((a, b) => b.utxoEntry.amount.compareTo(a.utxoEntry.amount));

  return spendableUtxos.where((utxo) {
    if (!utxo.utxoEntry.isCoinbase) {
      return true;
    }
    return utxo.utxoEntry.blockDaaScore + BigInt.from(100) < virtualDaaScore;
  }).toList();
});
