// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_discovery_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ScanIndexes {

 int? get start; int? get scanned; int? get last;
/// Create a copy of ScanIndexes
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScanIndexesCopyWith<ScanIndexes> get copyWith => _$ScanIndexesCopyWithImpl<ScanIndexes>(this as ScanIndexes, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScanIndexes&&(identical(other.start, start) || other.start == start)&&(identical(other.scanned, scanned) || other.scanned == scanned)&&(identical(other.last, last) || other.last == last));
}


@override
int get hashCode => Object.hash(runtimeType,start,scanned,last);

@override
String toString() {
  return 'ScanIndexes(start: $start, scanned: $scanned, last: $last)';
}


}

/// @nodoc
abstract mixin class $ScanIndexesCopyWith<$Res>  {
  factory $ScanIndexesCopyWith(ScanIndexes value, $Res Function(ScanIndexes) _then) = _$ScanIndexesCopyWithImpl;
@useResult
$Res call({
 int? start, int? scanned, int? last
});




}
/// @nodoc
class _$ScanIndexesCopyWithImpl<$Res>
    implements $ScanIndexesCopyWith<$Res> {
  _$ScanIndexesCopyWithImpl(this._self, this._then);

  final ScanIndexes _self;
  final $Res Function(ScanIndexes) _then;

/// Create a copy of ScanIndexes
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? start = freezed,Object? scanned = freezed,Object? last = freezed,}) {
  return _then(_self.copyWith(
start: freezed == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as int?,scanned: freezed == scanned ? _self.scanned : scanned // ignore: cast_nullable_to_non_nullable
as int?,last: freezed == last ? _self.last : last // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ScanIndexes].
extension ScanIndexesPatterns on ScanIndexes {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScanIndexes value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScanIndexes() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScanIndexes value)  $default,){
final _that = this;
switch (_that) {
case _ScanIndexes():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScanIndexes value)?  $default,){
final _that = this;
switch (_that) {
case _ScanIndexes() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? start,  int? scanned,  int? last)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScanIndexes() when $default != null:
return $default(_that.start,_that.scanned,_that.last);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? start,  int? scanned,  int? last)  $default,) {final _that = this;
switch (_that) {
case _ScanIndexes():
return $default(_that.start,_that.scanned,_that.last);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? start,  int? scanned,  int? last)?  $default,) {final _that = this;
switch (_that) {
case _ScanIndexes() when $default != null:
return $default(_that.start,_that.scanned,_that.last);case _:
  return null;

}
}

}

/// @nodoc


class _ScanIndexes extends ScanIndexes {
  const _ScanIndexes({this.start, this.scanned, this.last}): super._();
  

@override final  int? start;
@override final  int? scanned;
@override final  int? last;

/// Create a copy of ScanIndexes
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScanIndexesCopyWith<_ScanIndexes> get copyWith => __$ScanIndexesCopyWithImpl<_ScanIndexes>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScanIndexes&&(identical(other.start, start) || other.start == start)&&(identical(other.scanned, scanned) || other.scanned == scanned)&&(identical(other.last, last) || other.last == last));
}


@override
int get hashCode => Object.hash(runtimeType,start,scanned,last);

@override
String toString() {
  return 'ScanIndexes(start: $start, scanned: $scanned, last: $last)';
}


}

/// @nodoc
abstract mixin class _$ScanIndexesCopyWith<$Res> implements $ScanIndexesCopyWith<$Res> {
  factory _$ScanIndexesCopyWith(_ScanIndexes value, $Res Function(_ScanIndexes) _then) = __$ScanIndexesCopyWithImpl;
@override @useResult
$Res call({
 int? start, int? scanned, int? last
});




}
/// @nodoc
class __$ScanIndexesCopyWithImpl<$Res>
    implements _$ScanIndexesCopyWith<$Res> {
  __$ScanIndexesCopyWithImpl(this._self, this._then);

  final _ScanIndexes _self;
  final $Res Function(_ScanIndexes) _then;

/// Create a copy of ScanIndexes
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? start = freezed,Object? scanned = freezed,Object? last = freezed,}) {
  return _then(_ScanIndexes(
start: freezed == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as int?,scanned: freezed == scanned ? _self.scanned : scanned // ignore: cast_nullable_to_non_nullable
as int?,last: freezed == last ? _self.last : last // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
