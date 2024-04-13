import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../settings/settings_providers.dart';
import 'tx_settings_types.dart';

const kTxSettingsKey = '_kTxSettingsKey';

extension TxSettingsExtension on SettingsRepository {
  TxSettings getTxSettings() {
    return box.tryGet<TxSettings>(
          kTxSettingsKey,
          typeFactory: TxSettings.fromJson,
        ) ??
        const TxSettings();
  }

  Future<void> setTxSettings(TxSettings settings) {
    return box.set(kTxSettingsKey, settings);
  }
}

class TxSettingsStateNotifier extends StateNotifier<TxSettings> {
  final SettingsRepository repository;

  TxSettingsStateNotifier(this.repository) : super(repository.getTxSettings());

  Future<void> setTxFilter(TxFilter filter) async {
    final settings = state.copyWith(txFilter: filter);
    await repository.setTxSettings(settings);
    state = settings;
  }
}
