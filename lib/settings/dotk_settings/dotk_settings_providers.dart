import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/core_providers.dart';
import '../settings_providers.dart';
import 'dotk_settings_notifier.dart';
import 'dotk_settings_types.dart';

final dotkSettingsProvider = StateNotifierProvider((ref) {
  final repository = ref.watch(settingsRepositoryProvider);
  return DotkSettingsNotifier(repository);
});

final dotkEnabledProvider = Provider((ref) {
  final settings = ref.watch(dotkSettingsProvider);
  return settings.enabled;
});

final dotkApiDefaultUrlProvider = Provider.autoDispose((ref) {
  final networkId = ref.watch(networkIdProvider);

  final apiUrl = DotkSettings.defaultApiUrlForNetworkId(networkId);

  return apiUrl;
});

final dotkApiUrlProvider = Provider.autoDispose((ref) {
  final settings = ref.watch(dotkSettingsProvider);
  final networkId = ref.watch(networkIdProvider);

  final apiUrl = settings.apiUrlForNetworkId(networkId);

  return apiUrl;
});

final dotkApiUserSetUrlProvider = Provider.autoDispose((ref) {
  final defaultApiUrl = ref.watch(dotkApiDefaultUrlProvider);
  final apiUrl = ref.watch(dotkApiUrlProvider);

  return apiUrl == defaultApiUrl ? '' : apiUrl;
});
