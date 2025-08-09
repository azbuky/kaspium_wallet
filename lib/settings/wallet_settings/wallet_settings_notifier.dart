import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../settings_repository.dart';
import 'request_password.dart';
import 'wallet_settings_types.dart';

extension WalletSettingsExtension on SettingsRepository {
  WalletSettings getWalletSettings(String key) {
    return box.tryGet<WalletSettings>(key,
            typeFactory: WalletSettings.fromJson) ??
        WalletSettings();
  }

  Future<void> setWalletSettings(
      String key, WalletSettings walletSettings) async {
    await box.set(key, walletSettings);
  }
}

class WalletSettingsStateNotifier extends StateNotifier<WalletSettings> {
  final SettingsRepository repository;
  final String key;

  WalletSettingsStateNotifier({
    required this.repository,
    required this.key,
  }) : super(repository.getWalletSettings(key));

  Future<void> setRequestPassword(RequestPassword requestPassword) async {
    if (state.requestPassword == requestPassword) {
      return;
    }
    state = state.copyWith(requestPassword: requestPassword);
    return repository.setWalletSettings(key, state);
  }
}
