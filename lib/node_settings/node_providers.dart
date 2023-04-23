import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../settings/settings_providers.dart';
import 'node_types.dart';

const kNodeConfigKey = '_kNodeConfigKeyV2';

extension NodeSettingsExtension on SettingsRepository {
  NodeConfigSettings getNodeConfigSettings() {
    return box.tryGet<NodeConfigSettings>(
          kNodeConfigKey,
          typeFactory: NodeConfigSettings.fromJson,
        ) ??
        const NodeConfigSettings();
  }

  Future<void> setNodeConfigSettings(NodeConfigSettings settings) {
    return box.set(kNodeConfigKey, settings);
  }
}

class NodeSettingsNotifier extends StateNotifier<NodeConfigSettings> {
  final SettingsRepository repository;

  NodeSettingsNotifier(this.repository)
      : super(repository.getNodeConfigSettings());

  Future<void> updateSelected(NodeConfig config) {
    state = state.copyWith(selected: config);
    return repository.setNodeConfigSettings(state);
  }

  Future<void> updateOptions(IList<NodeConfig> options) {
    state = state.copyWith(
      options: options,
    );
    return repository.setNodeConfigSettings(state);
  }

  Future<bool> addOption(NodeConfig config) async {
    if (state.options.contains(config)) {
      return false;
    }
    final options = state.options.add(config);
    await updateOptions(options);
    return true;
  }

  Future<bool> removeOption(NodeConfig config) async {
    if (config == state.selected) {
      return false;
    }
    final options = state.options.remove(config);
    await updateOptions(options);
    return true;
  }
}

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
