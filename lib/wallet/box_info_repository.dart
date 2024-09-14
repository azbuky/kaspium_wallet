import 'dart:async';

import '../database/database.dart';
import '../kaspa/kaspa.dart';
import '../settings/settings_repository.dart';
import '../wallet/wallet_types.dart';

BoxInfo _genBoxInfo({
  required String wid,
  required String networkId,
}) {
  final addressBoxKey = hash('addressBoxKey#KaspaNetwork.$networkId#$wid');
  final balanceBoxKey = hash('balanceBoxKey#KaspaNetwork.$networkId#$wid');
  final utxoBoxKey = hash('utxoBoxKey#KaspaNetwork.$networkId#$wid');
  final txIndexBoxKey = hash('txIndexBoxKey#KaspaNetwork.$networkId#$wid');
  final txBoxKey = hash('txBoxKey#KaspaNetwork.$networkId#$wid');

  return BoxInfo(
    address: BoxKeys(
      boxKey: addressBoxKey,
      encryptionKey: Database.generateSecureKey(),
    ),
    balance: BoxKeys(
      boxKey: balanceBoxKey,
      encryptionKey: Database.generateSecureKey(),
    ),
    utxo: BoxKeys(
      boxKey: utxoBoxKey,
      encryptionKey: Database.generateSecureKey(),
    ),
    txIndex: BoxKeys(
      boxKey: txIndexBoxKey,
      encryptionKey: Database.generateSecureKey(),
    ),
    tx: BoxKeys(
      boxKey: txBoxKey,
      encryptionKey: Database.generateSecureKey(),
    ),
  );
}

extension BoxInfoExtension on SettingsRepository {
  String _boxInfoBundleKey(String wid) {
    return hash('boxInfoBundleKey#$wid');
  }

  BoxInfoBundle getBoxInfoBundle(String wid) {
    final bundle = box.tryGet<BoxInfoBundle>(
      _boxInfoBundleKey(wid),
      typeFactory: BoxInfoBundle.fromJson,
    );
    if (bundle == null) {
      return BoxInfoBundle();
    }
    return bundle;
  }

  Future<void> removeBoxInfoBundle(String wid) {
    return box.remove(_boxInfoBundleKey(wid));
  }

  BoxInfo getBoxInfo(String wid, String networkId) {
    var bundle = getBoxInfoBundle(wid);

    var boxInfo = bundle.byNetworkId[networkId];
    if (boxInfo == null) {
      boxInfo = _genBoxInfo(wid: wid, networkId: networkId);

      bundle = bundle.copyWith(byNetworkId: {
        ...bundle.byNetworkId,
        networkId: boxInfo,
      });
      box.set(_boxInfoBundleKey(wid), bundle);
    }

    return boxInfo;
  }

  Future<void> migrateIfNeeded(WalletInfo wallet) async {
    var bundle = getBoxInfoBundle(wallet.wid);

    if (!bundle.wasMigrated) {
      final mainnet = wallet.boxInfo?.mainnet;
      bundle = bundle.copyWith(
        byNetworkId: mainnet != null
            ? {
                ...bundle.byNetworkId,
                kKaspaNetworkIdMainnet: mainnet,
              }
            : bundle.byNetworkId,
        wasMigrated: true,
      );
      await box.set(_boxInfoBundleKey(wallet.wid), bundle);
    }
  }
}

class BoxInfoRepository {
  final SettingsRepository settings;

  BoxInfoRepository(this.settings);

  BoxInfo getBoxInfo(String wid, String networkId) =>
      settings.getBoxInfo(wid, networkId);

  BoxInfoBundle getBoxInfoBundle(String wid) => settings.getBoxInfoBundle(wid);

  Future<void> removeBoxInfoBundle(String wid) async {
    await settings.removeBoxInfoBundle(wid);
  }

  Future<void> migrateIfNeeded(WalletInfo wallet) =>
      settings.migrateIfNeeded(wallet);
}
