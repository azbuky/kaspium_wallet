// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'node_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NodeConfigSettings {

 IList<NodeConfig> get options; NodeConfig get selected;
/// Create a copy of NodeConfigSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NodeConfigSettingsCopyWith<NodeConfigSettings> get copyWith => _$NodeConfigSettingsCopyWithImpl<NodeConfigSettings>(this as NodeConfigSettings, _$identity);

  /// Serializes this NodeConfigSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NodeConfigSettings&&const DeepCollectionEquality().equals(other.options, options)&&(identical(other.selected, selected) || other.selected == selected));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(options),selected);

@override
String toString() {
  return 'NodeConfigSettings(options: $options, selected: $selected)';
}


}

/// @nodoc
abstract mixin class $NodeConfigSettingsCopyWith<$Res>  {
  factory $NodeConfigSettingsCopyWith(NodeConfigSettings value, $Res Function(NodeConfigSettings) _then) = _$NodeConfigSettingsCopyWithImpl;
@useResult
$Res call({
 IList<NodeConfig> options, NodeConfig selected
});


$NodeConfigCopyWith<$Res> get selected;

}
/// @nodoc
class _$NodeConfigSettingsCopyWithImpl<$Res>
    implements $NodeConfigSettingsCopyWith<$Res> {
  _$NodeConfigSettingsCopyWithImpl(this._self, this._then);

  final NodeConfigSettings _self;
  final $Res Function(NodeConfigSettings) _then;

/// Create a copy of NodeConfigSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? options = null,Object? selected = null,}) {
  return _then(_self.copyWith(
options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as IList<NodeConfig>,selected: null == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as NodeConfig,
  ));
}
/// Create a copy of NodeConfigSettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NodeConfigCopyWith<$Res> get selected {
  
  return $NodeConfigCopyWith<$Res>(_self.selected, (value) {
    return _then(_self.copyWith(selected: value));
  });
}
}


