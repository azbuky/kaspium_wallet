import 'dart:io' show Platform;

import 'package:flutter/foundation.dart' show kIsWeb, kDebugMode;

const kInDebugMode = kDebugMode;
const kPlatformIsWeb = kIsWeb;
final kPlatformIsAndroid = !kIsWeb && Platform.isAndroid;
final kPlatformIsIOS = !kIsWeb && Platform.isIOS;
final kPlatformIsMacOS = !kIsWeb && Platform.isMacOS;
