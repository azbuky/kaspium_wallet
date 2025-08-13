// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tx_settings_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TxSettings {

 TxFilter get txFilter;
/// Create a copy of TxSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TxSettingsCopyWith<TxSettings> get copyWith => _$TxSettingsCopyWithImpl<TxSettings>(this as TxSettings, _$identity);

  /// Serializes this TxSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxSettings&&(identical(other.txFilter, txFilter) || other.txFilter == txFilter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,txFilter);

@override
String toString() {
  return 'TxSettings(txFilter: $txFilter)';
}


}

/// @nodoc
abstract mixin class $TxSettingsCopyWith<$Res>  {
  factory $TxSettingsCopyWith(TxSettings value, $Res Function(TxSettings) _then) = _$TxSettingsCopyWithImpl;
@useResult
$Res call({
 TxFilter txFilter
});




}
/// @nodoc
class _$TxSettingsCopyWithImpl<$Res>
    implements $TxSettingsCopyWith<$Res> {
  _$TxSettingsCopyWithImpl(this._self, this._then);

  final TxSettings _self;
  final $Res Function(TxSettings) _then;

/// Create a copy of TxSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? txFilter = null,}) {
  return _then(_self.copyWith(
txFilter: null == txFilter ? _self.txFilter : txFilter // ignore: cast_nullable_to_non_nullable
as TxFilter,
  ));
}

}


/// Adds pattern-matching-related methods to [TxSettings].
extension TxSettingsPatterns on TxSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TxSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TxSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TxSettings value)  $default,){
final _that = this;
switch (_that) {
case _TxSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TxSettings value)?  $default,){
final _that = this;
switch (_that) {
case _TxSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TxFilter txFilter)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TxSettings() when $default != null:
return $default(_that.txFilter);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TxFilter txFilter)  $default,) {final _that = this;
switch (_that) {
case _TxSettings():
return $default(_that.txFilter);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TxFilter txFilter)?  $default,) {final _that = this;
switch (_that) {
case _TxSettings() when $default != null:
return $default(_that.txFilter);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TxSettings implements TxSettings {
  const _TxSettings({this.txFilter = TxFilter.all});
  factory _TxSettings.fromJson(Map<String, dynamic> json) => _$TxSettingsFromJson(json);

@override@JsonKey() final  TxFilter txFilter;

/// Create a copy of TxSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TxSettingsCopyWith<_TxSettings> get copyWith => __$TxSettingsCopyWithImpl<_TxSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TxSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TxSettings&&(identical(other.txFilter, txFilter) || other.txFilter == txFilter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,txFilter);

@override
String toString() {
  return 'TxSettings(txFilter: $txFilter)';
}


}

/// @nodoc
abstract mixin class _$TxSettingsCopyWith<$Res> implements $TxSettingsCopyWith<$Res> {
  factory _$TxSettingsCopyWith(_TxSettings value, $Res Function(_TxSettings) _then) = __$TxSettingsCopyWithImpl;
@override @useResult
$Res call({
 TxFilter txFilter
});




}
/// @nodoc
class __$TxSettingsCopyWithImpl<$Res>
    implements _$TxSettingsCopyWith<$Res> {
  __$TxSettingsCopyWithImpl(this._self, this._then);

  final _TxSettings _self;
  final $Res Function(_TxSettings) _then;

/// Create a copy of TxSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? txFilter = null,}) {
  return _then(_TxSettings(
txFilter: null == txFilter ? _self.txFilter : txFilter // ignore: cast_nullable_to_non_nullable
as TxFilter,
  ));
}


}

// dart format on
