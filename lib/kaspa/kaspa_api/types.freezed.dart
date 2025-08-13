// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApiAddressBalance {

 String get address; int get balance;
/// Create a copy of ApiAddressBalance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiAddressBalanceCopyWith<ApiAddressBalance> get copyWith => _$ApiAddressBalanceCopyWithImpl<ApiAddressBalance>(this as ApiAddressBalance, _$identity);

  /// Serializes this ApiAddressBalance to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiAddressBalance&&(identical(other.address, address) || other.address == address)&&(identical(other.balance, balance) || other.balance == balance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,balance);

@override
String toString() {
  return 'ApiAddressBalance(address: $address, balance: $balance)';
}


}

/// @nodoc
abstract mixin class $ApiAddressBalanceCopyWith<$Res>  {
  factory $ApiAddressBalanceCopyWith(ApiAddressBalance value, $Res Function(ApiAddressBalance) _then) = _$ApiAddressBalanceCopyWithImpl;
@useResult
$Res call({
 String address, int balance
});




}
/// @nodoc
class _$ApiAddressBalanceCopyWithImpl<$Res>
    implements $ApiAddressBalanceCopyWith<$Res> {
  _$ApiAddressBalanceCopyWithImpl(this._self, this._then);

  final ApiAddressBalance _self;
  final $Res Function(ApiAddressBalance) _then;

/// Create a copy of ApiAddressBalance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? address = null,Object? balance = null,}) {
  return _then(_self.copyWith(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ApiAddressBalance].
extension ApiAddressBalancePatterns on ApiAddressBalance {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApiAddressBalance value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApiAddressBalance() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApiAddressBalance value)  $default,){
final _that = this;
switch (_that) {
case _ApiAddressBalance():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApiAddressBalance value)?  $default,){
final _that = this;
switch (_that) {
case _ApiAddressBalance() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String address,  int balance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApiAddressBalance() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String address,  int balance)  $default,) {final _that = this;
switch (_that) {
case _ApiAddressBalance():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String address,  int balance)?  $default,) {final _that = this;
switch (_that) {
case _ApiAddressBalance() when $default != null:
return $default(_that.address,_that.balance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ApiAddressBalance implements ApiAddressBalance {
  const _ApiAddressBalance({required this.address, required this.balance});
  factory _ApiAddressBalance.fromJson(Map<String, dynamic> json) => _$ApiAddressBalanceFromJson(json);

@override final  String address;
@override final  int balance;

/// Create a copy of ApiAddressBalance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiAddressBalanceCopyWith<_ApiAddressBalance> get copyWith => __$ApiAddressBalanceCopyWithImpl<_ApiAddressBalance>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApiAddressBalanceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiAddressBalance&&(identical(other.address, address) || other.address == address)&&(identical(other.balance, balance) || other.balance == balance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,balance);

@override
String toString() {
  return 'ApiAddressBalance(address: $address, balance: $balance)';
}


}

/// @nodoc
abstract mixin class _$ApiAddressBalanceCopyWith<$Res> implements $ApiAddressBalanceCopyWith<$Res> {
  factory _$ApiAddressBalanceCopyWith(_ApiAddressBalance value, $Res Function(_ApiAddressBalance) _then) = __$ApiAddressBalanceCopyWithImpl;
@override @useResult
$Res call({
 String address, int balance
});




}
/// @nodoc
class __$ApiAddressBalanceCopyWithImpl<$Res>
    implements _$ApiAddressBalanceCopyWith<$Res> {
  __$ApiAddressBalanceCopyWithImpl(this._self, this._then);

  final _ApiAddressBalance _self;
  final $Res Function(_ApiAddressBalance) _then;

/// Create a copy of ApiAddressBalance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? address = null,Object? balance = null,}) {
  return _then(_ApiAddressBalance(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ApiUtxo {

 String get address; ApiOutpoint get outpoint; ApiUtxoEntry get utxoEntry;
/// Create a copy of ApiUtxo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiUtxoCopyWith<ApiUtxo> get copyWith => _$ApiUtxoCopyWithImpl<ApiUtxo>(this as ApiUtxo, _$identity);

  /// Serializes this ApiUtxo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiUtxo&&(identical(other.address, address) || other.address == address)&&(identical(other.outpoint, outpoint) || other.outpoint == outpoint)&&(identical(other.utxoEntry, utxoEntry) || other.utxoEntry == utxoEntry));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,outpoint,utxoEntry);

@override
String toString() {
  return 'ApiUtxo(address: $address, outpoint: $outpoint, utxoEntry: $utxoEntry)';
}


}

/// @nodoc
abstract mixin class $ApiUtxoCopyWith<$Res>  {
  factory $ApiUtxoCopyWith(ApiUtxo value, $Res Function(ApiUtxo) _then) = _$ApiUtxoCopyWithImpl;
@useResult
$Res call({
 String address, ApiOutpoint outpoint, ApiUtxoEntry utxoEntry
});


$ApiOutpointCopyWith<$Res> get outpoint;$ApiUtxoEntryCopyWith<$Res> get utxoEntry;

}
/// @nodoc
class _$ApiUtxoCopyWithImpl<$Res>
    implements $ApiUtxoCopyWith<$Res> {
  _$ApiUtxoCopyWithImpl(this._self, this._then);

  final ApiUtxo _self;
  final $Res Function(ApiUtxo) _then;

/// Create a copy of ApiUtxo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? address = null,Object? outpoint = null,Object? utxoEntry = null,}) {
  return _then(_self.copyWith(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,outpoint: null == outpoint ? _self.outpoint : outpoint // ignore: cast_nullable_to_non_nullable
as ApiOutpoint,utxoEntry: null == utxoEntry ? _self.utxoEntry : utxoEntry // ignore: cast_nullable_to_non_nullable
as ApiUtxoEntry,
  ));
}
/// Create a copy of ApiUtxo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApiOutpointCopyWith<$Res> get outpoint {
  
  return $ApiOutpointCopyWith<$Res>(_self.outpoint, (value) {
    return _then(_self.copyWith(outpoint: value));
  });
}/// Create a copy of ApiUtxo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApiUtxoEntryCopyWith<$Res> get utxoEntry {
  
  return $ApiUtxoEntryCopyWith<$Res>(_self.utxoEntry, (value) {
    return _then(_self.copyWith(utxoEntry: value));
  });
}
}


/// Adds pattern-matching-related methods to [ApiUtxo].
extension ApiUtxoPatterns on ApiUtxo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApiUtxo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApiUtxo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApiUtxo value)  $default,){
final _that = this;
switch (_that) {
case _ApiUtxo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApiUtxo value)?  $default,){
final _that = this;
switch (_that) {
case _ApiUtxo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String address,  ApiOutpoint outpoint,  ApiUtxoEntry utxoEntry)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApiUtxo() when $default != null:
return $default(_that.address,_that.outpoint,_that.utxoEntry);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String address,  ApiOutpoint outpoint,  ApiUtxoEntry utxoEntry)  $default,) {final _that = this;
switch (_that) {
case _ApiUtxo():
return $default(_that.address,_that.outpoint,_that.utxoEntry);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String address,  ApiOutpoint outpoint,  ApiUtxoEntry utxoEntry)?  $default,) {final _that = this;
switch (_that) {
case _ApiUtxo() when $default != null:
return $default(_that.address,_that.outpoint,_that.utxoEntry);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ApiUtxo implements ApiUtxo {
  const _ApiUtxo({required this.address, required this.outpoint, required this.utxoEntry});
  factory _ApiUtxo.fromJson(Map<String, dynamic> json) => _$ApiUtxoFromJson(json);

@override final  String address;
@override final  ApiOutpoint outpoint;
@override final  ApiUtxoEntry utxoEntry;

/// Create a copy of ApiUtxo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiUtxoCopyWith<_ApiUtxo> get copyWith => __$ApiUtxoCopyWithImpl<_ApiUtxo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApiUtxoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiUtxo&&(identical(other.address, address) || other.address == address)&&(identical(other.outpoint, outpoint) || other.outpoint == outpoint)&&(identical(other.utxoEntry, utxoEntry) || other.utxoEntry == utxoEntry));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,outpoint,utxoEntry);

@override
String toString() {
  return 'ApiUtxo(address: $address, outpoint: $outpoint, utxoEntry: $utxoEntry)';
}


}

/// @nodoc
abstract mixin class _$ApiUtxoCopyWith<$Res> implements $ApiUtxoCopyWith<$Res> {
  factory _$ApiUtxoCopyWith(_ApiUtxo value, $Res Function(_ApiUtxo) _then) = __$ApiUtxoCopyWithImpl;
@override @useResult
$Res call({
 String address, ApiOutpoint outpoint, ApiUtxoEntry utxoEntry
});


@override $ApiOutpointCopyWith<$Res> get outpoint;@override $ApiUtxoEntryCopyWith<$Res> get utxoEntry;

}
/// @nodoc
class __$ApiUtxoCopyWithImpl<$Res>
    implements _$ApiUtxoCopyWith<$Res> {
  __$ApiUtxoCopyWithImpl(this._self, this._then);

  final _ApiUtxo _self;
  final $Res Function(_ApiUtxo) _then;

/// Create a copy of ApiUtxo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? address = null,Object? outpoint = null,Object? utxoEntry = null,}) {
  return _then(_ApiUtxo(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,outpoint: null == outpoint ? _self.outpoint : outpoint // ignore: cast_nullable_to_non_nullable
as ApiOutpoint,utxoEntry: null == utxoEntry ? _self.utxoEntry : utxoEntry // ignore: cast_nullable_to_non_nullable
as ApiUtxoEntry,
  ));
}

/// Create a copy of ApiUtxo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApiOutpointCopyWith<$Res> get outpoint {
  
  return $ApiOutpointCopyWith<$Res>(_self.outpoint, (value) {
    return _then(_self.copyWith(outpoint: value));
  });
}/// Create a copy of ApiUtxo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApiUtxoEntryCopyWith<$Res> get utxoEntry {
  
  return $ApiUtxoEntryCopyWith<$Res>(_self.utxoEntry, (value) {
    return _then(_self.copyWith(utxoEntry: value));
  });
}
}

