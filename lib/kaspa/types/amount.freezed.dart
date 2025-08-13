// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'amount.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Amount {

 dynamic get value; BigInt get raw; TokenInfo get tokenInfo;
/// Create a copy of Amount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AmountCopyWith<Amount> get copyWith => _$AmountCopyWithImpl<Amount>(this as Amount, _$identity);

  /// Serializes this Amount to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Amount&&const DeepCollectionEquality().equals(other.value, value)&&(identical(other.raw, raw) || other.raw == raw)&&(identical(other.tokenInfo, tokenInfo) || other.tokenInfo == tokenInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(value),raw,tokenInfo);



}

/// @nodoc
abstract mixin class $AmountCopyWith<$Res>  {
  factory $AmountCopyWith(Amount value, $Res Function(Amount) _then) = _$AmountCopyWithImpl;
@useResult
$Res call({
 BigInt raw, TokenInfo tokenInfo
});


$TokenInfoCopyWith<$Res> get tokenInfo;

}
/// @nodoc
class _$AmountCopyWithImpl<$Res>
    implements $AmountCopyWith<$Res> {
  _$AmountCopyWithImpl(this._self, this._then);

  final Amount _self;
  final $Res Function(Amount) _then;

/// Create a copy of Amount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? raw = null,Object? tokenInfo = null,}) {
  return _then(_self.copyWith(
raw: null == raw ? _self.raw : raw // ignore: cast_nullable_to_non_nullable
as BigInt,tokenInfo: null == tokenInfo ? _self.tokenInfo : tokenInfo // ignore: cast_nullable_to_non_nullable
as TokenInfo,
  ));
}
/// Create a copy of Amount
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TokenInfoCopyWith<$Res> get tokenInfo {
  
  return $TokenInfoCopyWith<$Res>(_self.tokenInfo, (value) {
    return _then(_self.copyWith(tokenInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [Amount].
extension AmountPatterns on Amount {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Amount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Amount() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Amount value)  $default,){
final _that = this;
switch (_that) {
case _Amount():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Amount value)?  $default,){
final _that = this;
switch (_that) {
case _Amount() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BigInt raw,  TokenInfo tokenInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Amount() when $default != null:
return $default(_that.raw,_that.tokenInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BigInt raw,  TokenInfo tokenInfo)  $default,) {final _that = this;
switch (_that) {
case _Amount():
return $default(_that.raw,_that.tokenInfo);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BigInt raw,  TokenInfo tokenInfo)?  $default,) {final _that = this;
switch (_that) {
case _Amount() when $default != null:
return $default(_that.raw,_that.tokenInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Amount extends Amount {
   _Amount({required this.raw, required this.tokenInfo}): super._();
  factory _Amount.fromJson(Map<String, dynamic> json) => _$AmountFromJson(json);

@override final  BigInt raw;
@override final  TokenInfo tokenInfo;

/// Create a copy of Amount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AmountCopyWith<_Amount> get copyWith => __$AmountCopyWithImpl<_Amount>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AmountToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Amount&&(identical(other.raw, raw) || other.raw == raw)&&(identical(other.tokenInfo, tokenInfo) || other.tokenInfo == tokenInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,raw,tokenInfo);



}

/// @nodoc
abstract mixin class _$AmountCopyWith<$Res> implements $AmountCopyWith<$Res> {
  factory _$AmountCopyWith(_Amount value, $Res Function(_Amount) _then) = __$AmountCopyWithImpl;
@override @useResult
$Res call({
 BigInt raw, TokenInfo tokenInfo
});


@override $TokenInfoCopyWith<$Res> get tokenInfo;

}
/// @nodoc
class __$AmountCopyWithImpl<$Res>
    implements _$AmountCopyWith<$Res> {
  __$AmountCopyWithImpl(this._self, this._then);

  final _Amount _self;
  final $Res Function(_Amount) _then;

/// Create a copy of Amount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? raw = null,Object? tokenInfo = null,}) {
  return _then(_Amount(
raw: null == raw ? _self.raw : raw // ignore: cast_nullable_to_non_nullable
as BigInt,tokenInfo: null == tokenInfo ? _self.tokenInfo : tokenInfo // ignore: cast_nullable_to_non_nullable
as TokenInfo,
  ));
}

/// Create a copy of Amount
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TokenInfoCopyWith<$Res> get tokenInfo {
  
  return $TokenInfoCopyWith<$Res>(_self.tokenInfo, (value) {
    return _then(_self.copyWith(tokenInfo: value));
  });
}
}

// dart format on
