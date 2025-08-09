import 'package:fast_immutable_collections/fast_immutable_collections.dart';

import '../database/database.dart';
import '../kaspa/kaspa.dart';
import '../settings/settings_repository.dart';
import '../transactions/transaction_types.dart';
import '../util/vault.dart';
import '../wallet_address/wallet_address.dart';
import 'box_info_repository.dart';
import 'wallet_types.dart';
import 'wallet_vault.dart';

const _kWalletEntriesKey = '_kWalletEntriesKey';
const _kSelectedWalletKey = '_kSelectedWalletKey';

extension WalletSettings on SettingsRepository {
  List<WalletInfo>? getWalletEntries() {
    final walletEntries = box.tryGetList<WalletInfo>(
      _kWalletEntriesKey,
      typeFactory: WalletInfo.fromJson,
    );
    return walletEntries;
  }

  Future<void> setWalletEntries(List<WalletInfo> entries) => box.setList(
        _kWalletEntriesKey,
        entries,
        convert: (e) => e.toJson(),
      );

  WalletInfo? getSelectedWallet() =>
      box.tryGet(_kSelectedWalletKey, typeFactory: WalletInfo.fromJson);

  Future<void> setSelectedWallet(WalletInfo? wallet) =>
      box.set(_kSelectedWalletKey, wallet);
}

class WalletRepository {
  final SettingsRepository settings;
  final BoxInfoRepository boxInfos;
  final Vault vault;

  const WalletRepository({
    required this.settings,
    required this.boxInfos,
    required this.vault,
  });

  WalletVault vaultForWallet(WalletInfo wallet) =>
      WalletVault(wallet.wid, vault);

  WalletBundle get walletBundle => WalletBundle(
        wallets: settings.getWalletEntries()?.lock,
        selected: settings.getSelectedWallet(),
      );

  Future<void> updateWallets(IList<WalletInfo> entries) =>
      settings.setWalletEntries(entries.unlock);

  Future<void> updateSelected(WalletInfo? wallet) =>
      settings.setSelectedWallet(wallet);

  Future<void> openWalletBoxes(
    WalletInfo wallet, {
    required String networkId,
  }) async {
    await boxInfos.migrateIfNeeded(wallet);

    final boxInfo = boxInfos.getBoxInfo(wallet.wid, networkId);
    // open wallet boxes
    await Database.openBox<WalletAddress>(
      boxInfo.address.boxKey,
      encryptionKey: boxInfo.address.encryptionKey,
    );

    await Database.openBox<AddressBalance>(
      boxInfo.balance.boxKey,
      encryptionKey: boxInfo.balance.encryptionKey,
    );

    await Database.openBox<Utxo>(
      boxInfo.utxo.boxKey,
      encryptionKey: boxInfo.utxo.encryptionKey,
    );

    await Database.openBox<TxIndex>(
      boxInfo.txIndex.boxKey,
      encryptionKey: boxInfo.txIndex.encryptionKey,
    );

    await Database.openBox<Tx>(
      boxInfo.tx.boxKey,
      encryptionKey: boxInfo.tx.encryptionKey,
      lazy: true,
    );
  }

  Future<void> closeWalletBoxes(
    WalletInfo wallet, {
    required String networkId,
  }) async {
    final boxInfo = boxInfos.getBoxInfo(wallet.wid, networkId);
    // close wallet boxes
    await Database.closeBox<WalletAddress>(boxInfo.address.boxKey);
    await Database.closeBox<AddressBalance>(boxInfo.balance.boxKey);
    await Database.closeBox<Utxo>(boxInfo.utxo.boxKey);
    await Database.closeBox<TxIndex>(boxInfo.txIndex.boxKey);
    await Database.closeBox<Tx>(boxInfo.tx.boxKey, lazy: true);
  }

  Future<void> removeWalletBoxes(WalletInfo wallet) async {
    final boxInfoBundle = boxInfos.getBoxInfoBundle(wallet.wid);
    // remove wallet boxes
    for (final boxInfo in boxInfoBundle.byNetworkId.values) {
      await Database.removeBox(boxInfo.address.boxKey);
      await Database.removeBox(boxInfo.balance.boxKey);
      await Database.removeBox(boxInfo.utxo.boxKey);
      await Database.removeBox(boxInfo.txIndex.boxKey);
      await Database.removeBox(boxInfo.tx.boxKey);
    }

    await boxInfos.removeBoxInfoBundle(wallet.wid);
  }
}
