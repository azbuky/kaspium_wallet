import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

abstract class BaseTheme {
  Color get primary;
  Color get primary60;
  Color get primary45;
  Color get primary30;
  Color get primary20;
  Color get primary15;
  Color get primary10;

  Color get success;
  Color get success60;
  Color get success30;
  Color get success15;
  Color get successDark;
  Color get successDark30;

  Color get background;
  Color get background40;
  Color get background00;

  Color get backgroundDark;
  Color get backgroundDark00;

  Color get backgroundDarkest;

  Color get text;
  Color get text60;
  Color get text45;
  Color get text30;
  Color get text20;
  Color get text15;
  Color get text10;
  Color get text05;
  Color get text03;

  Color get overlay20;
  Color get overlay30;
  Color get overlay50;
  Color get overlay70;
  Color get overlay80;
  Color get overlay85;
  Color get overlay90;

  Color get barrier;
  Color get barrierWeaker;
  Color get barrierWeakest;
  Color get barrierStronger;

  Color get animationOverlayMedium;
  Color get animationOverlayStrong;

  SystemUiOverlayStyle get systemOverlayStyle;
  SystemUiOverlayStyle get statusBar;

  BoxShadow get boxShadow;
  BoxShadow get boxShadowButton;

  bool get isLightTheme;
}
