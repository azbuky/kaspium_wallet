// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_balance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddressBalance _$$_AddressBalanceFromJson(Map json) => _$_AddressBalance(
      address: json['address'] as String,
      balance: BigInt.parse(json['balance'] as String),
    );

Map<String, dynamic> _$$_AddressBalanceToJson(_$_AddressBalance instance) =>
    <String, dynamic>{
      'address': instance.address,
      'balance': instance.balance.toString(),
    };
