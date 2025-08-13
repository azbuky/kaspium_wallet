// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'intro_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IntroState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntroState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'IntroState()';
}


}

/// @nodoc
class $IntroStateCopyWith<$Res>  {
$IntroStateCopyWith(IntroState _, $Res Function(IntroState) __);
}


/// Adds pattern-matching-related methods to [IntroState].
extension IntroStatePatterns on IntroState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _IntroStateInit value)?  init,TResult Function( _IntroStatePush value)?  push,TResult Function( _IntroStatePop value)?  pop,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IntroStateInit() when init != null:
return init(_that);case _IntroStatePush() when push != null:
return push(_that);case _IntroStatePop() when pop != null:
return pop(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _IntroStateInit value)  init,required TResult Function( _IntroStatePush value)  push,required TResult Function( _IntroStatePop value)  pop,}){
final _that = this;
switch (_that) {
case _IntroStateInit():
return init(_that);case _IntroStatePush():
return push(_that);case _IntroStatePop():
return pop(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _IntroStateInit value)?  init,TResult? Function( _IntroStatePush value)?  push,TResult? Function( _IntroStatePop value)?  pop,}){
final _that = this;
switch (_that) {
case _IntroStateInit() when init != null:
return init(_that);case _IntroStatePush() when push != null:
return push(_that);case _IntroStatePop() when pop != null:
return pop(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  init,TResult Function( IntroPage page)?  push,TResult Function()?  pop,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IntroStateInit() when init != null:
return init();case _IntroStatePush() when push != null:
return push(_that.page);case _IntroStatePop() when pop != null:
return pop();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  init,required TResult Function( IntroPage page)  push,required TResult Function()  pop,}) {final _that = this;
switch (_that) {
case _IntroStateInit():
return init();case _IntroStatePush():
return push(_that.page);case _IntroStatePop():
return pop();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  init,TResult? Function( IntroPage page)?  push,TResult? Function()?  pop,}) {final _that = this;
switch (_that) {
case _IntroStateInit() when init != null:
return init();case _IntroStatePush() when push != null:
return push(_that.page);case _IntroStatePop() when pop != null:
return pop();case _:
  return null;

}
}

}

/// @nodoc


class _IntroStateInit implements IntroState {
  const _IntroStateInit();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IntroStateInit);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'IntroState.init()';
}


}




/// @nodoc


class _IntroStatePush implements IntroState {
  const _IntroStatePush({required this.page});
  

 final  IntroPage page;

/// Create a copy of IntroState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IntroStatePushCopyWith<_IntroStatePush> get copyWith => __$IntroStatePushCopyWithImpl<_IntroStatePush>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IntroStatePush&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,page);

@override
String toString() {
  return 'IntroState.push(page: $page)';
}


}

/// @nodoc
abstract mixin class _$IntroStatePushCopyWith<$Res> implements $IntroStateCopyWith<$Res> {
  factory _$IntroStatePushCopyWith(_IntroStatePush value, $Res Function(_IntroStatePush) _then) = __$IntroStatePushCopyWithImpl;
@useResult
$Res call({
 IntroPage page
});




}
/// @nodoc
class __$IntroStatePushCopyWithImpl<$Res>
    implements _$IntroStatePushCopyWith<$Res> {
  __$IntroStatePushCopyWithImpl(this._self, this._then);

  final _IntroStatePush _self;
  final $Res Function(_IntroStatePush) _then;

/// Create a copy of IntroState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,}) {
  return _then(_IntroStatePush(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as IntroPage,
  ));
}


}

/// @nodoc


class _IntroStatePop implements IntroState {
  const _IntroStatePop();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IntroStatePop);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'IntroState.pop()';
}


}




/// @nodoc
mixin _$IntroData {

 String? get mnemonic; String? get kpub; Future<String>? get seed; String? get name; String? get pin; String? get password; bool get generated; bool get isLegacyWallet; String get bip39Passphrase; bool get completed;
/// Create a copy of IntroData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IntroDataCopyWith<IntroData> get copyWith => _$IntroDataCopyWithImpl<IntroData>(this as IntroData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntroData&&(identical(other.mnemonic, mnemonic) || other.mnemonic == mnemonic)&&(identical(other.kpub, kpub) || other.kpub == kpub)&&(identical(other.seed, seed) || other.seed == seed)&&(identical(other.name, name) || other.name == name)&&(identical(other.pin, pin) || other.pin == pin)&&(identical(other.password, password) || other.password == password)&&(identical(other.generated, generated) || other.generated == generated)&&(identical(other.isLegacyWallet, isLegacyWallet) || other.isLegacyWallet == isLegacyWallet)&&(identical(other.bip39Passphrase, bip39Passphrase) || other.bip39Passphrase == bip39Passphrase)&&(identical(other.completed, completed) || other.completed == completed));
}


