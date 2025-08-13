// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BoxKeys {

 String get boxKey; String get encryptionKey;
/// Create a copy of BoxKeys
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BoxKeysCopyWith<BoxKeys> get copyWith => _$BoxKeysCopyWithImpl<BoxKeys>(this as BoxKeys, _$identity);

  /// Serializes this BoxKeys to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BoxKeys&&(identical(other.boxKey, boxKey) || other.boxKey == boxKey)&&(identical(other.encryptionKey, encryptionKey) || other.encryptionKey == encryptionKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,boxKey,encryptionKey);

@override
String toString() {
  return 'BoxKeys(boxKey: $boxKey, encryptionKey: $encryptionKey)';
}


}

/// @nodoc
abstract mixin class $BoxKeysCopyWith<$Res>  {
  factory $BoxKeysCopyWith(BoxKeys value, $Res Function(BoxKeys) _then) = _$BoxKeysCopyWithImpl;
@useResult
$Res call({
 String boxKey, String encryptionKey
});




}
/// @nodoc
class _$BoxKeysCopyWithImpl<$Res>
    implements $BoxKeysCopyWith<$Res> {
  _$BoxKeysCopyWithImpl(this._self, this._then);

  final BoxKeys _self;
  final $Res Function(BoxKeys) _then;

/// Create a copy of BoxKeys
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? boxKey = null,Object? encryptionKey = null,}) {
  return _then(_self.copyWith(
boxKey: null == boxKey ? _self.boxKey : boxKey // ignore: cast_nullable_to_non_nullable
as String,encryptionKey: null == encryptionKey ? _self.encryptionKey : encryptionKey // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BoxKeys].
extension BoxKeysPatterns on BoxKeys {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BoxKeys value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BoxKeys() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BoxKeys value)  $default,){
final _that = this;
switch (_that) {
case _BoxKeys():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BoxKeys value)?  $default,){
final _that = this;
switch (_that) {
case _BoxKeys() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String boxKey,  String encryptionKey)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BoxKeys() when $default != null:
return $default(_that.boxKey,_that.encryptionKey);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String boxKey,  String encryptionKey)  $default,) {final _that = this;
switch (_that) {
case _BoxKeys():
return $default(_that.boxKey,_that.encryptionKey);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String boxKey,  String encryptionKey)?  $default,) {final _that = this;
switch (_that) {
case _BoxKeys() when $default != null:
return $default(_that.boxKey,_that.encryptionKey);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BoxKeys implements BoxKeys {
  const _BoxKeys({required this.boxKey, required this.encryptionKey});
  factory _BoxKeys.fromJson(Map<String, dynamic> json) => _$BoxKeysFromJson(json);

@override final  String boxKey;
@override final  String encryptionKey;

/// Create a copy of BoxKeys
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BoxKeysCopyWith<_BoxKeys> get copyWith => __$BoxKeysCopyWithImpl<_BoxKeys>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BoxKeysToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BoxKeys&&(identical(other.boxKey, boxKey) || other.boxKey == boxKey)&&(identical(other.encryptionKey, encryptionKey) || other.encryptionKey == encryptionKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,boxKey,encryptionKey);

@override
String toString() {
  return 'BoxKeys(boxKey: $boxKey, encryptionKey: $encryptionKey)';
}


}

/// @nodoc
abstract mixin class _$BoxKeysCopyWith<$Res> implements $BoxKeysCopyWith<$Res> {
  factory _$BoxKeysCopyWith(_BoxKeys value, $Res Function(_BoxKeys) _then) = __$BoxKeysCopyWithImpl;
@override @useResult
$Res call({
 String boxKey, String encryptionKey
});




}
/// @nodoc
class __$BoxKeysCopyWithImpl<$Res>
    implements _$BoxKeysCopyWith<$Res> {
  __$BoxKeysCopyWithImpl(this._self, this._then);

  final _BoxKeys _self;
  final $Res Function(_BoxKeys) _then;

/// Create a copy of BoxKeys
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? boxKey = null,Object? encryptionKey = null,}) {
  return _then(_BoxKeys(
boxKey: null == boxKey ? _self.boxKey : boxKey // ignore: cast_nullable_to_non_nullable
as String,encryptionKey: null == encryptionKey ? _self.encryptionKey : encryptionKey // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$BoxInfo {

 BoxKeys get address; BoxKeys get balance; BoxKeys get utxo; BoxKeys get txIndex; BoxKeys get tx;
/// Create a copy of BoxInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BoxInfoCopyWith<BoxInfo> get copyWith => _$BoxInfoCopyWithImpl<BoxInfo>(this as BoxInfo, _$identity);

  /// Serializes this BoxInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BoxInfo&&(identical(other.address, address) || other.address == address)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.utxo, utxo) || other.utxo == utxo)&&(identical(other.txIndex, txIndex) || other.txIndex == txIndex)&&(identical(other.tx, tx) || other.tx == tx));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,balance,utxo,txIndex,tx);

@override
String toString() {
  return 'BoxInfo(address: $address, balance: $balance, utxo: $utxo, txIndex: $txIndex, tx: $tx)';
}


}

/// @nodoc
abstract mixin class $BoxInfoCopyWith<$Res>  {
  factory $BoxInfoCopyWith(BoxInfo value, $Res Function(BoxInfo) _then) = _$BoxInfoCopyWithImpl;
@useResult
$Res call({
 BoxKeys address, BoxKeys balance, BoxKeys utxo, BoxKeys txIndex, BoxKeys tx
});


$BoxKeysCopyWith<$Res> get address;$BoxKeysCopyWith<$Res> get balance;$BoxKeysCopyWith<$Res> get utxo;$BoxKeysCopyWith<$Res> get txIndex;$BoxKeysCopyWith<$Res> get tx;

}
/// @nodoc
class _$BoxInfoCopyWithImpl<$Res>
    implements $BoxInfoCopyWith<$Res> {
  _$BoxInfoCopyWithImpl(this._self, this._then);

  final BoxInfo _self;
  final $Res Function(BoxInfo) _then;

/// Create a copy of BoxInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? address = null,Object? balance = null,Object? utxo = null,Object? txIndex = null,Object? tx = null,}) {
  return _then(_self.copyWith(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as BoxKeys,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as BoxKeys,utxo: null == utxo ? _self.utxo : utxo // ignore: cast_nullable_to_non_nullable
as BoxKeys,txIndex: null == txIndex ? _self.txIndex : txIndex // ignore: cast_nullable_to_non_nullable
as BoxKeys,tx: null == tx ? _self.tx : tx // ignore: cast_nullable_to_non_nullable
as BoxKeys,
  ));
}
/// Create a copy of BoxInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BoxKeysCopyWith<$Res> get address {
  
  return $BoxKeysCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}/// Create a copy of BoxInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BoxKeysCopyWith<$Res> get balance {
  
  return $BoxKeysCopyWith<$Res>(_self.balance, (value) {
    return _then(_self.copyWith(balance: value));
  });
}/// Create a copy of BoxInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BoxKeysCopyWith<$Res> get utxo {
  
  return $BoxKeysCopyWith<$Res>(_self.utxo, (value) {
    return _then(_self.copyWith(utxo: value));
  });
}/// Create a copy of BoxInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BoxKeysCopyWith<$Res> get txIndex {
  
  return $BoxKeysCopyWith<$Res>(_self.txIndex, (value) {
    return _then(_self.copyWith(txIndex: value));
  });
}/// Create a copy of BoxInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BoxKeysCopyWith<$Res> get tx {
  
  return $BoxKeysCopyWith<$Res>(_self.tx, (value) {
    return _then(_self.copyWith(tx: value));
  });
}
}


