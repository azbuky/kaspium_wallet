import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'intro_data_notifier.dart';
import 'intro_state_notifier.dart';
import 'intro_types.dart';

final introDataProvider =
    StateNotifierProvider<IntroDataNotifier, IntroData>((ref) {
  return IntroDataNotifier();
});

final introStateProvider =
    StateNotifierProvider.autoDispose<IntroStateNotifier, IntroState>((ref) {
  final introData = ref.watch(introDataProvider.notifier);
  return IntroStateNotifier(introData);
});

