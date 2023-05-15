import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app.dart';
import 'app_providers.dart';
import 'database/database.dart';
import 'util/sharedprefsutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPrefs = await SharedPreferences.getInstance();
  final sharedPrefsUtil = SharedPrefsUtil(sharedPrefs);

  final theme = sharedPrefsUtil.getTheme().getTheme();
  SystemChrome.setSystemUIOverlayStyle(theme.statusBar);

  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: theme.backgroundDark,
      ),
    ),
  );

  // Setup logger
  if (kDebugMode) {
    Logger.level = Level.debug;
    //debugRepaintRainbowEnabled = true;
  } else {
    Logger.level = Level.nothing;
  }

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // TODO - enable on app store release
  // if (kPlatformIsIOS) {
  //   // iOS workaround for clearing keychain on first launch after an uninstall
  //   if (sharedPrefsUtil.getFirstLaunch()) {
  //     sharedPrefsUtil.setFirstLaunch();
  //     final vault = Vault();
  //     await vault.deleteAll();
  //   }
  // }

  // Init database
  await Database.init();

  runApp(
    ProviderScope(
      // observers: [
      //   const ProviderLogger(),
      // ],
      overrides: [
        sharedPrefsProvider.overrideWithValue(sharedPrefs),
      ],
      child: const App(),
    ),
  );
}
