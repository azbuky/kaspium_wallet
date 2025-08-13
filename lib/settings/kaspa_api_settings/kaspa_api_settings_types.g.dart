// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kaspa_api_settings_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_KaspaApiSettings _$KaspaApiSettingsFromJson(Map json) => _KaspaApiSettings(
  apiUrlByNetworkId:
      (json['apiUrlByNetworkId'] as Map?)?.map(
        (k, e) => MapEntry(k as String, e as String),
      ) ??
      const {},
);

Map<String, dynamic> _$KaspaApiSettingsToJson(_KaspaApiSettings instance) =>
    <String, dynamic>{'apiUrlByNetworkId': instance.apiUrlByNetworkId};
