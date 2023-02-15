import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'base_theme.dart';

class IndiumTheme extends BaseTheme {
  static const deepBlue = Color(0xFF0050BB);

  static const green = Color(0xFF00A873);

  static const greenLight = Color(0xFF9EEDD4);

  static const white = Color(0xFFFFFFFF);

  static const whiteishDark = Color(0xFFE8F0FA);

  static const grey = Color(0xFF454868);

  static const black = Color(0xFF000000);

  static const darkDeepBlue = Color(0xFF0050BB);

  bool isLightTheme = true;

  Color primary = deepBlue;
  Color primary60 = deepBlue.withOpacity(0.6);
  Color primary45 = deepBlue.withOpacity(0.45);
  Color primary30 = deepBlue.withOpacity(0.3);
  Color primary20 = deepBlue.withOpacity(0.2);
  Color primary15 = deepBlue.withOpacity(0.15);
  Color primary10 = deepBlue.withOpacity(0.1);

  Color success = green;
  Color success60 = green.withOpacity(0.6);
  Color success30 = green.withOpacity(0.3);
  Color success15 = green.withOpacity(0.15);

  Color successDark = greenLight;
  Color successDark30 = greenLight.withOpacity(0.3);

  Color background = white;
  Color background40 = white.withOpacity(0.4);
  Color background00 = white.withOpacity(0.0);

  Color backgroundDark = white;
  Color backgroundDark00 = white.withOpacity(0.0);

  Color backgroundDarkest = whiteishDark;

  Color text = grey.withOpacity(0.9);
  Color text60 = grey.withOpacity(0.6);
  Color text45 = grey.withOpacity(0.45);
  Color text30 = grey.withOpacity(0.3);
  Color text20 = grey.withOpacity(0.2);
  Color text15 = grey.withOpacity(0.15);
  Color text10 = grey.withOpacity(0.1);
  Color text05 = grey.withOpacity(0.05);
  Color text03 = grey.withOpacity(0.03);

  Color overlay90 = black.withOpacity(0.9);
  Color overlay85 = black.withOpacity(0.85);
  Color overlay80 = black.withOpacity(0.8);
  Color overlay70 = black.withOpacity(0.70);
  Color overlay50 = black.withOpacity(0.5);
  Color overlay30 = black.withOpacity(0.3);
  Color overlay20 = black.withOpacity(0.2);

  Color barrier = black.withOpacity(0.7);
  Color barrierWeaker = black.withOpacity(0.4);
  Color barrierWeakest = black.withOpacity(0.3);
  Color barrierStronger = black.withOpacity(0.85);

  Color animationOverlayMedium = white.withOpacity(0.7);
  Color animationOverlayStrong = white.withOpacity(0.85);

  //Brightness brightness = Brightness.light;
  SystemUiOverlayStyle systemOverlayStyle = SystemUiOverlayStyle.dark;
  SystemUiOverlayStyle statusBar =
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent);

  BoxShadow boxShadow = BoxShadow(
    color: darkDeepBlue.withOpacity(0.1),
    offset: Offset(0, 5),
    blurRadius: 15,
  );
  BoxShadow boxShadowButton = BoxShadow(
    color: darkDeepBlue.withOpacity(0.2),
    offset: Offset(0, 5),
    blurRadius: 15,
  );
}
