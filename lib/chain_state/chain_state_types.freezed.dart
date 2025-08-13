// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chain_state_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChainState {

 BigInt get virtualDaaScore; BigInt get virtualSelectedParentBlueScore;
/// Create a copy of ChainState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChainStateCopyWith<ChainState> get copyWith => _$ChainStateCopyWithImpl<ChainState>(this as ChainState, _$identity);

  /// Serializes this ChainState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChainState&&(identical(other.virtualDaaScore, virtualDaaScore) || other.virtualDaaScore == virtualDaaScore)&&(identical(other.virtualSelectedParentBlueScore, virtualSelectedParentBlueScore) || other.virtualSelectedParentBlueScore == virtualSelectedParentBlueScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,virtualDaaScore,virtualSelectedParentBlueScore);

@override
String toString() {
  return 'ChainState(virtualDaaScore: $virtualDaaScore, virtualSelectedParentBlueScore: $virtualSelectedParentBlueScore)';
}


}

/// @nodoc
abstract mixin class $ChainStateCopyWith<$Res>  {
  factory $ChainStateCopyWith(ChainState value, $Res Function(ChainState) _then) = _$ChainStateCopyWithImpl;
@useResult
$Res call({
 BigInt virtualDaaScore, BigInt virtualSelectedParentBlueScore
});




}
/// @nodoc
class _$ChainStateCopyWithImpl<$Res>
    implements $ChainStateCopyWith<$Res> {
  _$ChainStateCopyWithImpl(this._self, this._then);

  final ChainState _self;
  final $Res Function(ChainState) _then;

/// Create a copy of ChainState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? virtualDaaScore = null,Object? virtualSelectedParentBlueScore = null,}) {
  return _then(_self.copyWith(
virtualDaaScore: null == virtualDaaScore ? _self.virtualDaaScore : virtualDaaScore // ignore: cast_nullable_to_non_nullable
as BigInt,virtualSelectedParentBlueScore: null == virtualSelectedParentBlueScore ? _self.virtualSelectedParentBlueScore : virtualSelectedParentBlueScore // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}

}


/// Adds pattern-matching-related methods to [ChainState].
extension ChainStatePatterns on ChainState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChainState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChainState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChainState value)  $default,){
final _that = this;
switch (_that) {
case _ChainState():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChainState value)?  $default,){
final _that = this;
switch (_that) {
case _ChainState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BigInt virtualDaaScore,  BigInt virtualSelectedParentBlueScore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChainState() when $default != null:
return $default(_that.virtualDaaScore,_that.virtualSelectedParentBlueScore);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BigInt virtualDaaScore,  BigInt virtualSelectedParentBlueScore)  $default,) {final _that = this;
switch (_that) {
case _ChainState():
return $default(_that.virtualDaaScore,_that.virtualSelectedParentBlueScore);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BigInt virtualDaaScore,  BigInt virtualSelectedParentBlueScore)?  $default,) {final _that = this;
switch (_that) {
case _ChainState() when $default != null:
return $default(_that.virtualDaaScore,_that.virtualSelectedParentBlueScore);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChainState implements ChainState {
  const _ChainState({required this.virtualDaaScore, required this.virtualSelectedParentBlueScore});
  factory _ChainState.fromJson(Map<String, dynamic> json) => _$ChainStateFromJson(json);

@override final  BigInt virtualDaaScore;
@override final  BigInt virtualSelectedParentBlueScore;

/// Create a copy of ChainState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChainStateCopyWith<_ChainState> get copyWith => __$ChainStateCopyWithImpl<_ChainState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChainStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChainState&&(identical(other.virtualDaaScore, virtualDaaScore) || other.virtualDaaScore == virtualDaaScore)&&(identical(other.virtualSelectedParentBlueScore, virtualSelectedParentBlueScore) || other.virtualSelectedParentBlueScore == virtualSelectedParentBlueScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,virtualDaaScore,virtualSelectedParentBlueScore);

@override
String toString() {
  return 'ChainState(virtualDaaScore: $virtualDaaScore, virtualSelectedParentBlueScore: $virtualSelectedParentBlueScore)';
}


}

/// @nodoc
abstract mixin class _$ChainStateCopyWith<$Res> implements $ChainStateCopyWith<$Res> {
  factory _$ChainStateCopyWith(_ChainState value, $Res Function(_ChainState) _then) = __$ChainStateCopyWithImpl;
@override @useResult
$Res call({
 BigInt virtualDaaScore, BigInt virtualSelectedParentBlueScore
});




}
/// @nodoc
class __$ChainStateCopyWithImpl<$Res>
    implements _$ChainStateCopyWith<$Res> {
  __$ChainStateCopyWithImpl(this._self, this._then);

  final _ChainState _self;
  final $Res Function(_ChainState) _then;

/// Create a copy of ChainState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? virtualDaaScore = null,Object? virtualSelectedParentBlueScore = null,}) {
  return _then(_ChainState(
virtualDaaScore: null == virtualDaaScore ? _self.virtualDaaScore : virtualDaaScore // ignore: cast_nullable_to_non_nullable
as BigInt,virtualSelectedParentBlueScore: null == virtualSelectedParentBlueScore ? _self.virtualSelectedParentBlueScore : virtualSelectedParentBlueScore // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}


}

// dart format on
