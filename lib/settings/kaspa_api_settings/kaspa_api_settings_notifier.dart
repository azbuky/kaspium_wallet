import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../settings_repository.dart';
import 'kaspa_api_settings_types.dart';

const kKaspaApiSettingsKey = '_kKaspaApiSettingsKey';

extension KaspaApiSettingsExtension on SettingsRepository {
  KaspaApiSettings getKaspaApiSettings() {
    return box.tryGet<KaspaApiSettings>(kKaspaApiSettingsKey,
            typeFactory: KaspaApiSettings.fromJson) ??
        const KaspaApiSettings();
  }

  Future<void> setKaspaApiSettings(KaspaApiSettings settings) {
    return box.set(kKaspaApiSettingsKey, settings);
  }
}

class KaspaApiSettingsNotifier extends StateNotifier<KaspaApiSettings> {
  final SettingsRepository repository;
  KaspaApiSettingsNotifier(this.repository)
      : super(repository.getKaspaApiSettings());

  Future<void> setApiUrl(
    String apiUrl, {
    required String networkId,
  }) async {
    if (state.apiUrlForNetworkId(networkId) == apiUrl) {
      return;
    }

    final apiUrlByNetworkId = {
      ...state.apiUrlByNetworkId,
      networkId: apiUrl,
    };

    if (apiUrl.isEmpty) {
      apiUrlByNetworkId.remove(networkId);
    }

    final settings = state.copyWith(apiUrlByNetworkId: apiUrlByNetworkId);

    await repository.setKaspaApiSettings(settings);
    state = settings;
  }
}
