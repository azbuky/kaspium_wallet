import '../settings/settings_repository.dart';
import 'chain_state_types.dart';

export 'chain_state_types.dart';

const kChainStateKey = '_kChainStateKey';

extension ChainStateExtension on SettingsRepository {
  ChainState getChainState() {
    return box.tryGet<ChainState>(
          kChainStateKey,
          typeFactory: ChainState.fromJson,
        ) ??
        ChainState.empty;
  }

  Future<void> setChainState(ChainState state) {
    return box.set(kChainStateKey, state);
  }
}
