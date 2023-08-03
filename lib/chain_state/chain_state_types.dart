import 'package:freezed_annotation/freezed_annotation.dart';

part 'chain_state_types.freezed.dart';
part 'chain_state_types.g.dart';

@freezed
class ChainState with _$ChainState {
  const factory ChainState({
    required BigInt virtualDaaScore,
    required BigInt virtualSelectedParentBlueScore,
  }) = _ChainState;

  factory ChainState.fromJson(Map<String, dynamic> json) =>
      _$ChainStateFromJson(json);

  static ChainState empty = ChainState(
    virtualDaaScore: BigInt.zero,
    virtualSelectedParentBlueScore: BigInt.zero,
  );
}