/// Adds pattern-matching-related methods to [BoxInfo].
extension BoxInfoPatterns on BoxInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BoxInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BoxInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BoxInfo value)  $default,){
final _that = this;
switch (_that) {
case _BoxInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BoxInfo value)?  $default,){
final _that = this;
switch (_that) {
case _BoxInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BoxKeys address,  BoxKeys balance,  BoxKeys utxo,  BoxKeys txIndex,  BoxKeys tx)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BoxInfo() when $default != null:
return $default(_that.address,_that.balance,_that.utxo,_that.txIndex,_that.tx);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BoxKeys address,  BoxKeys balance,  BoxKeys utxo,  BoxKeys txIndex,  BoxKeys tx)  $default,) {final _that = this;
switch (_that) {
case _BoxInfo():
return $default(_that.address,_that.balance,_that.utxo,_that.txIndex,_that.tx);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BoxKeys address,  BoxKeys balance,  BoxKeys utxo,  BoxKeys txIndex,  BoxKeys tx)?  $default,) {final _that = this;
switch (_that) {
case _BoxInfo() when $default != null:
return $default(_that.address,_that.balance,_that.utxo,_that.txIndex,_that.tx);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BoxInfo implements BoxInfo {
  const _BoxInfo({required this.address, required this.balance, required this.utxo, required this.txIndex, required this.tx});
  factory _BoxInfo.fromJson(Map<String, dynamic> json) => _$BoxInfoFromJson(json);

@override final  BoxKeys address;
@override final  BoxKeys balance;
@override final  BoxKeys utxo;
@override final  BoxKeys txIndex;
@override final  BoxKeys tx;

/// Create a copy of BoxInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BoxInfoCopyWith<_BoxInfo> get copyWith => __$BoxInfoCopyWithImpl<_BoxInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BoxInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BoxInfo&&(identical(other.address, address) || other.address == address)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.utxo, utxo) || other.utxo == utxo)&&(identical(other.txIndex, txIndex) || other.txIndex == txIndex)&&(identical(other.tx, tx) || other.tx == tx));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,balance,utxo,txIndex,tx);

@override
String toString() {
  return 'BoxInfo(address: $address, balance: $balance, utxo: $utxo, txIndex: $txIndex, tx: $tx)';
}


}

/// @nodoc
abstract mixin class _$BoxInfoCopyWith<$Res> implements $BoxInfoCopyWith<$Res> {
  factory _$BoxInfoCopyWith(_BoxInfo value, $Res Function(_BoxInfo) _then) = __$BoxInfoCopyWithImpl;
@override @useResult
$Res call({
 BoxKeys address, BoxKeys balance, BoxKeys utxo, BoxKeys txIndex, BoxKeys tx
});


@override $BoxKeysCopyWith<$Res> get address;@override $BoxKeysCopyWith<$Res> get balance;@override $BoxKeysCopyWith<$Res> get utxo;@override $BoxKeysCopyWith<$Res> get txIndex;@override $BoxKeysCopyWith<$Res> get tx;

}
/// @nodoc
class __$BoxInfoCopyWithImpl<$Res>
    implements _$BoxInfoCopyWith<$Res> {
  __$BoxInfoCopyWithImpl(this._self, this._then);

  final _BoxInfo _self;
  final $Res Function(_BoxInfo) _then;

/// Create a copy of BoxInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? address = null,Object? balance = null,Object? utxo = null,Object? txIndex = null,Object? tx = null,}) {
  return _then(_BoxInfo(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as BoxKeys,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as BoxKeys,utxo: null == utxo ? _self.utxo : utxo // ignore: cast_nullable_to_non_nullable
as BoxKeys,txIndex: null == txIndex ? _self.txIndex : txIndex // ignore: cast_nullable_to_non_nullable
as BoxKeys,tx: null == tx ? _self.tx : tx // ignore: cast_nullable_to_non_nullable
as BoxKeys,
  ));
}

/// Create a copy of BoxInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BoxKeysCopyWith<$Res> get address {
  
  return $BoxKeysCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}/// Create a copy of BoxInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BoxKeysCopyWith<$Res> get balance {
  
  return $BoxKeysCopyWith<$Res>(_self.balance, (value) {
    return _then(_self.copyWith(balance: value));
  });
}/// Create a copy of BoxInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BoxKeysCopyWith<$Res> get utxo {
  
  return $BoxKeysCopyWith<$Res>(_self.utxo, (value) {
    return _then(_self.copyWith(utxo: value));
  });
}/// Create a copy of BoxInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BoxKeysCopyWith<$Res> get txIndex {
  
  return $BoxKeysCopyWith<$Res>(_self.txIndex, (value) {
    return _then(_self.copyWith(txIndex: value));
  });
}/// Create a copy of BoxInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BoxKeysCopyWith<$Res> get tx {
  
  return $BoxKeysCopyWith<$Res>(_self.tx, (value) {
    return _then(_self.copyWith(tx: value));
  });
}
}


/// @nodoc
mixin _$BoxInfoBundle {

 Map<String, BoxInfo> get byNetworkId; bool get wasMigrated;
/// Create a copy of BoxInfoBundle
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BoxInfoBundleCopyWith<BoxInfoBundle> get copyWith => _$BoxInfoBundleCopyWithImpl<BoxInfoBundle>(this as BoxInfoBundle, _$identity);

  /// Serializes this BoxInfoBundle to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BoxInfoBundle&&const DeepCollectionEquality().equals(other.byNetworkId, byNetworkId)&&(identical(other.wasMigrated, wasMigrated) || other.wasMigrated == wasMigrated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(byNetworkId),wasMigrated);

@override
String toString() {
  return 'BoxInfoBundle(byNetworkId: $byNetworkId, wasMigrated: $wasMigrated)';
}


}

