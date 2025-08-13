// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_settings_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WalletSettings _$WalletSettingsFromJson(Map json) => _WalletSettings(
  requestPassword:
      $enumDecodeNullable(_$RequestPasswordEnumMap, json['requestPassword']) ??
      RequestPassword.atLaunch,
);

Map<String, dynamic> _$WalletSettingsToJson(_WalletSettings instance) =>
    <String, dynamic>{
      'requestPassword': _$RequestPasswordEnumMap[instance.requestPassword]!,
    };

const _$RequestPasswordEnumMap = {
  RequestPassword.atLaunch: 'atLaunch',
  RequestPassword.whenLocked: 'whenLocked',
  RequestPassword.whenSigning: 'whenSigning',
};