@override
int get hashCode => Object.hash(runtimeType,mnemonic,kpub,seed,name,pin,password,generated,isLegacyWallet,bip39Passphrase,completed);

@override
String toString() {
  return 'IntroData(mnemonic: $mnemonic, kpub: $kpub, seed: $seed, name: $name, pin: $pin, password: $password, generated: $generated, isLegacyWallet: $isLegacyWallet, bip39Passphrase: $bip39Passphrase, completed: $completed)';
}


}

/// @nodoc
abstract mixin class $IntroDataCopyWith<$Res>  {
  factory $IntroDataCopyWith(IntroData value, $Res Function(IntroData) _then) = _$IntroDataCopyWithImpl;
@useResult
$Res call({
 String? mnemonic, String? kpub, Future<String>? seed, String? name, String? pin, String? password, bool generated, bool isLegacyWallet, String bip39Passphrase, bool completed
});




}
/// @nodoc
class _$IntroDataCopyWithImpl<$Res>
    implements $IntroDataCopyWith<$Res> {
  _$IntroDataCopyWithImpl(this._self, this._then);

  final IntroData _self;
  final $Res Function(IntroData) _then;

/// Create a copy of IntroData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mnemonic = freezed,Object? kpub = freezed,Object? seed = freezed,Object? name = freezed,Object? pin = freezed,Object? password = freezed,Object? generated = null,Object? isLegacyWallet = null,Object? bip39Passphrase = null,Object? completed = null,}) {
  return _then(_self.copyWith(
mnemonic: freezed == mnemonic ? _self.mnemonic : mnemonic // ignore: cast_nullable_to_non_nullable
as String?,kpub: freezed == kpub ? _self.kpub : kpub // ignore: cast_nullable_to_non_nullable
as String?,seed: freezed == seed ? _self.seed : seed // ignore: cast_nullable_to_non_nullable
as Future<String>?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,pin: freezed == pin ? _self.pin : pin // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,generated: null == generated ? _self.generated : generated // ignore: cast_nullable_to_non_nullable
as bool,isLegacyWallet: null == isLegacyWallet ? _self.isLegacyWallet : isLegacyWallet // ignore: cast_nullable_to_non_nullable
as bool,bip39Passphrase: null == bip39Passphrase ? _self.bip39Passphrase : bip39Passphrase // ignore: cast_nullable_to_non_nullable
as String,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [IntroData].
extension IntroDataPatterns on IntroData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IntroData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IntroData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IntroData value)  $default,){
final _that = this;
switch (_that) {
case _IntroData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IntroData value)?  $default,){
final _that = this;
switch (_that) {
case _IntroData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? mnemonic,  String? kpub,  Future<String>? seed,  String? name,  String? pin,  String? password,  bool generated,  bool isLegacyWallet,  String bip39Passphrase,  bool completed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IntroData() when $default != null:
return $default(_that.mnemonic,_that.kpub,_that.seed,_that.name,_that.pin,_that.password,_that.generated,_that.isLegacyWallet,_that.bip39Passphrase,_that.completed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? mnemonic,  String? kpub,  Future<String>? seed,  String? name,  String? pin,  String? password,  bool generated,  bool isLegacyWallet,  String bip39Passphrase,  bool completed)  $default,) {final _that = this;
switch (_that) {
case _IntroData():
return $default(_that.mnemonic,_that.kpub,_that.seed,_that.name,_that.pin,_that.password,_that.generated,_that.isLegacyWallet,_that.bip39Passphrase,_that.completed);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? mnemonic,  String? kpub,  Future<String>? seed,  String? name,  String? pin,  String? password,  bool generated,  bool isLegacyWallet,  String bip39Passphrase,  bool completed)?  $default,) {final _that = this;
switch (_that) {
case _IntroData() when $default != null:
return $default(_that.mnemonic,_that.kpub,_that.seed,_that.name,_that.pin,_that.password,_that.generated,_that.isLegacyWallet,_that.bip39Passphrase,_that.completed);case _:
  return null;

}
}

}

/// @nodoc


class _IntroData implements IntroData {
  const _IntroData({this.mnemonic, this.kpub, this.seed, this.name, this.pin, this.password, this.generated = false, this.isLegacyWallet = false, this.bip39Passphrase = '', this.completed = false});
  

@override final  String? mnemonic;
@override final  String? kpub;
@override final  Future<String>? seed;
@override final  String? name;
@override final  String? pin;
@override final  String? password;
@override@JsonKey() final  bool generated;
@override@JsonKey() final  bool isLegacyWallet;
@override@JsonKey() final  String bip39Passphrase;
@override@JsonKey() final  bool completed;

/// Create a copy of IntroData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IntroDataCopyWith<_IntroData> get copyWith => __$IntroDataCopyWithImpl<_IntroData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IntroData&&(identical(other.mnemonic, mnemonic) || other.mnemonic == mnemonic)&&(identical(other.kpub, kpub) || other.kpub == kpub)&&(identical(other.seed, seed) || other.seed == seed)&&(identical(other.name, name) || other.name == name)&&(identical(other.pin, pin) || other.pin == pin)&&(identical(other.password, password) || other.password == password)&&(identical(other.generated, generated) || other.generated == generated)&&(identical(other.isLegacyWallet, isLegacyWallet) || other.isLegacyWallet == isLegacyWallet)&&(identical(other.bip39Passphrase, bip39Passphrase) || other.bip39Passphrase == bip39Passphrase)&&(identical(other.completed, completed) || other.completed == completed));
}


@override
int get hashCode => Object.hash(runtimeType,mnemonic,kpub,seed,name,pin,password,generated,isLegacyWallet,bip39Passphrase,completed);

@override
String toString() {
  return 'IntroData(mnemonic: $mnemonic, kpub: $kpub, seed: $seed, name: $name, pin: $pin, password: $password, generated: $generated, isLegacyWallet: $isLegacyWallet, bip39Passphrase: $bip39Passphrase, completed: $completed)';
}


}