/// @nodoc
abstract mixin class $BoxInfoBundleCopyWith<$Res>  {
  factory $BoxInfoBundleCopyWith(BoxInfoBundle value, $Res Function(BoxInfoBundle) _then) = _$BoxInfoBundleCopyWithImpl;
@useResult
$Res call({
 Map<String, BoxInfo> byNetworkId, bool wasMigrated
});




}
/// @nodoc
class _$BoxInfoBundleCopyWithImpl<$Res>
    implements $BoxInfoBundleCopyWith<$Res> {
  _$BoxInfoBundleCopyWithImpl(this._self, this._then);

  final BoxInfoBundle _self;
  final $Res Function(BoxInfoBundle) _then;

/// Create a copy of BoxInfoBundle
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? byNetworkId = null,Object? wasMigrated = null,}) {
  return _then(_self.copyWith(
byNetworkId: null == byNetworkId ? _self.byNetworkId : byNetworkId // ignore: cast_nullable_to_non_nullable
as Map<String, BoxInfo>,wasMigrated: null == wasMigrated ? _self.wasMigrated : wasMigrated // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [BoxInfoBundle].
extension BoxInfoBundlePatterns on BoxInfoBundle {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BoxInfoBundle value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BoxInfoBundle() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BoxInfoBundle value)  $default,){
final _that = this;
switch (_that) {
case _BoxInfoBundle():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BoxInfoBundle value)?  $default,){
final _that = this;
switch (_that) {
case _BoxInfoBundle() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, BoxInfo> byNetworkId,  bool wasMigrated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BoxInfoBundle() when $default != null:
return $default(_that.byNetworkId,_that.wasMigrated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, BoxInfo> byNetworkId,  bool wasMigrated)  $default,) {final _that = this;
switch (_that) {
case _BoxInfoBundle():
return $default(_that.byNetworkId,_that.wasMigrated);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, BoxInfo> byNetworkId,  bool wasMigrated)?  $default,) {final _that = this;
switch (_that) {
case _BoxInfoBundle() when $default != null:
return $default(_that.byNetworkId,_that.wasMigrated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BoxInfoBundle implements BoxInfoBundle {
  const _BoxInfoBundle({final  Map<String, BoxInfo> byNetworkId = const {}, this.wasMigrated = false}): _byNetworkId = byNetworkId;
  factory _BoxInfoBundle.fromJson(Map<String, dynamic> json) => _$BoxInfoBundleFromJson(json);

 final  Map<String, BoxInfo> _byNetworkId;
@override@JsonKey() Map<String, BoxInfo> get byNetworkId {
  if (_byNetworkId is EqualUnmodifiableMapView) return _byNetworkId;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_byNetworkId);
}

@override@JsonKey() final  bool wasMigrated;

/// Create a copy of BoxInfoBundle
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BoxInfoBundleCopyWith<_BoxInfoBundle> get copyWith => __$BoxInfoBundleCopyWithImpl<_BoxInfoBundle>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BoxInfoBundleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BoxInfoBundle&&const DeepCollectionEquality().equals(other._byNetworkId, _byNetworkId)&&(identical(other.wasMigrated, wasMigrated) || other.wasMigrated == wasMigrated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_byNetworkId),wasMigrated);

@override
String toString() {
  return 'BoxInfoBundle(byNetworkId: $byNetworkId, wasMigrated: $wasMigrated)';
}


}

/// @nodoc
abstract mixin class _$BoxInfoBundleCopyWith<$Res> implements $BoxInfoBundleCopyWith<$Res> {
  factory _$BoxInfoBundleCopyWith(_BoxInfoBundle value, $Res Function(_BoxInfoBundle) _then) = __$BoxInfoBundleCopyWithImpl;
@override @useResult
$Res call({
 Map<String, BoxInfo> byNetworkId, bool wasMigrated
});




}
/// @nodoc
class __$BoxInfoBundleCopyWithImpl<$Res>
    implements _$BoxInfoBundleCopyWith<$Res> {
  __$BoxInfoBundleCopyWithImpl(this._self, this._then);

  final _BoxInfoBundle _self;
  final $Res Function(_BoxInfoBundle) _then;

/// Create a copy of BoxInfoBundle
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? byNetworkId = null,Object? wasMigrated = null,}) {
  return _then(_BoxInfoBundle(
byNetworkId: null == byNetworkId ? _self._byNetworkId : byNetworkId // ignore: cast_nullable_to_non_nullable
as Map<String, BoxInfo>,wasMigrated: null == wasMigrated ? _self.wasMigrated : wasMigrated // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$BoxInfoByNetwork {

 BoxInfo get mainnet; BoxInfo get testnet; BoxInfo get devnet; BoxInfo get simnet;
/// Create a copy of BoxInfoByNetwork
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BoxInfoByNetworkCopyWith<BoxInfoByNetwork> get copyWith => _$BoxInfoByNetworkCopyWithImpl<BoxInfoByNetwork>(this as BoxInfoByNetwork, _$identity);

  /// Serializes this BoxInfoByNetwork to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BoxInfoByNetwork&&(identical(other.mainnet, mainnet) || other.mainnet == mainnet)&&(identical(other.testnet, testnet) || other.testnet == testnet)&&(identical(other.devnet, devnet) || other.devnet == devnet)&&(identical(other.simnet, simnet) || other.simnet == simnet));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mainnet,testnet,devnet,simnet);

@override
String toString() {
  return 'BoxInfoByNetwork(mainnet: $mainnet, testnet: $testnet, devnet: $devnet, simnet: $simnet)';
}


}

/// @nodoc
abstract mixin class $BoxInfoByNetworkCopyWith<$Res>  {
  factory $BoxInfoByNetworkCopyWith(BoxInfoByNetwork value, $Res Function(BoxInfoByNetwork) _then) = _$BoxInfoByNetworkCopyWithImpl;
@useResult
$Res call({
 BoxInfo mainnet, BoxInfo testnet, BoxInfo devnet, BoxInfo simnet
});


$BoxInfoCopyWith<$Res> get mainnet;$BoxInfoCopyWith<$Res> get testnet;$BoxInfoCopyWith<$Res> get devnet;$BoxInfoCopyWith<$Res> get simnet;

}
/// @nodoc
class _$BoxInfoByNetworkCopyWithImpl<$Res>
    implements $BoxInfoByNetworkCopyWith<$Res> {
  _$BoxInfoByNetworkCopyWithImpl(this._self, this._then);

  final BoxInfoByNetwork _self;
  final $Res Function(BoxInfoByNetwork) _then;

/// Create a copy of BoxInfoByNetwork
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mainnet = null,Object? testnet = null,Object? devnet = null,Object? simnet = null,}) {
  return _then(_self.copyWith(
mainnet: null == mainnet ? _self.mainnet : mainnet // ignore: cast_nullable_to_non_nullable
as BoxInfo,testnet: null == testnet ? _self.testnet : testnet // ignore: cast_nullable_to_non_nullable
as BoxInfo,devnet: null == devnet ? _self.devnet : devnet // ignore: cast_nullable_to_non_nullable
as BoxInfo,simnet: null == simnet ? _self.simnet : simnet // ignore: cast_nullable_to_non_nullable
as BoxInfo,
  ));
}
/// Create a copy of BoxInfoByNetwork
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BoxInfoCopyWith<$Res> get mainnet {
  
  return $BoxInfoCopyWith<$Res>(_self.mainnet, (value) {
    return _then(_self.copyWith(mainnet: value));
  });
}/// Create a copy of BoxInfoByNetwork
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BoxInfoCopyWith<$Res> get testnet {
  
  return $BoxInfoCopyWith<$Res>(_self.testnet, (value) {
    return _then(_self.copyWith(testnet: value));
  });
}/// Create a copy of BoxInfoByNetwork
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BoxInfoCopyWith<$Res> get devnet {
  
  return $BoxInfoCopyWith<$Res>(_self.devnet, (value) {
    return _then(_self.copyWith(devnet: value));
  });
}/// Create a copy of BoxInfoByNetwork
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BoxInfoCopyWith<$Res> get simnet {
  
  return $BoxInfoCopyWith<$Res>(_self.simnet, (value) {
    return _then(_self.copyWith(simnet: value));
  });
}
}


/// Adds pattern-matching-related methods to [BoxInfoByNetwork].
extension BoxInfoByNetworkPatterns on BoxInfoByNetwork {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BoxInfoByNetwork value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BoxInfoByNetwork() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BoxInfoByNetwork value)  $default,){
final _that = this;
switch (_that) {
case _BoxInfoByNetwork():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BoxInfoByNetwork value)?  $default,){
final _that = this;
switch (_that) {
case _BoxInfoByNetwork() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BoxInfo mainnet,  BoxInfo testnet,  BoxInfo devnet,  BoxInfo simnet)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BoxInfoByNetwork() when $default != null:
return $default(_that.mainnet,_that.testnet,_that.devnet,_that.simnet);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BoxInfo mainnet,  BoxInfo testnet,  BoxInfo devnet,  BoxInfo simnet)  $default,) {final _that = this;
switch (_that) {
case _BoxInfoByNetwork():
return $default(_that.mainnet,_that.testnet,_that.devnet,_that.simnet);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BoxInfo mainnet,  BoxInfo testnet,  BoxInfo devnet,  BoxInfo simnet)?  $default,) {final _that = this;
switch (_that) {
case _BoxInfoByNetwork() when $default != null:
return $default(_that.mainnet,_that.testnet,_that.devnet,_that.simnet);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BoxInfoByNetwork extends BoxInfoByNetwork {
  const _BoxInfoByNetwork({required this.mainnet, required this.testnet, required this.devnet, required this.simnet}): super._();
  factory _BoxInfoByNetwork.fromJson(Map<String, dynamic> json) => _$BoxInfoByNetworkFromJson(json);

@override final  BoxInfo mainnet;
@override final  BoxInfo testnet;
@override final  BoxInfo devnet;
@override final  BoxInfo simnet;

/// Create a copy of BoxInfoByNetwork
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BoxInfoByNetworkCopyWith<_BoxInfoByNetwork> get copyWith => __$BoxInfoByNetworkCopyWithImpl<_BoxInfoByNetwork>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BoxInfoByNetworkToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BoxInfoByNetwork&&(identical(other.mainnet, mainnet) || other.mainnet == mainnet)&&(identical(other.testnet, testnet) || other.testnet == testnet)&&(identical(other.devnet, devnet) || other.devnet == devnet)&&(identical(other.simnet, simnet) || other.simnet == simnet));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mainnet,testnet,devnet,simnet);

@override
String toString() {
  return 'BoxInfoByNetwork(mainnet: $mainnet, testnet: $testnet, devnet: $devnet, simnet: $simnet)';
}


}

/// @nodoc
abstract mixin class _$BoxInfoByNetworkCopyWith<$Res> implements $BoxInfoByNetworkCopyWith<$Res> {
  factory _$BoxInfoByNetworkCopyWith(_BoxInfoByNetwork value, $Res Function(_BoxInfoByNetwork) _then) = __$BoxInfoByNetworkCopyWithImpl;
@override @useResult
$Res call({
 BoxInfo mainnet, BoxInfo testnet, BoxInfo devnet, BoxInfo simnet
});


@override $BoxInfoCopyWith<$Res> get mainnet;@override $BoxInfoCopyWith<$Res> get testnet;@override $BoxInfoCopyWith<$Res> get devnet;@override $BoxInfoCopyWith<$Res> get simnet;

}
/// @nodoc
class __$BoxInfoByNetworkCopyWithImpl<$Res>
    implements _$BoxInfoByNetworkCopyWith<$Res> {
  __$BoxInfoByNetworkCopyWithImpl(this._self, this._then);

  final _BoxInfoByNetwork _self;
  final $Res Function(_BoxInfoByNetwork) _then;

/// Create a copy of BoxInfoByNetwork
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mainnet = null,Object? testnet = null,Object? devnet = null,Object? simnet = null,}) {
  return _then(_BoxInfoByNetwork(
mainnet: null == mainnet ? _self.mainnet : mainnet // ignore: cast_nullable_to_non_nullable
as BoxInfo,testnet: null == testnet ? _self.testnet : testnet // ignore: cast_nullable_to_non_nullable
as BoxInfo,devnet: null == devnet ? _self.devnet : devnet // ignore: cast_nullable_to_non_nullable
as BoxInfo,simnet: null == simnet ? _self.simnet : simnet // ignore: cast_nullable_to_non_nullable
as BoxInfo,
  ));
}

