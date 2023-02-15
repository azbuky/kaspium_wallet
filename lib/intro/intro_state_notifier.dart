import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'intro_data_notifier.dart';
import 'intro_types.dart';

class IntroStateNotifier extends StateNotifier<IntroState> {
  final IntroDataNotifier introData;

  IntroStateNotifier(this.introData) : super(IntroState.init());

  void newWallet() {
    introData.generateNewMnemonic();

    _goToPage(IntroPage.walletName);
  }

  void importWallet() {
    _goToPage(IntroPage.importSeed);
  }

  void skipPassword() {
    if (introData.isSeedGenerated) {
      _goToPage(IntroPage.backupSafety);
    } else {
      introData.complete();
    }
  }

  void showIntroPassword() {
    _goToPage(IntroPage.password);
  }

  void setName(String name) {
    introData.setName(name);
    _goToPage(IntroPage.passwordOnLaunch);
  }

  void setPassword(String password) {
    introData.setPassword(password);

    if (introData.isSeedGenerated) {
      _goToPage(IntroPage.backupSafety);
    } else {
      introData.complete();
    }
  }

  void setMnemonic(String mnemonic, {String? walletName}) {
    if (walletName != null) {
      introData.setName(walletName);
    }
    introData.setMnemonic(mnemonic);
    _goToPage(IntroPage.walletName);
  }

  void showIntroBackup() {
    _goToPage(IntroPage.backupSeed);
  }

  void showIntroBackupConfirm() {
    _goToPage(IntroPage.backupConfirm);
  }

  void showIntroWalletName() {
    _goToPage(IntroPage.walletName);
  }

  void goBack() {
    state = IntroState.pop();
  }

  void _goToPage(IntroPage page) {
    state = IntroState.push(page: page);
  }
}
