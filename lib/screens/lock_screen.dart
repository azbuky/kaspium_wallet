import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../app_router.dart';
import '../l10n/l10n.dart';
import '../settings/authentication_method.dart';
import '../util/caseconverter.dart';
import '../util/pin_lockout.dart';
import '../util/routes.dart';
import '../widgets/buttons.dart';
import '../widgets/logout_button.dart';

class LockScreen extends ConsumerStatefulWidget {
  final bool autoTransition;
  const LockScreen({super.key, this.autoTransition = true});

  @override
  _LockScreenState createState() => _LockScreenState();
}

class _LockScreenState extends ConsumerState<LockScreen> {
  bool _showUnlockButton = false;
  bool _showLock = false;
  bool _lockedOut = true;
  String _countDownTxt = "";

  late final AppLifecycleListener _appStateListener;

  @override
  void initState() {
    super.initState();

    _appStateListener = AppLifecycleListener(onResume: () {
      if (appRouter.isTopRoute<BarrierRoute>(context)) {
        _authenticate(useTransition: true);
      }
    });

    if (SchedulerBinding.instance.lifecycleState == AppLifecycleState.resumed) {
      _authenticate(useTransition: true);
    }
  }

  @override
  void dispose() {
    _appStateListener.dispose();
    super.dispose();
  }

  Future<void> _unlock() async {
    final walletAuth = ref.read(walletAuthProvider.notifier);
    final unlocked = await walletAuth.unlock();

    if (unlocked && widget.autoTransition) {
      appRouter.reload(context);
    }
  }

  String _formatCountDisplay(int count) {
    if (count <= 60) {
      // Seconds only
      String secondsStr = count.toString();
      if (count < 10) {
        secondsStr = "0" + secondsStr;
      }
      return "00:" + secondsStr;
    } else if (count > 60 && count <= 3600) {
      // Minutes:Seconds
      String minutesStr = "";
      int minutes = count ~/ 60;
      if (minutes < 10) {
        minutesStr = "0" + minutes.toString();
      } else {
        minutesStr = minutes.toString();
      }
      String secondsStr = "";
      int seconds = count % 60;
      if (seconds < 10) {
        secondsStr = "0" + seconds.toString();
      } else {
        secondsStr = seconds.toString();
      }
      return minutesStr + ":" + secondsStr;
    } else {
      // Hours:Minutes:Seconds
      String hoursStr = "";
      int hours = count ~/ 3600;
      if (hours < 10) {
        hoursStr = "0" + hours.toString();
      } else {
        hoursStr = hours.toString();
      }
      count = count % 3600;
      String minutesStr = "";
      int minutes = count ~/ 60;
      if (minutes < 10) {
        minutesStr = "0" + minutes.toString();
      } else {
        minutesStr = minutes.toString();
      }
      String secondsStr = "";
      int seconds = count % 60;
      if (seconds < 10) {
        secondsStr = "0" + seconds.toString();
      } else {
        secondsStr = seconds.toString();
      }
      return hoursStr + ":" + minutesStr + ":" + secondsStr;
    }
  }

  Future<void> _runCountdown(int count) async {
    if (count >= 1) {
      if (mounted) {
        setState(() {
          _showUnlockButton = true;
          _showLock = true;
          _lockedOut = true;
          _countDownTxt = _formatCountDisplay(count);
        });
      }
      Future.delayed(Duration(seconds: 1), () {
        _runCountdown(count - 1);
      });
    } else {
      if (mounted) {
        setState(() {
          _lockedOut = false;
        });
      }
    }
  }