/// Create a copy of BoxInfoByNetwork
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BoxInfoCopyWith<$Res> get mainnet {
  
  return $BoxInfoCopyWith<$Res>(_self.mainnet, (value) {
    return _then(_self.copyWith(mainnet: value));
  });
}/// Create a copy of BoxInfoByNetwork
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BoxInfoCopyWith<$Res> get testnet {
  
  return $BoxInfoCopyWith<$Res>(_self.testnet, (value) {
    return _then(_self.copyWith(testnet: value));
  });
}/// Create a copy of BoxInfoByNetwork
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BoxInfoCopyWith<$Res> get devnet {
  
  return $BoxInfoCopyWith<$Res>(_self.devnet, (value) {
    return _then(_self.copyWith(devnet: value));
  });
}/// Create a copy of BoxInfoByNetwork
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BoxInfoCopyWith<$Res> get simnet {
  
  return $BoxInfoCopyWith<$Res>(_self.simnet, (value) {
    return _then(_self.copyWith(simnet: value));
  });
}
}

WalletKind _$WalletKindFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'localHdSchnorr':
          return _WalletKindLocalHdSchnorr.fromJson(
            json
          );
                case 'localHdEcdsa':
          return _WalletKindLocalHdEcdsa.fromJson(
            json
          );
                case 'localHdLegacy':
          return _WalletKindLocalHdLegacy.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'WalletKind',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$WalletKind {



  /// Serializes this WalletKind to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletKind);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WalletKind()';
}


}

/// @nodoc
class $WalletKindCopyWith<$Res>  {
$WalletKindCopyWith(WalletKind _, $Res Function(WalletKind) __);
}


