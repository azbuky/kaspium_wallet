import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'base_theme.dart';

class TitaniumTheme extends BaseTheme {
  static const blueishGreen = Color(0xFF61C6AD);

  static const green = Color(0xFFB5ED88);

  static const greenDark = Color(0xFF5F893D);

  static const tealDark = Color(0xFF041920);

  static const tealLight = Color(0xFF052029);

  static const tealDarkest = Color(0xFF041920);

  static const white = Color(0xFFFFFFFF);

  static const black = Color(0xFF000000);

  bool isLightTheme = false;

  Color primary = blueishGreen;
  Color primary60 = blueishGreen.withOpacity(0.6);
  Color primary45 = blueishGreen.withOpacity(0.45);
  Color primary30 = blueishGreen.withOpacity(0.3);
  Color primary20 = blueishGreen.withOpacity(0.2);
  Color primary15 = blueishGreen.withOpacity(0.15);
  Color primary10 = blueishGreen.withOpacity(0.1);

  Color success = green;
  Color success60 = green.withOpacity(0.6);
  Color success30 = green.withOpacity(0.3);
  Color success15 = green.withOpacity(0.15);

  Color successDark = greenDark;
  Color successDark30 = greenDark.withOpacity(0.3);

  Color background = tealDark;
  Color background40 = tealDark.withOpacity(0.4);
  Color background00 = tealDark.withOpacity(0.0);

  Color backgroundDark = tealLight;
  Color backgroundDark00 = tealLight.withOpacity(0.0);

  Color backgroundDarkest = tealDarkest;

  Color text = white.withOpacity(0.9);
  Color text60 = white.withOpacity(0.6);
  Color text45 = white.withOpacity(0.45);
  Color text30 = white.withOpacity(0.3);
  Color text20 = white.withOpacity(0.2);
  Color text15 = white.withOpacity(0.15);
  Color text10 = white.withOpacity(0.1);
  Color text05 = white.withOpacity(0.05);
  Color text03 = white.withOpacity(0.03);

  Color overlay90 = black.withOpacity(0.9);
  Color overlay85 = black.withOpacity(0.85);
  Color overlay80 = black.withOpacity(0.8);
  Color overlay70 = black.withOpacity(0.7);
  Color overlay50 = black.withOpacity(0.5);
  Color overlay30 = black.withOpacity(0.3);
  Color overlay20 = black.withOpacity(0.2);

  Color barrier = black.withOpacity(0.7);
  Color barrierWeaker = black.withOpacity(0.4);
  Color barrierWeakest = black.withOpacity(0.3);
  Color barrierStronger = black.withOpacity(0.85);

  Color animationOverlayMedium = black.withOpacity(0.7);
  Color animationOverlayStrong = black.withOpacity(0.85);

  //Brightness brightness = Brightness.dark;
  SystemUiOverlayStyle systemOverlayStyle = SystemUiOverlayStyle.dark;
  SystemUiOverlayStyle statusBar =
      SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.transparent);

  BoxShadow boxShadow = BoxShadow(color: Colors.transparent);
  BoxShadow boxShadowButton = BoxShadow(color: Colors.transparent);
}
