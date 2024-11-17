import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/core_providers.dart';
import '../settings_providers.dart';
import 'block_explorer_notifier.dart';
import 'block_explorer_settings.dart';

final blockExplorerSettingsProvider =
    StateNotifierProvider<BlockExplorerNotifier, BlockExplorerSettings>((ref) {
  final repository = ref.watch(settingsRepositoryProvider);
  return BlockExplorerNotifier(repository);
});

final blockExplorerProvider = Provider((ref) {
  final settings = ref.watch(blockExplorerSettingsProvider);
  final networkId = ref.watch(networkIdProvider);
  return settings.explorerForNetwork(networkId);
});
