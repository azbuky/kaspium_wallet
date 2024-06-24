import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app_providers.dart';
import 'wallet_settings_notifier.dart';
import 'wallet_settings_types.dart';

final walletSettingsProvider = StateNotifierProvider.autoDispose<
    WalletSettingsStateNotifier, WalletSettings>((ref) {
  final settings = ref.watch(settingsRepositoryProvider);
  final wallet = ref.watch(walletProvider);

  return WalletSettingsStateNotifier(
    repository: settings,
    key: wallet.settingsKey,
  );
});
