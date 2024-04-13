// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chain_state_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChainState _$ChainStateFromJson(Map<String, dynamic> json) {
  return _ChainState.fromJson(json);
}

/// @nodoc
mixin _$ChainState {
  BigInt get virtualDaaScore => throw _privateConstructorUsedError;
  BigInt get virtualSelectedParentBlueScore =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChainStateCopyWith<ChainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChainStateCopyWith<$Res> {
  factory $ChainStateCopyWith(
          ChainState value, $Res Function(ChainState) then) =
      _$ChainStateCopyWithImpl<$Res, ChainState>;
  @useResult
  $Res call({BigInt virtualDaaScore, BigInt virtualSelectedParentBlueScore});
}

/// @nodoc
class _$ChainStateCopyWithImpl<$Res, $Val extends ChainState>
    implements $ChainStateCopyWith<$Res> {
  _$ChainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? virtualDaaScore = null,
    Object? virtualSelectedParentBlueScore = null,
  }) {
    return _then(_value.copyWith(
      virtualDaaScore: null == virtualDaaScore
          ? _value.virtualDaaScore
          : virtualDaaScore // ignore: cast_nullable_to_non_nullable
              as BigInt,
      virtualSelectedParentBlueScore: null == virtualSelectedParentBlueScore
          ? _value.virtualSelectedParentBlueScore
          : virtualSelectedParentBlueScore // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChainStateImplCopyWith<$Res>
    implements $ChainStateCopyWith<$Res> {
  factory _$$ChainStateImplCopyWith(
          _$ChainStateImpl value, $Res Function(_$ChainStateImpl) then) =
      __$$ChainStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BigInt virtualDaaScore, BigInt virtualSelectedParentBlueScore});
}

/// @nodoc
class __$$ChainStateImplCopyWithImpl<$Res>
    extends _$ChainStateCopyWithImpl<$Res, _$ChainStateImpl>
    implements _$$ChainStateImplCopyWith<$Res> {
  __$$ChainStateImplCopyWithImpl(
      _$ChainStateImpl _value, $Res Function(_$ChainStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? virtualDaaScore = null,
    Object? virtualSelectedParentBlueScore = null,
  }) {
    return _then(_$ChainStateImpl(
      virtualDaaScore: null == virtualDaaScore
          ? _value.virtualDaaScore
          : virtualDaaScore // ignore: cast_nullable_to_non_nullable
              as BigInt,
      virtualSelectedParentBlueScore: null == virtualSelectedParentBlueScore
          ? _value.virtualSelectedParentBlueScore
          : virtualSelectedParentBlueScore // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChainStateImpl implements _ChainState {
  const _$ChainStateImpl(
      {required this.virtualDaaScore,
      required this.virtualSelectedParentBlueScore});

  factory _$ChainStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChainStateImplFromJson(json);

  @override
  final BigInt virtualDaaScore;
  @override
  final BigInt virtualSelectedParentBlueScore;

  @override
  String toString() {
    return 'ChainState(virtualDaaScore: $virtualDaaScore, virtualSelectedParentBlueScore: $virtualSelectedParentBlueScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChainStateImpl &&
            (identical(other.virtualDaaScore, virtualDaaScore) ||
                other.virtualDaaScore == virtualDaaScore) &&
            (identical(other.virtualSelectedParentBlueScore,
                    virtualSelectedParentBlueScore) ||
                other.virtualSelectedParentBlueScore ==
                    virtualSelectedParentBlueScore));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, virtualDaaScore, virtualSelectedParentBlueScore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChainStateImplCopyWith<_$ChainStateImpl> get copyWith =>
      __$$ChainStateImplCopyWithImpl<_$ChainStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChainStateImplToJson(
      this,
    );
  }
}

abstract class _ChainState implements ChainState {
  const factory _ChainState(
      {required final BigInt virtualDaaScore,
      required final BigInt virtualSelectedParentBlueScore}) = _$ChainStateImpl;

  factory _ChainState.fromJson(Map<String, dynamic> json) =
      _$ChainStateImpl.fromJson;

  @override
  BigInt get virtualDaaScore;
  @override
  BigInt get virtualSelectedParentBlueScore;
  @override
  @JsonKey(ignore: true)
  _$$ChainStateImplCopyWith<_$ChainStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
