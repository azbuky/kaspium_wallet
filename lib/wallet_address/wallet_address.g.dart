// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletAddressImpl _$$WalletAddressImplFromJson(Map json) =>
    _$WalletAddressImpl(
      index: json['index'] as int,
      type: $enumDecode(_$AddressTypeEnumMap, json['type']),
      name: json['name'] as String,
      address: Address.fromJson(json['address'] as String),
      used: json['used'] as bool? ?? true,
    );

Map<String, dynamic> _$$WalletAddressImplToJson(_$WalletAddressImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'type': _$AddressTypeEnumMap[instance.type]!,
      'name': instance.name,
      'address': instance.address.toJson(),
      'used': instance.used,
    };

const _$AddressTypeEnumMap = {
  AddressType.receive: 0,
  AddressType.change: 1,
};