  Future<void> _authenticateWithBiometrics() async {
    final l10n = l10nOf(context);

    final privacyOverlayDisabled =
        ref.read(privacyOverlayDisabledProvider.notifier);
    privacyOverlayDisabled.state = true;

    final biometricUtil = ref.read(biometricUtilProvider);
    bool authenticated = false;

    try {
      authenticated = await biometricUtil.authenticateWithBiometrics(
        l10n.unlockBiometrics,
      );

      if (authenticated) {
        _unlock();
      } else {
        setState(() {
          _showUnlockButton = true;
        });
        throw Exception('Authentication failed');
      }
    } catch (_) {
      rethrow;
    } finally {
      Future.delayed(Duration(milliseconds: 200), () {
        ref.read(privacyOverlayDisabledProvider.notifier).state = false;
      });
    }
  }

  Future<void> _authenticateWithPin({bool useTransition = false}) async {
    final l10n = l10nOf(context);
    final authUtil = ref.read(authUtilProvider);

    final auth = authUtil.authenticateWithPin(
      context,
      description: l10n.unlockPin,
      useTransition: useTransition,
    );

    await Future.delayed(Duration(milliseconds: 200));
    if (mounted) {
      setState(() {
        _showUnlockButton = true;
        _showLock = true;
      });
    }

    if ((await auth) == true) {
      _unlock();
    }
  }

  Future<void> _authenticate({bool useTransition = false}) async {
    final sharedPrefUtil = ref.read(sharedPrefsUtilProvider);
    final vault = ref.read(vaultProvider);
    final pinLockout = PinLockout(vault);
    // Test if user is locked out
    // Get duration of lockout
    final lockUntil = await pinLockout.getLockDate();
    if (lockUntil == null) {
      await pinLockout.resetUnlockAttempts();
    } else {
      int countDown = lockUntil.difference(DateTime.now().toUtc()).inSeconds;
      // They're not allowed to attempt
      if (countDown > 0) {
        _runCountdown(countDown);
        return;
      }
    }
    setState(() {
      _lockedOut = false;
    });
    final authMethod = sharedPrefUtil.getAuthMethod();
    if (authMethod.method == AuthMethod.BIOMETRICS) {
      final biometricsUtil = ref.read(biometricUtilProvider);
      final hasBiometrics = await biometricsUtil.hasBiometrics();
      if (hasBiometrics) {
        setState(() {
          _showLock = true;
          _showUnlockButton = true;
        });
        if (SchedulerBinding.instance.lifecycleState ==
            AppLifecycleState.resumed) {
          try {
            await _authenticateWithBiometrics();
          } catch (e) {
            await _authenticateWithPin(useTransition: true);
          }
        }
      } else {
        await _authenticateWithPin(useTransition: true);
      }
    } else {
      await _authenticateWithPin(useTransition: useTransition);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    return Scaffold(
      body: Container(
        color: theme.backgroundDark,
        width: double.infinity,
        child: SafeArea(
          minimum: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height * 0.035,
          ),
          child: Column(
            children: [
              Row(children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20, 16, 12, 4),
                  child: const LogoutButton(),
                ),
              ]),
              Expanded(
                child: _showLock
                    ? Column(children: [
                        Container(
                          child: Icon(
                            AppIcons.lock,
                            size: 80,
                            color: theme.primary,
                          ),
                          margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.1,
                          ),
                        ),
                        Container(
                          child: Text(
                            CaseChange.toUpperCase(l10n.locked, ref),
                            style: styles.textStyleHeaderColored,
                          ),
                          margin: EdgeInsets.only(top: 10),
                        ),
                      ])
                    : const SizedBox(),
              ),
              _lockedOut
                  ? Container(
                      width: MediaQuery.of(context).size.width - 100,
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      child: Text(
                        l10n.tooManyFailedAttempts,
                        style: styles.textStyleErrorMedium,
                        textAlign: TextAlign.center,
                      ),
                    )
                  : const SizedBox(),
              _showUnlockButton
                  ? PrimaryButton(
                      title: _lockedOut ? _countDownTxt : l10n.unlock,
                      margin: const EdgeInsets.fromLTRB(28, 8, 28, 0),
                      onPressed: () {
                        if (!_lockedOut) {
                          _authenticate(useTransition: true);
                        }
                      },
                      disabled: _lockedOut,
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
