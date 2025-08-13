// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kasplex_settings_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
KasplexSettings _$KasplexSettingsFromJson(
  Map<String, dynamic> json
) {
    return _Krc20Settings.fromJson(
      json
    );
}

/// @nodoc
mixin _$KasplexSettings {

 bool get krc20Enabled; bool get userConfirmed; Map<String, String> get apiUrlByNetworkId;
/// Create a copy of KasplexSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KasplexSettingsCopyWith<KasplexSettings> get copyWith => _$KasplexSettingsCopyWithImpl<KasplexSettings>(this as KasplexSettings, _$identity);

  /// Serializes this KasplexSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KasplexSettings&&(identical(other.krc20Enabled, krc20Enabled) || other.krc20Enabled == krc20Enabled)&&(identical(other.userConfirmed, userConfirmed) || other.userConfirmed == userConfirmed)&&const DeepCollectionEquality().equals(other.apiUrlByNetworkId, apiUrlByNetworkId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,krc20Enabled,userConfirmed,const DeepCollectionEquality().hash(apiUrlByNetworkId));

@override
String toString() {
  return 'KasplexSettings(krc20Enabled: $krc20Enabled, userConfirmed: $userConfirmed, apiUrlByNetworkId: $apiUrlByNetworkId)';
}


}

/// @nodoc
abstract mixin class $KasplexSettingsCopyWith<$Res>  {
  factory $KasplexSettingsCopyWith(KasplexSettings value, $Res Function(KasplexSettings) _then) = _$KasplexSettingsCopyWithImpl;
@useResult
$Res call({
 bool krc20Enabled, bool userConfirmed, Map<String, String> apiUrlByNetworkId
});




}
/// @nodoc
class _$KasplexSettingsCopyWithImpl<$Res>
    implements $KasplexSettingsCopyWith<$Res> {
  _$KasplexSettingsCopyWithImpl(this._self, this._then);

  final KasplexSettings _self;
  final $Res Function(KasplexSettings) _then;

/// Create a copy of KasplexSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? krc20Enabled = null,Object? userConfirmed = null,Object? apiUrlByNetworkId = null,}) {
  return _then(_self.copyWith(
krc20Enabled: null == krc20Enabled ? _self.krc20Enabled : krc20Enabled // ignore: cast_nullable_to_non_nullable
as bool,userConfirmed: null == userConfirmed ? _self.userConfirmed : userConfirmed // ignore: cast_nullable_to_non_nullable
as bool,apiUrlByNetworkId: null == apiUrlByNetworkId ? _self.apiUrlByNetworkId : apiUrlByNetworkId // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}

}


/// Adds pattern-matching-related methods to [KasplexSettings].
extension KasplexSettingsPatterns on KasplexSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Krc20Settings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Krc20Settings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Krc20Settings value)  $default,){
final _that = this;
switch (_that) {
case _Krc20Settings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Krc20Settings value)?  $default,){
final _that = this;
switch (_that) {
case _Krc20Settings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool krc20Enabled,  bool userConfirmed,  Map<String, String> apiUrlByNetworkId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Krc20Settings() when $default != null:
return $default(_that.krc20Enabled,_that.userConfirmed,_that.apiUrlByNetworkId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool krc20Enabled,  bool userConfirmed,  Map<String, String> apiUrlByNetworkId)  $default,) {final _that = this;
switch (_that) {
case _Krc20Settings():
return $default(_that.krc20Enabled,_that.userConfirmed,_that.apiUrlByNetworkId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool krc20Enabled,  bool userConfirmed,  Map<String, String> apiUrlByNetworkId)?  $default,) {final _that = this;
switch (_that) {
case _Krc20Settings() when $default != null:
return $default(_that.krc20Enabled,_that.userConfirmed,_that.apiUrlByNetworkId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Krc20Settings extends KasplexSettings {
  const _Krc20Settings({this.krc20Enabled = false, this.userConfirmed = false, final  Map<String, String> apiUrlByNetworkId = const {}}): _apiUrlByNetworkId = apiUrlByNetworkId,super._();
  factory _Krc20Settings.fromJson(Map<String, dynamic> json) => _$Krc20SettingsFromJson(json);

@override@JsonKey() final  bool krc20Enabled;
@override@JsonKey() final  bool userConfirmed;
 final  Map<String, String> _apiUrlByNetworkId;
@override@JsonKey() Map<String, String> get apiUrlByNetworkId {
  if (_apiUrlByNetworkId is EqualUnmodifiableMapView) return _apiUrlByNetworkId;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_apiUrlByNetworkId);
}


/// Create a copy of KasplexSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Krc20SettingsCopyWith<_Krc20Settings> get copyWith => __$Krc20SettingsCopyWithImpl<_Krc20Settings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Krc20SettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Krc20Settings&&(identical(other.krc20Enabled, krc20Enabled) || other.krc20Enabled == krc20Enabled)&&(identical(other.userConfirmed, userConfirmed) || other.userConfirmed == userConfirmed)&&const DeepCollectionEquality().equals(other._apiUrlByNetworkId, _apiUrlByNetworkId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,krc20Enabled,userConfirmed,const DeepCollectionEquality().hash(_apiUrlByNetworkId));

@override
String toString() {
  return 'KasplexSettings(krc20Enabled: $krc20Enabled, userConfirmed: $userConfirmed, apiUrlByNetworkId: $apiUrlByNetworkId)';
}


}

/// @nodoc
abstract mixin class _$Krc20SettingsCopyWith<$Res> implements $KasplexSettingsCopyWith<$Res> {
  factory _$Krc20SettingsCopyWith(_Krc20Settings value, $Res Function(_Krc20Settings) _then) = __$Krc20SettingsCopyWithImpl;
@override @useResult
$Res call({
 bool krc20Enabled, bool userConfirmed, Map<String, String> apiUrlByNetworkId
});




}
/// @nodoc
class __$Krc20SettingsCopyWithImpl<$Res>
    implements _$Krc20SettingsCopyWith<$Res> {
  __$Krc20SettingsCopyWithImpl(this._self, this._then);

  final _Krc20Settings _self;
  final $Res Function(_Krc20Settings) _then;

/// Create a copy of KasplexSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? krc20Enabled = null,Object? userConfirmed = null,Object? apiUrlByNetworkId = null,}) {
  return _then(_Krc20Settings(
krc20Enabled: null == krc20Enabled ? _self.krc20Enabled : krc20Enabled // ignore: cast_nullable_to_non_nullable
as bool,userConfirmed: null == userConfirmed ? _self.userConfirmed : userConfirmed // ignore: cast_nullable_to_non_nullable
as bool,apiUrlByNetworkId: null == apiUrlByNetworkId ? _self._apiUrlByNetworkId : apiUrlByNetworkId // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}


}

// dart format on