/// Adds pattern-matching-related methods to [WalletKind].
extension WalletKindPatterns on WalletKind {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _WalletKindLocalHdSchnorr value)?  localHdSchnorr,TResult Function( _WalletKindLocalHdEcdsa value)?  localHdEcdsa,TResult Function( _WalletKindLocalHdLegacy value)?  localHdLegacy,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletKindLocalHdSchnorr() when localHdSchnorr != null:
return localHdSchnorr(_that);case _WalletKindLocalHdEcdsa() when localHdEcdsa != null:
return localHdEcdsa(_that);case _WalletKindLocalHdLegacy() when localHdLegacy != null:
return localHdLegacy(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _WalletKindLocalHdSchnorr value)  localHdSchnorr,required TResult Function( _WalletKindLocalHdEcdsa value)  localHdEcdsa,required TResult Function( _WalletKindLocalHdLegacy value)  localHdLegacy,}){
final _that = this;
switch (_that) {
case _WalletKindLocalHdSchnorr():
return localHdSchnorr(_that);case _WalletKindLocalHdEcdsa():
return localHdEcdsa(_that);case _WalletKindLocalHdLegacy():
return localHdLegacy(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _WalletKindLocalHdSchnorr value)?  localHdSchnorr,TResult? Function( _WalletKindLocalHdEcdsa value)?  localHdEcdsa,TResult? Function( _WalletKindLocalHdLegacy value)?  localHdLegacy,}){
final _that = this;
switch (_that) {
case _WalletKindLocalHdSchnorr() when localHdSchnorr != null:
return localHdSchnorr(_that);case _WalletKindLocalHdEcdsa() when localHdEcdsa != null:
return localHdEcdsa(_that);case _WalletKindLocalHdLegacy() when localHdLegacy != null:
return localHdLegacy(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool viewOnly)?  localHdSchnorr,TResult Function( bool viewOnly)?  localHdEcdsa,TResult Function( String mainPubKey)?  localHdLegacy,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletKindLocalHdSchnorr() when localHdSchnorr != null:
return localHdSchnorr(_that.viewOnly);case _WalletKindLocalHdEcdsa() when localHdEcdsa != null:
return localHdEcdsa(_that.viewOnly);case _WalletKindLocalHdLegacy() when localHdLegacy != null:
return localHdLegacy(_that.mainPubKey);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool viewOnly)  localHdSchnorr,required TResult Function( bool viewOnly)  localHdEcdsa,required TResult Function( String mainPubKey)  localHdLegacy,}) {final _that = this;
switch (_that) {
case _WalletKindLocalHdSchnorr():
return localHdSchnorr(_that.viewOnly);case _WalletKindLocalHdEcdsa():
return localHdEcdsa(_that.viewOnly);case _WalletKindLocalHdLegacy():
return localHdLegacy(_that.mainPubKey);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool viewOnly)?  localHdSchnorr,TResult? Function( bool viewOnly)?  localHdEcdsa,TResult? Function( String mainPubKey)?  localHdLegacy,}) {final _that = this;
switch (_that) {
case _WalletKindLocalHdSchnorr() when localHdSchnorr != null:
return localHdSchnorr(_that.viewOnly);case _WalletKindLocalHdEcdsa() when localHdEcdsa != null:
return localHdEcdsa(_that.viewOnly);case _WalletKindLocalHdLegacy() when localHdLegacy != null:
return localHdLegacy(_that.mainPubKey);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WalletKindLocalHdSchnorr extends WalletKind {
  const _WalletKindLocalHdSchnorr({this.viewOnly = false, final  String? $type}): $type = $type ?? 'localHdSchnorr',super._();
  factory _WalletKindLocalHdSchnorr.fromJson(Map<String, dynamic> json) => _$WalletKindLocalHdSchnorrFromJson(json);

@JsonKey() final  bool viewOnly;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WalletKind
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletKindLocalHdSchnorrCopyWith<_WalletKindLocalHdSchnorr> get copyWith => __$WalletKindLocalHdSchnorrCopyWithImpl<_WalletKindLocalHdSchnorr>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WalletKindLocalHdSchnorrToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletKindLocalHdSchnorr&&(identical(other.viewOnly, viewOnly) || other.viewOnly == viewOnly));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,viewOnly);

@override
String toString() {
  return 'WalletKind.localHdSchnorr(viewOnly: $viewOnly)';
}


}

/// @nodoc
abstract mixin class _$WalletKindLocalHdSchnorrCopyWith<$Res> implements $WalletKindCopyWith<$Res> {
  factory _$WalletKindLocalHdSchnorrCopyWith(_WalletKindLocalHdSchnorr value, $Res Function(_WalletKindLocalHdSchnorr) _then) = __$WalletKindLocalHdSchnorrCopyWithImpl;
@useResult
$Res call({
 bool viewOnly
});




}
/// @nodoc
class __$WalletKindLocalHdSchnorrCopyWithImpl<$Res>
    implements _$WalletKindLocalHdSchnorrCopyWith<$Res> {
  __$WalletKindLocalHdSchnorrCopyWithImpl(this._self, this._then);

  final _WalletKindLocalHdSchnorr _self;
  final $Res Function(_WalletKindLocalHdSchnorr) _then;

/// Create a copy of WalletKind
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? viewOnly = null,}) {
  return _then(_WalletKindLocalHdSchnorr(
viewOnly: null == viewOnly ? _self.viewOnly : viewOnly // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _WalletKindLocalHdEcdsa extends WalletKind {
  const _WalletKindLocalHdEcdsa({this.viewOnly = false, final  String? $type}): $type = $type ?? 'localHdEcdsa',super._();
  factory _WalletKindLocalHdEcdsa.fromJson(Map<String, dynamic> json) => _$WalletKindLocalHdEcdsaFromJson(json);

@JsonKey() final  bool viewOnly;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WalletKind
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletKindLocalHdEcdsaCopyWith<_WalletKindLocalHdEcdsa> get copyWith => __$WalletKindLocalHdEcdsaCopyWithImpl<_WalletKindLocalHdEcdsa>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WalletKindLocalHdEcdsaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletKindLocalHdEcdsa&&(identical(other.viewOnly, viewOnly) || other.viewOnly == viewOnly));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,viewOnly);

@override
String toString() {
  return 'WalletKind.localHdEcdsa(viewOnly: $viewOnly)';
}


}

