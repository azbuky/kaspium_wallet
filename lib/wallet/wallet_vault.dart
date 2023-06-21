import '../util/kaspa_util.dart';
import '../util/vault.dart';

const _kMnemonicKey = 'kaspium_mnemonic_key';
const _kSeedKey = 'kaspium_seed_key';

class WalletVault {
  final Vault vault;
  final String _mnemonicKey;
  final String _seedKey;

  const WalletVault(String wid, this.vault)
      : _mnemonicKey = '$_kMnemonicKey#$wid',
        _seedKey = '$_kSeedKey#$wid';

  Future<String> getMnemonic({String? password}) async {
    final mnemonic = await vault.get(_mnemonicKey);

    if (mnemonic == null) {
      throw Exception('Mnemonic is missing from vault');
    }

    if (!KaspaUtil.isEncryptedHex(mnemonic)) {
      return mnemonic;
    }

    if (password == null) {
      throw Exception('Mnemonic is password protected');
    }

    final decrypted = KaspaUtil.decryptToText(mnemonic, password);
    return decrypted;
  }

  Future<String> getSeed({String? password}) async {
    final seed = await vault.get(_seedKey);

    if (seed == null) {
      throw Exception('Seed is missing from vault');
    }

    if (!KaspaUtil.isEncryptedHex(seed)) {
      return seed;
    }

    if (password == null) {
      throw Exception('Seed is password protected');
    }

    final decrypted = KaspaUtil.decryptHex(seed, password);

    if (!KaspaUtil.isValidSeed(decrypted)) {
      throw Exception('Incorrect password');
    }
    return decrypted;
  }

  Future<bool> hasMnemonic() async {
    final mnemonic = await vault.get(_mnemonicKey);
    final mnemonicOrSeed = mnemonic ?? await vault.get(_seedKey);
    return mnemonicOrSeed != null;
  }

  Future<bool> seedIsEncrypted() async {
    final seed = await vault.get(_seedKey);
    if (seed == null) {
      return false;
    }

    return KaspaUtil.isEncryptedHex(seed);
  }

  Future<void> setSeed(
    String seed, {
    required String? mnemonic,
    String? password,
  }) async {
    if (password != null) {
      // encrypt mnemonic with password for vault
      mnemonic = KaspaUtil.maybeEncryptText(mnemonic, password);
      // encrypt seed with password for vault
      seed = KaspaUtil.encryptHex(seed, password);
    }
    await vault.set(_seedKey, seed);
    await vault.set(_mnemonicKey, mnemonic);
  }

  Future<void> delete() async {
    await vault.delete(_mnemonicKey);
    await vault.delete(_seedKey);
  }

  Future<String> getSessionKey() => vault.getSessionKey();
  Future<String> updateSessionKey() => vault.updateSessionKey();
}
