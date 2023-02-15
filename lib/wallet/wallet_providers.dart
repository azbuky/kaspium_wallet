import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/core_providers.dart';
import '../settings/settings_providers.dart';
import 'wallet_bundle_notifier.dart';
import 'wallet_repository.dart';
import 'wallet_types.dart';
import 'wallet_vault.dart';

final walletVaultProvider =
    Provider.autoDispose.family<WalletVault, String>((ref, wid) {
  final vault = ref.watch(vaultProvider);
  final walletVault = WalletVault(wid, vault);
  return walletVault;
});

final walletRepositoryProvider = Provider((ref) {
  final settings = ref.watch(settingsRepositoryProvider);
  final vault = ref.watch(vaultProvider);
  final repository = WalletRepository(settings, vault);
  return repository;
});

final walletBundleProvider =
    StateNotifierProvider<WalletBundleNotifier, WalletBundle>((ref) {
  final repository = ref.watch(walletRepositoryProvider);

  final notifier = WalletBundleNotifier(repository);
  return notifier;
});

final walletsProvider = Provider((ref) {
  final bundle = ref.watch(walletBundleProvider);
  return bundle.wallets;
});

final selectedWalletProvider = Provider((ref) {
  final bundle = ref.watch(walletBundleProvider);
  return bundle.selected;
});
