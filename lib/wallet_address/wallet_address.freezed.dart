// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WalletAddress {

 int get index; AddressType get type; String get name; Address get address; bool get used;
/// Create a copy of WalletAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletAddressCopyWith<WalletAddress> get copyWith => _$WalletAddressCopyWithImpl<WalletAddress>(this as WalletAddress, _$identity);

  /// Serializes this WalletAddress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletAddress&&(identical(other.index, index) || other.index == index)&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.used, used) || other.used == used));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,index,type,name,address,used);

@override
String toString() {
  return 'WalletAddress(index: $index, type: $type, name: $name, address: $address, used: $used)';
}


}

/// @nodoc
abstract mixin class $WalletAddressCopyWith<$Res>  {
  factory $WalletAddressCopyWith(WalletAddress value, $Res Function(WalletAddress) _then) = _$WalletAddressCopyWithImpl;
@useResult
$Res call({
 int index, AddressType type, String name, Address address, bool used
});


$AddressCopyWith<$Res> get address;

}
/// @nodoc
class _$WalletAddressCopyWithImpl<$Res>
    implements $WalletAddressCopyWith<$Res> {
  _$WalletAddressCopyWithImpl(this._self, this._then);

  final WalletAddress _self;
  final $Res Function(WalletAddress) _then;

/// Create a copy of WalletAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? index = null,Object? type = null,Object? name = null,Object? address = null,Object? used = null,}) {
  return _then(_self.copyWith(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AddressType,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as Address,used: null == used ? _self.used : used // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of WalletAddress
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res> get address {
  
  return $AddressCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}


/// Adds pattern-matching-related methods to [WalletAddress].
extension WalletAddressPatterns on WalletAddress {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletAddress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletAddress() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletAddress value)  $default,){
final _that = this;
switch (_that) {
case _WalletAddress():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletAddress value)?  $default,){
final _that = this;
switch (_that) {
case _WalletAddress() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int index,  AddressType type,  String name,  Address address,  bool used)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletAddress() when $default != null:
return $default(_that.index,_that.type,_that.name,_that.address,_that.used);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int index,  AddressType type,  String name,  Address address,  bool used)  $default,) {final _that = this;
switch (_that) {
case _WalletAddress():
return $default(_that.index,_that.type,_that.name,_that.address,_that.used);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int index,  AddressType type,  String name,  Address address,  bool used)?  $default,) {final _that = this;
switch (_that) {
case _WalletAddress() when $default != null:
return $default(_that.index,_that.type,_that.name,_that.address,_that.used);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WalletAddress extends WalletAddress {
  const _WalletAddress({required this.index, required this.type, required this.name, required this.address, this.used = true}): super._();
  factory _WalletAddress.fromJson(Map<String, dynamic> json) => _$WalletAddressFromJson(json);

@override final  int index;
@override final  AddressType type;
@override final  String name;
@override final  Address address;
@override@JsonKey() final  bool used;

/// Create a copy of WalletAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletAddressCopyWith<_WalletAddress> get copyWith => __$WalletAddressCopyWithImpl<_WalletAddress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WalletAddressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletAddress&&(identical(other.index, index) || other.index == index)&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.used, used) || other.used == used));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,index,type,name,address,used);

@override
String toString() {
  return 'WalletAddress(index: $index, type: $type, name: $name, address: $address, used: $used)';
}


}

/// @nodoc
abstract mixin class _$WalletAddressCopyWith<$Res> implements $WalletAddressCopyWith<$Res> {
  factory _$WalletAddressCopyWith(_WalletAddress value, $Res Function(_WalletAddress) _then) = __$WalletAddressCopyWithImpl;
@override @useResult
$Res call({
 int index, AddressType type, String name, Address address, bool used
});


@override $AddressCopyWith<$Res> get address;

}
/// @nodoc
class __$WalletAddressCopyWithImpl<$Res>
    implements _$WalletAddressCopyWith<$Res> {
  __$WalletAddressCopyWithImpl(this._self, this._then);

  final _WalletAddress _self;
  final $Res Function(_WalletAddress) _then;

/// Create a copy of WalletAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? index = null,Object? type = null,Object? name = null,Object? address = null,Object? used = null,}) {
  return _then(_WalletAddress(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AddressType,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as Address,used: null == used ? _self.used : used // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of WalletAddress
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res> get address {
  
  return $AddressCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}

// dart format on