/// @nodoc
abstract mixin class _$WalletKindLocalHdEcdsaCopyWith<$Res> implements $WalletKindCopyWith<$Res> {
  factory _$WalletKindLocalHdEcdsaCopyWith(_WalletKindLocalHdEcdsa value, $Res Function(_WalletKindLocalHdEcdsa) _then) = __$WalletKindLocalHdEcdsaCopyWithImpl;
@useResult
$Res call({
 bool viewOnly
});




}
/// @nodoc
class __$WalletKindLocalHdEcdsaCopyWithImpl<$Res>
    implements _$WalletKindLocalHdEcdsaCopyWith<$Res> {
  __$WalletKindLocalHdEcdsaCopyWithImpl(this._self, this._then);

  final _WalletKindLocalHdEcdsa _self;
  final $Res Function(_WalletKindLocalHdEcdsa) _then;

/// Create a copy of WalletKind
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? viewOnly = null,}) {
  return _then(_WalletKindLocalHdEcdsa(
viewOnly: null == viewOnly ? _self.viewOnly : viewOnly // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _WalletKindLocalHdLegacy extends WalletKind {
  const _WalletKindLocalHdLegacy({required this.mainPubKey, final  String? $type}): $type = $type ?? 'localHdLegacy',super._();
  factory _WalletKindLocalHdLegacy.fromJson(Map<String, dynamic> json) => _$WalletKindLocalHdLegacyFromJson(json);

 final  String mainPubKey;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WalletKind
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletKindLocalHdLegacyCopyWith<_WalletKindLocalHdLegacy> get copyWith => __$WalletKindLocalHdLegacyCopyWithImpl<_WalletKindLocalHdLegacy>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WalletKindLocalHdLegacyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletKindLocalHdLegacy&&(identical(other.mainPubKey, mainPubKey) || other.mainPubKey == mainPubKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mainPubKey);

@override
String toString() {
  return 'WalletKind.localHdLegacy(mainPubKey: $mainPubKey)';
}


}

/// @nodoc
abstract mixin class _$WalletKindLocalHdLegacyCopyWith<$Res> implements $WalletKindCopyWith<$Res> {
  factory _$WalletKindLocalHdLegacyCopyWith(_WalletKindLocalHdLegacy value, $Res Function(_WalletKindLocalHdLegacy) _then) = __$WalletKindLocalHdLegacyCopyWithImpl;
@useResult
$Res call({
 String mainPubKey
});




}
/// @nodoc
class __$WalletKindLocalHdLegacyCopyWithImpl<$Res>
    implements _$WalletKindLocalHdLegacyCopyWith<$Res> {
  __$WalletKindLocalHdLegacyCopyWithImpl(this._self, this._then);

  final _WalletKindLocalHdLegacy _self;
  final $Res Function(_WalletKindLocalHdLegacy) _then;

/// Create a copy of WalletKind
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? mainPubKey = null,}) {
  return _then(_WalletKindLocalHdLegacy(
mainPubKey: null == mainPubKey ? _self.mainPubKey : mainPubKey // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$WalletInfo {

 String get settingsKey; String get name; WalletKind get kind; String get wid;@deprecated BoxInfoByNetwork? get boxInfo; String get mainnetPublicKey;// HDPublic key base58 encoded
 bool get usesBip39Passphrase;
/// Create a copy of WalletInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletInfoCopyWith<WalletInfo> get copyWith => _$WalletInfoCopyWithImpl<WalletInfo>(this as WalletInfo, _$identity);

  /// Serializes this WalletInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletInfo&&(identical(other.settingsKey, settingsKey) || other.settingsKey == settingsKey)&&(identical(other.name, name) || other.name == name)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.wid, wid) || other.wid == wid)&&(identical(other.boxInfo, boxInfo) || other.boxInfo == boxInfo)&&(identical(other.mainnetPublicKey, mainnetPublicKey) || other.mainnetPublicKey == mainnetPublicKey)&&(identical(other.usesBip39Passphrase, usesBip39Passphrase) || other.usesBip39Passphrase == usesBip39Passphrase));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,settingsKey,name,kind,wid,boxInfo,mainnetPublicKey,usesBip39Passphrase);

@override
String toString() {
  return 'WalletInfo(settingsKey: $settingsKey, name: $name, kind: $kind, wid: $wid, boxInfo: $boxInfo, mainnetPublicKey: $mainnetPublicKey, usesBip39Passphrase: $usesBip39Passphrase)';
}


}

/// @nodoc
abstract mixin class $WalletInfoCopyWith<$Res>  {
  factory $WalletInfoCopyWith(WalletInfo value, $Res Function(WalletInfo) _then) = _$WalletInfoCopyWithImpl;
@useResult
$Res call({
 String name, WalletKind kind, String wid,@deprecated BoxInfoByNetwork? boxInfo, String mainnetPublicKey, bool usesBip39Passphrase
});


$WalletKindCopyWith<$Res> get kind;$BoxInfoByNetworkCopyWith<$Res>? get boxInfo;

}
/// @nodoc
class _$WalletInfoCopyWithImpl<$Res>
    implements $WalletInfoCopyWith<$Res> {
  _$WalletInfoCopyWithImpl(this._self, this._then);

  final WalletInfo _self;
  final $Res Function(WalletInfo) _then;

/// Create a copy of WalletInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? kind = null,Object? wid = null,Object? boxInfo = freezed,Object? mainnetPublicKey = null,Object? usesBip39Passphrase = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as WalletKind,wid: null == wid ? _self.wid : wid // ignore: cast_nullable_to_non_nullable
as String,boxInfo: freezed == boxInfo ? _self.boxInfo : boxInfo // ignore: cast_nullable_to_non_nullable
as BoxInfoByNetwork?,mainnetPublicKey: null == mainnetPublicKey ? _self.mainnetPublicKey : mainnetPublicKey // ignore: cast_nullable_to_non_nullable
as String,usesBip39Passphrase: null == usesBip39Passphrase ? _self.usesBip39Passphrase : usesBip39Passphrase // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of WalletInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WalletKindCopyWith<$Res> get kind {
  
  return $WalletKindCopyWith<$Res>(_self.kind, (value) {
    return _then(_self.copyWith(kind: value));
  });
}/// Create a copy of WalletInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BoxInfoByNetworkCopyWith<$Res>? get boxInfo {
    if (_self.boxInfo == null) {
    return null;
  }

  return $BoxInfoByNetworkCopyWith<$Res>(_self.boxInfo!, (value) {
    return _then(_self.copyWith(boxInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [WalletInfo].
extension WalletInfoPatterns on WalletInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletInfo value)  $default,){
final _that = this;
switch (_that) {
case _WalletInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletInfo value)?  $default,){
final _that = this;
switch (_that) {
case _WalletInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  WalletKind kind,  String wid, @deprecated  BoxInfoByNetwork? boxInfo,  String mainnetPublicKey,  bool usesBip39Passphrase)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletInfo() when $default != null:
return $default(_that.name,_that.kind,_that.wid,_that.boxInfo,_that.mainnetPublicKey,_that.usesBip39Passphrase);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  WalletKind kind,  String wid, @deprecated  BoxInfoByNetwork? boxInfo,  String mainnetPublicKey,  bool usesBip39Passphrase)  $default,) {final _that = this;
switch (_that) {
case _WalletInfo():
return $default(_that.name,_that.kind,_that.wid,_that.boxInfo,_that.mainnetPublicKey,_that.usesBip39Passphrase);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  WalletKind kind,  String wid, @deprecated  BoxInfoByNetwork? boxInfo,  String mainnetPublicKey,  bool usesBip39Passphrase)?  $default,) {final _that = this;
switch (_that) {
case _WalletInfo() when $default != null:
return $default(_that.name,_that.kind,_that.wid,_that.boxInfo,_that.mainnetPublicKey,_that.usesBip39Passphrase);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WalletInfo extends WalletInfo {
   _WalletInfo({required this.name, this.kind = const WalletKind.localHdSchnorr(), required this.wid, @deprecated this.boxInfo, required this.mainnetPublicKey, this.usesBip39Passphrase = false}): super._();
  factory _WalletInfo.fromJson(Map<String, dynamic> json) => _$WalletInfoFromJson(json);

@override final  String name;
@override@JsonKey() final  WalletKind kind;
@override final  String wid;
@override@deprecated final  BoxInfoByNetwork? boxInfo;
@override final  String mainnetPublicKey;
// HDPublic key base58 encoded
@override@JsonKey() final  bool usesBip39Passphrase;

/// Create a copy of WalletInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletInfoCopyWith<_WalletInfo> get copyWith => __$WalletInfoCopyWithImpl<_WalletInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WalletInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletInfo&&(identical(other.name, name) || other.name == name)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.wid, wid) || other.wid == wid)&&(identical(other.boxInfo, boxInfo) || other.boxInfo == boxInfo)&&(identical(other.mainnetPublicKey, mainnetPublicKey) || other.mainnetPublicKey == mainnetPublicKey)&&(identical(other.usesBip39Passphrase, usesBip39Passphrase) || other.usesBip39Passphrase == usesBip39Passphrase));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,kind,wid,boxInfo,mainnetPublicKey,usesBip39Passphrase);

@override
String toString() {
  return 'WalletInfo(name: $name, kind: $kind, wid: $wid, boxInfo: $boxInfo, mainnetPublicKey: $mainnetPublicKey, usesBip39Passphrase: $usesBip39Passphrase)';
}


}

/// @nodoc
abstract mixin class _$WalletInfoCopyWith<$Res> implements $WalletInfoCopyWith<$Res> {
  factory _$WalletInfoCopyWith(_WalletInfo value, $Res Function(_WalletInfo) _then) = __$WalletInfoCopyWithImpl;
@override @useResult
$Res call({
 String name, WalletKind kind, String wid,@deprecated BoxInfoByNetwork? boxInfo, String mainnetPublicKey, bool usesBip39Passphrase
});


@override $WalletKindCopyWith<$Res> get kind;@override $BoxInfoByNetworkCopyWith<$Res>? get boxInfo;

}
/// @nodoc
class __$WalletInfoCopyWithImpl<$Res>
    implements _$WalletInfoCopyWith<$Res> {
  __$WalletInfoCopyWithImpl(this._self, this._then);

  final _WalletInfo _self;
  final $Res Function(_WalletInfo) _then;

/// Create a copy of WalletInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? kind = null,Object? wid = null,Object? boxInfo = freezed,Object? mainnetPublicKey = null,Object? usesBip39Passphrase = null,}) {
  return _then(_WalletInfo(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as WalletKind,wid: null == wid ? _self.wid : wid // ignore: cast_nullable_to_non_nullable
as String,boxInfo: freezed == boxInfo ? _self.boxInfo : boxInfo // ignore: cast_nullable_to_non_nullable
as BoxInfoByNetwork?,mainnetPublicKey: null == mainnetPublicKey ? _self.mainnetPublicKey : mainnetPublicKey // ignore: cast_nullable_to_non_nullable
as String,usesBip39Passphrase: null == usesBip39Passphrase ? _self.usesBip39Passphrase : usesBip39Passphrase // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of WalletInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WalletKindCopyWith<$Res> get kind {
  
  return $WalletKindCopyWith<$Res>(_self.kind, (value) {
    return _then(_self.copyWith(kind: value));
  });
}/// Create a copy of WalletInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BoxInfoByNetworkCopyWith<$Res>? get boxInfo {
    if (_self.boxInfo == null) {
    return null;
  }

  return $BoxInfoByNetworkCopyWith<$Res>(_self.boxInfo!, (value) {
    return _then(_self.copyWith(boxInfo: value));
  });
}
}


/// @nodoc
mixin _$WalletBundle {

 IList<WalletInfo>? get wallets; WalletInfo? get selected;
/// Create a copy of WalletBundle
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletBundleCopyWith<WalletBundle> get copyWith => _$WalletBundleCopyWithImpl<WalletBundle>(this as WalletBundle, _$identity);

  /// Serializes this WalletBundle to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletBundle&&const DeepCollectionEquality().equals(other.wallets, wallets)&&(identical(other.selected, selected) || other.selected == selected));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(wallets),selected);

@override
String toString() {
  return 'WalletBundle(wallets: $wallets, selected: $selected)';
}


}

/// @nodoc
abstract mixin class $WalletBundleCopyWith<$Res>  {
  factory $WalletBundleCopyWith(WalletBundle value, $Res Function(WalletBundle) _then) = _$WalletBundleCopyWithImpl;
@useResult
$Res call({
 IList<WalletInfo>? wallets, WalletInfo? selected
});


$WalletInfoCopyWith<$Res>? get selected;

}
/// @nodoc
class _$WalletBundleCopyWithImpl<$Res>
    implements $WalletBundleCopyWith<$Res> {
  _$WalletBundleCopyWithImpl(this._self, this._then);

  final WalletBundle _self;
  final $Res Function(WalletBundle) _then;

/// Create a copy of WalletBundle
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? wallets = freezed,Object? selected = freezed,}) {
  return _then(_self.copyWith(
wallets: freezed == wallets ? _self.wallets : wallets // ignore: cast_nullable_to_non_nullable
as IList<WalletInfo>?,selected: freezed == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as WalletInfo?,
  ));
}
/// Create a copy of WalletBundle
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WalletInfoCopyWith<$Res>? get selected {
    if (_self.selected == null) {
    return null;
  }

  return $WalletInfoCopyWith<$Res>(_self.selected!, (value) {
    return _then(_self.copyWith(selected: value));
  });
}
}


/// Adds pattern-matching-related methods to [WalletBundle].
extension WalletBundlePatterns on WalletBundle {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletBundle value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletBundle() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletBundle value)  $default,){
final _that = this;
switch (_that) {
case _WalletBundle():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletBundle value)?  $default,){
final _that = this;
switch (_that) {
case _WalletBundle() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( IList<WalletInfo>? wallets,  WalletInfo? selected)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletBundle() when $default != null:
return $default(_that.wallets,_that.selected);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( IList<WalletInfo>? wallets,  WalletInfo? selected)  $default,) {final _that = this;
switch (_that) {
case _WalletBundle():
return $default(_that.wallets,_that.selected);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( IList<WalletInfo>? wallets,  WalletInfo? selected)?  $default,) {final _that = this;
switch (_that) {
case _WalletBundle() when $default != null:
return $default(_that.wallets,_that.selected);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WalletBundle implements WalletBundle {
  const _WalletBundle({this.wallets, this.selected});
  factory _WalletBundle.fromJson(Map<String, dynamic> json) => _$WalletBundleFromJson(json);

@override final  IList<WalletInfo>? wallets;
@override final  WalletInfo? selected;

/// Create a copy of WalletBundle
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletBundleCopyWith<_WalletBundle> get copyWith => __$WalletBundleCopyWithImpl<_WalletBundle>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WalletBundleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletBundle&&const DeepCollectionEquality().equals(other.wallets, wallets)&&(identical(other.selected, selected) || other.selected == selected));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(wallets),selected);

@override
String toString() {
  return 'WalletBundle(wallets: $wallets, selected: $selected)';
}


}

/// @nodoc
abstract mixin class _$WalletBundleCopyWith<$Res> implements $WalletBundleCopyWith<$Res> {
  factory _$WalletBundleCopyWith(_WalletBundle value, $Res Function(_WalletBundle) _then) = __$WalletBundleCopyWithImpl;
@override @useResult
$Res call({
 IList<WalletInfo>? wallets, WalletInfo? selected
});


@override $WalletInfoCopyWith<$Res>? get selected;

}
/// @nodoc
class __$WalletBundleCopyWithImpl<$Res>
    implements _$WalletBundleCopyWith<$Res> {
  __$WalletBundleCopyWithImpl(this._self, this._then);

  final _WalletBundle _self;
  final $Res Function(_WalletBundle) _then;

/// Create a copy of WalletBundle
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? wallets = freezed,Object? selected = freezed,}) {
  return _then(_WalletBundle(
wallets: freezed == wallets ? _self.wallets : wallets // ignore: cast_nullable_to_non_nullable
as IList<WalletInfo>?,selected: freezed == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as WalletInfo?,
  ));
}

/// Create a copy of WalletBundle
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WalletInfoCopyWith<$Res>? get selected {
    if (_self.selected == null) {
    return null;
  }

  return $WalletInfoCopyWith<$Res>(_self.selected!, (value) {
    return _then(_self.copyWith(selected: value));
  });
}
}

/// @nodoc
mixin _$WalletData {

 String get name; WalletKind get kind;
/// Create a copy of WalletData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletDataCopyWith<WalletData> get copyWith => _$WalletDataCopyWithImpl<WalletData>(this as WalletData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletData&&(identical(other.name, name) || other.name == name)&&(identical(other.kind, kind) || other.kind == kind));
}


@override
int get hashCode => Object.hash(runtimeType,name,kind);

@override
String toString() {
  return 'WalletData(name: $name, kind: $kind)';
}


}

/// @nodoc
abstract mixin class $WalletDataCopyWith<$Res>  {
  factory $WalletDataCopyWith(WalletData value, $Res Function(WalletData) _then) = _$WalletDataCopyWithImpl;
@useResult
$Res call({
 String name, WalletKind kind
});


$WalletKindCopyWith<$Res> get kind;

}
/// @nodoc
class _$WalletDataCopyWithImpl<$Res>
    implements $WalletDataCopyWith<$Res> {
  _$WalletDataCopyWithImpl(this._self, this._then);

  final WalletData _self;
  final $Res Function(WalletData) _then;

/// Create a copy of WalletData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? kind = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as WalletKind,
  ));
}
/// Create a copy of WalletData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WalletKindCopyWith<$Res> get kind {
  
  return $WalletKindCopyWith<$Res>(_self.kind, (value) {
    return _then(_self.copyWith(kind: value));
  });
}
}


