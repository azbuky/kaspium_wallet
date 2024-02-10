import 'dart:io' show Platform;

import 'package:flutter/foundation.dart' show kIsWeb;

const kPlatformIsWeb = kIsWeb;
final kPlatformIsAndroid = !kIsWeb && Platform.isAndroid;
final kPlatformIsIOS = !kIsWeb && Platform.isIOS;
final kPlatformIsMacOS = !kIsWeb && Platform.isMacOS;
