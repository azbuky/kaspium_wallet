// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokenInfo _$TokenInfoFromJson(Map<String, dynamic> json) {
  return _TokenInfo.fromJson(json);
}

/// @nodoc
mixin _$TokenInfo {
  String get tokenId => throw _privateConstructorUsedError;
  int get decimals => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenInfoCopyWith<TokenInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenInfoCopyWith<$Res> {
  factory $TokenInfoCopyWith(TokenInfo value, $Res Function(TokenInfo) then) =
      _$TokenInfoCopyWithImpl<$Res, TokenInfo>;
  @useResult
  $Res call({String tokenId, int decimals});
}

/// @nodoc
class _$TokenInfoCopyWithImpl<$Res, $Val extends TokenInfo>
    implements $TokenInfoCopyWith<$Res> {
  _$TokenInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenId = null,
    Object? decimals = null,
  }) {
    return _then(_value.copyWith(
      tokenId: null == tokenId
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as String,
      decimals: null == decimals
          ? _value.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenInfoImplCopyWith<$Res>
    implements $TokenInfoCopyWith<$Res> {
  factory _$$TokenInfoImplCopyWith(
          _$TokenInfoImpl value, $Res Function(_$TokenInfoImpl) then) =
      __$$TokenInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String tokenId, int decimals});
}

/// @nodoc
class __$$TokenInfoImplCopyWithImpl<$Res>
    extends _$TokenInfoCopyWithImpl<$Res, _$TokenInfoImpl>
    implements _$$TokenInfoImplCopyWith<$Res> {
  __$$TokenInfoImplCopyWithImpl(
      _$TokenInfoImpl _value, $Res Function(_$TokenInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenId = null,
    Object? decimals = null,
  }) {
    return _then(_$TokenInfoImpl(
      tokenId: null == tokenId
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as String,
      decimals: null == decimals
          ? _value.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenInfoImpl extends _TokenInfo {
  const _$TokenInfoImpl({required this.tokenId, required this.decimals})
      : super._();

  factory _$TokenInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenInfoImplFromJson(json);

  @override
  final String tokenId;
  @override
  final int decimals;

  @override
  String toString() {
    return 'TokenInfo(tokenId: $tokenId, decimals: $decimals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenInfoImpl &&
            (identical(other.tokenId, tokenId) || other.tokenId == tokenId) &&
            (identical(other.decimals, decimals) ||
                other.decimals == decimals));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tokenId, decimals);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenInfoImplCopyWith<_$TokenInfoImpl> get copyWith =>
      __$$TokenInfoImplCopyWithImpl<_$TokenInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenInfoImplToJson(
      this,
    );
  }
}

abstract class _TokenInfo extends TokenInfo {
  const factory _TokenInfo(
      {required final String tokenId,
      required final int decimals}) = _$TokenInfoImpl;
  const _TokenInfo._() : super._();

  factory _TokenInfo.fromJson(Map<String, dynamic> json) =
      _$TokenInfoImpl.fromJson;

  @override
  String get tokenId;
  @override
  int get decimals;
  @override
  @JsonKey(ignore: true)
  _$$TokenInfoImplCopyWith<_$TokenInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
