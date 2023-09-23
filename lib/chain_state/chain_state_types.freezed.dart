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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_ChainStateCopyWith<$Res>
    implements $ChainStateCopyWith<$Res> {
  factory _$$_ChainStateCopyWith(
          _$_ChainState value, $Res Function(_$_ChainState) then) =
      __$$_ChainStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BigInt virtualDaaScore, BigInt virtualSelectedParentBlueScore});
}

/// @nodoc
class __$$_ChainStateCopyWithImpl<$Res>
    extends _$ChainStateCopyWithImpl<$Res, _$_ChainState>
    implements _$$_ChainStateCopyWith<$Res> {
  __$$_ChainStateCopyWithImpl(
      _$_ChainState _value, $Res Function(_$_ChainState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? virtualDaaScore = null,
    Object? virtualSelectedParentBlueScore = null,
  }) {
    return _then(_$_ChainState(
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
class _$_ChainState implements _ChainState {
  const _$_ChainState(
      {required this.virtualDaaScore,
      required this.virtualSelectedParentBlueScore});

  factory _$_ChainState.fromJson(Map<String, dynamic> json) =>
      _$$_ChainStateFromJson(json);

  @override
  final BigInt virtualDaaScore;
  @override
  final BigInt virtualSelectedParentBlueScore;

  @override
  String toString() {
    return 'ChainState(virtualDaaScore: $virtualDaaScore, virtualSelectedParentBlueScore: $virtualSelectedParentBlueScore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChainState &&
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
  _$$_ChainStateCopyWith<_$_ChainState> get copyWith =>
      __$$_ChainStateCopyWithImpl<_$_ChainState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChainStateToJson(
      this,
    );
  }
}

abstract class _ChainState implements ChainState {
  const factory _ChainState(
      {required final BigInt virtualDaaScore,
      required final BigInt virtualSelectedParentBlueScore}) = _$_ChainState;

  factory _ChainState.fromJson(Map<String, dynamic> json) =
      _$_ChainState.fromJson;

  @override
  BigInt get virtualDaaScore;
  @override
  BigInt get virtualSelectedParentBlueScore;
  @override
  @JsonKey(ignore: true)
  _$$_ChainStateCopyWith<_$_ChainState> get copyWith =>
      throw _privateConstructorUsedError;
}
