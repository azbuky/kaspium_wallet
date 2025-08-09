import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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

  Future<void> selectWallet(WalletInfo wallet, String networkId) =>
      switchWallet(wallet, networkId);

  Future<void> logout(String networkId) async {
    final wallet = state.selected;
    if (wallet == null) {
      return;
    }

    await _updateSelectedWallet(null);
    await repository.closeWalletBoxes(wallet, networkId: networkId);
  }

  Future<void> switchWallet(WalletInfo wallet, String networkId) async {
    final oldWallet = state.selected;
    await _updateSelectedWallet(wallet);
    if (oldWallet != null) {
      await repository.closeWalletBoxes(oldWallet, networkId: networkId);
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

    final usesBip39Passphrase = walletData.map(
      seed: (data) => data.usesBip39Passphrase,
      kpub: (data) => false,
    );

    return WalletInfo(
      name: walletData.name,
      kind: walletData.kind,
      wid: wid,
      mainnetPublicKey: mainnetPublicKey,
      usesBip39Passphrase: usesBip39Passphrase,
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
    await repository.removeWalletBoxes(wallet);

    // remove wallet from bundle
    final wallets = state.wallets?.remove(wallet) ?? IList(const []);
    await repository.updateWallets(wallets);
    state = state.copyWith(wallets: wallets);
  }
}
