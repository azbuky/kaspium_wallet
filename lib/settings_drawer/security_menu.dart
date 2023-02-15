import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../settings/authentication_method.dart';
import '../settings/device_lock_timeout.dart';
import '../settings/device_unlock_option.dart';
import '../widgets/app_icon_button.dart';
import '../widgets/app_simpledialog.dart';
import '../widgets/gradient_widgets.dart';
import '../widgets/sheet_util.dart';
import 'disable_password_sheet.dart';
import 'double_line_item.dart';
import 'set_password_sheet.dart';
import 'single_line_item.dart';

class SecurityMenu extends ConsumerStatefulWidget {
  final VoidCallback onBackAction;

  const SecurityMenu({
    Key? key,
    required this.onBackAction,
  }) : super(key: key);

  @override
  _SecurityMenuState createState() => _SecurityMenuState();
}

class _SecurityMenuState extends ConsumerState<SecurityMenu> {
  bool _hasBiometrics = false;
  AuthenticationMethod _curAuthMethod =
      AuthenticationMethod(AuthMethod.BIOMETRICS);
  UnlockSetting _curUnlockSetting = UnlockSetting(UnlockOption.NO);
  LockTimeoutSetting _curTimeoutSetting =
      LockTimeoutSetting(LockTimeoutOption.ONE);

  @override
  void initState() {
    super.initState();

    // Determine if they have face or fingerprint enrolled, if not hide the setting
    final biometricUtil = ref.read(biometricUtilProvider);
    final sharedPrefsUtil = ref.read(sharedPrefsUtilProvider);
    biometricUtil.hasBiometrics().then((bool hasBiometrics) {
      setState(() {
        _hasBiometrics = hasBiometrics;
      });
    });
    // Get default auth method setting
    _curAuthMethod = sharedPrefsUtil.getAuthMethod();
    // Get default unlock settings
    _curUnlockSetting = sharedPrefsUtil.getLock()
        ? UnlockSetting(UnlockOption.YES)
        : UnlockSetting(UnlockOption.NO);

    _curTimeoutSetting = sharedPrefsUtil.getLockTimeout();
  }

  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = ref.watch(l10nProvider);

    final walletAuth = ref.watch(walletAuthProvider);
    final encryptedSecret = walletAuth.encryptedSecret;

    return Container(
      decoration: BoxDecoration(
        color: theme.backgroundDark,
        boxShadow: [
          BoxShadow(
            color: theme.barrierWeakest,
            offset: Offset(-5, 0),
            blurRadius: 20,
          ),
        ],
      ),
      child: SafeArea(
        minimum: const EdgeInsets.only(top: 60),
        child: Column(
          children: [
            // Back button and Security Text
            Container(
              margin: const EdgeInsets.only(bottom: 10, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      //Back button
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: AppIconButton(
                          icon: AppIcons.back,
                          onPressed: widget.onBackAction,
                        ),
                      ),
                      //Security Header Text
                      Text(
                        l10n.securityHeader,
                        style: styles.textStyleSettingsHeader,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
                child: Stack(
              children: [
                ListView(
                  padding: const EdgeInsets.only(top: 15),
                  children: [
                    Container(
                      margin: const EdgeInsetsDirectional.only(
                        start: 30,
                        bottom: 10,
                      ),
                      child: Text(
                        l10n.preferences,
                        style: styles.textStyleAppTextFieldHint,
                      ),
                    ),
                    // Authentication Method
                    if (_hasBiometrics) ...[
                      Divider(height: 2, color: theme.text15),
                      DoubleLineItem(
                        heading: l10n.authMethod,
                        defaultMethod: _curAuthMethod,
                        icon: AppIcons.fingerprint,
                        onPressed: _authMethodDialog,
                      ),
                    ],
                    // Authenticate on Launch
                    if (encryptedSecret == null) ...[
                      Divider(height: 2, color: theme.text15),
                      DoubleLineItem(
                        heading: l10n.lockAppSetting,
                        defaultMethod: _curUnlockSetting,
                        icon: AppIcons.lock,
                        onPressed: _lockDialog,
                      ),
                    ],
                    // Authentication Timer
                    Divider(height: 2, color: theme.text15),
                    DoubleLineItem(
                      heading: l10n.autoLockHeader,
                      defaultMethod: _curTimeoutSetting,
                      icon: AppIcons.timer,
                      onPressed: _lockTimeoutDialog,
                      disabled: _curUnlockSetting.setting == UnlockOption.NO &&
                          encryptedSecret == null,
                    ),
                    // Encrypt option
                    if (encryptedSecret == null) ...[
                      Divider(height: 2, color: theme.text15),
                      SingleLineItem(
                        heading: l10n.setWalletPassword,
                        settingIcon: AppIcons.walletpassword,
                        onPressed: () {
                          Sheets.showAppHeightNineSheet(
                            context: context,
                            widget: const SetPasswordSheet(),
                            theme: ref.read(themeProvider),
                          );
                        },
                      ),
                    ] else ...[
                      Divider(height: 2, color: theme.text15),
                      SingleLineItem(
                        heading: l10n.disableWalletPassword,
                        settingIcon: AppIcons.walletpassworddisabled,
                        onPressed: () {
                          Sheets.showAppHeightNineSheet(
                            context: context,
                            widget: const DisablePasswordSheet(),
                            theme: ref.read(themeProvider),
                          );
                        },
                      ),
                    ],
                    Divider(height: 2, color: theme.text15),
                  ],
                ),
                const ListTopGradient(),
              ],
            )),
          ],
        ),
      ),
    );
  }

