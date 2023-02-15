import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../main_card/main_card.dart';
import '../settings_drawer/settings_drawer.dart';
import '../util/ui_util.dart';
import '../wallet_home/wallet_home.dart';
import '../widgets/network_banner.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);

    // whether we should avoid locking the app
    final lockDisabled = ref.watch(lockDisabledProvider);
    // To lock and unlock the app
    final lockStreamListener = useRef<StreamSubscription?>(null);

    void setAppLockEvent() {
      final auth = ref.read(walletAuthProvider);
      final sharedPrefsUtil = ref.read(sharedPrefsUtilProvider);
      final locked = sharedPrefsUtil.getLock();

      if ((locked || auth.encryptedSecret != null) && !lockDisabled) {
        lockStreamListener.value?.cancel();

        final timeout = sharedPrefsUtil.getLockTimeout();
        Future<void> delayed = Future.delayed(timeout.getDuration());
        lockStreamListener.value = delayed.asStream().listen((_) {
          final notifier = ref.read(walletAuthNotifierProvider);
          notifier?.lock();

          Navigator.of(context).pushNamedAndRemoveUntil('/', (_) => false);
        });
      }
    }

    Future<void> cancelLockEvent() async {
      await lockStreamListener.value?.cancel();
    }

    useOnAppLifecycleStateChange((previous, state) async {
      final log = ref.read(loggerProvider);
      log.d('didChangeAppLifecycleState $state');

      switch (state) {
        case AppLifecycleState.paused:
          final inBackground = ref.read(inBackgroundProvider.notifier);
          inBackground.state = true;

          setAppLockEvent();
          break;
        case AppLifecycleState.resumed:
          await cancelLockEvent();

          final inBackground = ref.read(inBackgroundProvider.notifier);
          Future.delayed(const Duration(milliseconds: 100), () {
            inBackground.state = false;
          });

          break;
        default:
          break;
      }
    });

    final scaffoldKey = ref.watch(homePageScaffoldKeyProvider);

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
