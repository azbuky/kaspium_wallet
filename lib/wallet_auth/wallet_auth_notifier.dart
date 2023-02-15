import 'dart:typed_data';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../util/kaspa_util.dart';
import '../wallet/wallet_vault.dart';
import 'wallet_auth_types.dart';

class WalletAuthNotifier extends StateNotifier<WalletAuth> {
  final WalletVault walletVault;

  WalletAuthNotifier(this.walletVault, WalletAuth auth) : super(auth);

  Future<void> checkEncryptedState() async {
    final isEncrypted = await walletVault.seedIsEncrypted();
    state = state.copyWith(isEncrypted: isEncrypted);
  }

  WalletAuth get walletAuth => state;
  bool get walletLocked => state.isLocked;
  bool get walletEncrypted => state.isEncrypted;

  Future<String> _getSeed() async {
    if (state.isLocked) {
      throw Exception('Wallet is locked');
    }

    if (!state.isEncrypted) {
      final seed = await walletVault.getSeed();

      if (KaspaUtil.isEncryptedHex(seed)) {
        throw Exception('Seed is password protected');
      }
      return seed;
    }

    final secret = state.encryptedSecret;
    if (secret == null) {
      throw Exception('Wallet is encrypted');
    }

    final sessionKey = await walletVault.getSessionKey();
    return KaspaUtil.decryptHex(secret, sessionKey);
  }

  Future<Uint8List> sign(
    Uint8List data, {
    required int typeIndex,
    required int index,
  }) async {
    final seed = await _getSeed();
    final privKey = KaspaUtil.seedToPrivateKey(seed, typeIndex, index);
    final signature = await KaspaUtil.computeSignData(data, privKey);
    return signature;
  }

  Future<bool> hasMnemonic() => walletVault.hasMnemonic();

  Future<List<String>> getMnemonic({String? password}) async {
    final mnemonic = await walletVault.getMnemonic(password: password);
    return mnemonic.split(' ');
  }

  void lock() {
    state = state.copyWith(
      isLocked: true,
      encryptedSecret: null,
    );
  }

  Future<bool> unlock({String? password}) async {
    if (state.isEncrypted) {
      if (password == null) {
        return false;
      }
      try {
        await unlockWithPassword(password);
        return true;
      } catch (_) {
        return false;
      }
    }
    state = state.copyWith(isLocked: false);
    return true;
  }

  Future<void> unlockWithPassword(String password) async {
    final seed = await walletVault.getSeed(password: password);

    final sessionKey = await walletVault.getSessionKey();
    final encryptedSecret = KaspaUtil.encryptHex(seed, sessionKey);

    state = state.copyWith(
      encryptedSecret: encryptedSecret,
      isLocked: false,
      isEncrypted: true,
    );
  }

  Future<void> setPassword(String password) async {
    try {
      final seed = await walletVault.getSeed();
      final mnemonic = await walletVault.getMnemonic();
      final sessionKey = await walletVault.getSessionKey();
      final encryptedSecret = KaspaUtil.encryptHex(seed, sessionKey);

      await walletVault.setSeed(
        seed,
        mnemonic: mnemonic,
        password: password,
      );

      state = state.copyWith(
        encryptedSecret: encryptedSecret,
        isEncrypted: true,
      );
    } catch (e) {
      throw Exception('Failed to set password');
    }
  }

  Future<void> removePassword(String password) async {
    try {
      final seed = await walletVault.getSeed(password: password);
      final mnemonic = await walletVault.getMnemonic(password: password);

      await walletVault.setSeed(seed, mnemonic: mnemonic);

      state = state.copyWith(
        encryptedSecret: null,
        isEncrypted: false,
      );
    } catch (e) {
      throw Exception('Failed to remove password');
    }
  }
}
