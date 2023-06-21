import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_info.freezed.dart';
part 'token_info.g.dart';

@freezed
class TokenInfo with _$TokenInfo {
  const TokenInfo._();
  const factory TokenInfo({
    required String tokenId,
    required int decimals,
  }) = _TokenInfo;

  static const TokenInfo kaspa = TokenInfo(tokenId: 'KAS', decimals: 8);

  factory TokenInfo.fromJson(Map<String, dynamic> json) =>
      _$TokenInfoFromJson(json);

  String get symbolLabel => tokenId;
}
