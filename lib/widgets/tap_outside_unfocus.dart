import 'package:flutter/material.dart';

class TapOutsideUnfocus extends StatelessWidget {
  final Widget child;

  const TapOutsideUnfocus({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      behavior: HitTestBehavior.translucent,
      child: child,
    );
  }
}
