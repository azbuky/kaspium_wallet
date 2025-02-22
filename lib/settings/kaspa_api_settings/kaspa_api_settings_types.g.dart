// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kaspa_api_settings_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KaspaApiSettingsImpl _$$KaspaApiSettingsImplFromJson(Map json) =>
    _$KaspaApiSettingsImpl(
      apiUrlByNetworkId: (json['apiUrlByNetworkId'] as Map?)?.map(
            (k, e) => MapEntry(k as String, e as String),
          ) ??
          const {},
    );

Map<String, dynamic> _$$KaspaApiSettingsImplToJson(
        _$KaspaApiSettingsImpl instance) =>
    <String, dynamic>{
      'apiUrlByNetworkId': instance.apiUrlByNetworkId,
    };
