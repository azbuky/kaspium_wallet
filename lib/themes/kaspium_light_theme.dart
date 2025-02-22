import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'base_theme.dart';

class KaspiumLightTheme extends BaseTheme {
  //static const deepBlue = Color(0xFF009688);
  static const deepBlue = Color(0xFF6FC0B3);

  //static const green = Color(0xFF009688);
  static const green = Color(0xFF6FC0B3);

  //static const greenLight = Color(0xFF9EEDD4);
  static const greenLight = Color(0xFF6FC0B3);

  static const white = Color(0xFFFFFFFF);

  static const whiteishDark = Color(0xFFE8F0FA);

  static const grey = Color(0xFF454868);

  static const black = Color(0xFF000000);

  static const darkDeepBlue = Color(0xFF009688);

  bool isLightTheme = true;

  Color primary = deepBlue;
  Color primary60 = deepBlue.withValues(alpha: 0.9);
  Color primary45 = deepBlue.withValues(alpha: 0.8);
  Color primary30 = deepBlue.withValues(alpha: 0.6);
  Color primary20 = deepBlue.withValues(alpha: 0.45);
  Color primary15 = deepBlue.withValues(alpha: 0.3);
  Color primary10 = deepBlue.withValues(alpha: 0.2);

  Color success = green;
  Color success60 = green.withValues(alpha: 0.6);
  Color success30 = green.withValues(alpha: 0.3);
  Color success15 = green.withValues(alpha: 0.15);

  Color successDark = greenLight;
  Color successDark30 = greenLight.withValues(alpha: 0.3);

  Color background = white;
  Color background40 = white.withValues(alpha: 0.4);
  Color background00 = white.withValues(alpha: 0.0);

  Color backgroundDark = white;
  Color backgroundDark00 = white.withValues(alpha: 0.0);

  Color backgroundDarkest = whiteishDark;

  Color text = grey.withValues(alpha: 0.9);
  Color text60 = grey.withValues(alpha: 0.6);
  Color text45 = grey.withValues(alpha: 0.45);
  Color text30 = grey.withValues(alpha: 0.3);
  Color text20 = grey.withValues(alpha: 0.2);
  Color text15 = grey.withValues(alpha: 0.15);
  Color text10 = grey.withValues(alpha: 0.1);
  Color text05 = grey.withValues(alpha: 0.05);
  Color text03 = grey.withValues(alpha: 0.03);

  Color overlay90 = black.withValues(alpha: 0.9);
  Color overlay85 = black.withValues(alpha: 0.85);
  Color overlay80 = black.withValues(alpha: 0.8);
  Color overlay70 = black.withValues(alpha: 0.70);
  Color overlay50 = black.withValues(alpha: 0.5);
  Color overlay30 = black.withValues(alpha: 0.3);
  Color overlay20 = black.withValues(alpha: 0.2);

  Color barrier = black.withValues(alpha: 0.7);
  Color barrierWeaker = black.withValues(alpha: 0.4);
  Color barrierWeakest = black.withValues(alpha: 0.3);
  Color barrierStronger = black.withValues(alpha: 0.85);

  Color animationOverlayMedium = white.withValues(alpha: 0.7);
  Color animationOverlayStrong = white.withValues(alpha: 0.85);

  //Brightness brightness = Brightness.light;
  SystemUiOverlayStyle systemOverlayStyle = SystemUiOverlayStyle.dark;
  SystemUiOverlayStyle statusBar =
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent);

  BoxShadow boxShadow = BoxShadow(
    color: darkDeepBlue.withValues(alpha: 0.1),
    offset: Offset(0, 3),
    blurRadius: 15,
  );
  BoxShadow boxShadowButton = BoxShadow(
    color: darkDeepBlue.withValues(alpha: 0.2),
    offset: Offset(0, 3),
    blurRadius: 15,
  );
}
