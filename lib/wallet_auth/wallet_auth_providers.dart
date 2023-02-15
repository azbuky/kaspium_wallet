import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../wallet/wallet_types.dart';
import '../wallet/wallet_vault.dart';
import 'wallet_auth_notifier.dart';
import 'wallet_auth_types.dart';

final walletAuthNotifierProvider = Provider((ref) {
  final wallet = ref.watch(selectedWalletProvider);
  if (wallet == null) {
    return null;
  }
  final vault = ref.watch(vaultProvider);

  final walletVault = WalletVault(wallet.wid, vault);
  final auth = WalletAuth(wallet: wallet);

  return WalletAuthNotifier(walletVault, auth);
});

final walletAuthProvider =
    StateNotifierProvider.autoDispose<WalletAuthNotifier, WalletAuth>((ref) {
  final authNotifier = ref.watch(walletAuthNotifierProvider);
  if (authNotifier == null) {
    throw Exception('No active wallet');
  }
  return WalletAuthNotifier(authNotifier.walletVault, authNotifier.walletAuth);
});

final walletHasMnemonic = FutureProvider.autoDispose<bool>((ref) {
  final notifier = ref.watch(walletAuthProvider.notifier);
  return notifier.hasMnemonic();
});

final walletProvider = Provider.autoDispose<WalletInfo>((ref) {
  final walletAuth = ref.watch(walletAuthProvider);
  return walletAuth.wallet;
});

final walletBoxInfoProvider = Provider.autoDispose<BoxInfo>((ref) {
  final wallet = ref.watch(walletProvider);
  final network = ref.watch(networkProvider);
  final boxInfo = wallet.getBoxInfo(network);

  return boxInfo;
});
