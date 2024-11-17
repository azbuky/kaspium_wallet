import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../settings_providers.dart';
import 'node_settings_notifier.dart';
import 'node_types.dart';

final kaspaNodeSettingsProvider =
    StateNotifierProvider<NodeSettingsNotifier, NodeConfigSettings>((ref) {
  final repository = ref.watch(settingsRepositoryProvider);
  final notifier = NodeSettingsNotifier(repository);
  return notifier;
});

final kaspaNodeOptionsProvider = Provider((ref) {
  final settings = ref.watch(kaspaNodeSettingsProvider);
  return settings.options;
});

final kaspaNodeConfigProvider = Provider((ref) {
  final settings = ref.watch(kaspaNodeSettingsProvider);
  return ActiveNodeConfig(config: settings.selected);
});
