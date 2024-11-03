import 'package:app_links/app_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oktoast/oktoast.dart';

import 'app_constants.dart';
import 'app_providers.dart';
import 'app_router.dart';
import 'app_styles.dart';
import 'l10n/l10n.dart';
import 'screens/privacy_screen.dart';
import 'themes/themes.dart';
import 'util/platform.dart';

class App extends HookConsumerWidget {
  const App({Key? key}) : super(key: key);

  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final language = ref.watch(languageProvider);
    final styles = ref.watch(stylesProvider);

    ref.listen<BaseTheme>(themeProvider, (_, theme) {
      SystemChrome.setSystemUIOverlayStyle(theme.statusBar);
    });

    // Setup hight refresh rate on Android devices
    useEffect(() {
      if (kPlatformIsAndroid) {
        final log = ref.read(loggerProvider);
        Future.delayed(Duration.zero, () {
          try {
            FlutterDisplayMode.setHighRefreshRate();
          } catch (e) {
            log.e('Failed to set high refresh rate', error: e);
          }
        });
      }
      return null;
    }, const []);

    useEffect(() {
      final appLinks = AppLinks();
      final sub = appLinks.allStringLinkStream.listen((appLink) {
        ref.read(appLinkProvider.notifier).state = appLink;
      });
      return sub.cancel;
    }, const []);

    return Container(
      decoration: BoxDecoration(color: theme.backgroundDarkest),
      child: Center(
        child: Container(
          constraints: BoxConstraints(
            minWidth: 320,
            minHeight: 480,
            maxWidth: 720,
          ),
          child: PrivacyScreen(
            child: OKToast(
              position: ToastPosition(align: Alignment.topCenter, offset: 40),
              textStyle: styles.textStyleSnackbar,
              backgroundColor: theme.backgroundDark,
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                title: kWalletTitle,
                theme: ThemeData(
                  useMaterial3: false,
                  dialogBackgroundColor: theme.backgroundDark,
                  primaryColor: theme.primary,
                  fontFamily: kDefaultFontFamily,
                  brightness: Brightness.dark,
                  tooltipTheme: TooltipThemeData(
                    preferBelow: false,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                      color: theme.backgroundDarkest,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    textStyle: styles.textStyleAddressText60,
                  ),
                  colorScheme: ThemeData()
                      .colorScheme
                      .copyWith(
                        brightness: Brightness.dark,
                        secondary: theme.primary10,
                      )
                      .copyWith(surface: theme.backgroundDark),
                ),
                localizationsDelegates: AppLocalizations.localizationsDelegates,
                supportedLocales: AppLocalizations.supportedLocales,
                locale: language.getLocale(),
                initialRoute: appRouter.initialRoute,
                onGenerateRoute: appRouter.onGenerateRoute,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
