import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../settings/settings_providers.dart';
import 'tx_settings_notifier.dart';
import 'tx_settings_types.dart';

final txSettingsProvider =
    StateNotifierProvider<TxSettingsStateNotifier, TxSettings>((ref) {
  final repository = ref.watch(settingsRepositoryProvider);

  return TxSettingsStateNotifier(repository);
});

final txFilterProvider = Provider.autoDispose((ref) {
  final settings = ref.watch(txSettingsProvider);
  return settings.txFilter;
});
