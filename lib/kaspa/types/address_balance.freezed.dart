// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_balance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddressBalance {

 String get address; BigInt get balance;
/// Create a copy of AddressBalance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressBalanceCopyWith<AddressBalance> get copyWith => _$AddressBalanceCopyWithImpl<AddressBalance>(this as AddressBalance, _$identity);

  /// Serializes this AddressBalance to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressBalance&&(identical(other.address, address) || other.address == address)&&(identical(other.balance, balance) || other.balance == balance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,balance);

@override
String toString() {
  return 'AddressBalance(address: $address, balance: $balance)';
}


}

/// @nodoc
abstract mixin class $AddressBalanceCopyWith<$Res>  {
  factory $AddressBalanceCopyWith(AddressBalance value, $Res Function(AddressBalance) _then) = _$AddressBalanceCopyWithImpl;
@useResult
$Res call({
 String address, BigInt balance
});




}
/// @nodoc
class _$AddressBalanceCopyWithImpl<$Res>
    implements $AddressBalanceCopyWith<$Res> {
  _$AddressBalanceCopyWithImpl(this._self, this._then);

  final AddressBalance _self;
  final $Res Function(AddressBalance) _then;

/// Create a copy of AddressBalance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? address = null,Object? balance = null,}) {
  return _then(_self.copyWith(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}

}


/// Adds pattern-matching-related methods to [AddressBalance].
extension AddressBalancePatterns on AddressBalance {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddressBalance value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddressBalance() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddressBalance value)  $default,){
final _that = this;
switch (_that) {
case _AddressBalance():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddressBalance value)?  $default,){
final _that = this;
switch (_that) {
case _AddressBalance() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String address,  BigInt balance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddressBalance() when $default != null:
return $default(_that.address,_that.balance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String address,  BigInt balance)  $default,) {final _that = this;
switch (_that) {
case _AddressBalance():
return $default(_that.address,_that.balance);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String address,  BigInt balance)?  $default,) {final _that = this;
switch (_that) {
case _AddressBalance() when $default != null:
return $default(_that.address,_that.balance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddressBalance extends AddressBalance {
  const _AddressBalance({required this.address, required this.balance}): super._();
  factory _AddressBalance.fromJson(Map<String, dynamic> json) => _$AddressBalanceFromJson(json);

@override final  String address;
@override final  BigInt balance;

/// Create a copy of AddressBalance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressBalanceCopyWith<_AddressBalance> get copyWith => __$AddressBalanceCopyWithImpl<_AddressBalance>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddressBalanceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressBalance&&(identical(other.address, address) || other.address == address)&&(identical(other.balance, balance) || other.balance == balance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,balance);

@override
String toString() {
  return 'AddressBalance(address: $address, balance: $balance)';
}


}

/// @nodoc
abstract mixin class _$AddressBalanceCopyWith<$Res> implements $AddressBalanceCopyWith<$Res> {
  factory _$AddressBalanceCopyWith(_AddressBalance value, $Res Function(_AddressBalance) _then) = __$AddressBalanceCopyWithImpl;
@override @useResult
$Res call({
 String address, BigInt balance
});




}
/// @nodoc
class __$AddressBalanceCopyWithImpl<$Res>
    implements _$AddressBalanceCopyWith<$Res> {
  __$AddressBalanceCopyWithImpl(this._self, this._then);

  final _AddressBalance _self;
  final $Res Function(_AddressBalance) _then;

/// Create a copy of AddressBalance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? address = null,Object? balance = null,}) {
  return _then(_AddressBalance(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}


}

// dart format on
