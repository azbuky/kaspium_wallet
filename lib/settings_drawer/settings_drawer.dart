import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_plus/share_plus.dart';

import '../app_constants.dart';
import '../app_icons.dart';
import '../app_providers.dart';
import '../app_router.dart';
import '../contacts/contacts_widget.dart';
import '../kaspa/kaspa.dart';
import '../l10n/l10n.dart';
import '../settings/available_currency.dart';
import '../settings/available_language.dart';
import '../settings/available_themes.dart';
import '../settings/setting_item.dart';
import '../settings_advanced/advanced_menu.dart';
import '../util/platform.dart';
import '../util/ui_util.dart';
import '../util/util.dart';
import '../widgets/app_simpledialog.dart';
import '../widgets/dialog.dart';
import '../widgets/gradient_widgets.dart';
import '../widgets/sheet_util.dart';
import 'accounts_area.dart';
import 'currency_dialog.dart';
import 'donate_menu.dart';
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

  late final AnimationController _donateController;
  late final Animation<Offset> _donateOffsetFloat;

  bool _securityOpen = false;
  bool _contactsOpen = false;
  bool _networkOpen = false;
  bool _advancedOpen = false;
  bool _donateOpen = false;

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
    // For donate menu
    _donateController = AnimationController(
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
    _donateOffsetFloat = Tween<Offset>(
      begin: beginOffset,
      end: endOffset,
    ).animate(_donateController);
  }

  @override
  void dispose() {
    _contactsController.dispose();
    _securityController.dispose();
    _networkController.dispose();
    _advancedController.dispose();
    _donateController.dispose();

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

  void _onBackButtonPressed(bool didPop) {
    if (_contactsOpen) {
      setState(() => _contactsOpen = false);
      _contactsController.reverse();
    } else if (_securityOpen) {
      setState(() => _securityOpen = false);
      _securityController.reverse();
    } else if (_networkOpen) {
      setState(() => _networkOpen = false);
      _networkController.reverse();
    } else if (_advancedOpen) {
      setState(() => _advancedOpen = false);
      _advancedController.reverse();
    } else if (_donateOpen) {
      setState(() => _donateOpen = false);
      _donateController.reverse();
    } else if (!didPop) {
      appRouter.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    // Drawer in flutter doesn't have a built-in way to push/pop elements
    // on top of it like our Android counterpart. So we can override back button
    // presses and replace the main settings widget with contacts based on a bool
    return PopScope(
      canPop: false,
      onPopInvoked: _onBackButtonPressed,
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
          SlideTransition(
            position: _donateOffsetFloat,
            child: DonateMenu(onBackAction: () {
              setState(() => _donateOpen = false);
              _donateController.reverse();
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

      final canDonate = !kPlatformIsIOS &&
          network == KaspaNetwork.mainnet &&
          !wallet.isViewOnly;

      Future<void> backupSecretPhrase() async {
        final authUtil = ref.read(authUtilProvider);

        final mnemonic = await authUtil.getMnemonic(context);
        if (mnemonic == null) {
          return;
        }
        if (mnemonic.isEmpty) {
          UIUtil.showSnackbar(l10n.missingSecretPhrase, context);
          return;
        }

        Sheets.showAppHeightNineSheet(
          context: context,
          theme: theme,
          widget: SeedBackupSheet(mnemonic: mnemonic),
        );
      }

      void contactSupport() =>
          openUrl('mailto:$kSupportEmail?subject=Kaspium support');

      void share() {
        Share.share(
          l10n.shareKaspiumText,
          subject: l10n.shareKaspiumSubject,
        );
      }

      void logout() {
        AppDialogs.showConfirmDialog(
          context,
          l10n.areYouSure,
          l10n.logoutDialogContent,
          l10n.yesUppercase,
          () => appRouter.logout(context),
        );
      }

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
                          icon: Icons.translate,
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
                        iconSize: 30,
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
                          onPressed: backupSecretPhrase,
                        ),
                      ],
                      // if (network == KaspaNetwork.mainnet) ...[
                      //   Divider(height: 2, color: theme.text15),
                      //   DoubleLineItem(
                      //     heading: l10n.buyKaspaTitle,
                      //     defaultMethod: BuySettingItem(),
                      //     icon: Icons.currency_exchange,
                      //     onPressed: () {
                      //       Sheets.showAppHeightNineSheet(
                      //         context: context,
                      //         theme: theme,
                      //         widget: const BuySheet(),
                      //       );
                      //     },
                      //   ),
                      // ],
                      if (canDonate) ...[
                        Divider(height: 2, color: theme.text15),
                        SingleLineItem(
                          heading: l10n.donate,
                          settingIcon: Icons.handshake_rounded,
                          onPressed: () {
                            setState(() => _donateOpen = true);
                            _donateController.forward();
                          },
                        ),
                      ],
                      Divider(height: 2, color: theme.text15),
                      DoubleLineItem(
                        heading: l10n.contactSupport,
                        defaultMethod: const ContactSupportItem(
                          email: kSupportEmail,
                        ),
                        icon: Icons.email,
                        onPressed: contactSupport,
                      ),
                      Divider(height: 2, color: theme.text15),
                      SingleLineItem(
                        heading: l10n.shareKaspium,
                        settingIcon: AppIcons.share,
                        onPressed: share,
                      ),
                      Divider(height: 2, color: theme.text15),
                      SingleLineItem(
                        heading: l10n.logoutOrSwitchWallet,
                        settingIcon: AppIcons.logout,
                        onPressed: logout,
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
