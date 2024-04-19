// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tx_settings_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TxSettingsImpl _$$TxSettingsImplFromJson(Map json) => _$TxSettingsImpl(
      txFilter: $enumDecodeNullable(_$TxFilterEnumMap, json['txFilter']) ??
          TxFilter.all,
    );

Map<String, dynamic> _$$TxSettingsImplToJson(_$TxSettingsImpl instance) =>
    <String, dynamic>{
      'txFilter': _$TxFilterEnumMap[instance.txFilter]!,
    };

const _$TxFilterEnumMap = {
  TxFilter.all: 'all',
  TxFilter.hideNotAcceptedCoinbase: 'hideNotAcceptedCoinbase',
};