ApiOutpoint _$ApiOutpointFromJson(
  Map<String, dynamic> json
) {
    return _Outpoint.fromJson(
      json
    );
}

/// @nodoc
mixin _$ApiOutpoint {

 String get transactionId; int get index;
/// Create a copy of ApiOutpoint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiOutpointCopyWith<ApiOutpoint> get copyWith => _$ApiOutpointCopyWithImpl<ApiOutpoint>(this as ApiOutpoint, _$identity);

  /// Serializes this ApiOutpoint to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiOutpoint&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.index, index) || other.index == index));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,index);

@override
String toString() {
  return 'ApiOutpoint(transactionId: $transactionId, index: $index)';
}


}

/// @nodoc
abstract mixin class $ApiOutpointCopyWith<$Res>  {
  factory $ApiOutpointCopyWith(ApiOutpoint value, $Res Function(ApiOutpoint) _then) = _$ApiOutpointCopyWithImpl;
@useResult
$Res call({
 String transactionId, int index
});




}
/// @nodoc
class _$ApiOutpointCopyWithImpl<$Res>
    implements $ApiOutpointCopyWith<$Res> {
  _$ApiOutpointCopyWithImpl(this._self, this._then);

  final ApiOutpoint _self;
  final $Res Function(ApiOutpoint) _then;

/// Create a copy of ApiOutpoint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionId = null,Object? index = null,}) {
  return _then(_self.copyWith(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ApiOutpoint].
extension ApiOutpointPatterns on ApiOutpoint {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Outpoint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Outpoint() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Outpoint value)  $default,){
final _that = this;
switch (_that) {
case _Outpoint():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Outpoint value)?  $default,){
final _that = this;
switch (_that) {
case _Outpoint() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String transactionId,  int index)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Outpoint() when $default != null:
return $default(_that.transactionId,_that.index);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String transactionId,  int index)  $default,) {final _that = this;
switch (_that) {
case _Outpoint():
return $default(_that.transactionId,_that.index);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String transactionId,  int index)?  $default,) {final _that = this;
switch (_that) {
case _Outpoint() when $default != null:
return $default(_that.transactionId,_that.index);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Outpoint implements ApiOutpoint {
  const _Outpoint({required this.transactionId, required this.index});
  factory _Outpoint.fromJson(Map<String, dynamic> json) => _$OutpointFromJson(json);

@override final  String transactionId;
@override final  int index;

/// Create a copy of ApiOutpoint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OutpointCopyWith<_Outpoint> get copyWith => __$OutpointCopyWithImpl<_Outpoint>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OutpointToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Outpoint&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.index, index) || other.index == index));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,index);

@override
String toString() {
  return 'ApiOutpoint(transactionId: $transactionId, index: $index)';
}


}

/// @nodoc
abstract mixin class _$OutpointCopyWith<$Res> implements $ApiOutpointCopyWith<$Res> {
  factory _$OutpointCopyWith(_Outpoint value, $Res Function(_Outpoint) _then) = __$OutpointCopyWithImpl;
@override @useResult
$Res call({
 String transactionId, int index
});




}
/// @nodoc
class __$OutpointCopyWithImpl<$Res>
    implements _$OutpointCopyWith<$Res> {
  __$OutpointCopyWithImpl(this._self, this._then);

  final _Outpoint _self;
  final $Res Function(_Outpoint) _then;

/// Create a copy of ApiOutpoint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = null,Object? index = null,}) {
  return _then(_Outpoint(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ApiUtxoEntry {

 BigInt get amount; ApiScriptPublicKey get scriptPublicKey; BigInt get blockDaaScore; bool get isCoinbase;
/// Create a copy of ApiUtxoEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiUtxoEntryCopyWith<ApiUtxoEntry> get copyWith => _$ApiUtxoEntryCopyWithImpl<ApiUtxoEntry>(this as ApiUtxoEntry, _$identity);

  /// Serializes this ApiUtxoEntry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiUtxoEntry&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.scriptPublicKey, scriptPublicKey) || other.scriptPublicKey == scriptPublicKey)&&(identical(other.blockDaaScore, blockDaaScore) || other.blockDaaScore == blockDaaScore)&&(identical(other.isCoinbase, isCoinbase) || other.isCoinbase == isCoinbase));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,scriptPublicKey,blockDaaScore,isCoinbase);

@override
String toString() {
  return 'ApiUtxoEntry(amount: $amount, scriptPublicKey: $scriptPublicKey, blockDaaScore: $blockDaaScore, isCoinbase: $isCoinbase)';
}


}

/// @nodoc
abstract mixin class $ApiUtxoEntryCopyWith<$Res>  {
  factory $ApiUtxoEntryCopyWith(ApiUtxoEntry value, $Res Function(ApiUtxoEntry) _then) = _$ApiUtxoEntryCopyWithImpl;
@useResult
$Res call({
 BigInt amount, ApiScriptPublicKey scriptPublicKey, BigInt blockDaaScore, bool isCoinbase
});


$ApiScriptPublicKeyCopyWith<$Res> get scriptPublicKey;

}
/// @nodoc
class _$ApiUtxoEntryCopyWithImpl<$Res>
    implements $ApiUtxoEntryCopyWith<$Res> {
  _$ApiUtxoEntryCopyWithImpl(this._self, this._then);

  final ApiUtxoEntry _self;
  final $Res Function(ApiUtxoEntry) _then;

/// Create a copy of ApiUtxoEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = null,Object? scriptPublicKey = null,Object? blockDaaScore = null,Object? isCoinbase = null,}) {
  return _then(_self.copyWith(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as BigInt,scriptPublicKey: null == scriptPublicKey ? _self.scriptPublicKey : scriptPublicKey // ignore: cast_nullable_to_non_nullable
as ApiScriptPublicKey,blockDaaScore: null == blockDaaScore ? _self.blockDaaScore : blockDaaScore // ignore: cast_nullable_to_non_nullable
as BigInt,isCoinbase: null == isCoinbase ? _self.isCoinbase : isCoinbase // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ApiUtxoEntry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApiScriptPublicKeyCopyWith<$Res> get scriptPublicKey {
  
  return $ApiScriptPublicKeyCopyWith<$Res>(_self.scriptPublicKey, (value) {
    return _then(_self.copyWith(scriptPublicKey: value));
  });
}
}


/// Adds pattern-matching-related methods to [ApiUtxoEntry].
extension ApiUtxoEntryPatterns on ApiUtxoEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApiUtxoEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApiUtxoEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApiUtxoEntry value)  $default,){
final _that = this;
switch (_that) {
case _ApiUtxoEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApiUtxoEntry value)?  $default,){
final _that = this;
switch (_that) {
case _ApiUtxoEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BigInt amount,  ApiScriptPublicKey scriptPublicKey,  BigInt blockDaaScore,  bool isCoinbase)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApiUtxoEntry() when $default != null:
return $default(_that.amount,_that.scriptPublicKey,_that.blockDaaScore,_that.isCoinbase);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BigInt amount,  ApiScriptPublicKey scriptPublicKey,  BigInt blockDaaScore,  bool isCoinbase)  $default,) {final _that = this;
switch (_that) {
case _ApiUtxoEntry():
return $default(_that.amount,_that.scriptPublicKey,_that.blockDaaScore,_that.isCoinbase);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BigInt amount,  ApiScriptPublicKey scriptPublicKey,  BigInt blockDaaScore,  bool isCoinbase)?  $default,) {final _that = this;
switch (_that) {
case _ApiUtxoEntry() when $default != null:
return $default(_that.amount,_that.scriptPublicKey,_that.blockDaaScore,_that.isCoinbase);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ApiUtxoEntry implements ApiUtxoEntry {
  const _ApiUtxoEntry({required this.amount, required this.scriptPublicKey, required this.blockDaaScore, this.isCoinbase = false});
  factory _ApiUtxoEntry.fromJson(Map<String, dynamic> json) => _$ApiUtxoEntryFromJson(json);

@override final  BigInt amount;
@override final  ApiScriptPublicKey scriptPublicKey;
@override final  BigInt blockDaaScore;
@override@JsonKey() final  bool isCoinbase;

/// Create a copy of ApiUtxoEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiUtxoEntryCopyWith<_ApiUtxoEntry> get copyWith => __$ApiUtxoEntryCopyWithImpl<_ApiUtxoEntry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApiUtxoEntryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiUtxoEntry&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.scriptPublicKey, scriptPublicKey) || other.scriptPublicKey == scriptPublicKey)&&(identical(other.blockDaaScore, blockDaaScore) || other.blockDaaScore == blockDaaScore)&&(identical(other.isCoinbase, isCoinbase) || other.isCoinbase == isCoinbase));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,scriptPublicKey,blockDaaScore,isCoinbase);

@override
String toString() {
  return 'ApiUtxoEntry(amount: $amount, scriptPublicKey: $scriptPublicKey, blockDaaScore: $blockDaaScore, isCoinbase: $isCoinbase)';
}


}

/// @nodoc
abstract mixin class _$ApiUtxoEntryCopyWith<$Res> implements $ApiUtxoEntryCopyWith<$Res> {
  factory _$ApiUtxoEntryCopyWith(_ApiUtxoEntry value, $Res Function(_ApiUtxoEntry) _then) = __$ApiUtxoEntryCopyWithImpl;
@override @useResult
$Res call({
 BigInt amount, ApiScriptPublicKey scriptPublicKey, BigInt blockDaaScore, bool isCoinbase
});


@override $ApiScriptPublicKeyCopyWith<$Res> get scriptPublicKey;

}
/// @nodoc
class __$ApiUtxoEntryCopyWithImpl<$Res>
    implements _$ApiUtxoEntryCopyWith<$Res> {
  __$ApiUtxoEntryCopyWithImpl(this._self, this._then);

  final _ApiUtxoEntry _self;
  final $Res Function(_ApiUtxoEntry) _then;

/// Create a copy of ApiUtxoEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? scriptPublicKey = null,Object? blockDaaScore = null,Object? isCoinbase = null,}) {
  return _then(_ApiUtxoEntry(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as BigInt,scriptPublicKey: null == scriptPublicKey ? _self.scriptPublicKey : scriptPublicKey // ignore: cast_nullable_to_non_nullable
as ApiScriptPublicKey,blockDaaScore: null == blockDaaScore ? _self.blockDaaScore : blockDaaScore // ignore: cast_nullable_to_non_nullable
as BigInt,isCoinbase: null == isCoinbase ? _self.isCoinbase : isCoinbase // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ApiUtxoEntry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApiScriptPublicKeyCopyWith<$Res> get scriptPublicKey {
  
  return $ApiScriptPublicKeyCopyWith<$Res>(_self.scriptPublicKey, (value) {
    return _then(_self.copyWith(scriptPublicKey: value));
  });
}
}


/// @nodoc
mixin _$ApiScriptPublicKey {

 String get scriptPublicKey; int get version;
/// Create a copy of ApiScriptPublicKey
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiScriptPublicKeyCopyWith<ApiScriptPublicKey> get copyWith => _$ApiScriptPublicKeyCopyWithImpl<ApiScriptPublicKey>(this as ApiScriptPublicKey, _$identity);

  /// Serializes this ApiScriptPublicKey to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiScriptPublicKey&&(identical(other.scriptPublicKey, scriptPublicKey) || other.scriptPublicKey == scriptPublicKey)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,scriptPublicKey,version);

@override
String toString() {
  return 'ApiScriptPublicKey(scriptPublicKey: $scriptPublicKey, version: $version)';
}


}

/// @nodoc
abstract mixin class $ApiScriptPublicKeyCopyWith<$Res>  {
  factory $ApiScriptPublicKeyCopyWith(ApiScriptPublicKey value, $Res Function(ApiScriptPublicKey) _then) = _$ApiScriptPublicKeyCopyWithImpl;
@useResult
$Res call({
 String scriptPublicKey, int version
});




}
/// @nodoc
class _$ApiScriptPublicKeyCopyWithImpl<$Res>
    implements $ApiScriptPublicKeyCopyWith<$Res> {
  _$ApiScriptPublicKeyCopyWithImpl(this._self, this._then);

  final ApiScriptPublicKey _self;
  final $Res Function(ApiScriptPublicKey) _then;

/// Create a copy of ApiScriptPublicKey
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? scriptPublicKey = null,Object? version = null,}) {
  return _then(_self.copyWith(
scriptPublicKey: null == scriptPublicKey ? _self.scriptPublicKey : scriptPublicKey // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ApiScriptPublicKey].
extension ApiScriptPublicKeyPatterns on ApiScriptPublicKey {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApiScriptPublicKey value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApiScriptPublicKey() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApiScriptPublicKey value)  $default,){
final _that = this;
switch (_that) {
case _ApiScriptPublicKey():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApiScriptPublicKey value)?  $default,){
final _that = this;
switch (_that) {
case _ApiScriptPublicKey() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String scriptPublicKey,  int version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApiScriptPublicKey() when $default != null:
return $default(_that.scriptPublicKey,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String scriptPublicKey,  int version)  $default,) {final _that = this;
switch (_that) {
case _ApiScriptPublicKey():
return $default(_that.scriptPublicKey,_that.version);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String scriptPublicKey,  int version)?  $default,) {final _that = this;
switch (_that) {
case _ApiScriptPublicKey() when $default != null:
return $default(_that.scriptPublicKey,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ApiScriptPublicKey implements ApiScriptPublicKey {
  const _ApiScriptPublicKey({required this.scriptPublicKey, this.version = 0});
  factory _ApiScriptPublicKey.fromJson(Map<String, dynamic> json) => _$ApiScriptPublicKeyFromJson(json);

@override final  String scriptPublicKey;
@override@JsonKey() final  int version;

/// Create a copy of ApiScriptPublicKey
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiScriptPublicKeyCopyWith<_ApiScriptPublicKey> get copyWith => __$ApiScriptPublicKeyCopyWithImpl<_ApiScriptPublicKey>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApiScriptPublicKeyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiScriptPublicKey&&(identical(other.scriptPublicKey, scriptPublicKey) || other.scriptPublicKey == scriptPublicKey)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,scriptPublicKey,version);

@override
String toString() {
  return 'ApiScriptPublicKey(scriptPublicKey: $scriptPublicKey, version: $version)';
}


}

/// @nodoc
abstract mixin class _$ApiScriptPublicKeyCopyWith<$Res> implements $ApiScriptPublicKeyCopyWith<$Res> {
  factory _$ApiScriptPublicKeyCopyWith(_ApiScriptPublicKey value, $Res Function(_ApiScriptPublicKey) _then) = __$ApiScriptPublicKeyCopyWithImpl;
@override @useResult
$Res call({
 String scriptPublicKey, int version
});




}
/// @nodoc
class __$ApiScriptPublicKeyCopyWithImpl<$Res>
    implements _$ApiScriptPublicKeyCopyWith<$Res> {
  __$ApiScriptPublicKeyCopyWithImpl(this._self, this._then);

  final _ApiScriptPublicKey _self;
  final $Res Function(_ApiScriptPublicKey) _then;

/// Create a copy of ApiScriptPublicKey
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? scriptPublicKey = null,Object? version = null,}) {
  return _then(_ApiScriptPublicKey(
scriptPublicKey: null == scriptPublicKey ? _self.scriptPublicKey : scriptPublicKey // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ApiTxLink {

 String? get txReceived; String? get txSpent;
/// Create a copy of ApiTxLink
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiTxLinkCopyWith<ApiTxLink> get copyWith => _$ApiTxLinkCopyWithImpl<ApiTxLink>(this as ApiTxLink, _$identity);

  /// Serializes this ApiTxLink to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiTxLink&&(identical(other.txReceived, txReceived) || other.txReceived == txReceived)&&(identical(other.txSpent, txSpent) || other.txSpent == txSpent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,txReceived,txSpent);

@override
String toString() {
  return 'ApiTxLink(txReceived: $txReceived, txSpent: $txSpent)';
}


}

/// @nodoc
abstract mixin class $ApiTxLinkCopyWith<$Res>  {
  factory $ApiTxLinkCopyWith(ApiTxLink value, $Res Function(ApiTxLink) _then) = _$ApiTxLinkCopyWithImpl;
@useResult
$Res call({
 String? txReceived, String? txSpent
});




}
/// @nodoc
class _$ApiTxLinkCopyWithImpl<$Res>
    implements $ApiTxLinkCopyWith<$Res> {
  _$ApiTxLinkCopyWithImpl(this._self, this._then);

  final ApiTxLink _self;
  final $Res Function(ApiTxLink) _then;

/// Create a copy of ApiTxLink
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? txReceived = freezed,Object? txSpent = freezed,}) {
  return _then(_self.copyWith(
txReceived: freezed == txReceived ? _self.txReceived : txReceived // ignore: cast_nullable_to_non_nullable
as String?,txSpent: freezed == txSpent ? _self.txSpent : txSpent // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ApiTxLink].
extension ApiTxLinkPatterns on ApiTxLink {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApiTxLink value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApiTxLink() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApiTxLink value)  $default,){
final _that = this;
switch (_that) {
case _ApiTxLink():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApiTxLink value)?  $default,){
final _that = this;
switch (_that) {
case _ApiTxLink() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? txReceived,  String? txSpent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApiTxLink() when $default != null:
return $default(_that.txReceived,_that.txSpent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? txReceived,  String? txSpent)  $default,) {final _that = this;
switch (_that) {
case _ApiTxLink():
return $default(_that.txReceived,_that.txSpent);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? txReceived,  String? txSpent)?  $default,) {final _that = this;
switch (_that) {
case _ApiTxLink() when $default != null:
return $default(_that.txReceived,_that.txSpent);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _ApiTxLink implements ApiTxLink {
  const _ApiTxLink({this.txReceived, this.txSpent});
  factory _ApiTxLink.fromJson(Map<String, dynamic> json) => _$ApiTxLinkFromJson(json);

@override final  String? txReceived;
@override final  String? txSpent;

/// Create a copy of ApiTxLink
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiTxLinkCopyWith<_ApiTxLink> get copyWith => __$ApiTxLinkCopyWithImpl<_ApiTxLink>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApiTxLinkToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiTxLink&&(identical(other.txReceived, txReceived) || other.txReceived == txReceived)&&(identical(other.txSpent, txSpent) || other.txSpent == txSpent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,txReceived,txSpent);

@override
String toString() {
  return 'ApiTxLink(txReceived: $txReceived, txSpent: $txSpent)';
}


}

/// @nodoc
abstract mixin class _$ApiTxLinkCopyWith<$Res> implements $ApiTxLinkCopyWith<$Res> {
  factory _$ApiTxLinkCopyWith(_ApiTxLink value, $Res Function(_ApiTxLink) _then) = __$ApiTxLinkCopyWithImpl;
@override @useResult
$Res call({
 String? txReceived, String? txSpent
});




}
/// @nodoc
class __$ApiTxLinkCopyWithImpl<$Res>
    implements _$ApiTxLinkCopyWith<$Res> {
  __$ApiTxLinkCopyWithImpl(this._self, this._then);

  final _ApiTxLink _self;
  final $Res Function(_ApiTxLink) _then;

/// Create a copy of ApiTxLink
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? txReceived = freezed,Object? txSpent = freezed,}) {
  return _then(_ApiTxLink(
txReceived: freezed == txReceived ? _self.txReceived : txReceived // ignore: cast_nullable_to_non_nullable
as String?,txSpent: freezed == txSpent ? _self.txSpent : txSpent // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ApiTxId {

 String get transactionId; int? get blockTime;
/// Create a copy of ApiTxId
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiTxIdCopyWith<ApiTxId> get copyWith => _$ApiTxIdCopyWithImpl<ApiTxId>(this as ApiTxId, _$identity);

  /// Serializes this ApiTxId to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiTxId&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.blockTime, blockTime) || other.blockTime == blockTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,blockTime);

@override
String toString() {
  return 'ApiTxId(transactionId: $transactionId, blockTime: $blockTime)';
}


}

/// @nodoc
abstract mixin class $ApiTxIdCopyWith<$Res>  {
  factory $ApiTxIdCopyWith(ApiTxId value, $Res Function(ApiTxId) _then) = _$ApiTxIdCopyWithImpl;
@useResult
$Res call({
 String transactionId, int? blockTime
});




}
/// @nodoc
class _$ApiTxIdCopyWithImpl<$Res>
    implements $ApiTxIdCopyWith<$Res> {
  _$ApiTxIdCopyWithImpl(this._self, this._then);

  final ApiTxId _self;
  final $Res Function(ApiTxId) _then;

/// Create a copy of ApiTxId
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionId = null,Object? blockTime = freezed,}) {
  return _then(_self.copyWith(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,blockTime: freezed == blockTime ? _self.blockTime : blockTime // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ApiTxId].
extension ApiTxIdPatterns on ApiTxId {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApiTxId value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApiTxId() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApiTxId value)  $default,){
final _that = this;
switch (_that) {
case _ApiTxId():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApiTxId value)?  $default,){
final _that = this;
switch (_that) {
case _ApiTxId() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String transactionId,  int? blockTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApiTxId() when $default != null:
return $default(_that.transactionId,_that.blockTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String transactionId,  int? blockTime)  $default,) {final _that = this;
switch (_that) {
case _ApiTxId():
return $default(_that.transactionId,_that.blockTime);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String transactionId,  int? blockTime)?  $default,) {final _that = this;
switch (_that) {
case _ApiTxId() when $default != null:
return $default(_that.transactionId,_that.blockTime);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _ApiTxId implements ApiTxId {
  const _ApiTxId({required this.transactionId, this.blockTime});
  factory _ApiTxId.fromJson(Map<String, dynamic> json) => _$ApiTxIdFromJson(json);

@override final  String transactionId;
@override final  int? blockTime;

/// Create a copy of ApiTxId
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiTxIdCopyWith<_ApiTxId> get copyWith => __$ApiTxIdCopyWithImpl<_ApiTxId>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApiTxIdToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiTxId&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.blockTime, blockTime) || other.blockTime == blockTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,blockTime);

@override
String toString() {
  return 'ApiTxId(transactionId: $transactionId, blockTime: $blockTime)';
}


}

/// @nodoc
abstract mixin class _$ApiTxIdCopyWith<$Res> implements $ApiTxIdCopyWith<$Res> {
  factory _$ApiTxIdCopyWith(_ApiTxId value, $Res Function(_ApiTxId) _then) = __$ApiTxIdCopyWithImpl;
@override @useResult
$Res call({
 String transactionId, int? blockTime
});




}
/// @nodoc
class __$ApiTxIdCopyWithImpl<$Res>
    implements _$ApiTxIdCopyWith<$Res> {
  __$ApiTxIdCopyWithImpl(this._self, this._then);

  final _ApiTxId _self;
  final $Res Function(_ApiTxId) _then;

/// Create a copy of ApiTxId
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = null,Object? blockTime = freezed,}) {
  return _then(_ApiTxId(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,blockTime: freezed == blockTime ? _self.blockTime : blockTime // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$ApiTxInput {

 String get transactionId; int get index; String get previousOutpointHash; BigInt get previousOutpointIndex; String get signatureScript;@JsonKey(fromJson: _sigOpCountFromJson) int get sigOpCount;// new fields
 String? get previousOutpointAddress; int? get previousOutpointAmount;
/// Create a copy of ApiTxInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiTxInputCopyWith<ApiTxInput> get copyWith => _$ApiTxInputCopyWithImpl<ApiTxInput>(this as ApiTxInput, _$identity);

  /// Serializes this ApiTxInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiTxInput&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.index, index) || other.index == index)&&(identical(other.previousOutpointHash, previousOutpointHash) || other.previousOutpointHash == previousOutpointHash)&&(identical(other.previousOutpointIndex, previousOutpointIndex) || other.previousOutpointIndex == previousOutpointIndex)&&(identical(other.signatureScript, signatureScript) || other.signatureScript == signatureScript)&&(identical(other.sigOpCount, sigOpCount) || other.sigOpCount == sigOpCount)&&(identical(other.previousOutpointAddress, previousOutpointAddress) || other.previousOutpointAddress == previousOutpointAddress)&&(identical(other.previousOutpointAmount, previousOutpointAmount) || other.previousOutpointAmount == previousOutpointAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,index,previousOutpointHash,previousOutpointIndex,signatureScript,sigOpCount,previousOutpointAddress,previousOutpointAmount);

@override
String toString() {
  return 'ApiTxInput(transactionId: $transactionId, index: $index, previousOutpointHash: $previousOutpointHash, previousOutpointIndex: $previousOutpointIndex, signatureScript: $signatureScript, sigOpCount: $sigOpCount, previousOutpointAddress: $previousOutpointAddress, previousOutpointAmount: $previousOutpointAmount)';
}


}

/// @nodoc
abstract mixin class $ApiTxInputCopyWith<$Res>  {
  factory $ApiTxInputCopyWith(ApiTxInput value, $Res Function(ApiTxInput) _then) = _$ApiTxInputCopyWithImpl;
@useResult
$Res call({
 String transactionId, int index, String previousOutpointHash, BigInt previousOutpointIndex, String signatureScript,@JsonKey(fromJson: _sigOpCountFromJson) int sigOpCount, String? previousOutpointAddress, int? previousOutpointAmount
});




}
/// @nodoc
class _$ApiTxInputCopyWithImpl<$Res>
    implements $ApiTxInputCopyWith<$Res> {
  _$ApiTxInputCopyWithImpl(this._self, this._then);

  final ApiTxInput _self;
  final $Res Function(ApiTxInput) _then;

/// Create a copy of ApiTxInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionId = null,Object? index = null,Object? previousOutpointHash = null,Object? previousOutpointIndex = null,Object? signatureScript = null,Object? sigOpCount = null,Object? previousOutpointAddress = freezed,Object? previousOutpointAmount = freezed,}) {
  return _then(_self.copyWith(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,previousOutpointHash: null == previousOutpointHash ? _self.previousOutpointHash : previousOutpointHash // ignore: cast_nullable_to_non_nullable
as String,previousOutpointIndex: null == previousOutpointIndex ? _self.previousOutpointIndex : previousOutpointIndex // ignore: cast_nullable_to_non_nullable
as BigInt,signatureScript: null == signatureScript ? _self.signatureScript : signatureScript // ignore: cast_nullable_to_non_nullable
as String,sigOpCount: null == sigOpCount ? _self.sigOpCount : sigOpCount // ignore: cast_nullable_to_non_nullable
as int,previousOutpointAddress: freezed == previousOutpointAddress ? _self.previousOutpointAddress : previousOutpointAddress // ignore: cast_nullable_to_non_nullable
as String?,previousOutpointAmount: freezed == previousOutpointAmount ? _self.previousOutpointAmount : previousOutpointAmount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ApiTxInput].
extension ApiTxInputPatterns on ApiTxInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApiTxInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApiTxInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApiTxInput value)  $default,){
final _that = this;
switch (_that) {
case _ApiTxInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApiTxInput value)?  $default,){
final _that = this;
switch (_that) {
case _ApiTxInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String transactionId,  int index,  String previousOutpointHash,  BigInt previousOutpointIndex,  String signatureScript, @JsonKey(fromJson: _sigOpCountFromJson)  int sigOpCount,  String? previousOutpointAddress,  int? previousOutpointAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApiTxInput() when $default != null:
return $default(_that.transactionId,_that.index,_that.previousOutpointHash,_that.previousOutpointIndex,_that.signatureScript,_that.sigOpCount,_that.previousOutpointAddress,_that.previousOutpointAmount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String transactionId,  int index,  String previousOutpointHash,  BigInt previousOutpointIndex,  String signatureScript, @JsonKey(fromJson: _sigOpCountFromJson)  int sigOpCount,  String? previousOutpointAddress,  int? previousOutpointAmount)  $default,) {final _that = this;
switch (_that) {
case _ApiTxInput():
return $default(_that.transactionId,_that.index,_that.previousOutpointHash,_that.previousOutpointIndex,_that.signatureScript,_that.sigOpCount,_that.previousOutpointAddress,_that.previousOutpointAmount);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String transactionId,  int index,  String previousOutpointHash,  BigInt previousOutpointIndex,  String signatureScript, @JsonKey(fromJson: _sigOpCountFromJson)  int sigOpCount,  String? previousOutpointAddress,  int? previousOutpointAmount)?  $default,) {final _that = this;
switch (_that) {
case _ApiTxInput() when $default != null:
return $default(_that.transactionId,_that.index,_that.previousOutpointHash,_that.previousOutpointIndex,_that.signatureScript,_that.sigOpCount,_that.previousOutpointAddress,_that.previousOutpointAmount);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _ApiTxInput implements ApiTxInput {
  const _ApiTxInput({required this.transactionId, required this.index, required this.previousOutpointHash, required this.previousOutpointIndex, required this.signatureScript, @JsonKey(fromJson: _sigOpCountFromJson) required this.sigOpCount, this.previousOutpointAddress, this.previousOutpointAmount});
  factory _ApiTxInput.fromJson(Map<String, dynamic> json) => _$ApiTxInputFromJson(json);

@override final  String transactionId;
@override final  int index;
@override final  String previousOutpointHash;
@override final  BigInt previousOutpointIndex;
@override final  String signatureScript;
@override@JsonKey(fromJson: _sigOpCountFromJson) final  int sigOpCount;
// new fields
@override final  String? previousOutpointAddress;
@override final  int? previousOutpointAmount;

/// Create a copy of ApiTxInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiTxInputCopyWith<_ApiTxInput> get copyWith => __$ApiTxInputCopyWithImpl<_ApiTxInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApiTxInputToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiTxInput&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.index, index) || other.index == index)&&(identical(other.previousOutpointHash, previousOutpointHash) || other.previousOutpointHash == previousOutpointHash)&&(identical(other.previousOutpointIndex, previousOutpointIndex) || other.previousOutpointIndex == previousOutpointIndex)&&(identical(other.signatureScript, signatureScript) || other.signatureScript == signatureScript)&&(identical(other.sigOpCount, sigOpCount) || other.sigOpCount == sigOpCount)&&(identical(other.previousOutpointAddress, previousOutpointAddress) || other.previousOutpointAddress == previousOutpointAddress)&&(identical(other.previousOutpointAmount, previousOutpointAmount) || other.previousOutpointAmount == previousOutpointAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,index,previousOutpointHash,previousOutpointIndex,signatureScript,sigOpCount,previousOutpointAddress,previousOutpointAmount);

@override
String toString() {
  return 'ApiTxInput(transactionId: $transactionId, index: $index, previousOutpointHash: $previousOutpointHash, previousOutpointIndex: $previousOutpointIndex, signatureScript: $signatureScript, sigOpCount: $sigOpCount, previousOutpointAddress: $previousOutpointAddress, previousOutpointAmount: $previousOutpointAmount)';
}


}

/// @nodoc
abstract mixin class _$ApiTxInputCopyWith<$Res> implements $ApiTxInputCopyWith<$Res> {
  factory _$ApiTxInputCopyWith(_ApiTxInput value, $Res Function(_ApiTxInput) _then) = __$ApiTxInputCopyWithImpl;
@override @useResult
$Res call({
 String transactionId, int index, String previousOutpointHash, BigInt previousOutpointIndex, String signatureScript,@JsonKey(fromJson: _sigOpCountFromJson) int sigOpCount, String? previousOutpointAddress, int? previousOutpointAmount
});




}
/// @nodoc
class __$ApiTxInputCopyWithImpl<$Res>
    implements _$ApiTxInputCopyWith<$Res> {
  __$ApiTxInputCopyWithImpl(this._self, this._then);

  final _ApiTxInput _self;
  final $Res Function(_ApiTxInput) _then;

/// Create a copy of ApiTxInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = null,Object? index = null,Object? previousOutpointHash = null,Object? previousOutpointIndex = null,Object? signatureScript = null,Object? sigOpCount = null,Object? previousOutpointAddress = freezed,Object? previousOutpointAmount = freezed,}) {
  return _then(_ApiTxInput(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,previousOutpointHash: null == previousOutpointHash ? _self.previousOutpointHash : previousOutpointHash // ignore: cast_nullable_to_non_nullable
as String,previousOutpointIndex: null == previousOutpointIndex ? _self.previousOutpointIndex : previousOutpointIndex // ignore: cast_nullable_to_non_nullable
as BigInt,signatureScript: null == signatureScript ? _self.signatureScript : signatureScript // ignore: cast_nullable_to_non_nullable
as String,sigOpCount: null == sigOpCount ? _self.sigOpCount : sigOpCount // ignore: cast_nullable_to_non_nullable
as int,previousOutpointAddress: freezed == previousOutpointAddress ? _self.previousOutpointAddress : previousOutpointAddress // ignore: cast_nullable_to_non_nullable
as String?,previousOutpointAmount: freezed == previousOutpointAmount ? _self.previousOutpointAmount : previousOutpointAmount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$ApiTxOutput {

 String get transactionId; int get index; int get amount; String get scriptPublicKey; String get scriptPublicKeyAddress; String get scriptPublicKeyType;
/// Create a copy of ApiTxOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiTxOutputCopyWith<ApiTxOutput> get copyWith => _$ApiTxOutputCopyWithImpl<ApiTxOutput>(this as ApiTxOutput, _$identity);

  /// Serializes this ApiTxOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiTxOutput&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.index, index) || other.index == index)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.scriptPublicKey, scriptPublicKey) || other.scriptPublicKey == scriptPublicKey)&&(identical(other.scriptPublicKeyAddress, scriptPublicKeyAddress) || other.scriptPublicKeyAddress == scriptPublicKeyAddress)&&(identical(other.scriptPublicKeyType, scriptPublicKeyType) || other.scriptPublicKeyType == scriptPublicKeyType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,index,amount,scriptPublicKey,scriptPublicKeyAddress,scriptPublicKeyType);

@override
String toString() {
  return 'ApiTxOutput(transactionId: $transactionId, index: $index, amount: $amount, scriptPublicKey: $scriptPublicKey, scriptPublicKeyAddress: $scriptPublicKeyAddress, scriptPublicKeyType: $scriptPublicKeyType)';
}


}

/// @nodoc
abstract mixin class $ApiTxOutputCopyWith<$Res>  {
  factory $ApiTxOutputCopyWith(ApiTxOutput value, $Res Function(ApiTxOutput) _then) = _$ApiTxOutputCopyWithImpl;
@useResult
$Res call({
 String transactionId, int index, int amount, String scriptPublicKey, String scriptPublicKeyAddress, String scriptPublicKeyType
});




}
/// @nodoc
class _$ApiTxOutputCopyWithImpl<$Res>
    implements $ApiTxOutputCopyWith<$Res> {
  _$ApiTxOutputCopyWithImpl(this._self, this._then);

  final ApiTxOutput _self;
  final $Res Function(ApiTxOutput) _then;

/// Create a copy of ApiTxOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionId = null,Object? index = null,Object? amount = null,Object? scriptPublicKey = null,Object? scriptPublicKeyAddress = null,Object? scriptPublicKeyType = null,}) {
  return _then(_self.copyWith(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,scriptPublicKey: null == scriptPublicKey ? _self.scriptPublicKey : scriptPublicKey // ignore: cast_nullable_to_non_nullable
as String,scriptPublicKeyAddress: null == scriptPublicKeyAddress ? _self.scriptPublicKeyAddress : scriptPublicKeyAddress // ignore: cast_nullable_to_non_nullable
as String,scriptPublicKeyType: null == scriptPublicKeyType ? _self.scriptPublicKeyType : scriptPublicKeyType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ApiTxOutput].
extension ApiTxOutputPatterns on ApiTxOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApiTxOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApiTxOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApiTxOutput value)  $default,){
final _that = this;
switch (_that) {
case _ApiTxOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApiTxOutput value)?  $default,){
final _that = this;
switch (_that) {
case _ApiTxOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String transactionId,  int index,  int amount,  String scriptPublicKey,  String scriptPublicKeyAddress,  String scriptPublicKeyType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApiTxOutput() when $default != null:
return $default(_that.transactionId,_that.index,_that.amount,_that.scriptPublicKey,_that.scriptPublicKeyAddress,_that.scriptPublicKeyType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String transactionId,  int index,  int amount,  String scriptPublicKey,  String scriptPublicKeyAddress,  String scriptPublicKeyType)  $default,) {final _that = this;
switch (_that) {
case _ApiTxOutput():
return $default(_that.transactionId,_that.index,_that.amount,_that.scriptPublicKey,_that.scriptPublicKeyAddress,_that.scriptPublicKeyType);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String transactionId,  int index,  int amount,  String scriptPublicKey,  String scriptPublicKeyAddress,  String scriptPublicKeyType)?  $default,) {final _that = this;
switch (_that) {
case _ApiTxOutput() when $default != null:
return $default(_that.transactionId,_that.index,_that.amount,_that.scriptPublicKey,_that.scriptPublicKeyAddress,_that.scriptPublicKeyType);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _ApiTxOutput implements ApiTxOutput {
  const _ApiTxOutput({required this.transactionId, required this.index, required this.amount, required this.scriptPublicKey, required this.scriptPublicKeyAddress, required this.scriptPublicKeyType});
  factory _ApiTxOutput.fromJson(Map<String, dynamic> json) => _$ApiTxOutputFromJson(json);

@override final  String transactionId;
@override final  int index;
@override final  int amount;
@override final  String scriptPublicKey;
@override final  String scriptPublicKeyAddress;
@override final  String scriptPublicKeyType;

/// Create a copy of ApiTxOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiTxOutputCopyWith<_ApiTxOutput> get copyWith => __$ApiTxOutputCopyWithImpl<_ApiTxOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApiTxOutputToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiTxOutput&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.index, index) || other.index == index)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.scriptPublicKey, scriptPublicKey) || other.scriptPublicKey == scriptPublicKey)&&(identical(other.scriptPublicKeyAddress, scriptPublicKeyAddress) || other.scriptPublicKeyAddress == scriptPublicKeyAddress)&&(identical(other.scriptPublicKeyType, scriptPublicKeyType) || other.scriptPublicKeyType == scriptPublicKeyType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,index,amount,scriptPublicKey,scriptPublicKeyAddress,scriptPublicKeyType);

@override
String toString() {
  return 'ApiTxOutput(transactionId: $transactionId, index: $index, amount: $amount, scriptPublicKey: $scriptPublicKey, scriptPublicKeyAddress: $scriptPublicKeyAddress, scriptPublicKeyType: $scriptPublicKeyType)';
}


}

/// @nodoc
abstract mixin class _$ApiTxOutputCopyWith<$Res> implements $ApiTxOutputCopyWith<$Res> {
  factory _$ApiTxOutputCopyWith(_ApiTxOutput value, $Res Function(_ApiTxOutput) _then) = __$ApiTxOutputCopyWithImpl;
@override @useResult
$Res call({
 String transactionId, int index, int amount, String scriptPublicKey, String scriptPublicKeyAddress, String scriptPublicKeyType
});




}
/// @nodoc
class __$ApiTxOutputCopyWithImpl<$Res>
    implements _$ApiTxOutputCopyWith<$Res> {
  __$ApiTxOutputCopyWithImpl(this._self, this._then);

  final _ApiTxOutput _self;
  final $Res Function(_ApiTxOutput) _then;

/// Create a copy of ApiTxOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = null,Object? index = null,Object? amount = null,Object? scriptPublicKey = null,Object? scriptPublicKeyAddress = null,Object? scriptPublicKeyType = null,}) {
  return _then(_ApiTxOutput(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,scriptPublicKey: null == scriptPublicKey ? _self.scriptPublicKey : scriptPublicKey // ignore: cast_nullable_to_non_nullable
as String,scriptPublicKeyAddress: null == scriptPublicKeyAddress ? _self.scriptPublicKeyAddress : scriptPublicKeyAddress // ignore: cast_nullable_to_non_nullable
as String,scriptPublicKeyType: null == scriptPublicKeyType ? _self.scriptPublicKeyType : scriptPublicKeyType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

ApiTransaction _$ApiTransactionFromJson(
  Map<String, dynamic> json
) {
    return _Transaction.fromJson(
      json
    );
}

/// @nodoc
mixin _$ApiTransaction {

 String? get subnetworkId; String get transactionId; List<String> get blockHash; int get blockTime; bool get isAccepted; String? get acceptingBlockHash; int? get acceptingBlockBlueScore; List<ApiTxInput> get inputs; List<ApiTxOutput> get outputs;
/// Create a copy of ApiTransaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiTransactionCopyWith<ApiTransaction> get copyWith => _$ApiTransactionCopyWithImpl<ApiTransaction>(this as ApiTransaction, _$identity);

  /// Serializes this ApiTransaction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiTransaction&&(identical(other.subnetworkId, subnetworkId) || other.subnetworkId == subnetworkId)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&const DeepCollectionEquality().equals(other.blockHash, blockHash)&&(identical(other.blockTime, blockTime) || other.blockTime == blockTime)&&(identical(other.isAccepted, isAccepted) || other.isAccepted == isAccepted)&&(identical(other.acceptingBlockHash, acceptingBlockHash) || other.acceptingBlockHash == acceptingBlockHash)&&(identical(other.acceptingBlockBlueScore, acceptingBlockBlueScore) || other.acceptingBlockBlueScore == acceptingBlockBlueScore)&&const DeepCollectionEquality().equals(other.inputs, inputs)&&const DeepCollectionEquality().equals(other.outputs, outputs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subnetworkId,transactionId,const DeepCollectionEquality().hash(blockHash),blockTime,isAccepted,acceptingBlockHash,acceptingBlockBlueScore,const DeepCollectionEquality().hash(inputs),const DeepCollectionEquality().hash(outputs));

@override
String toString() {
  return 'ApiTransaction(subnetworkId: $subnetworkId, transactionId: $transactionId, blockHash: $blockHash, blockTime: $blockTime, isAccepted: $isAccepted, acceptingBlockHash: $acceptingBlockHash, acceptingBlockBlueScore: $acceptingBlockBlueScore, inputs: $inputs, outputs: $outputs)';
}


}

/// @nodoc
abstract mixin class $ApiTransactionCopyWith<$Res>  {
  factory $ApiTransactionCopyWith(ApiTransaction value, $Res Function(ApiTransaction) _then) = _$ApiTransactionCopyWithImpl;
@useResult
$Res call({
 String? subnetworkId, String transactionId, List<String> blockHash, int blockTime, bool isAccepted, String? acceptingBlockHash, int? acceptingBlockBlueScore, List<ApiTxInput> inputs, List<ApiTxOutput> outputs
});




}
/// @nodoc
class _$ApiTransactionCopyWithImpl<$Res>
    implements $ApiTransactionCopyWith<$Res> {
  _$ApiTransactionCopyWithImpl(this._self, this._then);

  final ApiTransaction _self;
  final $Res Function(ApiTransaction) _then;

/// Create a copy of ApiTransaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subnetworkId = freezed,Object? transactionId = null,Object? blockHash = null,Object? blockTime = null,Object? isAccepted = null,Object? acceptingBlockHash = freezed,Object? acceptingBlockBlueScore = freezed,Object? inputs = null,Object? outputs = null,}) {
  return _then(_self.copyWith(
subnetworkId: freezed == subnetworkId ? _self.subnetworkId : subnetworkId // ignore: cast_nullable_to_non_nullable
as String?,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,blockHash: null == blockHash ? _self.blockHash : blockHash // ignore: cast_nullable_to_non_nullable
as List<String>,blockTime: null == blockTime ? _self.blockTime : blockTime // ignore: cast_nullable_to_non_nullable
as int,isAccepted: null == isAccepted ? _self.isAccepted : isAccepted // ignore: cast_nullable_to_non_nullable
as bool,acceptingBlockHash: freezed == acceptingBlockHash ? _self.acceptingBlockHash : acceptingBlockHash // ignore: cast_nullable_to_non_nullable
as String?,acceptingBlockBlueScore: freezed == acceptingBlockBlueScore ? _self.acceptingBlockBlueScore : acceptingBlockBlueScore // ignore: cast_nullable_to_non_nullable
as int?,inputs: null == inputs ? _self.inputs : inputs // ignore: cast_nullable_to_non_nullable
as List<ApiTxInput>,outputs: null == outputs ? _self.outputs : outputs // ignore: cast_nullable_to_non_nullable
as List<ApiTxOutput>,
  ));
}

}


/// Adds pattern-matching-related methods to [ApiTransaction].
extension ApiTransactionPatterns on ApiTransaction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Transaction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Transaction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Transaction value)  $default,){
final _that = this;
switch (_that) {
case _Transaction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Transaction value)?  $default,){
final _that = this;
switch (_that) {
case _Transaction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? subnetworkId,  String transactionId,  List<String> blockHash,  int blockTime,  bool isAccepted,  String? acceptingBlockHash,  int? acceptingBlockBlueScore,  List<ApiTxInput> inputs,  List<ApiTxOutput> outputs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Transaction() when $default != null:
return $default(_that.subnetworkId,_that.transactionId,_that.blockHash,_that.blockTime,_that.isAccepted,_that.acceptingBlockHash,_that.acceptingBlockBlueScore,_that.inputs,_that.outputs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? subnetworkId,  String transactionId,  List<String> blockHash,  int blockTime,  bool isAccepted,  String? acceptingBlockHash,  int? acceptingBlockBlueScore,  List<ApiTxInput> inputs,  List<ApiTxOutput> outputs)  $default,) {final _that = this;
switch (_that) {
case _Transaction():
return $default(_that.subnetworkId,_that.transactionId,_that.blockHash,_that.blockTime,_that.isAccepted,_that.acceptingBlockHash,_that.acceptingBlockBlueScore,_that.inputs,_that.outputs);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? subnetworkId,  String transactionId,  List<String> blockHash,  int blockTime,  bool isAccepted,  String? acceptingBlockHash,  int? acceptingBlockBlueScore,  List<ApiTxInput> inputs,  List<ApiTxOutput> outputs)?  $default,) {final _that = this;
switch (_that) {
case _Transaction() when $default != null:
return $default(_that.subnetworkId,_that.transactionId,_that.blockHash,_that.blockTime,_that.isAccepted,_that.acceptingBlockHash,_that.acceptingBlockBlueScore,_that.inputs,_that.outputs);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _Transaction extends ApiTransaction {
   _Transaction({this.subnetworkId, required this.transactionId, final  List<String> blockHash = const [], required this.blockTime, required this.isAccepted, this.acceptingBlockHash, this.acceptingBlockBlueScore, final  List<ApiTxInput> inputs = const [], final  List<ApiTxOutput> outputs = const []}): _blockHash = blockHash,_inputs = inputs,_outputs = outputs,super._();
  factory _Transaction.fromJson(Map<String, dynamic> json) => _$TransactionFromJson(json);

@override final  String? subnetworkId;
@override final  String transactionId;
 final  List<String> _blockHash;
@override@JsonKey() List<String> get blockHash {
  if (_blockHash is EqualUnmodifiableListView) return _blockHash;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_blockHash);
}

@override final  int blockTime;
@override final  bool isAccepted;
@override final  String? acceptingBlockHash;
@override final  int? acceptingBlockBlueScore;
 final  List<ApiTxInput> _inputs;
@override@JsonKey() List<ApiTxInput> get inputs {
  if (_inputs is EqualUnmodifiableListView) return _inputs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_inputs);
}

 final  List<ApiTxOutput> _outputs;
@override@JsonKey() List<ApiTxOutput> get outputs {
  if (_outputs is EqualUnmodifiableListView) return _outputs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_outputs);
}


/// Create a copy of ApiTransaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionCopyWith<_Transaction> get copyWith => __$TransactionCopyWithImpl<_Transaction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Transaction&&(identical(other.subnetworkId, subnetworkId) || other.subnetworkId == subnetworkId)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&const DeepCollectionEquality().equals(other._blockHash, _blockHash)&&(identical(other.blockTime, blockTime) || other.blockTime == blockTime)&&(identical(other.isAccepted, isAccepted) || other.isAccepted == isAccepted)&&(identical(other.acceptingBlockHash, acceptingBlockHash) || other.acceptingBlockHash == acceptingBlockHash)&&(identical(other.acceptingBlockBlueScore, acceptingBlockBlueScore) || other.acceptingBlockBlueScore == acceptingBlockBlueScore)&&const DeepCollectionEquality().equals(other._inputs, _inputs)&&const DeepCollectionEquality().equals(other._outputs, _outputs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subnetworkId,transactionId,const DeepCollectionEquality().hash(_blockHash),blockTime,isAccepted,acceptingBlockHash,acceptingBlockBlueScore,const DeepCollectionEquality().hash(_inputs),const DeepCollectionEquality().hash(_outputs));

@override
String toString() {
  return 'ApiTransaction(subnetworkId: $subnetworkId, transactionId: $transactionId, blockHash: $blockHash, blockTime: $blockTime, isAccepted: $isAccepted, acceptingBlockHash: $acceptingBlockHash, acceptingBlockBlueScore: $acceptingBlockBlueScore, inputs: $inputs, outputs: $outputs)';
}


}

/// @nodoc
abstract mixin class _$TransactionCopyWith<$Res> implements $ApiTransactionCopyWith<$Res> {
  factory _$TransactionCopyWith(_Transaction value, $Res Function(_Transaction) _then) = __$TransactionCopyWithImpl;
@override @useResult
$Res call({
 String? subnetworkId, String transactionId, List<String> blockHash, int blockTime, bool isAccepted, String? acceptingBlockHash, int? acceptingBlockBlueScore, List<ApiTxInput> inputs, List<ApiTxOutput> outputs
});




}
/// @nodoc
class __$TransactionCopyWithImpl<$Res>
    implements _$TransactionCopyWith<$Res> {
  __$TransactionCopyWithImpl(this._self, this._then);

  final _Transaction _self;
  final $Res Function(_Transaction) _then;

/// Create a copy of ApiTransaction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subnetworkId = freezed,Object? transactionId = null,Object? blockHash = null,Object? blockTime = null,Object? isAccepted = null,Object? acceptingBlockHash = freezed,Object? acceptingBlockBlueScore = freezed,Object? inputs = null,Object? outputs = null,}) {
  return _then(_Transaction(
subnetworkId: freezed == subnetworkId ? _self.subnetworkId : subnetworkId // ignore: cast_nullable_to_non_nullable
as String?,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,blockHash: null == blockHash ? _self._blockHash : blockHash // ignore: cast_nullable_to_non_nullable
as List<String>,blockTime: null == blockTime ? _self.blockTime : blockTime // ignore: cast_nullable_to_non_nullable
as int,isAccepted: null == isAccepted ? _self.isAccepted : isAccepted // ignore: cast_nullable_to_non_nullable
as bool,acceptingBlockHash: freezed == acceptingBlockHash ? _self.acceptingBlockHash : acceptingBlockHash // ignore: cast_nullable_to_non_nullable
as String?,acceptingBlockBlueScore: freezed == acceptingBlockBlueScore ? _self.acceptingBlockBlueScore : acceptingBlockBlueScore // ignore: cast_nullable_to_non_nullable
as int?,inputs: null == inputs ? _self._inputs : inputs // ignore: cast_nullable_to_non_nullable
as List<ApiTxInput>,outputs: null == outputs ? _self._outputs : outputs // ignore: cast_nullable_to_non_nullable
as List<ApiTxOutput>,
  ));
}


}

// dart format on
