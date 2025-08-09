import 'package:flutter/material.dart';

/// NoTransitionRoute
/// Custom route which has no transitions
class NoTransitionRoute<T> extends MaterialPageRoute<T> {
  NoTransitionRoute({
    required WidgetBuilder builder,
    RouteSettings? settings,
  }) : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return child;
  }
}

/// NoPushTransitionRoute
/// Custom route which has no transition when pushed, but has a pop animation
class NoPushTransitionRoute<T> extends MaterialPageRoute<T> {
  NoPushTransitionRoute({
    required WidgetBuilder builder,
    RouteSettings? settings,
  }) : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    // is popping
    if (animation.status == AnimationStatus.reverse) {
      return super.buildTransitions(
        context,
        animation,
        secondaryAnimation,
        child,
      );
    }
    return child;
  }
}

/// NoPopTransitionRoute
/// Custom route which has no transition when popped, but has a push animation
class NoPopTransitionRoute<T> extends MaterialPageRoute<T> {
  NoPopTransitionRoute({
    required WidgetBuilder builder,
    RouteSettings? settings,
  }) : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    // is pushing
    if (animation.status == AnimationStatus.forward) {
      return super.buildTransitions(
        context,
        animation,
        secondaryAnimation,
        child,
      );
    }
    return child;
  }
}

// Used for lock screen
class BarrierRoute<T> extends NoTransitionRoute<T> {
  BarrierRoute({required super.builder, super.settings});

  @override
  RoutePopDisposition get popDisposition => RoutePopDisposition.bubble;

  @override
  bool get barrierDismissible => false;
}

class RouteUtils {
  static RoutePredicate withNameLike(String name) {
    return (Route<dynamic> route) {
      if (route.settings.name != null &&
          route.settings.name!.contains('/home')) {}

      final result = route.willHandlePopInternally ||
          (route is ModalRoute &&
              route.settings.name != null &&
              route.settings.name!.contains(name));

      return result;
    };
  }
}
