// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Address {

 String get encoded; AddressPrefix get prefix;
/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressCopyWith<Address> get copyWith => _$AddressCopyWithImpl<Address>(this as Address, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Address&&(identical(other.encoded, encoded) || other.encoded == encoded)&&(identical(other.prefix, prefix) || other.prefix == prefix));
}


@override
int get hashCode => Object.hash(runtimeType,encoded,prefix);



}

/// @nodoc
abstract mixin class $AddressCopyWith<$Res>  {
  factory $AddressCopyWith(Address value, $Res Function(Address) _then) = _$AddressCopyWithImpl;
@useResult
$Res call({
 AddressPrefix prefix
});




}
/// @nodoc
class _$AddressCopyWithImpl<$Res>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._self, this._then);

  final Address _self;
  final $Res Function(Address) _then;

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? prefix = null,}) {
  return _then(_self.copyWith(
prefix: null == prefix ? _self.prefix : prefix // ignore: cast_nullable_to_non_nullable
as AddressPrefix,
  ));
}

}


/// Adds pattern-matching-related methods to [Address].
extension AddressPatterns on Address {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _AddressPublicKey value)?  publicKey,TResult Function( _AddressPubKeyECDSA value)?  pubKeyECDSA,TResult Function( _AddressScriptHash value)?  scriptHash,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddressPublicKey() when publicKey != null:
return publicKey(_that);case _AddressPubKeyECDSA() when pubKeyECDSA != null:
return pubKeyECDSA(_that);case _AddressScriptHash() when scriptHash != null:
return scriptHash(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _AddressPublicKey value)  publicKey,required TResult Function( _AddressPubKeyECDSA value)  pubKeyECDSA,required TResult Function( _AddressScriptHash value)  scriptHash,}){
final _that = this;
switch (_that) {
case _AddressPublicKey():
return publicKey(_that);case _AddressPubKeyECDSA():
return pubKeyECDSA(_that);case _AddressScriptHash():
return scriptHash(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _AddressPublicKey value)?  publicKey,TResult? Function( _AddressPubKeyECDSA value)?  pubKeyECDSA,TResult? Function( _AddressScriptHash value)?  scriptHash,}){
final _that = this;
switch (_that) {
case _AddressPublicKey() when publicKey != null:
return publicKey(_that);case _AddressPubKeyECDSA() when pubKeyECDSA != null:
return pubKeyECDSA(_that);case _AddressScriptHash() when scriptHash != null:
return scriptHash(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( AddressPrefix prefix,  Uint8List publicKey)?  publicKey,TResult Function( AddressPrefix prefix,  Uint8List publicKey)?  pubKeyECDSA,TResult Function( AddressPrefix prefix,  Uint8List hash)?  scriptHash,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddressPublicKey() when publicKey != null:
return publicKey(_that.prefix,_that.publicKey);case _AddressPubKeyECDSA() when pubKeyECDSA != null:
return pubKeyECDSA(_that.prefix,_that.publicKey);case _AddressScriptHash() when scriptHash != null:
return scriptHash(_that.prefix,_that.hash);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( AddressPrefix prefix,  Uint8List publicKey)  publicKey,required TResult Function( AddressPrefix prefix,  Uint8List publicKey)  pubKeyECDSA,required TResult Function( AddressPrefix prefix,  Uint8List hash)  scriptHash,}) {final _that = this;
switch (_that) {
case _AddressPublicKey():
return publicKey(_that.prefix,_that.publicKey);case _AddressPubKeyECDSA():
return pubKeyECDSA(_that.prefix,_that.publicKey);case _AddressScriptHash():
return scriptHash(_that.prefix,_that.hash);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( AddressPrefix prefix,  Uint8List publicKey)?  publicKey,TResult? Function( AddressPrefix prefix,  Uint8List publicKey)?  pubKeyECDSA,TResult? Function( AddressPrefix prefix,  Uint8List hash)?  scriptHash,}) {final _that = this;
switch (_that) {
case _AddressPublicKey() when publicKey != null:
return publicKey(_that.prefix,_that.publicKey);case _AddressPubKeyECDSA() when pubKeyECDSA != null:
return pubKeyECDSA(_that.prefix,_that.publicKey);case _AddressScriptHash() when scriptHash != null:
return scriptHash(_that.prefix,_that.hash);case _:
  return null;

}
}

}

/// @nodoc


class _AddressPublicKey extends Address {
   _AddressPublicKey({required this.prefix, required this.publicKey}): assert(publicKey.length == kPublicKeyLength),super._();
  

@override final  AddressPrefix prefix;
 final  Uint8List publicKey;

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressPublicKeyCopyWith<_AddressPublicKey> get copyWith => __$AddressPublicKeyCopyWithImpl<_AddressPublicKey>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressPublicKey&&(identical(other.prefix, prefix) || other.prefix == prefix)&&const DeepCollectionEquality().equals(other.publicKey, publicKey));
}


