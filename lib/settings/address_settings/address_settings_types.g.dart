// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_settings_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressSettingsImpl _$$AddressSettingsImplFromJson(Map json) =>
    _$AddressSettingsImpl(
      addressFilter:
          $enumDecodeNullable(_$AddressFilterEnumMap, json['addressFilter']) ??
              AddressFilter.all,
    );

Map<String, dynamic> _$$AddressSettingsImplToJson(
        _$AddressSettingsImpl instance) =>
    <String, dynamic>{
      'addressFilter': _$AddressFilterEnumMap[instance.addressFilter]!,
    };

const _$AddressFilterEnumMap = {
  AddressFilter.all: 'all',
  AddressFilter.nonZero: 'nonZero',
};
