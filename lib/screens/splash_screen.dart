import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../app_providers.dart';
import '../app_router.dart';
import '../database/database.dart';
import '../intro/intro_providers.dart';
import '../l10n/l10n.dart';
import '../util/lock_settings.dart';
import '../util/ui_util.dart';
import '../widgets/notice_dialog.dart';

final _noticeShownProvider = StateProvider<bool>((ref) {
  final sharedPrefsUtil = ref.watch(sharedPrefsUtilProvider);
  final shown = sharedPrefsUtil.getNoticeShown();
  return shown;
});

class SplashScreen extends HookConsumerWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);

    Future<void> checkNotice() async {
      final noticeShown = ref.read(_noticeShownProvider.notifier);
      if (noticeShown.state) {
        return;
      }
      final version = (await PackageInfo.fromPlatform()).version + " (Beta)";
      noticeShown.state = true;
      await showDialog(
        barrierColor: ref.read(themeProvider).barrier,
        context: context,
        barrierDismissible: false,
        builder: (context) => NoticeDialog(version: version),
      );
    }

    Future<void> checkWalletStatus() async {
      final walletBundle = ref.read(walletBundleProvider);
      final wallet = walletBundle.selected;
      if (wallet == null) {
        if (walletBundle.wallets == null) {
          final vault = ref.read(vaultProvider);
          final pinIsSet = await vault.pinIsSet;
          // on iOS the Vault is not cleared on app uninstall
          // check if pin is set but wallets is null then reset vault and database
          if (pinIsSet) {
            await vault.deleteAll();
            final db = await Database.reset();
            ref.read(dbProvider.notifier).state = db;
          }
        }

        ref.read(introDataProvider.notifier).clear();

        appRouter.startIntro(context);
        return;
      }

      final walletAuthNotifier = ref.read(walletAuthNotifierProvider);
      if (walletAuthNotifier == null) {
        final l10n = l10nOf(context);
        UIUtil.showSnackbar(l10n.somethingWentWrong, context);
        appRouter.startIntro(context);
        return;
      }

      await walletAuthNotifier.checkEncryptedState();

      if (walletAuthNotifier.walletLocked) {
        if (walletAuthNotifier.walletEncrypted) {
          appRouter.requirePassword(context);
          return;
        }
        final vault = ref.read(vaultProvider);
        final lockSettings = LockSettings(vault);
        final authOnLaunch = await lockSettings.getLock();
        if (authOnLaunch) {
          appRouter.requireUnlock(context);
          return;
        } else {
          await walletAuthNotifier.unlock();
        }
      }
      // open database boxes for selected wallet
      final walletRepository = ref.read(walletRepositoryProvider);
      final network = ref.read(networkProvider);
      await walletRepository.openWalletBoxes(wallet, network: network);

      appRouter.openWallet(context);
    }

    useEffect(() {
      Future.microtask(() async {
        //await checkNotice();
        checkWalletStatus();
      });
      return;
    }, const []);

    return Scaffold(
      backgroundColor: theme.backgroundDark,
    );
  }
}
