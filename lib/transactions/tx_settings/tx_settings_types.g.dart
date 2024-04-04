// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tx_settings_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TxSettings _$$_TxSettingsFromJson(Map json) => _$_TxSettings(
      txFilter: $enumDecodeNullable(_$TxFilterEnumMap, json['txFilter']) ??
          TxFilter.all,
    );

Map<String, dynamic> _$$_TxSettingsToJson(_$_TxSettings instance) =>
    <String, dynamic>{
      'txFilter': _$TxFilterEnumMap[instance.txFilter]!,
    };

const _$TxFilterEnumMap = {
  TxFilter.all: 'all',
  TxFilter.hideNotAcceptedCoinbase: 'hideNotAcceptedCoinbase',
};
