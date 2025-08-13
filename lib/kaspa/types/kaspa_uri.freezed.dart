// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kaspa_uri.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$KaspaUriParam {

 String get key; String get value;
/// Create a copy of KaspaUriParam
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KaspaUriParamCopyWith<KaspaUriParam> get copyWith => _$KaspaUriParamCopyWithImpl<KaspaUriParam>(this as KaspaUriParam, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KaspaUriParam&&(identical(other.key, key) || other.key == key)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,key,value);

@override
String toString() {
  return 'KaspaUriParam(key: $key, value: $value)';
}


}

/// @nodoc
abstract mixin class $KaspaUriParamCopyWith<$Res>  {
  factory $KaspaUriParamCopyWith(KaspaUriParam value, $Res Function(KaspaUriParam) _then) = _$KaspaUriParamCopyWithImpl;
@useResult
$Res call({
 String key, String value
});




}
/// @nodoc
class _$KaspaUriParamCopyWithImpl<$Res>
    implements $KaspaUriParamCopyWith<$Res> {
  _$KaspaUriParamCopyWithImpl(this._self, this._then);

  final KaspaUriParam _self;
  final $Res Function(KaspaUriParam) _then;

/// Create a copy of KaspaUriParam
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = null,Object? value = null,}) {
  return _then(_self.copyWith(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [KaspaUriParam].
extension KaspaUriParamPatterns on KaspaUriParam {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KaspaUriParam value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KaspaUriParam() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KaspaUriParam value)  $default,){
final _that = this;
switch (_that) {
case _KaspaUriParam():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KaspaUriParam value)?  $default,){
final _that = this;
switch (_that) {
case _KaspaUriParam() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String key,  String value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KaspaUriParam() when $default != null:
return $default(_that.key,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String key,  String value)  $default,) {final _that = this;
switch (_that) {
case _KaspaUriParam():
return $default(_that.key,_that.value);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String key,  String value)?  $default,) {final _that = this;
switch (_that) {
case _KaspaUriParam() when $default != null:
return $default(_that.key,_that.value);case _:
  return null;

}
}

}

/// @nodoc


class _KaspaUriParam extends KaspaUriParam {
  const _KaspaUriParam({required this.key, required this.value}): super._();
  

@override final  String key;
@override final  String value;

/// Create a copy of KaspaUriParam
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KaspaUriParamCopyWith<_KaspaUriParam> get copyWith => __$KaspaUriParamCopyWithImpl<_KaspaUriParam>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KaspaUriParam&&(identical(other.key, key) || other.key == key)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,key,value);

@override
String toString() {
  return 'KaspaUriParam(key: $key, value: $value)';
}


}

/// @nodoc
abstract mixin class _$KaspaUriParamCopyWith<$Res> implements $KaspaUriParamCopyWith<$Res> {
  factory _$KaspaUriParamCopyWith(_KaspaUriParam value, $Res Function(_KaspaUriParam) _then) = __$KaspaUriParamCopyWithImpl;
@override @useResult
$Res call({
 String key, String value
});




}
/// @nodoc
class __$KaspaUriParamCopyWithImpl<$Res>
    implements _$KaspaUriParamCopyWith<$Res> {
  __$KaspaUriParamCopyWithImpl(this._self, this._then);

  final _KaspaUriParam _self;
  final $Res Function(_KaspaUriParam) _then;

/// Create a copy of KaspaUriParam
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = null,Object? value = null,}) {
  return _then(_KaspaUriParam(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$KaspaUri {

 Address get address; Amount? get amount; String? get label; String? get message; IList<KaspaUriParam> get others;
/// Create a copy of KaspaUri
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KaspaUriCopyWith<KaspaUri> get copyWith => _$KaspaUriCopyWithImpl<KaspaUri>(this as KaspaUri, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KaspaUri&&(identical(other.address, address) || other.address == address)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.label, label) || other.label == label)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.others, others));
}


@override
int get hashCode => Object.hash(runtimeType,address,amount,label,message,const DeepCollectionEquality().hash(others));



}

