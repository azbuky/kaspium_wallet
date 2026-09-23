// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dotk_settings_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DotkSettings {

 bool get enabled; Map<String, String> get apiUrlByNetworkId;
/// Create a copy of DotkSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DotkSettingsCopyWith<DotkSettings> get copyWith => _$DotkSettingsCopyWithImpl<DotkSettings>(this as DotkSettings, _$identity);

  /// Serializes this DotkSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DotkSettings&&(identical(other.enabled, enabled) || other.enabled == enabled)&&const DeepCollectionEquality().equals(other.apiUrlByNetworkId, apiUrlByNetworkId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,enabled,const DeepCollectionEquality().hash(apiUrlByNetworkId));

@override
String toString() {
  return 'DotkSettings(enabled: $enabled, apiUrlByNetworkId: $apiUrlByNetworkId)';
}


}

/// @nodoc
abstract mixin class $DotkSettingsCopyWith<$Res>  {
  factory $DotkSettingsCopyWith(DotkSettings value, $Res Function(DotkSettings) _then) = _$DotkSettingsCopyWithImpl;
@useResult
$Res call({
 bool enabled, Map<String, String> apiUrlByNetworkId
});




}
/// @nodoc
class _$DotkSettingsCopyWithImpl<$Res>
    implements $DotkSettingsCopyWith<$Res> {
  _$DotkSettingsCopyWithImpl(this._self, this._then);

  final DotkSettings _self;
  final $Res Function(DotkSettings) _then;

/// Create a copy of DotkSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? enabled = null,Object? apiUrlByNetworkId = null,}) {
  return _then(_self.copyWith(
enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,apiUrlByNetworkId: null == apiUrlByNetworkId ? _self.apiUrlByNetworkId : apiUrlByNetworkId // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}

}


/// Adds pattern-matching-related methods to [DotkSettings].
extension DotkSettingsPatterns on DotkSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DotkSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DotkSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DotkSettings value)  $default,){
final _that = this;
switch (_that) {
case _DotkSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DotkSettings value)?  $default,){
final _that = this;
switch (_that) {
case _DotkSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool enabled,  Map<String, String> apiUrlByNetworkId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DotkSettings() when $default != null:
return $default(_that.enabled,_that.apiUrlByNetworkId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool enabled,  Map<String, String> apiUrlByNetworkId)  $default,) {final _that = this;
switch (_that) {
case _DotkSettings():
return $default(_that.enabled,_that.apiUrlByNetworkId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool enabled,  Map<String, String> apiUrlByNetworkId)?  $default,) {final _that = this;
switch (_that) {
case _DotkSettings() when $default != null:
return $default(_that.enabled,_that.apiUrlByNetworkId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DotkSettings extends DotkSettings {
  const _DotkSettings({this.enabled = true, final  Map<String, String> apiUrlByNetworkId = const {}}): _apiUrlByNetworkId = apiUrlByNetworkId,super._();
  factory _DotkSettings.fromJson(Map<String, dynamic> json) => _$DotkSettingsFromJson(json);

@override@JsonKey() final  bool enabled;
 final  Map<String, String> _apiUrlByNetworkId;
@override@JsonKey() Map<String, String> get apiUrlByNetworkId {
  if (_apiUrlByNetworkId is EqualUnmodifiableMapView) return _apiUrlByNetworkId;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_apiUrlByNetworkId);
}


/// Create a copy of DotkSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DotkSettingsCopyWith<_DotkSettings> get copyWith => __$DotkSettingsCopyWithImpl<_DotkSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DotkSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DotkSettings&&(identical(other.enabled, enabled) || other.enabled == enabled)&&const DeepCollectionEquality().equals(other._apiUrlByNetworkId, _apiUrlByNetworkId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,enabled,const DeepCollectionEquality().hash(_apiUrlByNetworkId));

@override
String toString() {
  return 'DotkSettings(enabled: $enabled, apiUrlByNetworkId: $apiUrlByNetworkId)';
}


}

/// @nodoc
abstract mixin class _$DotkSettingsCopyWith<$Res> implements $DotkSettingsCopyWith<$Res> {
  factory _$DotkSettingsCopyWith(_DotkSettings value, $Res Function(_DotkSettings) _then) = __$DotkSettingsCopyWithImpl;
@override @useResult
$Res call({
 bool enabled, Map<String, String> apiUrlByNetworkId
});




}
/// @nodoc
class __$DotkSettingsCopyWithImpl<$Res>
    implements _$DotkSettingsCopyWith<$Res> {
  __$DotkSettingsCopyWithImpl(this._self, this._then);

  final _DotkSettings _self;
  final $Res Function(_DotkSettings) _then;

/// Create a copy of DotkSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? enabled = null,Object? apiUrlByNetworkId = null,}) {
  return _then(_DotkSettings(
enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,apiUrlByNetworkId: null == apiUrlByNetworkId ? _self._apiUrlByNetworkId : apiUrlByNetworkId // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}


}

// dart format on
