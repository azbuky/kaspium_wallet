// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'block_explorer_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BlockExplorerSettings {

 Map<String, BlockExplorer> get selection;
/// Create a copy of BlockExplorerSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BlockExplorerSettingsCopyWith<BlockExplorerSettings> get copyWith => _$BlockExplorerSettingsCopyWithImpl<BlockExplorerSettings>(this as BlockExplorerSettings, _$identity);

  /// Serializes this BlockExplorerSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BlockExplorerSettings&&const DeepCollectionEquality().equals(other.selection, selection));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(selection));

@override
String toString() {
  return 'BlockExplorerSettings(selection: $selection)';
}


}

/// @nodoc
abstract mixin class $BlockExplorerSettingsCopyWith<$Res>  {
  factory $BlockExplorerSettingsCopyWith(BlockExplorerSettings value, $Res Function(BlockExplorerSettings) _then) = _$BlockExplorerSettingsCopyWithImpl;
@useResult
$Res call({
 Map<String, BlockExplorer> selection
});




}
/// @nodoc
class _$BlockExplorerSettingsCopyWithImpl<$Res>
    implements $BlockExplorerSettingsCopyWith<$Res> {
  _$BlockExplorerSettingsCopyWithImpl(this._self, this._then);

  final BlockExplorerSettings _self;
  final $Res Function(BlockExplorerSettings) _then;

/// Create a copy of BlockExplorerSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selection = null,}) {
  return _then(_self.copyWith(
selection: null == selection ? _self.selection : selection // ignore: cast_nullable_to_non_nullable
as Map<String, BlockExplorer>,
  ));
}

}


/// Adds pattern-matching-related methods to [BlockExplorerSettings].
extension BlockExplorerSettingsPatterns on BlockExplorerSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BlockExplorerSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BlockExplorerSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BlockExplorerSettings value)  $default,){
final _that = this;
switch (_that) {
case _BlockExplorerSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BlockExplorerSettings value)?  $default,){
final _that = this;
switch (_that) {
case _BlockExplorerSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, BlockExplorer> selection)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BlockExplorerSettings() when $default != null:
return $default(_that.selection);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, BlockExplorer> selection)  $default,) {final _that = this;
switch (_that) {
case _BlockExplorerSettings():
return $default(_that.selection);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, BlockExplorer> selection)?  $default,) {final _that = this;
switch (_that) {
case _BlockExplorerSettings() when $default != null:
return $default(_that.selection);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BlockExplorerSettings extends BlockExplorerSettings {
  const _BlockExplorerSettings({final  Map<String, BlockExplorer> selection = const {kKaspaNetworkIdMainnet : kKaspaExplorerMainnet, kKaspaNetworkIdTestnet10 : kKaspaExplorerTestnet10, kKaspaNetworkIdTestnet11 : kKaspaExplorerTestnet11}}): _selection = selection,super._();
  factory _BlockExplorerSettings.fromJson(Map<String, dynamic> json) => _$BlockExplorerSettingsFromJson(json);

 final  Map<String, BlockExplorer> _selection;
@override@JsonKey() Map<String, BlockExplorer> get selection {
  if (_selection is EqualUnmodifiableMapView) return _selection;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_selection);
}


/// Create a copy of BlockExplorerSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BlockExplorerSettingsCopyWith<_BlockExplorerSettings> get copyWith => __$BlockExplorerSettingsCopyWithImpl<_BlockExplorerSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BlockExplorerSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BlockExplorerSettings&&const DeepCollectionEquality().equals(other._selection, _selection));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_selection));

@override
String toString() {
  return 'BlockExplorerSettings(selection: $selection)';
}


}

/// @nodoc
abstract mixin class _$BlockExplorerSettingsCopyWith<$Res> implements $BlockExplorerSettingsCopyWith<$Res> {
  factory _$BlockExplorerSettingsCopyWith(_BlockExplorerSettings value, $Res Function(_BlockExplorerSettings) _then) = __$BlockExplorerSettingsCopyWithImpl;
@override @useResult
$Res call({
 Map<String, BlockExplorer> selection
});




}
/// @nodoc
class __$BlockExplorerSettingsCopyWithImpl<$Res>
    implements _$BlockExplorerSettingsCopyWith<$Res> {
  __$BlockExplorerSettingsCopyWithImpl(this._self, this._then);

  final _BlockExplorerSettings _self;
  final $Res Function(_BlockExplorerSettings) _then;

/// Create a copy of BlockExplorerSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selection = null,}) {
  return _then(_BlockExplorerSettings(
selection: null == selection ? _self._selection : selection // ignore: cast_nullable_to_non_nullable
as Map<String, BlockExplorer>,
  ));
}


}

// dart format on
