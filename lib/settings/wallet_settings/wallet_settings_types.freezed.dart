// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_settings_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WalletSettings {

 RequestPassword get requestPassword;
/// Create a copy of WalletSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletSettingsCopyWith<WalletSettings> get copyWith => _$WalletSettingsCopyWithImpl<WalletSettings>(this as WalletSettings, _$identity);

  /// Serializes this WalletSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletSettings&&(identical(other.requestPassword, requestPassword) || other.requestPassword == requestPassword));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,requestPassword);

@override
String toString() {
  return 'WalletSettings(requestPassword: $requestPassword)';
}


}

/// @nodoc
abstract mixin class $WalletSettingsCopyWith<$Res>  {
  factory $WalletSettingsCopyWith(WalletSettings value, $Res Function(WalletSettings) _then) = _$WalletSettingsCopyWithImpl;
@useResult
$Res call({
 RequestPassword requestPassword
});




}
/// @nodoc
class _$WalletSettingsCopyWithImpl<$Res>
    implements $WalletSettingsCopyWith<$Res> {
  _$WalletSettingsCopyWithImpl(this._self, this._then);

  final WalletSettings _self;
  final $Res Function(WalletSettings) _then;

/// Create a copy of WalletSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? requestPassword = null,}) {
  return _then(_self.copyWith(
requestPassword: null == requestPassword ? _self.requestPassword : requestPassword // ignore: cast_nullable_to_non_nullable
as RequestPassword,
  ));
}

}


/// Adds pattern-matching-related methods to [WalletSettings].
extension WalletSettingsPatterns on WalletSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletSettings value)  $default,){
final _that = this;
switch (_that) {
case _WalletSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletSettings value)?  $default,){
final _that = this;
switch (_that) {
case _WalletSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RequestPassword requestPassword)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletSettings() when $default != null:
return $default(_that.requestPassword);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RequestPassword requestPassword)  $default,) {final _that = this;
switch (_that) {
case _WalletSettings():
return $default(_that.requestPassword);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RequestPassword requestPassword)?  $default,) {final _that = this;
switch (_that) {
case _WalletSettings() when $default != null:
return $default(_that.requestPassword);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WalletSettings implements WalletSettings {
  const _WalletSettings({this.requestPassword = RequestPassword.atLaunch});
  factory _WalletSettings.fromJson(Map<String, dynamic> json) => _$WalletSettingsFromJson(json);

@override@JsonKey() final  RequestPassword requestPassword;

/// Create a copy of WalletSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletSettingsCopyWith<_WalletSettings> get copyWith => __$WalletSettingsCopyWithImpl<_WalletSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WalletSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletSettings&&(identical(other.requestPassword, requestPassword) || other.requestPassword == requestPassword));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,requestPassword);

@override
String toString() {
  return 'WalletSettings(requestPassword: $requestPassword)';
}


}

/// @nodoc
abstract mixin class _$WalletSettingsCopyWith<$Res> implements $WalletSettingsCopyWith<$Res> {
  factory _$WalletSettingsCopyWith(_WalletSettings value, $Res Function(_WalletSettings) _then) = __$WalletSettingsCopyWithImpl;
@override @useResult
$Res call({
 RequestPassword requestPassword
});




}
/// @nodoc
class __$WalletSettingsCopyWithImpl<$Res>
    implements _$WalletSettingsCopyWith<$Res> {
  __$WalletSettingsCopyWithImpl(this._self, this._then);

  final _WalletSettings _self;
  final $Res Function(_WalletSettings) _then;

/// Create a copy of WalletSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? requestPassword = null,}) {
  return _then(_WalletSettings(
requestPassword: null == requestPassword ? _self.requestPassword : requestPassword // ignore: cast_nullable_to_non_nullable
as RequestPassword,
  ));
}


}

// dart format on
