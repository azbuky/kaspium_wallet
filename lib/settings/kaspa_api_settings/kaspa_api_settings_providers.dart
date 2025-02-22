import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/core_providers.dart';
import '../settings_providers.dart';
import 'kaspa_api_settings_notifier.dart';
import 'kaspa_api_settings_types.dart';

final kaspaApiSettingsProvider =
    StateNotifierProvider<KaspaApiSettingsNotifier, KaspaApiSettings>((ref) {
  final repository = ref.watch(settingsRepositoryProvider);
  return KaspaApiSettingsNotifier(repository);
});

final kaspaApiDefaultUrlProvider = Provider.autoDispose((ref) {
  final networkId = ref.watch(networkIdProvider);

  final apiUrl = KaspaApiSettings.defaultApiUrlForNetworkId(networkId);

  return apiUrl;
});

final kaspaApiUrlProvider = Provider.autoDispose((ref) {
  final settings = ref.watch(kaspaApiSettingsProvider);
  final networkId = ref.watch(networkIdProvider);

  final apiUrl = settings.apiUrlForNetworkId(networkId);

  return apiUrl;
});

final kaspaApiUserSetUrlProvider = Provider.autoDispose((ref) {
  final defaultApiUrl = ref.watch(kaspaApiDefaultUrlProvider);
  final apiUrl = ref.watch(kaspaApiUrlProvider);

  return apiUrl == defaultApiUrl ? '' : apiUrl;
});
