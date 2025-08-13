// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_tx.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SendTx {

 KaspaUri get uri; Transaction get tx; List<Utxo> get utxos; bool get userSelected; Amount get amount; Amount get baseFee; Amount get priorityFee; Amount get change; Address? get changeAddress; String? get note; BigInt get mass;
/// Create a copy of SendTx
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendTxCopyWith<SendTx> get copyWith => _$SendTxCopyWithImpl<SendTx>(this as SendTx, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendTx&&(identical(other.uri, uri) || other.uri == uri)&&(identical(other.tx, tx) || other.tx == tx)&&const DeepCollectionEquality().equals(other.utxos, utxos)&&(identical(other.userSelected, userSelected) || other.userSelected == userSelected)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.baseFee, baseFee) || other.baseFee == baseFee)&&(identical(other.priorityFee, priorityFee) || other.priorityFee == priorityFee)&&(identical(other.change, change) || other.change == change)&&(identical(other.changeAddress, changeAddress) || other.changeAddress == changeAddress)&&(identical(other.note, note) || other.note == note)&&(identical(other.mass, mass) || other.mass == mass));
}


@override
int get hashCode => Object.hash(runtimeType,uri,tx,const DeepCollectionEquality().hash(utxos),userSelected,amount,baseFee,priorityFee,change,changeAddress,note,mass);

@override
String toString() {
  return 'SendTx(uri: $uri, tx: $tx, utxos: $utxos, userSelected: $userSelected, amount: $amount, baseFee: $baseFee, priorityFee: $priorityFee, change: $change, changeAddress: $changeAddress, note: $note, mass: $mass)';
}


}

