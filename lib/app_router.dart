import 'package:flutter/material.dart';

import 'screens/screens.dart';
import 'util/routes.dart';

final appRouter = AppRouter();

class _AppScreens {
  static const splash = '/';
  static const intro = '/intro';
  static const wallet = '/wallet';
  static const locked = '/locked';
  static const lockedWithTransition = '/locked_with_transition';
  static const passwordLocked = '/password_locked';
  static const logout = '/logout';
  static const setupWallet = '/setup_wallet';
}

class AppRouter {
  void reload(BuildContext context) =>
      _replaceWith(_AppScreens.splash, context);

  void startIntro(BuildContext context) =>
      _replaceWith(_AppScreens.intro, context);

  void setupWallet(BuildContext context) =>
      _replaceWith(_AppScreens.setupWallet, context);

  void requireUnlock(BuildContext context) =>
      _replaceWith(_AppScreens.locked, context);

  void lockoutkWithTransition(BuildContext context) =>
      _replaceWith(_AppScreens.lockedWithTransition, context);

  void requirePassword(BuildContext context) =>
      _replaceWith(_AppScreens.passwordLocked, context);

  void openWallet(BuildContext context) =>
      _replaceWith(_AppScreens.wallet, context);

  void logout(BuildContext context) =>
      _replaceWith(_AppScreens.logout, context);

  bool isTopRoute<T>(BuildContext context) {
    bool isTopRoute = false;
    Navigator.of(context).popUntil((route) {
      isTopRoute = route is T;
      return true;
    });
    return isTopRoute;
  }

  Future<T?> _replaceWith<T>(String screenName, BuildContext context) {
    return Navigator.of(context).pushNamedAndRemoveUntil(
      screenName,
      (_) => false,
    );
  }

  Future<T?> push<T>(BuildContext context, Route<T> route) {
    return Navigator.of(context).push(route);
  }

  void pop<T>(BuildContext context, {T? withResult = null}) {
    Navigator.of(context).pop(withResult);
  }

  Future<T?> pushAndRemoveUntilHome<T>(BuildContext context, Route<T> route) {
    return Navigator.of(context).pushAndRemoveUntil(
      route,
      RouteUtils.withNameLike(_AppScreens.wallet),
    );
  }

  String initialRoute = _AppScreens.splash;

  RouteFactory onGenerateRoute = (RouteSettings settings) {
    switch (settings.name) {
      case _AppScreens.intro:
        return NoTransitionRoute(
          builder: (_) => const IntroScreen(),
          settings: settings,
        );
      case _AppScreens.wallet:
        return NoTransitionRoute(
          builder: (_) => const HomeScreen(),
          settings: settings,
        );
      case _AppScreens.locked:
        return BarrierRoute(
          builder: (_) => const LockScreen(),
          settings: settings,
        );
      case _AppScreens.lockedWithTransition:
        return BarrierRoute(
          builder: (_) => const LockScreen(),
          settings: settings,
        );
      case _AppScreens.passwordLocked:
        return NoTransitionRoute(
          builder: (_) => const PasswordLockScreen(),
          settings: settings,
        );
      case _AppScreens.logout:
        return NoTransitionRoute(
          builder: (_) => const LogoutScreen(),
          settings: settings,
        );
      case _AppScreens.setupWallet:
        return NoTransitionRoute(
          builder: (_) => const SetupWalletScreen(),
          settings: settings,
        );
      default:
        return NoTransitionRoute(
          builder: (_) => const SplashScreen(),
          settings: settings,
        );
    }
  };
}