@override
int get hashCode => Object.hash(runtimeType,prefix,const DeepCollectionEquality().hash(publicKey));



}

/// @nodoc
abstract mixin class _$AddressPublicKeyCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$AddressPublicKeyCopyWith(_AddressPublicKey value, $Res Function(_AddressPublicKey) _then) = __$AddressPublicKeyCopyWithImpl;
@override @useResult
$Res call({
 AddressPrefix prefix, Uint8List publicKey
});




}
/// @nodoc
class __$AddressPublicKeyCopyWithImpl<$Res>
    implements _$AddressPublicKeyCopyWith<$Res> {
  __$AddressPublicKeyCopyWithImpl(this._self, this._then);

  final _AddressPublicKey _self;
  final $Res Function(_AddressPublicKey) _then;

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? prefix = null,Object? publicKey = null,}) {
  return _then(_AddressPublicKey(
prefix: null == prefix ? _self.prefix : prefix // ignore: cast_nullable_to_non_nullable
as AddressPrefix,publicKey: null == publicKey ? _self.publicKey : publicKey // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}


}

/// @nodoc


class _AddressPubKeyECDSA extends Address {
   _AddressPubKeyECDSA({required this.prefix, required this.publicKey}): assert(publicKey.length == kPublicKeySizeECDSA),super._();
  

@override final  AddressPrefix prefix;
 final  Uint8List publicKey;

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressPubKeyECDSACopyWith<_AddressPubKeyECDSA> get copyWith => __$AddressPubKeyECDSACopyWithImpl<_AddressPubKeyECDSA>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressPubKeyECDSA&&(identical(other.prefix, prefix) || other.prefix == prefix)&&const DeepCollectionEquality().equals(other.publicKey, publicKey));
}


@override
int get hashCode => Object.hash(runtimeType,prefix,const DeepCollectionEquality().hash(publicKey));



}

/// @nodoc
abstract mixin class _$AddressPubKeyECDSACopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$AddressPubKeyECDSACopyWith(_AddressPubKeyECDSA value, $Res Function(_AddressPubKeyECDSA) _then) = __$AddressPubKeyECDSACopyWithImpl;
@override @useResult
$Res call({
 AddressPrefix prefix, Uint8List publicKey
});




}
/// @nodoc
class __$AddressPubKeyECDSACopyWithImpl<$Res>
    implements _$AddressPubKeyECDSACopyWith<$Res> {
  __$AddressPubKeyECDSACopyWithImpl(this._self, this._then);

  final _AddressPubKeyECDSA _self;
  final $Res Function(_AddressPubKeyECDSA) _then;

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? prefix = null,Object? publicKey = null,}) {
  return _then(_AddressPubKeyECDSA(
prefix: null == prefix ? _self.prefix : prefix // ignore: cast_nullable_to_non_nullable
as AddressPrefix,publicKey: null == publicKey ? _self.publicKey : publicKey // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}


}

/// @nodoc


class _AddressScriptHash extends Address {
   _AddressScriptHash({required this.prefix, required this.hash}): super._();
  

@override final  AddressPrefix prefix;
 final  Uint8List hash;

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressScriptHashCopyWith<_AddressScriptHash> get copyWith => __$AddressScriptHashCopyWithImpl<_AddressScriptHash>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressScriptHash&&(identical(other.prefix, prefix) || other.prefix == prefix)&&const DeepCollectionEquality().equals(other.hash, hash));
}


@override
int get hashCode => Object.hash(runtimeType,prefix,const DeepCollectionEquality().hash(hash));



}

/// @nodoc
abstract mixin class _$AddressScriptHashCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$AddressScriptHashCopyWith(_AddressScriptHash value, $Res Function(_AddressScriptHash) _then) = __$AddressScriptHashCopyWithImpl;
@override @useResult
$Res call({
 AddressPrefix prefix, Uint8List hash
});




}
/// @nodoc
class __$AddressScriptHashCopyWithImpl<$Res>
    implements _$AddressScriptHashCopyWith<$Res> {
  __$AddressScriptHashCopyWithImpl(this._self, this._then);

  final _AddressScriptHash _self;
  final $Res Function(_AddressScriptHash) _then;

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? prefix = null,Object? hash = null,}) {
  return _then(_AddressScriptHash(
prefix: null == prefix ? _self.prefix : prefix // ignore: cast_nullable_to_non_nullable
as AddressPrefix,hash: null == hash ? _self.hash : hash // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}


}

// dart format on
