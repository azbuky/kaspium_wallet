import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/core_providers.dart';
import '../database/boxes.dart';
import '../kaspa/kaspa.dart';
import '../l10n/l10n.dart';
import '../transactions/transaction_providers.dart';
import '../wallet/wallet_types.dart';
import '../wallet_auth/wallet_auth_providers.dart';
import '../wallet_balance/wallet_balance_providers.dart';
import 'address_settings.dart';
import 'wallet_address.dart';
import 'wallet_address_notifier.dart';

final addressBoxProvider = Provider.autoDispose
    .family<TypedBox<WalletAddress>, WalletInfo>((ref, wallet) {
  final db = ref.watch(dbProvider);
  final network = ref.watch(networkProvider);
  final addressBoxKey = wallet.getBoxInfo(network).address.boxKey;
  return db.getTypedBox<WalletAddress>(addressBoxKey);
});

final addressNotifierProvider = ChangeNotifierProvider.autoDispose((ref) {
  final wallet = ref.watch(walletProvider);
  final network = ref.watch(networkProvider);

  final accountsBox = ref.watch(addressBoxProvider(wallet));
  final walletAuth = ref.watch(walletAuthProvider.notifier);

  final addressGenerator = walletAuth.addressGenerator(network);

  final notifier = WalletAddressNotifier(
    addressBox: accountsBox,
    addressGenerator: addressGenerator,
    addressNameCallback: (type, index) {
      // Kind of a hack but will do for now
      final l10n = l10nWrapper.l10n;
      if (l10n == null) {
        return type == AddressType.receive ? 'Receive $index' : 'Change $index';
      }
      return type == AddressType.receive
          ? l10n.receiveIndexParam('$index')
          : l10n.changeIndexParam('$index');
    },
  );

  ref.onDispose(() {
    notifier.disposed = true;
  });

  return notifier;
});

final addressMonitorProvider = Provider.autoDispose((ref) {
  ref.listen(lastBalanceChangesProvider, (_, next) {
    final addresses = next.where((_, balance) => balance != BigInt.zero).keys;
    final notifier = ref.read(addressNotifierProvider);
    notifier.markUsed(addresses);
  });

  ref.listen(
      addressNotifierProvider.select((value) => value.lastUsedReceiveIndex),
      (prev, next) async {
    if (prev == null) {
      return;
    }
    final addressNotifier = ref.read(addressNotifierProvider);
    final addresses = <String>{};
    for (int idx = prev + 1; idx < next; idx++) {
      final address = addressNotifier.getReceiveAddressWithIndex(idx);
      if (address != null && address.used == false) {
        addresses.add(address.encoded);
      }
    }
    if (addresses.isNotEmpty) {
      final txNotifier = ref.read(txNotifierProvider);
      await txNotifier.fetchNewTxsForAddresses(addresses);
    }
  });
  ref.listen(
      addressNotifierProvider.select((value) => value.lastUsedChangeIndex),
      (prev, next) async {
    if (prev == null) {
      return;
    }
    final addressNotifier = ref.read(addressNotifierProvider);
    final addresses = <String>{};
    for (int idx = prev + 1; idx < next; idx++) {
      final address = addressNotifier.getChangeAddressWithIndex(idx);
      if (address != null && address.used == false) {
        addresses.add(address.encoded);
      }
    }
    if (addresses.isNotEmpty) {
      final txNotifier = ref.read(txNotifierProvider);
      await txNotifier.fetchNewTxsForAddresses(addresses);
    }
  });

  return false;
});

final allAddressesProvider = Provider.autoDispose((ref) {
  return ref.watch(
    addressNotifierProvider.select((value) => value.allAddresses),
  );
});

final activeAddressesProvider = Provider.autoDispose((ref) {
  return ref.watch(
    addressNotifierProvider.select((value) => value.activeAddresses),
  );
});

final filteredAddressesOfTypeProvider =
    Provider.family.autoDispose<IList<WalletAddress>, AddressType>((ref, type) {
  final filter = ref.watch(addressFilterProvider);
  final balanceNotifier = ref.watch(balanceNotifierProvider);
  final addresses = ref.watch(
    addressNotifierProvider.select((value) => type == AddressType.receive
        ? value.receiveAddresses
        : value.changeAddresses),
  );
  if (filter == AddressFilter.nonZero) {
    return addresses
        .where((address) =>
            balanceNotifier.balanceForAddress(address.encoded) != Amount.zero)
        .toIList();
  }
  return addresses;
});

final receiveAddressProvider = Provider.autoDispose((ref) {
  return ref.watch(
    addressNotifierProvider.select((value) => value.receiveAddress),
  );
});

final selectedAddressProvider = StateProvider.autoDispose((ref) {
  return ref.read(receiveAddressProvider);
});