/// Adds pattern-matching-related methods to [NodeConfigSettings].
extension NodeConfigSettingsPatterns on NodeConfigSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NodeConfigSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NodeConfigSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NodeConfigSettings value)  $default,){
final _that = this;
switch (_that) {
case _NodeConfigSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NodeConfigSettings value)?  $default,){
final _that = this;
switch (_that) {
case _NodeConfigSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( IList<NodeConfig> options,  NodeConfig selected)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NodeConfigSettings() when $default != null:
return $default(_that.options,_that.selected);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( IList<NodeConfig> options,  NodeConfig selected)  $default,) {final _that = this;
switch (_that) {
case _NodeConfigSettings():
return $default(_that.options,_that.selected);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( IList<NodeConfig> options,  NodeConfig selected)?  $default,) {final _that = this;
switch (_that) {
case _NodeConfigSettings() when $default != null:
return $default(_that.options,_that.selected);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NodeConfigSettings implements NodeConfigSettings {
  const _NodeConfigSettings({this.options = const IListConst([mainnetNodeConfig]), this.selected = mainnetNodeConfig});
  factory _NodeConfigSettings.fromJson(Map<String, dynamic> json) => _$NodeConfigSettingsFromJson(json);

@override@JsonKey() final  IList<NodeConfig> options;
@override@JsonKey() final  NodeConfig selected;

/// Create a copy of NodeConfigSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NodeConfigSettingsCopyWith<_NodeConfigSettings> get copyWith => __$NodeConfigSettingsCopyWithImpl<_NodeConfigSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NodeConfigSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NodeConfigSettings&&const DeepCollectionEquality().equals(other.options, options)&&(identical(other.selected, selected) || other.selected == selected));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(options),selected);

@override
String toString() {
  return 'NodeConfigSettings(options: $options, selected: $selected)';
}


}

/// @nodoc
abstract mixin class _$NodeConfigSettingsCopyWith<$Res> implements $NodeConfigSettingsCopyWith<$Res> {
  factory _$NodeConfigSettingsCopyWith(_NodeConfigSettings value, $Res Function(_NodeConfigSettings) _then) = __$NodeConfigSettingsCopyWithImpl;
@override @useResult
$Res call({
 IList<NodeConfig> options, NodeConfig selected
});


@override $NodeConfigCopyWith<$Res> get selected;

}
/// @nodoc
class __$NodeConfigSettingsCopyWithImpl<$Res>
    implements _$NodeConfigSettingsCopyWith<$Res> {
  __$NodeConfigSettingsCopyWithImpl(this._self, this._then);

  final _NodeConfigSettings _self;
  final $Res Function(_NodeConfigSettings) _then;

/// Create a copy of NodeConfigSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? options = null,Object? selected = null,}) {
  return _then(_NodeConfigSettings(
options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as IList<NodeConfig>,selected: null == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as NodeConfig,
  ));
}

/// Create a copy of NodeConfigSettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NodeConfigCopyWith<$Res> get selected {
  
  return $NodeConfigCopyWith<$Res>(_self.selected, (value) {
    return _then(_self.copyWith(selected: value));
  });
}
}


/// @nodoc
mixin _$NodeConfig {

 String get id; String get name; bool get isDns; bool get isSecure; List<String> get urls; KaspaNetwork get network; String get networkSuffix;
/// Create a copy of NodeConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NodeConfigCopyWith<NodeConfig> get copyWith => _$NodeConfigCopyWithImpl<NodeConfig>(this as NodeConfig, _$identity);

  /// Serializes this NodeConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NodeConfig&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.isDns, isDns) || other.isDns == isDns)&&(identical(other.isSecure, isSecure) || other.isSecure == isSecure)&&const DeepCollectionEquality().equals(other.urls, urls)&&(identical(other.network, network) || other.network == network)&&(identical(other.networkSuffix, networkSuffix) || other.networkSuffix == networkSuffix));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,isDns,isSecure,const DeepCollectionEquality().hash(urls),network,networkSuffix);

@override
String toString() {
  return 'NodeConfig(id: $id, name: $name, isDns: $isDns, isSecure: $isSecure, urls: $urls, network: $network, networkSuffix: $networkSuffix)';
}


}

/// @nodoc
abstract mixin class $NodeConfigCopyWith<$Res>  {
  factory $NodeConfigCopyWith(NodeConfig value, $Res Function(NodeConfig) _then) = _$NodeConfigCopyWithImpl;
@useResult
$Res call({
 String id, String name, bool isDns, bool isSecure, List<String> urls, KaspaNetwork network, String networkSuffix
});




}
/// @nodoc
class _$NodeConfigCopyWithImpl<$Res>
    implements $NodeConfigCopyWith<$Res> {
  _$NodeConfigCopyWithImpl(this._self, this._then);

  final NodeConfig _self;
  final $Res Function(NodeConfig) _then;

/// Create a copy of NodeConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? isDns = null,Object? isSecure = null,Object? urls = null,Object? network = null,Object? networkSuffix = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isDns: null == isDns ? _self.isDns : isDns // ignore: cast_nullable_to_non_nullable
as bool,isSecure: null == isSecure ? _self.isSecure : isSecure // ignore: cast_nullable_to_non_nullable
as bool,urls: null == urls ? _self.urls : urls // ignore: cast_nullable_to_non_nullable
as List<String>,network: null == network ? _self.network : network // ignore: cast_nullable_to_non_nullable
as KaspaNetwork,networkSuffix: null == networkSuffix ? _self.networkSuffix : networkSuffix // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NodeConfig].
extension NodeConfigPatterns on NodeConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NodeConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NodeConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NodeConfig value)  $default,){
final _that = this;
switch (_that) {
case _NodeConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NodeConfig value)?  $default,){
final _that = this;
switch (_that) {
case _NodeConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  bool isDns,  bool isSecure,  List<String> urls,  KaspaNetwork network,  String networkSuffix)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NodeConfig() when $default != null:
return $default(_that.id,_that.name,_that.isDns,_that.isSecure,_that.urls,_that.network,_that.networkSuffix);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  bool isDns,  bool isSecure,  List<String> urls,  KaspaNetwork network,  String networkSuffix)  $default,) {final _that = this;
switch (_that) {
case _NodeConfig():
return $default(_that.id,_that.name,_that.isDns,_that.isSecure,_that.urls,_that.network,_that.networkSuffix);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  bool isDns,  bool isSecure,  List<String> urls,  KaspaNetwork network,  String networkSuffix)?  $default,) {final _that = this;
switch (_that) {
case _NodeConfig() when $default != null:
return $default(_that.id,_that.name,_that.isDns,_that.isSecure,_that.urls,_that.network,_that.networkSuffix);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NodeConfig extends NodeConfig {
  const _NodeConfig({required this.id, required this.name, this.isDns = false, this.isSecure = false, required final  List<String> urls, required this.network, this.networkSuffix = ''}): _urls = urls,super._();
  factory _NodeConfig.fromJson(Map<String, dynamic> json) => _$NodeConfigFromJson(json);

@override final  String id;
@override final  String name;
@override@JsonKey() final  bool isDns;
@override@JsonKey() final  bool isSecure;
 final  List<String> _urls;
@override List<String> get urls {
  if (_urls is EqualUnmodifiableListView) return _urls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_urls);
}

@override final  KaspaNetwork network;
@override@JsonKey() final  String networkSuffix;

/// Create a copy of NodeConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NodeConfigCopyWith<_NodeConfig> get copyWith => __$NodeConfigCopyWithImpl<_NodeConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NodeConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NodeConfig&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.isDns, isDns) || other.isDns == isDns)&&(identical(other.isSecure, isSecure) || other.isSecure == isSecure)&&const DeepCollectionEquality().equals(other._urls, _urls)&&(identical(other.network, network) || other.network == network)&&(identical(other.networkSuffix, networkSuffix) || other.networkSuffix == networkSuffix));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,isDns,isSecure,const DeepCollectionEquality().hash(_urls),network,networkSuffix);

@override
String toString() {
  return 'NodeConfig(id: $id, name: $name, isDns: $isDns, isSecure: $isSecure, urls: $urls, network: $network, networkSuffix: $networkSuffix)';
}


}

/// @nodoc
abstract mixin class _$NodeConfigCopyWith<$Res> implements $NodeConfigCopyWith<$Res> {
  factory _$NodeConfigCopyWith(_NodeConfig value, $Res Function(_NodeConfig) _then) = __$NodeConfigCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, bool isDns, bool isSecure, List<String> urls, KaspaNetwork network, String networkSuffix
});




}
/// @nodoc
class __$NodeConfigCopyWithImpl<$Res>
    implements _$NodeConfigCopyWith<$Res> {
  __$NodeConfigCopyWithImpl(this._self, this._then);

  final _NodeConfig _self;
  final $Res Function(_NodeConfig) _then;

/// Create a copy of NodeConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? isDns = null,Object? isSecure = null,Object? urls = null,Object? network = null,Object? networkSuffix = null,}) {
  return _then(_NodeConfig(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isDns: null == isDns ? _self.isDns : isDns // ignore: cast_nullable_to_non_nullable
as bool,isSecure: null == isSecure ? _self.isSecure : isSecure // ignore: cast_nullable_to_non_nullable
as bool,urls: null == urls ? _self._urls : urls // ignore: cast_nullable_to_non_nullable
as List<String>,network: null == network ? _self.network : network // ignore: cast_nullable_to_non_nullable
as KaspaNetwork,networkSuffix: null == networkSuffix ? _self.networkSuffix : networkSuffix // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ActiveNodeConfig {

 String get url; String get networkId; NodeConfig get config;
/// Create a copy of ActiveNodeConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActiveNodeConfigCopyWith<ActiveNodeConfig> get copyWith => _$ActiveNodeConfigCopyWithImpl<ActiveNodeConfig>(this as ActiveNodeConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActiveNodeConfig&&(identical(other.url, url) || other.url == url)&&(identical(other.networkId, networkId) || other.networkId == networkId)&&(identical(other.config, config) || other.config == config));
}


@override
int get hashCode => Object.hash(runtimeType,url,networkId,config);

@override
String toString() {
  return 'ActiveNodeConfig(url: $url, networkId: $networkId, config: $config)';
}


}

/// @nodoc
abstract mixin class $ActiveNodeConfigCopyWith<$Res>  {
  factory $ActiveNodeConfigCopyWith(ActiveNodeConfig value, $Res Function(ActiveNodeConfig) _then) = _$ActiveNodeConfigCopyWithImpl;
@useResult
$Res call({
 NodeConfig config
});


$NodeConfigCopyWith<$Res> get config;

}
/// @nodoc
class _$ActiveNodeConfigCopyWithImpl<$Res>
    implements $ActiveNodeConfigCopyWith<$Res> {
  _$ActiveNodeConfigCopyWithImpl(this._self, this._then);

  final ActiveNodeConfig _self;
  final $Res Function(ActiveNodeConfig) _then;

/// Create a copy of ActiveNodeConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? config = null,}) {
  return _then(_self.copyWith(
config: null == config ? _self.config : config // ignore: cast_nullable_to_non_nullable
as NodeConfig,
  ));
}
/// Create a copy of ActiveNodeConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NodeConfigCopyWith<$Res> get config {
  
  return $NodeConfigCopyWith<$Res>(_self.config, (value) {
    return _then(_self.copyWith(config: value));
  });
}
}


