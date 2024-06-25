import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../app_router.dart';
import '../chain_state/chain_state.dart';
import '../l10n/l10n.dart';
import '../main_card/main_card.dart';
import '../settings/wallet_settings.dart';
import '../settings_drawer/settings_drawer.dart';
import '../util/lock_settings.dart';
import '../util/routes.dart';
import '../util/ui_util.dart';
import '../wallet_home/wallet_home.dart';
import '../widgets/network_banner.dart';
import 'lock_screen.dart';
import 'password_lock_screen.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    l10nWrapper.l10n = l10nOf(context);

    final scaffoldKey = ref.watch(homePageScaffoldKeyProvider);

    ref.listen(walletAuthProvider.select((walletAuth) => walletAuth.isLocked),
        (wasLocked, isLocked) {
      if (wasLocked == isLocked) {
        return;
      }
      if (isLocked) {
        final walletSettings = ref.read(walletSettingsProvider);
        final requestPassword = walletSettings.requestPassword;
        final lockScreen = switch (requestPassword) {
          RequestPassword.whenLocked => const PasswordLockScreen(),
          _ => LockScreen(autoTransition: false),
        };

        appRouter.push(
          context,
          BarrierRoute(builder: (_) => lockScreen),
        );
      } else {
        if (appRouter.isTopRoute<BarrierRoute>(context)) {
          appRouter.pop(context);
        }
      }
    });

    Future<void> checkAutoLock() async {
      // whether we should avoid locking the app
      final lockDisabled = ref.read(lockDisabledProvider);
      final isLocked = ref.read(walletAuthProvider).isLocked;
      if (lockDisabled || isLocked) {
        return;
      }

      final vault = ref.read(vaultProvider);
      final lockSettings = LockSettings(vault);
      final shouldAutoLock = await lockSettings.getAutoLock();

      if (shouldAutoLock) {
        final notifier = ref.read(walletAuthProvider.notifier);
        notifier.lock();
      }
    }

    Future<void> saveChainState() async {
      final virtualDaaScore = ref.read(lastKnownVirtualDaaScoreProvider);
      final blueScore = ref.read(virtualSelectedParentBlueScoreProvider);
      final repository = ref.read(settingsRepositoryProvider);
      await repository.setChainState(
        ChainState(
          virtualDaaScore: virtualDaaScore,
          virtualSelectedParentBlueScore: blueScore,
        ),
      );
    }

    useOnAppLifecycleStateChange((previous, state) async {
      final log = ref.read(loggerProvider);
      log.d('didChangeAppLifecycleState $state');

      switch (state) {
        case AppLifecycleState.inactive:
          await saveChainState();
          break;
        case AppLifecycleState.hidden:
          break;
        case AppLifecycleState.paused:
          final inBackground = ref.read(inBackgroundProvider.notifier);
          inBackground.state = true;
          await checkAutoLock();
          break;
        case AppLifecycleState.resumed:
          // refresh remote data
          final remote = ref.read(remoteRefreshProvider.notifier);
          remote.update((state) => state + 1);

          final inBackground = ref.read(inBackgroundProvider.notifier);
          inBackground.state = false;
          break;
        case AppLifecycleState.detached:
          break;
      }
    });

    return Scaffold(
      key: scaffoldKey,
      drawerEdgeDragWidth: 60,
      resizeToAvoidBottomInset: false,
      backgroundColor: theme.background,
      drawerScrimColor: theme.barrierWeaker,
      drawer: SizedBox(
        width: UIUtil.drawerWidth(context),
        child: const Drawer(child: SettingsSheet()),
      ),
      body: SafeArea(
        child: ClipRect(
          child: NetworkBanner(
            child: Padding(
              padding: const EdgeInsets.only(top: 4),
              child: const WalletHome(),
            ),
          ),
        ),
      ),
    );
  }
}
