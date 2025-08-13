// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chain_state_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChainState _$ChainStateFromJson(Map json) => _ChainState(
  virtualDaaScore: BigInt.parse(json['virtualDaaScore'] as String),
  virtualSelectedParentBlueScore: BigInt.parse(
    json['virtualSelectedParentBlueScore'] as String,
  ),
);

Map<String, dynamic> _$ChainStateToJson(_ChainState instance) =>
    <String, dynamic>{
      'virtualDaaScore': instance.virtualDaaScore.toString(),
      'virtualSelectedParentBlueScore': instance.virtualSelectedParentBlueScore
          .toString(),
    };
