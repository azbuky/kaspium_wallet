import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/core_providers.dart';
import '../settings_providers.dart';
import 'kasplex_settings_notifier.dart';
import 'kasplex_settings_types.dart';

final kasplexSettingsProvider =
    StateNotifierProvider<KasplexSettingsNotifier, KasplexSettings>((ref) {
  final repository = ref.watch(settingsRepositoryProvider);
  return KasplexSettingsNotifier(repository);
});

final krc20EnabledProvider = Provider((ref) {
  final settings = ref.watch(kasplexSettingsProvider);
  return settings.krc20Enabled;
});

final krc20UserConfirmedProvider = Provider((ref) {
  final settings = ref.watch(kasplexSettingsProvider);
  return settings.userConfirmed;
});

final kasplexApiDefaultUrlProvider = Provider.autoDispose((ref) {
  final networkId = ref.watch(networkIdProvider);

  final apiUrl = KasplexSettings.defaultApiUrlForNetworkId(networkId);

  return apiUrl;
});

final kasplexApiUrlProvider = Provider.autoDispose((ref) {
  final settings = ref.watch(kasplexSettingsProvider);
  final networkId = ref.watch(networkIdProvider);

  final apiUrl = settings.apiUrlForNetworkId(networkId);

  return apiUrl;
});

final kasplexApiUserSetUrlProvider = Provider.autoDispose((ref) {
  final defaultApiUrl = ref.watch(kasplexApiDefaultUrlProvider);
  final apiUrl = ref.watch(kasplexApiUrlProvider);

  return apiUrl == defaultApiUrl ? '' : apiUrl;
});
