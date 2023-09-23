import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_plus/share_plus.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../contacts/contact_labels.dart';
import '../contacts/contacts_widget.dart';
import '../kaspa/kaspa.dart';
import '../l10n/l10n.dart';
import '../send_sheet/send_sheet.dart';
import '../settings/available_currency.dart';
import '../settings/available_language.dart';
import '../settings/available_themes.dart';
import '../settings/setting_item.dart';
import '../settings_advanced/advanced_menu.dart';
import '../util/platform.dart';
import '../widgets/app_simpledialog.dart';
import '../widgets/dialog.dart';
import '../widgets/gradient_widgets.dart';
import '../widgets/sheet_util.dart';
import 'accounts_area.dart';
import 'currency_dialog.dart';
import 'double_line_item.dart';
import 'language_dialog.dart';
import 'network_menu.dart';
import 'security_menu.dart';
import 'seed_backup_sheet.dart';
import 'single_line_item.dart';
import 'theme_dialog.dart';
import 'version_widget.dart';

class SettingsSheet extends ConsumerStatefulWidget {
  const SettingsSheet({Key? key}) : super(key: key);

  _SettingsSheetState createState() => _SettingsSheetState();
}

class _SettingsSheetState extends ConsumerState<SettingsSheet>
    with TickerProviderStateMixin {
  late final AnimationController _contactsController;
  late final Animation<Offset> _contactsOffsetFloat;

  late final AnimationController _securityController;
  late final Animation<Offset> _securityOffsetFloat;

  late final AnimationController _networkController;
  late final Animation<Offset> _networkOffsetFloat;

  late final AnimationController _advancedController;
  late final Animation<Offset> _advancedOffsetFloat;

  bool _securityOpen = false;
  bool _contactsOpen = false;
  bool _networkOpen = false;
  bool _advancedOpen = false;

  @override
  void initState() {
    super.initState();

    // Setup animation controller
    // For contacts menu
    _contactsController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 220),
    );
    // For security menu
    _securityController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 220),
    );
    // For network menu
    _networkController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 220),
    );
    // For advanced menu
    _advancedController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 220),
    );

    final beginOffset = const Offset(1.1, 0);
    final endOffset = const Offset(0, 0);
    _contactsOffsetFloat = Tween<Offset>(
      begin: beginOffset,
      end: endOffset,
    ).animate(_contactsController);
    _securityOffsetFloat = Tween<Offset>(
      begin: beginOffset,
      end: endOffset,
    ).animate(_securityController);
    _networkOffsetFloat = Tween<Offset>(
      begin: beginOffset,
      end: endOffset,
    ).animate(_networkController);
    _advancedOffsetFloat = Tween<Offset>(
      begin: beginOffset,
      end: endOffset,
    ).animate(_advancedController);
  }

  @override
  void dispose() {
    _contactsController.dispose();
    _securityController.dispose();
    _networkController.dispose();
    _advancedController.dispose();

    super.dispose();
  }

  Future<void> _showCurrencyDialog() async {
    final selection = await showAppDialog<AvailableCurrencies>(
      context: context,
      builder: (context) => const CurrencyDialog(),
    );
    if (selection != null) {
      final notifier = ref.read(currencyProvider.notifier);
      notifier.updateCurrency(AvailableCurrency(selection));
    }
  }

  Future<void> _showLanguageDialog() async {
    final selection = await showAppDialog<AvailableLanguage>(
      context: context,
      builder: (context) => const LanguageDialog(),
    );
    if (selection != null) {
      final notifier = ref.read(languageProvider.notifier);
      notifier.updateLanguage(LanguageSetting(selection));
    }
  }

  Future<void> _showThemeDialog() async {
    final selection = await showAppDialog<ThemeOptions>(
      context: context,
      builder: (context) => const ThemeDialog(),
    );
    if (selection != null) {
      final notifier = ref.read(themeSettingProvider.notifier);
      notifier.updateTheme(ThemeSetting(selection));
    }
  }

  Future<bool> _onBackButtonPressed() async {
    if (_contactsOpen) {
      setState(() => _contactsOpen = false);
      _contactsController.reverse();
      return false;
    } else if (_securityOpen) {
      setState(() => _securityOpen = false);
      _securityController.reverse();
      return false;
    } else if (_networkOpen) {
      setState(() => _networkOpen = false);
      _networkController.reverse();
      return false;
    } else if (_advancedOpen) {
      setState(() => _advancedOpen = false);
      _advancedController.reverse();
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    // Drawer in flutter doesn't have a built-in way to push/pop elements
    // on top of it like our Android counterpart. So we can override back button
    // presses and replace the main settings widget with contacts based on a bool
    return WillPopScope(
      onWillPop: _onBackButtonPressed,
      child: ClipRect(
        child: Stack(children: [
          Consumer(builder: (context, ref, _) {
            return Container(
              color: ref.watch(themeProvider).backgroundDark,
              constraints: BoxConstraints.expand(),
            );
          }),
          buildMainSettings(context),
          SlideTransition(
            position: _contactsOffsetFloat,
            child: ContactsWidget(onBackAction: () {
              setState(() => _contactsOpen = false);
              _contactsController.reverse();
            }),
          ),
          SlideTransition(
            position: _securityOffsetFloat,
            child: SecurityMenu(onBackAction: () {
              setState(() => _securityOpen = false);
              _securityController.reverse();
            }),
          ),
          SlideTransition(
            position: _networkOffsetFloat,
            child: NetworkMenu(onBackAction: () {
              setState(() => _networkOpen = false);
              _networkController.reverse();
            }),
          ),
          SlideTransition(
            position: _advancedOffsetFloat,
            child: AdvancedMenu(onBackAction: () {
              setState(() => _advancedOpen = false);
              _advancedController.reverse();
            }),
          ),
        ]),
      ),
    );
  }

  Widget buildMainSettings(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final theme = ref.watch(themeProvider);
      final styles = ref.watch(stylesProvider);
      final l10n = l10nOf(context);

      final network = ref.watch(networkProvider);
      final wallet = ref.watch(walletProvider);
      final hasMnemonic = ref.watch(walletHasMnemonic);

      return Container(
        decoration: BoxDecoration(color: theme.backgroundDark),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: const AccountsArea(),
              ),
              // Settings items
              Expanded(
                child: Stack(children: [
                  ListView(
                    primary: false,
                    padding: const EdgeInsets.only(top: 15),
                    children: [
                      Container(
                        margin:
                            EdgeInsetsDirectional.only(start: 30, bottom: 10),
                        child: Text(
                          l10n.preferences,
                          style: styles.textStyleAppTextFieldHint,
                        ),
                      ),
                      Divider(height: 2, color: theme.text15),
                      Consumer(builder: (context, ref, _) {
                        final currency = ref.watch(currencyProvider);
                        return DoubleLineItem(
                          heading: l10n.currency,
                          defaultMethod: currency,
                          icon: AppIcons.currency,
                          onPressed: _showCurrencyDialog,
                        );
                      }),
                      Divider(height: 2, color: theme.text15),
                      Consumer(builder: (context, ref, _) {
                        return DoubleLineItem(
                          heading: l10n.language,
                          defaultMethod: ref.watch(languageProvider),
                          icon: AppIcons.language,
                          onPressed: _showLanguageDialog,
                        );
                      }),
                      Divider(height: 2, color: theme.text15),
                      Consumer(builder: (context, ref, _) {
                        final themeSetting = ref.watch(themeSettingProvider);
                        return DoubleLineItem(
                          heading: l10n.themeHeader,
                          defaultMethod: themeSetting,
                          icon: AppIcons.theme,
                          onPressed: _showThemeDialog,
                        );
                      }),
                      Divider(height: 2, color: theme.text15),
                      SingleLineItem(
                        heading: l10n.securityHeader,
                        settingIcon: AppIcons.security,
                        onPressed: () {
                          setState(() => _securityOpen = true);
                          _securityController.forward();
                        },
                      ),
                      Divider(height: 2, color: theme.text15),
                      SingleLineItem(
                        heading: l10n.networkHeader,
                        settingIcon: Icons.language,
                        iconSize: 28,
                        onPressed: () {
                          setState(() => _networkOpen = true);
                          _networkController.forward();
                        },
                      ),
                      Divider(height: 2, color: theme.text15),
                      Container(
                        margin: const EdgeInsetsDirectional.only(
                          start: 30,
                          top: 20,
                          bottom: 10,
                        ),
                        child: Text(
                          l10n.manage,
                          style: styles.textStyleAppTextFieldHint,
                        ),
                      ),
                      Divider(height: 2, color: theme.text15),
                      SingleLineItem(
                        heading: l10n.contactsHeader,
                        settingIcon: AppIcons.contact,
                        onPressed: () {
                          setState(() => _contactsOpen = true);
                          _contactsController.forward();
                        },
                      ),
                      Divider(height: 2, color: theme.text15),
                      SingleLineItem(
                        heading: l10n.advancedHeader,
                        settingIcon: Icons.settings_applications,
                        onPressed: () {
                          setState(() => _advancedOpen = true);
                          _advancedController.forward();
                        },
                      ),
                      if (hasMnemonic.asData?.value == true) ...[
                        Divider(height: 2, color: theme.text15),
                        SingleLineItem(
                          heading: l10n.backupSecretPhrase,
                          settingIcon: AppIcons.backupseed,
                          onPressed: () async {
                            final authUtil = ref.read(authUtilProvider);
                            final walletAuth = ref.read(walletAuthProvider);
                            final notifier =
                                ref.read(walletAuthProvider.notifier);
                            var auth = false;
                            List<String>? mnemonic = null;
                            if (walletAuth.isEncrypted) {
                              final notifier =
                                  ref.read(walletAuthProvider.notifier);
                              auth = await authUtil.authenticateWithPassword(
                                  context, (password) async {
                                try {
                                  mnemonic = await notifier.getMnemonic(
                                      password: password);
                                  return true;
                                } catch (e) {
                                  return false;
                                }
                              });
                            } else {
                              auth = await authUtil.authenticate(
                                context,
                                l10n.pinSeedBackup,
                                l10n.fingerprintSeedBackup,
                              );
                            }
                            if (auth) {
                              if (mnemonic == null) {
                                mnemonic = await notifier.getMnemonic();
                              }
                              Sheets.showAppHeightNineSheet(
                                context: context,
                                theme: theme,
                                widget: SeedBackupSheet(mnemonic: mnemonic!),
                              );
                            }
                          },
                        ),
                      ],
                      if (!kPlatformIsIOS &&
                          network == KaspaNetwork.mainnet &&
                          !wallet.isViewOnly) ...[
                        Divider(height: 2, color: theme.text15),
                        DoubleLineItem(
                          heading: l10n.donate,
                          defaultMethod: DonateSettingItem(),
                          icon: Icons.handshake_rounded,
                          onPressed: () {
                            final uri = KaspaUri(
                              address:
                                  Address.decodeAddress(kKaspaDevFundAddress),
                            );
                            Sheets.showAppHeightNineSheet(
                              context: context,
                              theme: theme,
                              widget: SendSheet(
                                title: l10n.donate.toUpperCase(),
                                uri: uri,
                              ),
                            );
                          },
                        ),
                      ],
                      Divider(height: 2, color: theme.text15),
                      SingleLineItem(
                        heading: l10n.shareKaspium,
                        settingIcon: AppIcons.share,
                        onPressed: () {
                          Share.share(
                            l10n.shareKaspiumText,
                            subject: l10n.shareKaspiumSubject,
                          );
                        },
                      ),
                      Divider(height: 2, color: theme.text15),
                      SingleLineItem(
                        heading: l10n.logoutOrSwitchWallet,
                        settingIcon: AppIcons.logout,
                        onPressed: () {
                          AppDialogs.showConfirmDialog(
                            context,
                            l10n.areYouSure,
                            l10n.logoutDialogContent,
                            l10n.yesUppercase,
                            () {
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                '/logout',
                                (_) => false,
                              );
                            },
                          );
                        },
                      ),
                      Divider(height: 2, color: theme.text15),
                      const VersionWidget(),
                    ],
                  ),
                  const ListTopGradient()
                ]),
              ),
            ],
          ),
        ),
      );
    });
  }
}
