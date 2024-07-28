import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../kaspa/utils.dart';
import 'intro_types.dart';

String _computeSeed(({String mnemonic, String passphrase}) data) {
  final mnemonic = data.mnemonic;
  final passphrase = data.passphrase;

  return mnemonicToSeedHex(mnemonic, passphrase: passphrase);
}

class IntroDataNotifier extends StateNotifier<IntroData> {
  IntroDataNotifier() : super(const IntroData());

  bool get isSeedGenerated => state.generated;
  bool get skipPassword => state.kpub != null;

  void complete() {
    state = state.copyWith(completed: true);
  }

  void unComplete() {
    state = state.copyWith(completed: false);
  }

  void generateNewMnemonic({int strength = 256}) {
    final mnemonic = generateMnemonic(strength: strength);
    setMnemonic(mnemonic, generated: true);
  }

  void setMnemonic(String mnemonic, {bool generated = false}) {
    if (mnemonic.isEmpty) {
      throw Exception('Mnemonic can\'t be empty');
    }

    if (!isValidMnemonic(mnemonic, verifyChecksum: false)) {
      throw Exception('Invalid mnemonic');
    }

    final passphrase = state.bip39Passphrase;
    if (generated && passphrase.isNotEmpty) {
      throw Exception('Can\'t use passphrase with generated mnemonic');
    }

    final seed = compute(
      _computeSeed,
      (mnemonic: mnemonic, passphrase: passphrase),
      debugLabel: 'ComputeSeed',
    );
    state = state.copyWith(
      mnemonic: mnemonic,
      generated: generated,
      seed: seed,
      kpub: null,
    );
  }

  void setKpub(String kpub) {
    state = state.copyWith(
      kpub: kpub,
      mnemonic: null,
      seed: null,
      password: null,
      generated: false,
    );
  }

  void setName(String name) {
    state = state.copyWith(name: name);
  }

  void setPassword(String password) {
    state = state.copyWith(password: password);
  }

  void setPin(String pin) {
    state = state.copyWith(pin: pin);
  }

  void setLegacyWallet() {
    state = state.copyWith(isLegacyWallet: true);
  }

  void setBip39Passphrase(String bip39Passphrase) {
    state = state.copyWith(
      bip39Passphrase: bip39Passphrase,
    );
  }

  void clear() {
    state = const IntroData();
  }
}
