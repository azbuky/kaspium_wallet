// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kasplex_settings_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Krc20SettingsImpl _$$Krc20SettingsImplFromJson(Map json) =>
    _$Krc20SettingsImpl(
      krc20Enabled: json['krc20Enabled'] as bool? ?? false,
      userConfirmed: json['userConfirmed'] as bool? ?? false,
      apiUrlByNetworkId: (json['apiUrlByNetworkId'] as Map?)?.map(
            (k, e) => MapEntry(k as String, e as String),
          ) ??
          const {},
    );

Map<String, dynamic> _$$Krc20SettingsImplToJson(_$Krc20SettingsImpl instance) =>
    <String, dynamic>{
      'krc20Enabled': instance.krc20Enabled,
      'userConfirmed': instance.userConfirmed,
      'apiUrlByNetworkId': instance.apiUrlByNetworkId,
    };
