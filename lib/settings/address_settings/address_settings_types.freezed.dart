// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_settings_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddressSettings {

 AddressFilter get addressFilter;
/// Create a copy of AddressSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressSettingsCopyWith<AddressSettings> get copyWith => _$AddressSettingsCopyWithImpl<AddressSettings>(this as AddressSettings, _$identity);

  /// Serializes this AddressSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressSettings&&(identical(other.addressFilter, addressFilter) || other.addressFilter == addressFilter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,addressFilter);

@override
String toString() {
  return 'AddressSettings(addressFilter: $addressFilter)';
}


}

/// @nodoc
abstract mixin class $AddressSettingsCopyWith<$Res>  {
  factory $AddressSettingsCopyWith(AddressSettings value, $Res Function(AddressSettings) _then) = _$AddressSettingsCopyWithImpl;
@useResult
$Res call({
 AddressFilter addressFilter
});




}
/// @nodoc
class _$AddressSettingsCopyWithImpl<$Res>
    implements $AddressSettingsCopyWith<$Res> {
  _$AddressSettingsCopyWithImpl(this._self, this._then);

  final AddressSettings _self;
  final $Res Function(AddressSettings) _then;

/// Create a copy of AddressSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? addressFilter = null,}) {
  return _then(_self.copyWith(
addressFilter: null == addressFilter ? _self.addressFilter : addressFilter // ignore: cast_nullable_to_non_nullable
as AddressFilter,
  ));
}

}


/// Adds pattern-matching-related methods to [AddressSettings].
extension AddressSettingsPatterns on AddressSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddressSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddressSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddressSettings value)  $default,){
final _that = this;
switch (_that) {
case _AddressSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddressSettings value)?  $default,){
final _that = this;
switch (_that) {
case _AddressSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AddressFilter addressFilter)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddressSettings() when $default != null:
return $default(_that.addressFilter);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AddressFilter addressFilter)  $default,) {final _that = this;
switch (_that) {
case _AddressSettings():
return $default(_that.addressFilter);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AddressFilter addressFilter)?  $default,) {final _that = this;
switch (_that) {
case _AddressSettings() when $default != null:
return $default(_that.addressFilter);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddressSettings implements AddressSettings {
  const _AddressSettings({this.addressFilter = AddressFilter.all});
  factory _AddressSettings.fromJson(Map<String, dynamic> json) => _$AddressSettingsFromJson(json);

@override@JsonKey() final  AddressFilter addressFilter;

/// Create a copy of AddressSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressSettingsCopyWith<_AddressSettings> get copyWith => __$AddressSettingsCopyWithImpl<_AddressSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddressSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressSettings&&(identical(other.addressFilter, addressFilter) || other.addressFilter == addressFilter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,addressFilter);

@override
String toString() {
  return 'AddressSettings(addressFilter: $addressFilter)';
}


}

/// @nodoc
abstract mixin class _$AddressSettingsCopyWith<$Res> implements $AddressSettingsCopyWith<$Res> {
  factory _$AddressSettingsCopyWith(_AddressSettings value, $Res Function(_AddressSettings) _then) = __$AddressSettingsCopyWithImpl;
@override @useResult
$Res call({
 AddressFilter addressFilter
});




}
/// @nodoc
class __$AddressSettingsCopyWithImpl<$Res>
    implements _$AddressSettingsCopyWith<$Res> {
  __$AddressSettingsCopyWithImpl(this._self, this._then);

  final _AddressSettings _self;
  final $Res Function(_AddressSettings) _then;

/// Create a copy of AddressSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? addressFilter = null,}) {
  return _then(_AddressSettings(
addressFilter: null == addressFilter ? _self.addressFilter : addressFilter // ignore: cast_nullable_to_non_nullable
as AddressFilter,
  ));
}


}

// dart format on
