import 'package:coinslib/coinslib.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../database/boxes.dart';
import '../kaspa/wallet/version.dart';
import '../utxos/utxos_providers.dart';
import '../wallet/wallet_types.dart';
import '../wallet_balance/wallet_balance_providers.dart';
import 'address_settings.dart';
import 'wallet_address.dart';
import 'wallet_address_manager.dart';
import 'wallet_address_notifier.dart';

final _addressBoxProvider = Provider.autoDispose
    .family<TypedBox<WalletAddress>, WalletInfo>((ref, wallet) {
  final db = ref.watch(dbProvider);
  final network = ref.watch(networkProvider);
  final addressBoxKey = wallet.getBoxInfo(network).address.boxKey;
  return db.getTypedBox<WalletAddress>(addressBoxKey);
});

final addressNotifierProvider = ChangeNotifierProvider.autoDispose((ref) {
  final wallet = ref.watch(walletProvider);
  final network = ref.watch(networkProvider);

  final accountsBox = ref.watch(_addressBoxProvider(wallet));
  final hdPublicKey = BIP32.fromBase58(
    wallet.hdPublicKey(network),
    networkTypeForNetwork(network),
  );
  final addressPrefix = addressPrefixForNetwork(network);

  final notifier = WalletAddressNotifier(
    addressBox: accountsBox,
    hdPublicKey: hdPublicKey,
    addressPrefix: addressPrefix,
  );

  ref.onDispose(() {
    notifier.disposed = true;
  });

  return notifier;
});

final allAddressesProvider = Provider.autoDispose((ref) {
  return ref.watch(
    addressNotifierProvider.select((value) => value.allAddresses),
  );
});

final reversedReceiveAddressesProvider = Provider.autoDispose((ref) {
  final filter = ref.watch(addressFilterProvider);
  final balanceNotifier = ref.watch(balanceNotifierProvider);
  final receiveAddresses = ref.watch(
    addressNotifierProvider.select((value) => value.receiveAddresses),
  );
  if (filter == AddressFilter.nonZero) {
    return receiveAddresses
        .removeWhere((address) =>
            balanceNotifier.balanceForAddress(address.encoded) == Amount.zero)
        .reversed;
  }
  return receiveAddresses.reversed;
});

final reversedChangeAddressesProvider = Provider.autoDispose((ref) {
  final filter = ref.watch(addressFilterProvider);
  final balanceNotifier = ref.watch(balanceNotifierProvider);
  final changeAddresses = ref.watch(
    addressNotifierProvider.select((value) => value.changeAddresses),
  );
  if (filter == AddressFilter.nonZero) {
    return changeAddresses
        .removeWhere((address) =>
            balanceNotifier.balanceForAddress(address.encoded) == Amount.zero)
        .reversed;
  }
  return changeAddresses.reversed;
});

final receiveWalletAddressProvider = Provider.autoDispose((ref) {
  return ref.watch(
    addressNotifierProvider.select((value) => value.receiveAddress),
  );
});

final receiveAddressProvider = Provider.autoDispose((ref) {
  return ref.watch(
    receiveWalletAddressProvider.select((value) => value.address),
  );
});

final receiveAddressMonitorProvider = Provider.autoDispose((ref) {
  ref.listen(lastRefreshBalanceChangesProvider, (_, changes) {
    if (changes.isEmpty) {
      return;
    }

    final receiveAddress = ref.read(receiveAddressProvider).encoded;
    final changed = changes.any((balance) => balance.address == receiveAddress);
    if (changed) {
      final notifier = ref.read(addressNotifierProvider);
      final newReveiveAddress = notifier.nextReceiveAddress;
      notifier.addAddress(newReveiveAddress);
    }
  }, fireImmediately: true);

  ref.listen(utxosChangedProvider, (_, next) {
    final message = next.valueOrNull;
    if (message == null) {
      return;
    }

    final receiveAddress = ref.read(receiveAddressProvider).encoded;
    final changed = message.added.any((utxo) => utxo.address == receiveAddress);
    if (changed) {
      final notifier = ref.read(addressNotifierProvider);
      final newReveiveAddress = notifier.nextReceiveAddress;
      notifier.addAddress(newReveiveAddress);
    }
  });

  return true;
});