/// Adds pattern-matching-related methods to [ActiveNodeConfig].
extension ActiveNodeConfigPatterns on ActiveNodeConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActiveNodeConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActiveNodeConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActiveNodeConfig value)  $default,){
final _that = this;
switch (_that) {
case _ActiveNodeConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActiveNodeConfig value)?  $default,){
final _that = this;
switch (_that) {
case _ActiveNodeConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( NodeConfig config)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActiveNodeConfig() when $default != null:
return $default(_that.config);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( NodeConfig config)  $default,) {final _that = this;
switch (_that) {
case _ActiveNodeConfig():
return $default(_that.config);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( NodeConfig config)?  $default,) {final _that = this;
switch (_that) {
case _ActiveNodeConfig() when $default != null:
return $default(_that.config);case _:
  return null;

}
}

}

/// @nodoc


class _ActiveNodeConfig extends ActiveNodeConfig {
   _ActiveNodeConfig({required this.config}): super._();
  

@override final  NodeConfig config;

/// Create a copy of ActiveNodeConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActiveNodeConfigCopyWith<_ActiveNodeConfig> get copyWith => __$ActiveNodeConfigCopyWithImpl<_ActiveNodeConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActiveNodeConfig&&(identical(other.config, config) || other.config == config));
}


@override
int get hashCode => Object.hash(runtimeType,config);

@override
String toString() {
  return 'ActiveNodeConfig(config: $config)';
}


}

