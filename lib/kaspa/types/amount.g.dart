// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Amount _$AmountFromJson(Map json) => _Amount(
  raw: BigInt.parse(json['raw'] as String),
  tokenInfo: TokenInfo.fromJson(
    Map<String, dynamic>.from(json['tokenInfo'] as Map),
  ),
);

Map<String, dynamic> _$AmountToJson(_Amount instance) => <String, dynamic>{
  'raw': instance.raw.toString(),
  'tokenInfo': instance.tokenInfo.toJson(),
};
