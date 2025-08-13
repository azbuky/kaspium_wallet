// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TokenInfo _$TokenInfoFromJson(Map json) => _TokenInfo(
  tokenId: json['tokenId'] as String,
  decimals: (json['decimals'] as num).toInt(),
);

Map<String, dynamic> _$TokenInfoToJson(_TokenInfo instance) =>
    <String, dynamic>{
      'tokenId': instance.tokenId,
      'decimals': instance.decimals,
    };