/// @nodoc
abstract mixin class _$ActiveNodeConfigCopyWith<$Res> implements $ActiveNodeConfigCopyWith<$Res> {
  factory _$ActiveNodeConfigCopyWith(_ActiveNodeConfig value, $Res Function(_ActiveNodeConfig) _then) = __$ActiveNodeConfigCopyWithImpl;
@override @useResult
$Res call({
 NodeConfig config
});


@override $NodeConfigCopyWith<$Res> get config;

}
/// @nodoc
class __$ActiveNodeConfigCopyWithImpl<$Res>
    implements _$ActiveNodeConfigCopyWith<$Res> {
  __$ActiveNodeConfigCopyWithImpl(this._self, this._then);

  final _ActiveNodeConfig _self;
  final $Res Function(_ActiveNodeConfig) _then;

/// Create a copy of ActiveNodeConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? config = null,}) {
  return _then(_ActiveNodeConfig(
config: null == config ? _self.config : config // ignore: cast_nullable_to_non_nullable
as NodeConfig,
  ));
}

/// Create a copy of ActiveNodeConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NodeConfigCopyWith<$Res> get config {
  
  return $NodeConfigCopyWith<$Res>(_self.config, (value) {
    return _then(_self.copyWith(config: value));
  });
}
}

/// @nodoc
mixin _$AddNodeSheetState {

 bool get showNameHint; bool get showUrlHint; String get nameValidationText; String get urlValidationText;
/// Create a copy of AddNodeSheetState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddNodeSheetStateCopyWith<AddNodeSheetState> get copyWith => _$AddNodeSheetStateCopyWithImpl<AddNodeSheetState>(this as AddNodeSheetState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddNodeSheetState&&(identical(other.showNameHint, showNameHint) || other.showNameHint == showNameHint)&&(identical(other.showUrlHint, showUrlHint) || other.showUrlHint == showUrlHint)&&(identical(other.nameValidationText, nameValidationText) || other.nameValidationText == nameValidationText)&&(identical(other.urlValidationText, urlValidationText) || other.urlValidationText == urlValidationText));
}


@override
int get hashCode => Object.hash(runtimeType,showNameHint,showUrlHint,nameValidationText,urlValidationText);

@override
String toString() {
  return 'AddNodeSheetState(showNameHint: $showNameHint, showUrlHint: $showUrlHint, nameValidationText: $nameValidationText, urlValidationText: $urlValidationText)';
}


}