/// @nodoc
abstract mixin class _$IntroDataCopyWith<$Res> implements $IntroDataCopyWith<$Res> {
  factory _$IntroDataCopyWith(_IntroData value, $Res Function(_IntroData) _then) = __$IntroDataCopyWithImpl;
@override @useResult
$Res call({
 String? mnemonic, String? kpub, Future<String>? seed, String? name, String? pin, String? password, bool generated, bool isLegacyWallet, String bip39Passphrase, bool completed
});




}
/// @nodoc
class __$IntroDataCopyWithImpl<$Res>
    implements _$IntroDataCopyWith<$Res> {
  __$IntroDataCopyWithImpl(this._self, this._then);

  final _IntroData _self;
  final $Res Function(_IntroData) _then;

/// Create a copy of IntroData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mnemonic = freezed,Object? kpub = freezed,Object? seed = freezed,Object? name = freezed,Object? pin = freezed,Object? password = freezed,Object? generated = null,Object? isLegacyWallet = null,Object? bip39Passphrase = null,Object? completed = null,}) {
  return _then(_IntroData(
mnemonic: freezed == mnemonic ? _self.mnemonic : mnemonic // ignore: cast_nullable_to_non_nullable
as String?,kpub: freezed == kpub ? _self.kpub : kpub // ignore: cast_nullable_to_non_nullable
as String?,seed: freezed == seed ? _self.seed : seed // ignore: cast_nullable_to_non_nullable
as Future<String>?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,pin: freezed == pin ? _self.pin : pin // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,generated: null == generated ? _self.generated : generated // ignore: cast_nullable_to_non_nullable
as bool,isLegacyWallet: null == isLegacyWallet ? _self.isLegacyWallet : isLegacyWallet // ignore: cast_nullable_to_non_nullable
as bool,bip39Passphrase: null == bip39Passphrase ? _self.bip39Passphrase : bip39Passphrase // ignore: cast_nullable_to_non_nullable
as String,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