/// Adds pattern-matching-related methods to [WalletData].
extension WalletDataPatterns on WalletData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _WalletDataSeed value)?  seed,TResult Function( _WalletDataKpub value)?  kpub,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletDataSeed() when seed != null:
return seed(_that);case _WalletDataKpub() when kpub != null:
return kpub(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _WalletDataSeed value)  seed,required TResult Function( _WalletDataKpub value)  kpub,}){
final _that = this;
switch (_that) {
case _WalletDataSeed():
return seed(_that);case _WalletDataKpub():
return kpub(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _WalletDataSeed value)?  seed,TResult? Function( _WalletDataKpub value)?  kpub,}){
final _that = this;
switch (_that) {
case _WalletDataSeed() when seed != null:
return seed(_that);case _WalletDataKpub() when kpub != null:
return kpub(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String name,  WalletKind kind,  String seed,  bool usesBip39Passphrase,  String? mnemonic,  String? password)?  seed,TResult Function( String name,  WalletKind kind,  String kpub)?  kpub,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletDataSeed() when seed != null:
return seed(_that.name,_that.kind,_that.seed,_that.usesBip39Passphrase,_that.mnemonic,_that.password);case _WalletDataKpub() when kpub != null:
return kpub(_that.name,_that.kind,_that.kpub);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String name,  WalletKind kind,  String seed,  bool usesBip39Passphrase,  String? mnemonic,  String? password)  seed,required TResult Function( String name,  WalletKind kind,  String kpub)  kpub,}) {final _that = this;
switch (_that) {
case _WalletDataSeed():
return seed(_that.name,_that.kind,_that.seed,_that.usesBip39Passphrase,_that.mnemonic,_that.password);case _WalletDataKpub():
return kpub(_that.name,_that.kind,_that.kpub);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String name,  WalletKind kind,  String seed,  bool usesBip39Passphrase,  String? mnemonic,  String? password)?  seed,TResult? Function( String name,  WalletKind kind,  String kpub)?  kpub,}) {final _that = this;
switch (_that) {
case _WalletDataSeed() when seed != null:
return seed(_that.name,_that.kind,_that.seed,_that.usesBip39Passphrase,_that.mnemonic,_that.password);case _WalletDataKpub() when kpub != null:
return kpub(_that.name,_that.kind,_that.kpub);case _:
  return null;

}
}

}

