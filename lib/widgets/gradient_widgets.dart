import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';

class TopGradientWidget extends ConsumerWidget {
  const TopGradientWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 10,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [theme.background00, theme.background],
            begin: AlignmentDirectional(0.5, 1),
            end: AlignmentDirectional(0.5, -1),
          ),
        ),
      ),
    );
  }
}

class BottomGradientWidget extends ConsumerWidget {
  const BottomGradientWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 30,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [theme.background00, theme.background],
            begin: AlignmentDirectional(0.5, -1),
            end: AlignmentDirectional(0.5, 0.5),
          ),
        ),
      ),
    );
  }
}

// Used in accounts

class ListTopGradient extends ConsumerWidget {
  const ListTopGradient({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 20,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [theme.backgroundDark00, theme.backgroundDark],
            begin: const AlignmentDirectional(0.5, 1),
            end: const AlignmentDirectional(0.5, -1),
          ),
        ),
      ),
    );
  }
}

class ListBottomGradient extends ConsumerWidget {
  const ListBottomGradient({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 20,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [theme.backgroundDark, theme.backgroundDark00],
            begin: const AlignmentDirectional(0.5, 1),
            end: const AlignmentDirectional(0.5, -1),
          ),
        ),
      ),
    );
  }
}

// Used in contacts

class ContactListTopGradient extends ConsumerWidget {
  const ContactListTopGradient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 20,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional(0.5, -1),
            end: AlignmentDirectional(0.5, 1),
            colors: [theme.backgroundDark, theme.backgroundDark00],
          ),
        ),
      ),
    );
  }
}

class ContactListBottomGradient extends ConsumerWidget {
  const ContactListBottomGradient({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 15,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [theme.backgroundDark00, theme.backgroundDark],
            begin: AlignmentDirectional(0.5, -1),
            end: AlignmentDirectional(0.5, 1),
          ),
        ),
      ),
    );
  }
}
