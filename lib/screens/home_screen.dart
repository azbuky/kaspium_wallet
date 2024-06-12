import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../chain_state/chain_state.dart';
import '../l10n/l10n.dart';
import '../main_card/main_card.dart';
import '../settings_drawer/settings_drawer.dart';
import '../util/lock_settings.dart';
import '../util/platform.dart';
import '../util/ui_util.dart';
import '../wallet_home/wallet_home.dart';
import '../widgets/network_banner.dart';
import 'privacy_overlay.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    l10nWrapper.l10n = l10nOf(context);

    // To lock and unlock the app
    final lockStreamListener = useRef<StreamSubscription?>(null);
    final inactive = useState(false);

    useEffect(() {
      precacheImage(AssetImage('assets/kaspa.png'), context);
      return null;
    }, []);

    Future<void> setAppLockEvent() async {
      // whether we should avoid locking the app
      final lockDisabled = ref.read(lockDisabledProvider);
      if (lockDisabled) {
        return;
      }

      final auth = ref.read(walletAuthProvider);
      final vault = ref.read(vaultProvider);
      final lockSettings = LockSettings(vault);
      final shouldLock = await lockSettings.getLock();

      if ((shouldLock || auth.encryptedSecret != null)) {
        final notifier = ref.read(walletAuthNotifierProvider);
        await lockStreamListener.value?.cancel();
        final timeout = await lockSettings.getLockTimeout();
        Future<void> delayed = Future.delayed(timeout.getDuration());
        lockStreamListener.value = delayed.asStream().listen((_) {
          notifier?.lock();
        });
      }
    }

    Future<void> cancelLockEvent() async {
      await lockStreamListener.value?.cancel();
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
          if (kDebugMode && kPlatformIsMacOS) {
            break;
          }
          inactive.value = true;
          break;
        case AppLifecycleState.hidden:
          await setAppLockEvent();
          await saveChainState();
          break;
        case AppLifecycleState.paused:
          final inBackground = ref.read(inBackgroundProvider.notifier);
          inBackground.state = true;
          break;
        case AppLifecycleState.resumed:
          await cancelLockEvent();
          // refresh remote data
          final remote = ref.read(remoteRefreshProvider.notifier);
          remote.update((state) => state + 1);

          final inBackground = ref.read(inBackgroundProvider.notifier);
          final notifier = ref.read(walletAuthNotifierProvider);
          if (notifier?.walletLocked == true) {
            Navigator.of(context).pushNamedAndRemoveUntil('/', (_) => false);
            Future.delayed(const Duration(milliseconds: 1000), () {
              inBackground.state = false;
            });
          } else {
            inBackground.state = false;
            inactive.value = false;
          }
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