/// @nodoc
abstract mixin class $AddNodeSheetStateCopyWith<$Res>  {
  factory $AddNodeSheetStateCopyWith(AddNodeSheetState value, $Res Function(AddNodeSheetState) _then) = _$AddNodeSheetStateCopyWithImpl;
@useResult
$Res call({
 bool showNameHint, bool showUrlHint, String nameValidationText, String urlValidationText
});




}
/// @nodoc
class _$AddNodeSheetStateCopyWithImpl<$Res>
    implements $AddNodeSheetStateCopyWith<$Res> {
  _$AddNodeSheetStateCopyWithImpl(this._self, this._then);

  final AddNodeSheetState _self;
  final $Res Function(AddNodeSheetState) _then;

/// Create a copy of AddNodeSheetState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? showNameHint = null,Object? showUrlHint = null,Object? nameValidationText = null,Object? urlValidationText = null,}) {
  return _then(_self.copyWith(
showNameHint: null == showNameHint ? _self.showNameHint : showNameHint // ignore: cast_nullable_to_non_nullable
as bool,showUrlHint: null == showUrlHint ? _self.showUrlHint : showUrlHint // ignore: cast_nullable_to_non_nullable
as bool,nameValidationText: null == nameValidationText ? _self.nameValidationText : nameValidationText // ignore: cast_nullable_to_non_nullable
as String,urlValidationText: null == urlValidationText ? _self.urlValidationText : urlValidationText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AddNodeSheetState].
extension AddNodeSheetStatePatterns on AddNodeSheetState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddNodeSheetState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddNodeSheetState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddNodeSheetState value)  $default,){
final _that = this;
switch (_that) {
case _AddNodeSheetState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddNodeSheetState value)?  $default,){
final _that = this;
switch (_that) {
case _AddNodeSheetState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool showNameHint,  bool showUrlHint,  String nameValidationText,  String urlValidationText)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddNodeSheetState() when $default != null:
return $default(_that.showNameHint,_that.showUrlHint,_that.nameValidationText,_that.urlValidationText);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool showNameHint,  bool showUrlHint,  String nameValidationText,  String urlValidationText)  $default,) {final _that = this;
switch (_that) {
case _AddNodeSheetState():
return $default(_that.showNameHint,_that.showUrlHint,_that.nameValidationText,_that.urlValidationText);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool showNameHint,  bool showUrlHint,  String nameValidationText,  String urlValidationText)?  $default,) {final _that = this;
switch (_that) {
case _AddNodeSheetState() when $default != null:
return $default(_that.showNameHint,_that.showUrlHint,_that.nameValidationText,_that.urlValidationText);case _:
  return null;

}
}

}

/// @nodoc


class _AddNodeSheetState implements AddNodeSheetState {
  const _AddNodeSheetState({this.showNameHint = true, this.showUrlHint = true, this.nameValidationText = '', this.urlValidationText = ''});
  

@override@JsonKey() final  bool showNameHint;
@override@JsonKey() final  bool showUrlHint;
@override@JsonKey() final  String nameValidationText;
@override@JsonKey() final  String urlValidationText;

/// Create a copy of AddNodeSheetState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddNodeSheetStateCopyWith<_AddNodeSheetState> get copyWith => __$AddNodeSheetStateCopyWithImpl<_AddNodeSheetState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddNodeSheetState&&(identical(other.showNameHint, showNameHint) || other.showNameHint == showNameHint)&&(identical(other.showUrlHint, showUrlHint) || other.showUrlHint == showUrlHint)&&(identical(other.nameValidationText, nameValidationText) || other.nameValidationText == nameValidationText)&&(identical(other.urlValidationText, urlValidationText) || other.urlValidationText == urlValidationText));
}


@override
int get hashCode => Object.hash(runtimeType,showNameHint,showUrlHint,nameValidationText,urlValidationText);

@override
String toString() {
  return 'AddNodeSheetState(showNameHint: $showNameHint, showUrlHint: $showUrlHint, nameValidationText: $nameValidationText, urlValidationText: $urlValidationText)';
}


}

/// @nodoc
abstract mixin class _$AddNodeSheetStateCopyWith<$Res> implements $AddNodeSheetStateCopyWith<$Res> {
  factory _$AddNodeSheetStateCopyWith(_AddNodeSheetState value, $Res Function(_AddNodeSheetState) _then) = __$AddNodeSheetStateCopyWithImpl;
@override @useResult
$Res call({
 bool showNameHint, bool showUrlHint, String nameValidationText, String urlValidationText
});




}
/// @nodoc
class __$AddNodeSheetStateCopyWithImpl<$Res>
    implements _$AddNodeSheetStateCopyWith<$Res> {
  __$AddNodeSheetStateCopyWithImpl(this._self, this._then);

  final _AddNodeSheetState _self;
  final $Res Function(_AddNodeSheetState) _then;

/// Create a copy of AddNodeSheetState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? showNameHint = null,Object? showUrlHint = null,Object? nameValidationText = null,Object? urlValidationText = null,}) {
  return _then(_AddNodeSheetState(
showNameHint: null == showNameHint ? _self.showNameHint : showNameHint // ignore: cast_nullable_to_non_nullable
as bool,showUrlHint: null == showUrlHint ? _self.showUrlHint : showUrlHint // ignore: cast_nullable_to_non_nullable
as bool,nameValidationText: null == nameValidationText ? _self.nameValidationText : nameValidationText // ignore: cast_nullable_to_non_nullable
as String,urlValidationText: null == urlValidationText ? _self.urlValidationText : urlValidationText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
