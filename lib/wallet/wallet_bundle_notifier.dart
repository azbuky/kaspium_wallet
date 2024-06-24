import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../database/database.dart';
import '../kaspa/kaspa.dart';
import '../util/random_util.dart';
import 'wallet_repository.dart';
import 'wallet_types.dart';
import 'wallet_vault.dart';

class WalletBundleNotifier extends StateNotifier<WalletBundle> {
  final WalletRepository repository;

  WalletBundleNotifier(this.repository) : super(repository.walletBundle);

  Future<void> _updateSelectedWallet(WalletInfo? wallet) async {
    await repository.updateSelected(wallet);
    state = state.copyWith(selected: wallet);
  }

  Future<void> _updateWallets(IList<WalletInfo> wallets) async {
    await repository.updateWallets(wallets);
    state = state.copyWith(wallets: wallets);
  }

  Future<void> selectWallet(WalletInfo wallet, KaspaNetwork network) =>
      switchWallet(wallet, network);

  Future<void> logout(KaspaNetwork network) async {
    final wallet = state.selected;
    if (wallet == null) {
      return;
    }

    await _updateSelectedWallet(null);
    await repository.closeWalletBoxes(wallet, network: network);
  }

  Future<void> switchWallet(WalletInfo wallet, KaspaNetwork network) async {
    final oldWallet = state.selected;
    await _updateSelectedWallet(wallet);
    if (oldWallet != null) {
      await repository.closeWalletBoxes(oldWallet, network: network);
    }
  }

  Future<void> addWallet(WalletInfo wallet) async {
    final wallets = state.wallets ?? IList(const []);
    if (wallets.contains(wallet)) {
      throw Exception('Wallet already exists');
    }

    await _updateWallets(wallets.add(wallet));
  }

  static WalletInfo generateWalletInfo(WalletData walletData) {
    final wid = RandomUtil.generateKey();

    BoxInfo genBoxInfo({
      required String wid,
      required KaspaNetwork network,
    }) {
      final addressBoxKey = hash('addressBoxKey#$network#$wid');
      final balanceBoxKey = hash('balanceBoxKey#$network#$wid');
      final utxoBoxKey = hash('utxoBoxKey#$network#$wid');
      final txIndexBoxKey = hash('txIndexBoxKey#$network#$wid');
      final txBoxKey = hash('txBoxKey#$network#$wid');

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

    final boxInfo = BoxInfoByNetwork(
      mainnet: genBoxInfo(wid: wid, network: KaspaNetwork.mainnet),
      testnet: genBoxInfo(wid: wid, network: KaspaNetwork.testnet),
      devnet: genBoxInfo(wid: wid, network: KaspaNetwork.devnet),
      simnet: genBoxInfo(wid: wid, network: KaspaNetwork.simnet),
    );

    final mainnetPublicKey = walletData.map(
      seed: (data) {
        final seed = hexToBytes(data.seed);
        return HdWallet.hdPublicKeyFromSeed(
          seed,
          networkType: kaspaMainnet,
        );
      },
      kpub: (data) {
        return convertHdPublicKey(
          data.kpub,
          KaspaNetwork.mainnet,
        );
      },
    );

    return WalletInfo(
      name: walletData.name,
      kind: walletData.kind,
      wid: wid,
      boxInfo: boxInfo,
      mainnetPublicKey: mainnetPublicKey,
    );
  }

  Future<WalletInfo> setupWallet(WalletData walletData) async {
    final wallet = generateWalletInfo(walletData);

    await walletData.mapOrNull(seed: (data) async {
      final walletVault = WalletVault(wallet.wid, repository.vault);
      await walletVault.setSeed(
        data.seed,
        mnemonic: data.mnemonic,
        password: data.password,
      );
    });

    await addWallet(wallet);
    return wallet;
  }

  Future<void> removeWallet(WalletInfo wallet) async {
    if (wallet == state.selected) {
      throw Exception('Can not remove active wallet');
    }

    // remove seed and mnemonic from vault
    final walletVault = WalletVault(wallet.wid, repository.vault);
    await walletVault.delete();

    // remove wallet boxes
    for (final network in KaspaNetwork.values) {
      final boxInfo = wallet.getBoxInfo(network);
      await Database.removeBox(boxInfo.address.boxKey);
      await Database.removeBox(boxInfo.balance.boxKey);
      await Database.removeBox(boxInfo.utxo.boxKey);
      await Database.removeBox(boxInfo.txIndex.boxKey);
      await Database.removeBox(boxInfo.tx.boxKey);
    }

    // remove wallet from bundle
    final wallets = state.wallets?.remove(wallet) ?? IList(const []);
    await repository.updateWallets(wallets);
    state = state.copyWith(wallets: wallets);
  }
}
