// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_balance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddressBalance _$AddressBalanceFromJson(Map json) => _AddressBalance(
  address: json['address'] as String,
  balance: BigInt.parse(json['balance'] as String),
);

Map<String, dynamic> _$AddressBalanceToJson(_AddressBalance instance) =>
    <String, dynamic>{
      'address': instance.address,
      'balance': instance.balance.toString(),
    };
