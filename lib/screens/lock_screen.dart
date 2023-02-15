import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../settings/authentication_method.dart';
import '../util/caseconverter.dart';
import '../util/routes.dart';
import '../widgets/buttons.dart';
import '../widgets/logout_button.dart';
import '../widgets/pin_screen.dart';

class LockScreen extends ConsumerStatefulWidget {
  const LockScreen({Key? key}) : super(key: key);

  @override
  _LockScreenState createState() => _LockScreenState();
}

class _LockScreenState extends ConsumerState<LockScreen> {
  bool _showUnlockButton = false;
  bool _showLock = false;
  bool _lockedOut = true;
  String _countDownTxt = "";

  Future<void> _goHome() async {
    final walletAuth = ref.read(walletAuthNotifierProvider);
    if (walletAuth != null) {
      await walletAuth.unlock();
    }

    Navigator.of(context).pushNamedAndRemoveUntil('/', (_) => false);
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

  Future<void> authenticateWithBiometrics() async {
    final l10n = ref.read(l10nProvider);
    final biometricUtil = ref.read(biometricUtilProvider);
    final authenticated = await biometricUtil.authenticateWithBiometrics(
      l10n.unlockBiometrics,
    );
    if (authenticated) {
      _goHome();
    } else {
      setState(() {
        _showUnlockButton = true;
      });
    }
  }

  Future<void> authenticateWithPin({bool useTransition = false}) async {
    final theme = ref.read(themeProvider);
    final l10n = ref.read(l10nProvider);

    String? expectedPin = await ref.read(vaultProvider).getPin();

    final pinScreen = PinScreen(
      PinOverlayType.ENTER_PIN,
      expectedPin: expectedPin,
      description: l10n.unlockPin,
      pinScreenBackgroundColor: theme.backgroundDark,
    );

    final transition = useTransition
        ? MaterialPageRoute<bool>(builder: (context) => pinScreen)
        : NoTransitionRoute<bool>(builder: (context) => pinScreen);
    final auth = await Navigator.of(context).push(transition);
    await Future.delayed(Duration(milliseconds: 200));

    if (mounted) {
      setState(() {
        _showUnlockButton = true;
        _showLock = true;
      });
    }
    if (auth == true) {
      _goHome();
    }
  }

  Future<void> _authenticate({bool useTransition = false}) async {
    final sharedPrefsUtil = ref.read(sharedPrefsUtilProvider);
    // Test if user is locked out
    // Get duration of lockout
    DateTime? lockUntil = sharedPrefsUtil.getLockDate();
    if (lockUntil == null) {
      sharedPrefsUtil.resetLockAttempts();
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
    final authMethod = sharedPrefsUtil.getAuthMethod();
    if (authMethod.method == AuthMethod.BIOMETRICS) {
      final biometricsUtil = ref.read(biometricUtilProvider);
      final hasBiometrics = await biometricsUtil.hasBiometrics();
      if (hasBiometrics) {
        setState(() {
          _showLock = true;
          _showUnlockButton = true;
        });
        try {
          await authenticateWithBiometrics();
        } catch (e) {
          await authenticateWithPin(useTransition: true);
        }
      } else {
        await authenticateWithPin(useTransition: true);
      }
    } else {
      await authenticateWithPin(useTransition: useTransition);
    }
  }

  @override
  void initState() {
    super.initState();
    _authenticate();
  }

  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(themeProvider);
    final l10n = ref.watch(l10nProvider);
    final styles = ref.watch(stylesProvider);

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