/// @nodoc
abstract mixin class $KaspaUriCopyWith<$Res>  {
  factory $KaspaUriCopyWith(KaspaUri value, $Res Function(KaspaUri) _then) = _$KaspaUriCopyWithImpl;
@useResult
$Res call({
 Address address, Amount? amount, String? label, String? message, IList<KaspaUriParam> others
});


$AddressCopyWith<$Res> get address;$AmountCopyWith<$Res>? get amount;

}
/// @nodoc
class _$KaspaUriCopyWithImpl<$Res>
    implements $KaspaUriCopyWith<$Res> {
  _$KaspaUriCopyWithImpl(this._self, this._then);

  final KaspaUri _self;
  final $Res Function(KaspaUri) _then;

/// Create a copy of KaspaUri
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? address = null,Object? amount = freezed,Object? label = freezed,Object? message = freezed,Object? others = null,}) {
  return _then(_self.copyWith(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as Address,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Amount?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,others: null == others ? _self.others : others // ignore: cast_nullable_to_non_nullable
as IList<KaspaUriParam>,
  ));
}
/// Create a copy of KaspaUri
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res> get address {
  
  return $AddressCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}/// Create a copy of KaspaUri
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AmountCopyWith<$Res>? get amount {
    if (_self.amount == null) {
    return null;
  }

  return $AmountCopyWith<$Res>(_self.amount!, (value) {
    return _then(_self.copyWith(amount: value));
  });
}
}


/// Adds pattern-matching-related methods to [KaspaUri].
extension KaspaUriPatterns on KaspaUri {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KaspaUri value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KaspaUri() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KaspaUri value)  $default,){
final _that = this;
switch (_that) {
case _KaspaUri():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KaspaUri value)?  $default,){
final _that = this;
switch (_that) {
case _KaspaUri() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Address address,  Amount? amount,  String? label,  String? message,  IList<KaspaUriParam> others)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KaspaUri() when $default != null:
return $default(_that.address,_that.amount,_that.label,_that.message,_that.others);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Address address,  Amount? amount,  String? label,  String? message,  IList<KaspaUriParam> others)  $default,) {final _that = this;
switch (_that) {
case _KaspaUri():
return $default(_that.address,_that.amount,_that.label,_that.message,_that.others);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Address address,  Amount? amount,  String? label,  String? message,  IList<KaspaUriParam> others)?  $default,) {final _that = this;
switch (_that) {
case _KaspaUri() when $default != null:
return $default(_that.address,_that.amount,_that.label,_that.message,_that.others);case _:
  return null;

}
}

}

/// @nodoc


class _KaspaUri extends KaspaUri {
  const _KaspaUri({required this.address, this.amount, this.label, this.message, this.others = const IListConst([])}): super._();
  

@override final  Address address;
@override final  Amount? amount;
@override final  String? label;
@override final  String? message;
@override@JsonKey() final  IList<KaspaUriParam> others;

/// Create a copy of KaspaUri
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KaspaUriCopyWith<_KaspaUri> get copyWith => __$KaspaUriCopyWithImpl<_KaspaUri>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KaspaUri&&(identical(other.address, address) || other.address == address)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.label, label) || other.label == label)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.others, others));
}


@override
int get hashCode => Object.hash(runtimeType,address,amount,label,message,const DeepCollectionEquality().hash(others));



}

/// @nodoc
abstract mixin class _$KaspaUriCopyWith<$Res> implements $KaspaUriCopyWith<$Res> {
  factory _$KaspaUriCopyWith(_KaspaUri value, $Res Function(_KaspaUri) _then) = __$KaspaUriCopyWithImpl;
@override @useResult
$Res call({
 Address address, Amount? amount, String? label, String? message, IList<KaspaUriParam> others
});


@override $AddressCopyWith<$Res> get address;@override $AmountCopyWith<$Res>? get amount;

}
/// @nodoc
class __$KaspaUriCopyWithImpl<$Res>
    implements _$KaspaUriCopyWith<$Res> {
  __$KaspaUriCopyWithImpl(this._self, this._then);

  final _KaspaUri _self;
  final $Res Function(_KaspaUri) _then;

/// Create a copy of KaspaUri
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? address = null,Object? amount = freezed,Object? label = freezed,Object? message = freezed,Object? others = null,}) {
  return _then(_KaspaUri(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as Address,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Amount?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,others: null == others ? _self.others : others // ignore: cast_nullable_to_non_nullable
as IList<KaspaUriParam>,
  ));
}

/// Create a copy of KaspaUri
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res> get address {
  
  return $AddressCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}/// Create a copy of KaspaUri
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AmountCopyWith<$Res>? get amount {
    if (_self.amount == null) {
    return null;
  }

  return $AmountCopyWith<$Res>(_self.amount!, (value) {
    return _then(_self.copyWith(amount: value));
  });
}
}

// dart format on
