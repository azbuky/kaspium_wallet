// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'block_explorers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BlockExplorer {

 KaspaNetwork get network; String get name; String get url; String get addressUrl; String get txUrl;
/// Create a copy of BlockExplorer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BlockExplorerCopyWith<BlockExplorer> get copyWith => _$BlockExplorerCopyWithImpl<BlockExplorer>(this as BlockExplorer, _$identity);

  /// Serializes this BlockExplorer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BlockExplorer&&(identical(other.network, network) || other.network == network)&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.addressUrl, addressUrl) || other.addressUrl == addressUrl)&&(identical(other.txUrl, txUrl) || other.txUrl == txUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,network,name,url,addressUrl,txUrl);

@override
String toString() {
  return 'BlockExplorer(network: $network, name: $name, url: $url, addressUrl: $addressUrl, txUrl: $txUrl)';
}


}

/// @nodoc
abstract mixin class $BlockExplorerCopyWith<$Res>  {
  factory $BlockExplorerCopyWith(BlockExplorer value, $Res Function(BlockExplorer) _then) = _$BlockExplorerCopyWithImpl;
@useResult
$Res call({
 KaspaNetwork network, String name, String url, String addressUrl, String txUrl
});




}
/// @nodoc
class _$BlockExplorerCopyWithImpl<$Res>
    implements $BlockExplorerCopyWith<$Res> {
  _$BlockExplorerCopyWithImpl(this._self, this._then);

  final BlockExplorer _self;
  final $Res Function(BlockExplorer) _then;

/// Create a copy of BlockExplorer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? network = null,Object? name = null,Object? url = null,Object? addressUrl = null,Object? txUrl = null,}) {
  return _then(_self.copyWith(
network: null == network ? _self.network : network // ignore: cast_nullable_to_non_nullable
as KaspaNetwork,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,addressUrl: null == addressUrl ? _self.addressUrl : addressUrl // ignore: cast_nullable_to_non_nullable
as String,txUrl: null == txUrl ? _self.txUrl : txUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BlockExplorer].
extension BlockExplorerPatterns on BlockExplorer {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BlockExplorer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BlockExplorer() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BlockExplorer value)  $default,){
final _that = this;
switch (_that) {
case _BlockExplorer():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BlockExplorer value)?  $default,){
final _that = this;
switch (_that) {
case _BlockExplorer() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( KaspaNetwork network,  String name,  String url,  String addressUrl,  String txUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BlockExplorer() when $default != null:
return $default(_that.network,_that.name,_that.url,_that.addressUrl,_that.txUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( KaspaNetwork network,  String name,  String url,  String addressUrl,  String txUrl)  $default,) {final _that = this;
switch (_that) {
case _BlockExplorer():
return $default(_that.network,_that.name,_that.url,_that.addressUrl,_that.txUrl);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( KaspaNetwork network,  String name,  String url,  String addressUrl,  String txUrl)?  $default,) {final _that = this;
switch (_that) {
case _BlockExplorer() when $default != null:
return $default(_that.network,_that.name,_that.url,_that.addressUrl,_that.txUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BlockExplorer extends BlockExplorer {
  const _BlockExplorer({required this.network, required this.name, required this.url, required this.addressUrl, required this.txUrl}): super._();
  factory _BlockExplorer.fromJson(Map<String, dynamic> json) => _$BlockExplorerFromJson(json);

@override final  KaspaNetwork network;
@override final  String name;
@override final  String url;
@override final  String addressUrl;
@override final  String txUrl;

/// Create a copy of BlockExplorer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BlockExplorerCopyWith<_BlockExplorer> get copyWith => __$BlockExplorerCopyWithImpl<_BlockExplorer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BlockExplorerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BlockExplorer&&(identical(other.network, network) || other.network == network)&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.addressUrl, addressUrl) || other.addressUrl == addressUrl)&&(identical(other.txUrl, txUrl) || other.txUrl == txUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,network,name,url,addressUrl,txUrl);

@override
String toString() {
  return 'BlockExplorer(network: $network, name: $name, url: $url, addressUrl: $addressUrl, txUrl: $txUrl)';
}


}

/// @nodoc
abstract mixin class _$BlockExplorerCopyWith<$Res> implements $BlockExplorerCopyWith<$Res> {
  factory _$BlockExplorerCopyWith(_BlockExplorer value, $Res Function(_BlockExplorer) _then) = __$BlockExplorerCopyWithImpl;
@override @useResult
$Res call({
 KaspaNetwork network, String name, String url, String addressUrl, String txUrl
});




}
/// @nodoc
class __$BlockExplorerCopyWithImpl<$Res>
    implements _$BlockExplorerCopyWith<$Res> {
  __$BlockExplorerCopyWithImpl(this._self, this._then);

  final _BlockExplorer _self;
  final $Res Function(_BlockExplorer) _then;

/// Create a copy of BlockExplorer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? network = null,Object? name = null,Object? url = null,Object? addressUrl = null,Object? txUrl = null,}) {
  return _then(_BlockExplorer(
network: null == network ? _self.network : network // ignore: cast_nullable_to_non_nullable
as KaspaNetwork,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,addressUrl: null == addressUrl ? _self.addressUrl : addressUrl // ignore: cast_nullable_to_non_nullable
as String,txUrl: null == txUrl ? _self.txUrl : txUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
