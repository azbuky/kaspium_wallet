import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../database/database.dart';
import '../kaspa/kaspa.dart';
import '../util/random_util.dart';
import '../utils.dart';
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
    final wallets = state.wallets;
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
      final addressBoxKey =
          digest(data: stringToBytesUtf8('addressBoxKey#$network#$wid')).hex;
      final balanceBoxKey =
          digest(data: stringToBytesUtf8('balanceBoxKey#$network#$wid')).hex;
      final utxoBoxKey =
          digest(data: stringToBytesUtf8('utxoBoxKey#$network#$wid')).hex;
      final txIndexBoxKey =
          digest(data: stringToBytesUtf8('txIndexBoxKey#$network#$wid')).hex;
      final txBoxKey =
          digest(data: stringToBytesUtf8('txBoxKey#$network#$wid')).hex;

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

    final seed = hexToBytes(walletData.seed);
    final mainnetPublicKey =
        HdWallet.hdPublicKeyFromSeed(seed, networkType: kaspaMainnet);
    final testnetPublicKey =
        HdWallet.hdPublicKeyFromSeed(seed, networkType: kaspaTestnet);
    final simnetPublicKey =
        HdWallet.hdPublicKeyFromSeed(seed, networkType: kaspaSimnet);
    final devnetPublicKey =
        HdWallet.hdPublicKeyFromSeed(seed, networkType: kaspaDevnet);

    return WalletInfo(
      name: walletData.name,
      kind: walletData.kind,
      wid: wid,
      boxInfo: boxInfo,
      mainnetPublicKey: mainnetPublicKey,
      testnetPublicKey: testnetPublicKey,
      simnetPublicKey: simnetPublicKey,
      devnetPublicKey: devnetPublicKey,
    );
  }

  Future<WalletInfo> setupWallet(WalletData walletData) async {
    final wallet = generateWalletInfo(walletData);

    // set seed and mnemonic to vault
    final walletVault = WalletVault(wallet.wid, repository.vault);
    await walletVault.setSeed(
      walletData.seed,
      mnemonic: walletData.mnemonic,
      password: walletData.password,
    );

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
    final wallets = state.wallets.remove(wallet);
    await repository.updateWallets(wallets);
    state = state.copyWith(wallets: wallets);
  }
}
