// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_auth_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WalletAuth {

 WalletInfo get wallet; String? get encryptedSecret; bool get isLocked; bool get isEncrypted; bool get hasMnemonic;
/// Create a copy of WalletAuth
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletAuthCopyWith<WalletAuth> get copyWith => _$WalletAuthCopyWithImpl<WalletAuth>(this as WalletAuth, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletAuth&&(identical(other.wallet, wallet) || other.wallet == wallet)&&(identical(other.encryptedSecret, encryptedSecret) || other.encryptedSecret == encryptedSecret)&&(identical(other.isLocked, isLocked) || other.isLocked == isLocked)&&(identical(other.isEncrypted, isEncrypted) || other.isEncrypted == isEncrypted)&&(identical(other.hasMnemonic, hasMnemonic) || other.hasMnemonic == hasMnemonic));
}


@override
int get hashCode => Object.hash(runtimeType,wallet,encryptedSecret,isLocked,isEncrypted,hasMnemonic);

@override
String toString() {
  return 'WalletAuth(wallet: $wallet, encryptedSecret: $encryptedSecret, isLocked: $isLocked, isEncrypted: $isEncrypted, hasMnemonic: $hasMnemonic)';
}


}

/// @nodoc
abstract mixin class $WalletAuthCopyWith<$Res>  {
  factory $WalletAuthCopyWith(WalletAuth value, $Res Function(WalletAuth) _then) = _$WalletAuthCopyWithImpl;
@useResult
$Res call({
 WalletInfo wallet, String? encryptedSecret, bool isLocked, bool isEncrypted, bool hasMnemonic
});


$WalletInfoCopyWith<$Res> get wallet;

}
/// @nodoc
class _$WalletAuthCopyWithImpl<$Res>
    implements $WalletAuthCopyWith<$Res> {
  _$WalletAuthCopyWithImpl(this._self, this._then);

  final WalletAuth _self;
  final $Res Function(WalletAuth) _then;

/// Create a copy of WalletAuth
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? wallet = null,Object? encryptedSecret = freezed,Object? isLocked = null,Object? isEncrypted = null,Object? hasMnemonic = null,}) {
  return _then(_self.copyWith(
wallet: null == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as WalletInfo,encryptedSecret: freezed == encryptedSecret ? _self.encryptedSecret : encryptedSecret // ignore: cast_nullable_to_non_nullable
as String?,isLocked: null == isLocked ? _self.isLocked : isLocked // ignore: cast_nullable_to_non_nullable
as bool,isEncrypted: null == isEncrypted ? _self.isEncrypted : isEncrypted // ignore: cast_nullable_to_non_nullable
as bool,hasMnemonic: null == hasMnemonic ? _self.hasMnemonic : hasMnemonic // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of WalletAuth
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WalletInfoCopyWith<$Res> get wallet {
  
  return $WalletInfoCopyWith<$Res>(_self.wallet, (value) {
    return _then(_self.copyWith(wallet: value));
  });
}
}


/// Adds pattern-matching-related methods to [WalletAuth].
extension WalletAuthPatterns on WalletAuth {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletAuth value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletAuth() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletAuth value)  $default,){
final _that = this;
switch (_that) {
case _WalletAuth():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletAuth value)?  $default,){
final _that = this;
switch (_that) {
case _WalletAuth() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( WalletInfo wallet,  String? encryptedSecret,  bool isLocked,  bool isEncrypted,  bool hasMnemonic)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletAuth() when $default != null:
return $default(_that.wallet,_that.encryptedSecret,_that.isLocked,_that.isEncrypted,_that.hasMnemonic);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( WalletInfo wallet,  String? encryptedSecret,  bool isLocked,  bool isEncrypted,  bool hasMnemonic)  $default,) {final _that = this;
switch (_that) {
case _WalletAuth():
return $default(_that.wallet,_that.encryptedSecret,_that.isLocked,_that.isEncrypted,_that.hasMnemonic);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( WalletInfo wallet,  String? encryptedSecret,  bool isLocked,  bool isEncrypted,  bool hasMnemonic)?  $default,) {final _that = this;
switch (_that) {
case _WalletAuth() when $default != null:
return $default(_that.wallet,_that.encryptedSecret,_that.isLocked,_that.isEncrypted,_that.hasMnemonic);case _:
  return null;

}
}

}

/// @nodoc


class _WalletAuth extends WalletAuth {
  const _WalletAuth({required this.wallet, this.encryptedSecret, this.isLocked = true, this.isEncrypted = false, this.hasMnemonic = false}): super._();
  

@override final  WalletInfo wallet;
@override final  String? encryptedSecret;
@override@JsonKey() final  bool isLocked;
@override@JsonKey() final  bool isEncrypted;
@override@JsonKey() final  bool hasMnemonic;

/// Create a copy of WalletAuth
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletAuthCopyWith<_WalletAuth> get copyWith => __$WalletAuthCopyWithImpl<_WalletAuth>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletAuth&&(identical(other.wallet, wallet) || other.wallet == wallet)&&(identical(other.encryptedSecret, encryptedSecret) || other.encryptedSecret == encryptedSecret)&&(identical(other.isLocked, isLocked) || other.isLocked == isLocked)&&(identical(other.isEncrypted, isEncrypted) || other.isEncrypted == isEncrypted)&&(identical(other.hasMnemonic, hasMnemonic) || other.hasMnemonic == hasMnemonic));
}


@override
int get hashCode => Object.hash(runtimeType,wallet,encryptedSecret,isLocked,isEncrypted,hasMnemonic);

@override
String toString() {
  return 'WalletAuth(wallet: $wallet, encryptedSecret: $encryptedSecret, isLocked: $isLocked, isEncrypted: $isEncrypted, hasMnemonic: $hasMnemonic)';
}


}

/// @nodoc
abstract mixin class _$WalletAuthCopyWith<$Res> implements $WalletAuthCopyWith<$Res> {
  factory _$WalletAuthCopyWith(_WalletAuth value, $Res Function(_WalletAuth) _then) = __$WalletAuthCopyWithImpl;
@override @useResult
$Res call({
 WalletInfo wallet, String? encryptedSecret, bool isLocked, bool isEncrypted, bool hasMnemonic
});


@override $WalletInfoCopyWith<$Res> get wallet;

}
/// @nodoc
class __$WalletAuthCopyWithImpl<$Res>
    implements _$WalletAuthCopyWith<$Res> {
  __$WalletAuthCopyWithImpl(this._self, this._then);

  final _WalletAuth _self;
  final $Res Function(_WalletAuth) _then;

/// Create a copy of WalletAuth
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? wallet = null,Object? encryptedSecret = freezed,Object? isLocked = null,Object? isEncrypted = null,Object? hasMnemonic = null,}) {
  return _then(_WalletAuth(
wallet: null == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as WalletInfo,encryptedSecret: freezed == encryptedSecret ? _self.encryptedSecret : encryptedSecret // ignore: cast_nullable_to_non_nullable
as String?,isLocked: null == isLocked ? _self.isLocked : isLocked // ignore: cast_nullable_to_non_nullable
as bool,isEncrypted: null == isEncrypted ? _self.isEncrypted : isEncrypted // ignore: cast_nullable_to_non_nullable
as bool,hasMnemonic: null == hasMnemonic ? _self.hasMnemonic : hasMnemonic // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of WalletAuth
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WalletInfoCopyWith<$Res> get wallet {
  
  return $WalletInfoCopyWith<$Res>(_self.wallet, (value) {
    return _then(_self.copyWith(wallet: value));
  });
}
}

// dart format on
