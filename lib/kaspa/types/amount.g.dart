// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AmountImpl _$$AmountImplFromJson(Map json) => _$AmountImpl(
      raw: BigInt.parse(json['raw'] as String),
      tokenInfo: TokenInfo.fromJson(
          Map<String, dynamic>.from(json['tokenInfo'] as Map)),
    );

Map<String, dynamic> _$$AmountImplToJson(_$AmountImpl instance) =>
    <String, dynamic>{
      'raw': instance.raw.toString(),
      'tokenInfo': instance.tokenInfo.toJson(),
    };
