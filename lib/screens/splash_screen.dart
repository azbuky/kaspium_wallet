import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../intro/intro_providers.dart';
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
      noticeShown.state = true;
      await showDialog(
        barrierColor: ref.read(themeProvider).barrier,
        context: context,
        barrierDismissible: false,
        builder: (context) => const NoticeDialog(),
      );
    }

    Future<void> checkWalletStatus() async {
      final wallets = ref.read(walletBundleProvider);
      final wallet = wallets.selected;
      if (wallet == null) {
        final vault = ref.read(vaultProvider);
        final pinIsSet = await vault.pinIsSet;
        // if pin is set but no wallets
        if (pinIsSet && wallets.wallets.isEmpty) {

            // no alpha seed so remove pin and any vault data
          await vault.deleteAll();
        }

        ref.read(introDataProvider.notifier).clear();
        Navigator.of(context).pushReplacementNamed('/intro');
        return;
      }

      final walletAuthNotifier = ref.read(walletAuthNotifierProvider);
      if (walletAuthNotifier == null) {
        final l10n = ref.read(l10nProvider);
        UIUtil.showSnackbar(l10n.somethingWentWrong, context);
        Navigator.of(context).pushReplacementNamed('/intro');
        return;
      }

      await walletAuthNotifier.checkEncryptedState();

      if (walletAuthNotifier.walletLocked) {
        if (walletAuthNotifier.walletEncrypted) {
          Navigator.of(context).pushReplacementNamed('/password_lock_screen');
          return;
        }
        final sharedPrefsUtil = ref.read(sharedPrefsUtilProvider);
        final authOnLaunch = sharedPrefsUtil.getLock();
        if (authOnLaunch) {
          Navigator.of(context).pushReplacementNamed('/lock_screen');
          return;
        } else {
          await walletAuthNotifier.unlock();
        }
      }
      // open database boxes for selected wallet
      final walletRepository = ref.read(walletRepositoryProvider);
      final network = ref.read(networkProvider);
      await walletRepository.openWalletBoxes(wallet, network: network);

      Navigator.of(context).pushReplacementNamed('/home');
    }

    useOnAppLifecycleStateChange((previous, current) {
      if (current == AppLifecycleState.resumed) {
        final deviceLocale = ref.read(deviceLocaleProvider.notifier);
        deviceLocale.state = Localizations.localeOf(context);
      }
    });

    useEffect(() {
      Future.delayed(Duration.zero, () async {
        await checkNotice();
        checkWalletStatus();
      });
      return;
    }, const []);

    return Scaffold(
      backgroundColor: theme.backgroundDark,
    );
  }
}