/// @nodoc


class _WalletDataSeed implements WalletData {
  const _WalletDataSeed({required this.name, required this.kind, required this.seed, required this.usesBip39Passphrase, this.mnemonic, this.password});
  

@override final  String name;
@override final  WalletKind kind;
 final  String seed;
 final  bool usesBip39Passphrase;
 final  String? mnemonic;
 final  String? password;

/// Create a copy of WalletData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletDataSeedCopyWith<_WalletDataSeed> get copyWith => __$WalletDataSeedCopyWithImpl<_WalletDataSeed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletDataSeed&&(identical(other.name, name) || other.name == name)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.seed, seed) || other.seed == seed)&&(identical(other.usesBip39Passphrase, usesBip39Passphrase) || other.usesBip39Passphrase == usesBip39Passphrase)&&(identical(other.mnemonic, mnemonic) || other.mnemonic == mnemonic)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,name,kind,seed,usesBip39Passphrase,mnemonic,password);

@override
String toString() {
  return 'WalletData.seed(name: $name, kind: $kind, seed: $seed, usesBip39Passphrase: $usesBip39Passphrase, mnemonic: $mnemonic, password: $password)';
}


}

/// @nodoc
abstract mixin class _$WalletDataSeedCopyWith<$Res> implements $WalletDataCopyWith<$Res> {
  factory _$WalletDataSeedCopyWith(_WalletDataSeed value, $Res Function(_WalletDataSeed) _then) = __$WalletDataSeedCopyWithImpl;
@override @useResult
$Res call({
 String name, WalletKind kind, String seed, bool usesBip39Passphrase, String? mnemonic, String? password
});


@override $WalletKindCopyWith<$Res> get kind;

}
/// @nodoc
class __$WalletDataSeedCopyWithImpl<$Res>
    implements _$WalletDataSeedCopyWith<$Res> {
  __$WalletDataSeedCopyWithImpl(this._self, this._then);

  final _WalletDataSeed _self;
  final $Res Function(_WalletDataSeed) _then;

/// Create a copy of WalletData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? kind = null,Object? seed = null,Object? usesBip39Passphrase = null,Object? mnemonic = freezed,Object? password = freezed,}) {
  return _then(_WalletDataSeed(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as WalletKind,seed: null == seed ? _self.seed : seed // ignore: cast_nullable_to_non_nullable
as String,usesBip39Passphrase: null == usesBip39Passphrase ? _self.usesBip39Passphrase : usesBip39Passphrase // ignore: cast_nullable_to_non_nullable
as bool,mnemonic: freezed == mnemonic ? _self.mnemonic : mnemonic // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of WalletData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WalletKindCopyWith<$Res> get kind {
  
  return $WalletKindCopyWith<$Res>(_self.kind, (value) {
    return _then(_self.copyWith(kind: value));
  });
}
}

/// @nodoc


class _WalletDataKpub implements WalletData {
  const _WalletDataKpub({required this.name, required this.kind, required this.kpub});
  

@override final  String name;
@override final  WalletKind kind;
 final  String kpub;

/// Create a copy of WalletData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletDataKpubCopyWith<_WalletDataKpub> get copyWith => __$WalletDataKpubCopyWithImpl<_WalletDataKpub>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletDataKpub&&(identical(other.name, name) || other.name == name)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.kpub, kpub) || other.kpub == kpub));
}


@override
int get hashCode => Object.hash(runtimeType,name,kind,kpub);

@override
String toString() {
  return 'WalletData.kpub(name: $name, kind: $kind, kpub: $kpub)';
}


}

/// @nodoc
abstract mixin class _$WalletDataKpubCopyWith<$Res> implements $WalletDataCopyWith<$Res> {
  factory _$WalletDataKpubCopyWith(_WalletDataKpub value, $Res Function(_WalletDataKpub) _then) = __$WalletDataKpubCopyWithImpl;
@override @useResult
$Res call({
 String name, WalletKind kind, String kpub
});


@override $WalletKindCopyWith<$Res> get kind;

}
/// @nodoc
class __$WalletDataKpubCopyWithImpl<$Res>
    implements _$WalletDataKpubCopyWith<$Res> {
  __$WalletDataKpubCopyWithImpl(this._self, this._then);

  final _WalletDataKpub _self;
  final $Res Function(_WalletDataKpub) _then;

/// Create a copy of WalletData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? kind = null,Object? kpub = null,}) {
  return _then(_WalletDataKpub(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as WalletKind,kpub: null == kpub ? _self.kpub : kpub // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of WalletData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WalletKindCopyWith<$Res> get kind {
  
  return $WalletKindCopyWith<$Res>(_self.kind, (value) {
    return _then(_self.copyWith(kind: value));
  });
}
}

// dart format on
