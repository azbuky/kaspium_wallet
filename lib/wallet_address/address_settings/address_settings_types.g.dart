// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_settings_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddressSettings _$$_AddressSettingsFromJson(Map json) => _$_AddressSettings(
      addressFilter:
          $enumDecodeNullable(_$AddressFilterEnumMap, json['addressFilter']) ??
              AddressFilter.all,
    );

Map<String, dynamic> _$$_AddressSettingsToJson(_$_AddressSettings instance) =>
    <String, dynamic>{
      'addressFilter': _$AddressFilterEnumMap[instance.addressFilter]!,
    };

const _$AddressFilterEnumMap = {
  AddressFilter.all: 'all',
  AddressFilter.nonZero: 'nonZero',
};
