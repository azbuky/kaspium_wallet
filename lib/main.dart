import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app.dart';
import 'app_providers.dart';
import 'database/database.dart';
import 'util/platform.dart';
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
  if (kInDebugMode) {
    Logger.level = Level.debug;
    //debugRepaintRainbowEnabled = true;
  } else {
    Logger.level = Level.off;
  }

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

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
