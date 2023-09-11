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
