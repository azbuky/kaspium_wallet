// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_balance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressBalanceImpl _$$AddressBalanceImplFromJson(Map json) =>
    _$AddressBalanceImpl(
      address: json['address'] as String,
      balance: BigInt.parse(json['balance'] as String),
    );

Map<String, dynamic> _$$AddressBalanceImplToJson(
        _$AddressBalanceImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'balance': instance.balance.toString(),
    };
