// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dotk_settings_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DotkSettings _$DotkSettingsFromJson(Map json) => _DotkSettings(
  enabled: json['enabled'] as bool? ?? true,
  apiUrlByNetworkId:
      (json['apiUrlByNetworkId'] as Map?)?.map(
        (k, e) => MapEntry(k as String, e as String),
      ) ??
      const {},
);

Map<String, dynamic> _$DotkSettingsToJson(_DotkSettings instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'apiUrlByNetworkId': instance.apiUrlByNetworkId,
    };
