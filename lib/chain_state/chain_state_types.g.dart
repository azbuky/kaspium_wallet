// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chain_state_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChainStateImpl _$$ChainStateImplFromJson(Map json) => _$ChainStateImpl(
      virtualDaaScore: BigInt.parse(json['virtualDaaScore'] as String),
      virtualSelectedParentBlueScore:
          BigInt.parse(json['virtualSelectedParentBlueScore'] as String),
    );

Map<String, dynamic> _$$ChainStateImplToJson(_$ChainStateImpl instance) =>
    <String, dynamic>{
      'virtualDaaScore': instance.virtualDaaScore.toString(),
      'virtualSelectedParentBlueScore':
          instance.virtualSelectedParentBlueScore.toString(),
    };