/// @nodoc
abstract mixin class $SendTxCopyWith<$Res>  {
  factory $SendTxCopyWith(SendTx value, $Res Function(SendTx) _then) = _$SendTxCopyWithImpl;
@useResult
$Res call({
 KaspaUri uri, Transaction tx, List<Utxo> utxos, bool userSelected, Amount amount, Amount baseFee, Amount priorityFee, Amount change, Address? changeAddress, String? note, BigInt mass
});


$KaspaUriCopyWith<$Res> get uri;$TransactionCopyWith<$Res> get tx;$AmountCopyWith<$Res> get amount;$AmountCopyWith<$Res> get baseFee;$AmountCopyWith<$Res> get priorityFee;$AmountCopyWith<$Res> get change;$AddressCopyWith<$Res>? get changeAddress;

}
/// @nodoc
class _$SendTxCopyWithImpl<$Res>
    implements $SendTxCopyWith<$Res> {
  _$SendTxCopyWithImpl(this._self, this._then);

  final SendTx _self;
  final $Res Function(SendTx) _then;

/// Create a copy of SendTx
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uri = null,Object? tx = null,Object? utxos = null,Object? userSelected = null,Object? amount = null,Object? baseFee = null,Object? priorityFee = null,Object? change = null,Object? changeAddress = freezed,Object? note = freezed,Object? mass = null,}) {
  return _then(_self.copyWith(
uri: null == uri ? _self.uri : uri // ignore: cast_nullable_to_non_nullable
as KaspaUri,tx: null == tx ? _self.tx : tx // ignore: cast_nullable_to_non_nullable
as Transaction,utxos: null == utxos ? _self.utxos : utxos // ignore: cast_nullable_to_non_nullable
as List<Utxo>,userSelected: null == userSelected ? _self.userSelected : userSelected // ignore: cast_nullable_to_non_nullable
as bool,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Amount,baseFee: null == baseFee ? _self.baseFee : baseFee // ignore: cast_nullable_to_non_nullable
as Amount,priorityFee: null == priorityFee ? _self.priorityFee : priorityFee // ignore: cast_nullable_to_non_nullable
as Amount,change: null == change ? _self.change : change // ignore: cast_nullable_to_non_nullable
as Amount,changeAddress: freezed == changeAddress ? _self.changeAddress : changeAddress // ignore: cast_nullable_to_non_nullable
as Address?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,mass: null == mass ? _self.mass : mass // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}
/// Create a copy of SendTx
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KaspaUriCopyWith<$Res> get uri {
  
  return $KaspaUriCopyWith<$Res>(_self.uri, (value) {
    return _then(_self.copyWith(uri: value));
  });
}/// Create a copy of SendTx
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionCopyWith<$Res> get tx {
  
  return $TransactionCopyWith<$Res>(_self.tx, (value) {
    return _then(_self.copyWith(tx: value));
  });
}/// Create a copy of SendTx
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AmountCopyWith<$Res> get amount {
  
  return $AmountCopyWith<$Res>(_self.amount, (value) {
    return _then(_self.copyWith(amount: value));
  });
}/// Create a copy of SendTx
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AmountCopyWith<$Res> get baseFee {
  
  return $AmountCopyWith<$Res>(_self.baseFee, (value) {
    return _then(_self.copyWith(baseFee: value));
  });
}/// Create a copy of SendTx
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AmountCopyWith<$Res> get priorityFee {
  
  return $AmountCopyWith<$Res>(_self.priorityFee, (value) {
    return _then(_self.copyWith(priorityFee: value));
  });
}/// Create a copy of SendTx
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AmountCopyWith<$Res> get change {
  
  return $AmountCopyWith<$Res>(_self.change, (value) {
    return _then(_self.copyWith(change: value));
  });
}/// Create a copy of SendTx
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get changeAddress {
    if (_self.changeAddress == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.changeAddress!, (value) {
    return _then(_self.copyWith(changeAddress: value));
  });
}
}


/// Adds pattern-matching-related methods to [SendTx].
extension SendTxPatterns on SendTx {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SendTx value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SendTx() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SendTx value)  $default,){
final _that = this;
switch (_that) {
case _SendTx():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SendTx value)?  $default,){
final _that = this;
switch (_that) {
case _SendTx() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( KaspaUri uri,  Transaction tx,  List<Utxo> utxos,  bool userSelected,  Amount amount,  Amount baseFee,  Amount priorityFee,  Amount change,  Address? changeAddress,  String? note,  BigInt mass)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SendTx() when $default != null:
return $default(_that.uri,_that.tx,_that.utxos,_that.userSelected,_that.amount,_that.baseFee,_that.priorityFee,_that.change,_that.changeAddress,_that.note,_that.mass);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( KaspaUri uri,  Transaction tx,  List<Utxo> utxos,  bool userSelected,  Amount amount,  Amount baseFee,  Amount priorityFee,  Amount change,  Address? changeAddress,  String? note,  BigInt mass)  $default,) {final _that = this;
switch (_that) {
case _SendTx():
return $default(_that.uri,_that.tx,_that.utxos,_that.userSelected,_that.amount,_that.baseFee,_that.priorityFee,_that.change,_that.changeAddress,_that.note,_that.mass);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( KaspaUri uri,  Transaction tx,  List<Utxo> utxos,  bool userSelected,  Amount amount,  Amount baseFee,  Amount priorityFee,  Amount change,  Address? changeAddress,  String? note,  BigInt mass)?  $default,) {final _that = this;
switch (_that) {
case _SendTx() when $default != null:
return $default(_that.uri,_that.tx,_that.utxos,_that.userSelected,_that.amount,_that.baseFee,_that.priorityFee,_that.change,_that.changeAddress,_that.note,_that.mass);case _:
  return null;

}
}

}

/// @nodoc


class _SendTx extends SendTx {
   _SendTx({required this.uri, required this.tx, required final  List<Utxo> utxos, this.userSelected = false, required this.amount, required this.baseFee, required this.priorityFee, required this.change, this.changeAddress, this.note, required this.mass}): _utxos = utxos,super._();
  

@override final  KaspaUri uri;
@override final  Transaction tx;
 final  List<Utxo> _utxos;
@override List<Utxo> get utxos {
  if (_utxos is EqualUnmodifiableListView) return _utxos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_utxos);
}

@override@JsonKey() final  bool userSelected;
@override final  Amount amount;
@override final  Amount baseFee;
@override final  Amount priorityFee;
@override final  Amount change;
@override final  Address? changeAddress;
@override final  String? note;
@override final  BigInt mass;

/// Create a copy of SendTx
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendTxCopyWith<_SendTx> get copyWith => __$SendTxCopyWithImpl<_SendTx>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendTx&&(identical(other.uri, uri) || other.uri == uri)&&(identical(other.tx, tx) || other.tx == tx)&&const DeepCollectionEquality().equals(other._utxos, _utxos)&&(identical(other.userSelected, userSelected) || other.userSelected == userSelected)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.baseFee, baseFee) || other.baseFee == baseFee)&&(identical(other.priorityFee, priorityFee) || other.priorityFee == priorityFee)&&(identical(other.change, change) || other.change == change)&&(identical(other.changeAddress, changeAddress) || other.changeAddress == changeAddress)&&(identical(other.note, note) || other.note == note)&&(identical(other.mass, mass) || other.mass == mass));
}