  Future<void> _authMethodDialog() async {
    final theme = ref.read(themeProvider);
    final styles = ref.read(stylesProvider);
    final l10n = ref.read(l10nProvider);
    final sharedPrefsUtil = ref.read(sharedPrefsUtilProvider);

    switch (await showDialog<AuthMethod>(
        context: context,
        barrierColor: theme.barrier,
        builder: (BuildContext context) {
          return AppSimpleDialog(
            title: Text(
              l10n.authMethod,
              style: styles.textStyleDialogHeader,
            ),
            children: [
              AppSimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, AuthMethod.BIOMETRICS);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    l10n.biometricsMethod,
                    style: styles.textStyleDialogOptions,
                  ),
                ),
              ),
              AppSimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, AuthMethod.PIN);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    l10n.pinMethod,
                    style: styles.textStyleDialogOptions,
                  ),
                ),
              ),
            ],
          );
        })) {
      case AuthMethod.PIN:
        sharedPrefsUtil
            .setAuthMethod(AuthenticationMethod(AuthMethod.PIN))
            .then((result) {
          setState(() {
            _curAuthMethod = AuthenticationMethod(AuthMethod.PIN);
          });
        });
        break;
      case AuthMethod.BIOMETRICS:
        sharedPrefsUtil
            .setAuthMethod(AuthenticationMethod(AuthMethod.BIOMETRICS))
            .then((result) {
          setState(() {
            _curAuthMethod = AuthenticationMethod(AuthMethod.BIOMETRICS);
          });
        });
        break;
      default:
        break;
    }
  }

  Future<void> _lockDialog() async {
    final theme = ref.read(themeProvider);
    final styles = ref.read(stylesProvider);
    final l10n = ref.read(l10nProvider);
    final sharedPrefsUtil = ref.read(sharedPrefsUtilProvider);

    switch (await showDialog<UnlockOption>(
        context: context,
        barrierColor: theme.barrier,
        builder: (BuildContext context) {
          return AppSimpleDialog(
            title: Text(
              l10n.lockAppSetting,
              style: styles.textStyleDialogHeader,
            ),
            children: [
              AppSimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, UnlockOption.NO);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    l10n.no,
                    style: styles.textStyleDialogOptions,
                  ),
                ),
              ),
              AppSimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, UnlockOption.YES);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    l10n.yes,
                    style: styles.textStyleDialogOptions,
                  ),
                ),
              ),
            ],
          );
        })) {
      case UnlockOption.YES:
        sharedPrefsUtil.setLock(true).then((result) {
          setState(() {
            _curUnlockSetting = UnlockSetting(UnlockOption.YES);
          });
        });
        break;
      case UnlockOption.NO:
        sharedPrefsUtil.setLock(false).then((result) {
          setState(() {
            _curUnlockSetting = UnlockSetting(UnlockOption.NO);
          });
        });
        break;
      default:
        break;
    }
  }

  List<Widget> _buildLockTimeoutOptions() {
    return LockTimeoutOption.values.map((LockTimeoutOption value) {
      return SimpleDialogOption(
        onPressed: () {
          Navigator.pop(context, value);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            LockTimeoutSetting(value).getDisplayName(ref),
            style: ref.read(stylesProvider).textStyleDialogOptions,
          ),
        ),
      );
    }).toList();
  }

  Future<void> _lockTimeoutDialog() async {
    LockTimeoutOption? selection = await showAppDialog<LockTimeoutOption>(
        context: context,
        builder: (BuildContext context) {
          return AppSimpleDialog(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                ref.read(l10nProvider).autoLockHeader,
                style: ref.read(stylesProvider).textStyleDialogHeader,
              ),
            ),
            children: _buildLockTimeoutOptions(),
          );
        });
    if (selection == null) {
      return;
    }
    final sharedPrefsUtil = ref.read(sharedPrefsUtilProvider);
    sharedPrefsUtil
        .setLockTimeout(LockTimeoutSetting(selection))
        .then((result) {
      if (_curTimeoutSetting.setting != selection) {
        sharedPrefsUtil.setLockTimeout(LockTimeoutSetting(selection)).then((_) {
          setState(() {
            _curTimeoutSetting = LockTimeoutSetting(selection);
          });
        });
      }
    });
  }
}
