import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/core_providers.dart';
import '../database/boxes.dart';
import '../kaspa/transaction/types.dart';
import '../wallet_address/wallet_address_providers.dart';
import '../wallet_auth/wallet_auth_providers.dart';
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
  final addresses = ref.watch(allAddressesProvider);

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

  ref.listen(
    balanceNotifierProvider.select((notifier) => notifier.balances),
    (_, balances) {
      log.d('UTXOs - Refresh with balances for ${balances.keys}');
      notifier.refreshWithBalances(balances: balances);
    },
    fireImmediately: true,
  );

  ref.listen(utxosChangedProvider, (_, next) {
    if (next.asData?.value case final message?) {
      final addresses = Set.of(
        message.removed.followedBy(message.added).map((utxo) => utxo.address),
      );
      log.d('UTXOs - Refresh with utxos changed for $addresses');
      notifier.refresh(addresses: addresses);
    }
  });

  return notifier;
});

final utxoListProvider = Provider.autoDispose((ref) {
  return ref.watch(
    utxoNotifierProvider.select((notifier) => notifier.utxoList),
  );
});

final spendableUtxosProvider = Provider.autoDispose((ref) {
  final utxos = ref.watch(utxoListProvider);
  final virtualDaaScore = ref.read(lastKnownVirtualDaaScoreProvider);

  final spendableUtxos = utxos.where((utxo) {
    if (!utxo.utxoEntry.isCoinbase) {
      return true;
    }
    return utxo.utxoEntry.blockDaaScore + BigInt.from(100) < virtualDaaScore;
  }).toList();

  spendableUtxos.sort(
    (a, b) => b.utxoEntry.amount.compareTo(a.utxoEntry.amount),
  );

  return spendableUtxos;
});