@override
int get hashCode => Object.hash(runtimeType,uri,tx,const DeepCollectionEquality().hash(_utxos),userSelected,amount,baseFee,priorityFee,change,changeAddress,note,mass);

@override
String toString() {
  return 'SendTx(uri: $uri, tx: $tx, utxos: $utxos, userSelected: $userSelected, amount: $amount, baseFee: $baseFee, priorityFee: $priorityFee, change: $change, changeAddress: $changeAddress, note: $note, mass: $mass)';
}


}

/// @nodoc
abstract mixin class _$SendTxCopyWith<$Res> implements $SendTxCopyWith<$Res> {
  factory _$SendTxCopyWith(_SendTx value, $Res Function(_SendTx) _then) = __$SendTxCopyWithImpl;
@override @useResult
$Res call({
 KaspaUri uri, Transaction tx, List<Utxo> utxos, bool userSelected, Amount amount, Amount baseFee, Amount priorityFee, Amount change, Address? changeAddress, String? note, BigInt mass
});


@override $KaspaUriCopyWith<$Res> get uri;@override $TransactionCopyWith<$Res> get tx;@override $AmountCopyWith<$Res> get amount;@override $AmountCopyWith<$Res> get baseFee;@override $AmountCopyWith<$Res> get priorityFee;@override $AmountCopyWith<$Res> get change;@override $AddressCopyWith<$Res>? get changeAddress;

}
/// @nodoc
class __$SendTxCopyWithImpl<$Res>
    implements _$SendTxCopyWith<$Res> {
  __$SendTxCopyWithImpl(this._self, this._then);

  final _SendTx _self;
  final $Res Function(_SendTx) _then;

/// Create a copy of SendTx
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uri = null,Object? tx = null,Object? utxos = null,Object? userSelected = null,Object? amount = null,Object? baseFee = null,Object? priorityFee = null,Object? change = null,Object? changeAddress = freezed,Object? note = freezed,Object? mass = null,}) {
  return _then(_SendTx(
uri: null == uri ? _self.uri : uri // ignore: cast_nullable_to_non_nullable
as KaspaUri,tx: null == tx ? _self.tx : tx // ignore: cast_nullable_to_non_nullable
as Transaction,utxos: null == utxos ? _self._utxos : utxos // ignore: cast_nullable_to_non_nullable
as List<Utxo>,userSelected: null == userSelected ? _self.userSelected : userSelected // ignore: cast_nullable_to_non_nullable
as bool,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Amount,baseFee: null == baseFee ? _self.baseFee : baseFee // ignore: cast_nullable_to_non_nullable
as Amount,priorityFee: null == priorityFee ? _self.priorityFee : priorityFee // ignore: cast_nullable_to_non_nullable
as Amount,change: null == change ? _self.change : change // ignore: cast_nullable_to_non_nullable
as Amount,changeAddress: freezed == changeAddress ? _self.changeAddress : changeAddress // ignore: cast_nullable_to_non_nullable
as Address?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,mass: null == mass ? _self.mass : mass // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}

/// Create a copy of SendTx
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KaspaUriCopyWith<$Res> get uri {
  
  return $KaspaUriCopyWith<$Res>(_self.uri, (value) {
    return _then(_self.copyWith(uri: value));
  });
}/// Create a copy of SendTx
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionCopyWith<$Res> get tx {
  
  return $TransactionCopyWith<$Res>(_self.tx, (value) {
    return _then(_self.copyWith(tx: value));
  });
}/// Create a copy of SendTx
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AmountCopyWith<$Res> get amount {
  
  return $AmountCopyWith<$Res>(_self.amount, (value) {
    return _then(_self.copyWith(amount: value));
  });
}/// Create a copy of SendTx
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AmountCopyWith<$Res> get baseFee {
  
  return $AmountCopyWith<$Res>(_self.baseFee, (value) {
    return _then(_self.copyWith(baseFee: value));
  });
}/// Create a copy of SendTx
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AmountCopyWith<$Res> get priorityFee {
  
  return $AmountCopyWith<$Res>(_self.priorityFee, (value) {
    return _then(_self.copyWith(priorityFee: value));
  });
}/// Create a copy of SendTx
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AmountCopyWith<$Res> get change {
  
  return $AmountCopyWith<$Res>(_self.change, (value) {
    return _then(_self.copyWith(change: value));
  });
}/// Create a copy of SendTx
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get changeAddress {
    if (_self.changeAddress == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.changeAddress!, (value) {
    return _then(_self.copyWith(changeAddress: value));
  });
}
}

// dart format on
