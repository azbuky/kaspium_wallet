import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../settings_repository.dart';
import 'dotk_settings_types.dart';

const kDotkSettingsKey = '_kDotkSettingsKey';

extension DotkSettingsExtension on SettingsRepository {
  DotkSettings getDotkSettings() {
    return box.tryGet<DotkSettings>(
          kDotkSettingsKey,
          typeFactory: DotkSettings.fromJson,
        ) ??
        const DotkSettings();
  }

  Future<void> setDotkSettings(DotkSettings settings) {
    return box.set(kDotkSettingsKey, settings);
  }
}

class DotkSettingsNotifier extends StateNotifier<DotkSettings> {
  final SettingsRepository repository;

  DotkSettingsNotifier(this.repository) : super(repository.getDotkSettings());

  Future<void> setEnabled(bool enabled) async {
    final settings = state.copyWith(enabled: enabled);
    await repository.setDotkSettings(settings);
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

    await repository.setDotkSettings(settings);
    state = settings;
  }
}
