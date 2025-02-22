import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../settings_repository.dart';
import 'kasplex_settings_types.dart';

const kKasplexSettingsKey = '_kKasplexSettingsKey';

extension KasplexSettingsExtension on SettingsRepository {
  KasplexSettings getKasplexSettings() {
    return box.tryGet<KasplexSettings>(kKasplexSettingsKey,
            typeFactory: KasplexSettings.fromJson) ??
        const KasplexSettings();
  }

  Future<void> setKasplexSettings(KasplexSettings settings) {
    return box.set(kKasplexSettingsKey, settings);
  }
}

class KasplexSettingsNotifier extends StateNotifier<KasplexSettings> {
  final SettingsRepository repository;

  KasplexSettingsNotifier(this.repository)
      : super(repository.getKasplexSettings());

  Future<void> setKrc20Enabled(
    bool krc20Enabled, {
    bool userConfirmed = true,
  }) async {
    final settings = state.copyWith(
      krc20Enabled: krc20Enabled,
      userConfirmed: userConfirmed,
    );
    await repository.setKasplexSettings(settings);
    state = settings;
  }

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

    await repository.setKasplexSettings(settings);
    state = settings;
  }
}
