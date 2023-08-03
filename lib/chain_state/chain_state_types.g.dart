// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chain_state_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChainState _$$_ChainStateFromJson(Map json) => _$_ChainState(
      virtualDaaScore: BigInt.parse(json['virtualDaaScore'] as String),
      virtualSelectedParentBlueScore:
          BigInt.parse(json['virtualSelectedParentBlueScore'] as String),
    );

Map<String, dynamic> _$$_ChainStateToJson(_$_ChainState instance) =>
    <String, dynamic>{
      'virtualDaaScore': instance.virtualDaaScore.toString(),
      'virtualSelectedParentBlueScore':
          instance.virtualSelectedParentBlueScore.toString(),
    };
