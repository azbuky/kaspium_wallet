// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Amount _$$_AmountFromJson(Map json) => _$_Amount(
      raw: BigInt.parse(json['raw'] as String),
      tokenInfo: TokenInfo.fromJson(
          Map<String, dynamic>.from(json['tokenInfo'] as Map)),
    );

Map<String, dynamic> _$$_AmountToJson(_$_Amount instance) => <String, dynamic>{
      'raw': instance.raw.toString(),
      'tokenInfo': instance.tokenInfo.toJson(),
    };
