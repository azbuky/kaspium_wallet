import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'base_theme.dart';

class PilliumTheme extends BaseTheme {
  static const brightBlue = Color(0xffff6729);

  //static const green = Color(0xfffc865a);
  static const green = Color(0xfffdc453);

  //static const greenDark = Color(0xfffc865a);
  static const greenDark = Color(0xff2a2a2a);

  static const blueishGreyDark = Color(0xff1a1a1a);

  static const blueishGreyLight = Color(0xff2a2a2a);

  static const blueishGreyDarkest = Color(0xff1a1a1a);

  static const white = Color(0xffffffff);

  static const black = Color(0xff000000);

  bool isLightTheme = false;

  Color primary = brightBlue;
  Color primary60 = brightBlue.withOpacity(0.6);
  Color primary45 = brightBlue.withOpacity(0.45);
  Color primary30 = brightBlue.withOpacity(0.3);
  Color primary20 = brightBlue.withOpacity(0.2);
  Color primary15 = brightBlue.withOpacity(0.15);
  Color primary10 = brightBlue.withOpacity(0.1);

  Color success = green;
  Color success60 = green.withOpacity(0.6);
  Color success30 = green.withOpacity(0.3);
  Color success15 = green.withOpacity(0.15);

  Color successDark = greenDark;
  Color successDark30 = greenDark.withOpacity(0.3);

  Color background = blueishGreyDark;
  Color background40 = blueishGreyDark.withOpacity(0.4);
  Color background00 = blueishGreyDark.withOpacity(0.0);

  Color backgroundDark = blueishGreyLight;
  Color backgroundDark00 = blueishGreyLight.withOpacity(0.0);

  Color backgroundDarkest = blueishGreyDarkest;

  Color text = white.withOpacity(0.9);
  Color text60 = white.withOpacity(0.6);
  Color text45 = white.withOpacity(0.45);
  Color text30 = white.withOpacity(0.3);
  Color text20 = white.withOpacity(0.2);
  Color text15 = white.withOpacity(0.15);
  Color text10 = white.withOpacity(0.1);
  Color text05 = white.withOpacity(0.05);
  Color text03 = white.withOpacity(0.03);

  Color overlay20 = black.withOpacity(0.2);
  Color overlay30 = black.withOpacity(0.3);
  Color overlay50 = black.withOpacity(0.5);
  Color overlay70 = black.withOpacity(0.7);
  Color overlay80 = black.withOpacity(0.8);
  Color overlay85 = black.withOpacity(0.85);
  Color overlay90 = black.withOpacity(0.9);

  Color barrier = black.withOpacity(0.7);
  Color barrierWeaker = black.withOpacity(0.4);
  Color barrierWeakest = black.withOpacity(0.3);
  Color barrierStronger = black.withOpacity(0.85);

  Color animationOverlayMedium = black.withOpacity(0.7);
  Color animationOverlayStrong = black.withOpacity(0.85);

  //Brightness brightness = Brightness.dark;
  SystemUiOverlayStyle systemOverlayStyle = SystemUiOverlayStyle.light;
  SystemUiOverlayStyle statusBar =
      SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.transparent);

  BoxShadow boxShadow = BoxShadow(color: Colors.transparent);
  BoxShadow boxShadowButton = BoxShadow(color: Colors.transparent);
}
