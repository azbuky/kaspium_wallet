// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TxIndex {

 String get txId; int get blockTime;
/// Create a copy of TxIndex
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TxIndexCopyWith<TxIndex> get copyWith => _$TxIndexCopyWithImpl<TxIndex>(this as TxIndex, _$identity);

  /// Serializes this TxIndex to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxIndex&&(identical(other.txId, txId) || other.txId == txId)&&(identical(other.blockTime, blockTime) || other.blockTime == blockTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,txId,blockTime);

@override
String toString() {
  return 'TxIndex(txId: $txId, blockTime: $blockTime)';
}


}

/// @nodoc
abstract mixin class $TxIndexCopyWith<$Res>  {
  factory $TxIndexCopyWith(TxIndex value, $Res Function(TxIndex) _then) = _$TxIndexCopyWithImpl;
@useResult
$Res call({
 String txId, int blockTime
});




}
/// @nodoc
class _$TxIndexCopyWithImpl<$Res>
    implements $TxIndexCopyWith<$Res> {
  _$TxIndexCopyWithImpl(this._self, this._then);

  final TxIndex _self;
  final $Res Function(TxIndex) _then;

/// Create a copy of TxIndex
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? txId = null,Object? blockTime = null,}) {
  return _then(_self.copyWith(
txId: null == txId ? _self.txId : txId // ignore: cast_nullable_to_non_nullable
as String,blockTime: null == blockTime ? _self.blockTime : blockTime // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TxIndex].
extension TxIndexPatterns on TxIndex {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TxIndex value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TxIndex() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TxIndex value)  $default,){
final _that = this;
switch (_that) {
case _TxIndex():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TxIndex value)?  $default,){
final _that = this;
switch (_that) {
case _TxIndex() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String txId,  int blockTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TxIndex() when $default != null:
return $default(_that.txId,_that.blockTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String txId,  int blockTime)  $default,) {final _that = this;
switch (_that) {
case _TxIndex():
return $default(_that.txId,_that.blockTime);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String txId,  int blockTime)?  $default,) {final _that = this;
switch (_that) {
case _TxIndex() when $default != null:
return $default(_that.txId,_that.blockTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TxIndex implements TxIndex {
  const _TxIndex({required this.txId, this.blockTime = 0});
  factory _TxIndex.fromJson(Map<String, dynamic> json) => _$TxIndexFromJson(json);

@override final  String txId;
@override@JsonKey() final  int blockTime;

/// Create a copy of TxIndex
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TxIndexCopyWith<_TxIndex> get copyWith => __$TxIndexCopyWithImpl<_TxIndex>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TxIndexToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TxIndex&&(identical(other.txId, txId) || other.txId == txId)&&(identical(other.blockTime, blockTime) || other.blockTime == blockTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,txId,blockTime);

@override
String toString() {
  return 'TxIndex(txId: $txId, blockTime: $blockTime)';
}


}

/// @nodoc
abstract mixin class _$TxIndexCopyWith<$Res> implements $TxIndexCopyWith<$Res> {
  factory _$TxIndexCopyWith(_TxIndex value, $Res Function(_TxIndex) _then) = __$TxIndexCopyWithImpl;
@override @useResult
$Res call({
 String txId, int blockTime
});




}
/// @nodoc
class __$TxIndexCopyWithImpl<$Res>
    implements _$TxIndexCopyWith<$Res> {
  __$TxIndexCopyWithImpl(this._self, this._then);

  final _TxIndex _self;
  final $Res Function(_TxIndex) _then;

/// Create a copy of TxIndex
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? txId = null,Object? blockTime = null,}) {
  return _then(_TxIndex(
txId: null == txId ? _self.txId : txId // ignore: cast_nullable_to_non_nullable
as String,blockTime: null == blockTime ? _self.blockTime : blockTime // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$TxInputData {

 String get address; int get amount;
/// Create a copy of TxInputData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TxInputDataCopyWith<TxInputData> get copyWith => _$TxInputDataCopyWithImpl<TxInputData>(this as TxInputData, _$identity);

  /// Serializes this TxInputData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxInputData&&(identical(other.address, address) || other.address == address)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,amount);

@override
String toString() {
  return 'TxInputData(address: $address, amount: $amount)';
}


}

/// @nodoc
abstract mixin class $TxInputDataCopyWith<$Res>  {
  factory $TxInputDataCopyWith(TxInputData value, $Res Function(TxInputData) _then) = _$TxInputDataCopyWithImpl;
@useResult
$Res call({
 String address, int amount
});




}
/// @nodoc
class _$TxInputDataCopyWithImpl<$Res>
    implements $TxInputDataCopyWith<$Res> {
  _$TxInputDataCopyWithImpl(this._self, this._then);

  final TxInputData _self;
  final $Res Function(TxInputData) _then;

/// Create a copy of TxInputData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? address = null,Object? amount = null,}) {
  return _then(_self.copyWith(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TxInputData].
extension TxInputDataPatterns on TxInputData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TxInputData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TxInputData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TxInputData value)  $default,){
final _that = this;
switch (_that) {
case _TxInputData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TxInputData value)?  $default,){
final _that = this;
switch (_that) {
case _TxInputData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String address,  int amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TxInputData() when $default != null:
return $default(_that.address,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String address,  int amount)  $default,) {final _that = this;
switch (_that) {
case _TxInputData():
return $default(_that.address,_that.amount);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String address,  int amount)?  $default,) {final _that = this;
switch (_that) {
case _TxInputData() when $default != null:
return $default(_that.address,_that.amount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TxInputData implements TxInputData {
  const _TxInputData({required this.address, required this.amount});
  factory _TxInputData.fromJson(Map<String, dynamic> json) => _$TxInputDataFromJson(json);

@override final  String address;
@override final  int amount;

/// Create a copy of TxInputData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TxInputDataCopyWith<_TxInputData> get copyWith => __$TxInputDataCopyWithImpl<_TxInputData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TxInputDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TxInputData&&(identical(other.address, address) || other.address == address)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,amount);

@override
String toString() {
  return 'TxInputData(address: $address, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$TxInputDataCopyWith<$Res> implements $TxInputDataCopyWith<$Res> {
  factory _$TxInputDataCopyWith(_TxInputData value, $Res Function(_TxInputData) _then) = __$TxInputDataCopyWithImpl;
@override @useResult
$Res call({
 String address, int amount
});




}
/// @nodoc
class __$TxInputDataCopyWithImpl<$Res>
    implements _$TxInputDataCopyWith<$Res> {
  __$TxInputDataCopyWithImpl(this._self, this._then);

  final _TxInputData _self;
  final $Res Function(_TxInputData) _then;

/// Create a copy of TxInputData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? address = null,Object? amount = null,}) {
  return _then(_TxInputData(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$Tx {

 ApiTransaction get apiTx; List<TxInputData?> get inputData; int get lastUpdate;
/// Create a copy of Tx
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TxCopyWith<Tx> get copyWith => _$TxCopyWithImpl<Tx>(this as Tx, _$identity);

  /// Serializes this Tx to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Tx&&(identical(other.apiTx, apiTx) || other.apiTx == apiTx)&&const DeepCollectionEquality().equals(other.inputData, inputData)&&(identical(other.lastUpdate, lastUpdate) || other.lastUpdate == lastUpdate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,apiTx,const DeepCollectionEquality().hash(inputData),lastUpdate);

@override
String toString() {
  return 'Tx(apiTx: $apiTx, inputData: $inputData, lastUpdate: $lastUpdate)';
}


}

/// @nodoc
abstract mixin class $TxCopyWith<$Res>  {
  factory $TxCopyWith(Tx value, $Res Function(Tx) _then) = _$TxCopyWithImpl;
@useResult
$Res call({
 ApiTransaction apiTx, List<TxInputData?> inputData, int lastUpdate
});


$ApiTransactionCopyWith<$Res> get apiTx;

}
/// @nodoc
class _$TxCopyWithImpl<$Res>
    implements $TxCopyWith<$Res> {
  _$TxCopyWithImpl(this._self, this._then);

  final Tx _self;
  final $Res Function(Tx) _then;

/// Create a copy of Tx
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? apiTx = null,Object? inputData = null,Object? lastUpdate = null,}) {
  return _then(_self.copyWith(
apiTx: null == apiTx ? _self.apiTx : apiTx // ignore: cast_nullable_to_non_nullable
as ApiTransaction,inputData: null == inputData ? _self.inputData : inputData // ignore: cast_nullable_to_non_nullable
as List<TxInputData?>,lastUpdate: null == lastUpdate ? _self.lastUpdate : lastUpdate // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of Tx
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApiTransactionCopyWith<$Res> get apiTx {
  
  return $ApiTransactionCopyWith<$Res>(_self.apiTx, (value) {
    return _then(_self.copyWith(apiTx: value));
  });
}
}


/// Adds pattern-matching-related methods to [Tx].
extension TxPatterns on Tx {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Tx value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Tx() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Tx value)  $default,){
final _that = this;
switch (_that) {
case _Tx():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Tx value)?  $default,){
final _that = this;
switch (_that) {
case _Tx() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ApiTransaction apiTx,  List<TxInputData?> inputData,  int lastUpdate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Tx() when $default != null:
return $default(_that.apiTx,_that.inputData,_that.lastUpdate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ApiTransaction apiTx,  List<TxInputData?> inputData,  int lastUpdate)  $default,) {final _that = this;
switch (_that) {
case _Tx():
return $default(_that.apiTx,_that.inputData,_that.lastUpdate);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ApiTransaction apiTx,  List<TxInputData?> inputData,  int lastUpdate)?  $default,) {final _that = this;
switch (_that) {
case _Tx() when $default != null:
return $default(_that.apiTx,_that.inputData,_that.lastUpdate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Tx extends Tx {
  const _Tx({required this.apiTx, required final  List<TxInputData?> inputData, this.lastUpdate = 0}): _inputData = inputData,super._();
  factory _Tx.fromJson(Map<String, dynamic> json) => _$TxFromJson(json);

@override final  ApiTransaction apiTx;
 final  List<TxInputData?> _inputData;
@override List<TxInputData?> get inputData {
  if (_inputData is EqualUnmodifiableListView) return _inputData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_inputData);
}

@override@JsonKey() final  int lastUpdate;

/// Create a copy of Tx
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TxCopyWith<_Tx> get copyWith => __$TxCopyWithImpl<_Tx>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TxToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Tx&&(identical(other.apiTx, apiTx) || other.apiTx == apiTx)&&const DeepCollectionEquality().equals(other._inputData, _inputData)&&(identical(other.lastUpdate, lastUpdate) || other.lastUpdate == lastUpdate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,apiTx,const DeepCollectionEquality().hash(_inputData),lastUpdate);

@override
String toString() {
  return 'Tx(apiTx: $apiTx, inputData: $inputData, lastUpdate: $lastUpdate)';
}


}

/// @nodoc
abstract mixin class _$TxCopyWith<$Res> implements $TxCopyWith<$Res> {
  factory _$TxCopyWith(_Tx value, $Res Function(_Tx) _then) = __$TxCopyWithImpl;
@override @useResult
$Res call({
 ApiTransaction apiTx, List<TxInputData?> inputData, int lastUpdate
});


@override $ApiTransactionCopyWith<$Res> get apiTx;

}
/// @nodoc
class __$TxCopyWithImpl<$Res>
    implements _$TxCopyWith<$Res> {
  __$TxCopyWithImpl(this._self, this._then);

  final _Tx _self;
  final $Res Function(_Tx) _then;

/// Create a copy of Tx
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? apiTx = null,Object? inputData = null,Object? lastUpdate = null,}) {
  return _then(_Tx(
apiTx: null == apiTx ? _self.apiTx : apiTx // ignore: cast_nullable_to_non_nullable
as ApiTransaction,inputData: null == inputData ? _self._inputData : inputData // ignore: cast_nullable_to_non_nullable
as List<TxInputData?>,lastUpdate: null == lastUpdate ? _self.lastUpdate : lastUpdate // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of Tx
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApiTransactionCopyWith<$Res> get apiTx {
  
  return $ApiTransactionCopyWith<$Res>(_self.apiTx, (value) {
    return _then(_self.copyWith(apiTx: value));
  });
}
}

/// @nodoc
mixin _$TxItem {

 Tx get tx; int get outputIndex; TxItemType get type; bool get pending;
/// Create a copy of TxItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TxItemCopyWith<TxItem> get copyWith => _$TxItemCopyWithImpl<TxItem>(this as TxItem, _$identity);





@override
String toString() {
  return 'TxItem(tx: $tx, outputIndex: $outputIndex, type: $type, pending: $pending)';
}


}

/// @nodoc
abstract mixin class $TxItemCopyWith<$Res>  {
  factory $TxItemCopyWith(TxItem value, $Res Function(TxItem) _then) = _$TxItemCopyWithImpl;
@useResult
$Res call({
 Tx tx, int outputIndex, TxItemType type, bool pending
});


$TxCopyWith<$Res> get tx;

}
/// @nodoc
class _$TxItemCopyWithImpl<$Res>
    implements $TxItemCopyWith<$Res> {
  _$TxItemCopyWithImpl(this._self, this._then);

  final TxItem _self;
  final $Res Function(TxItem) _then;

/// Create a copy of TxItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tx = null,Object? outputIndex = null,Object? type = null,Object? pending = null,}) {
  return _then(_self.copyWith(
tx: null == tx ? _self.tx : tx // ignore: cast_nullable_to_non_nullable
as Tx,outputIndex: null == outputIndex ? _self.outputIndex : outputIndex // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TxItemType,pending: null == pending ? _self.pending : pending // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of TxItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TxCopyWith<$Res> get tx {
  
  return $TxCopyWith<$Res>(_self.tx, (value) {
    return _then(_self.copyWith(tx: value));
  });
}
}


/// Adds pattern-matching-related methods to [TxItem].
extension TxItemPatterns on TxItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TxItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TxItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TxItem value)  $default,){
final _that = this;
switch (_that) {
case _TxItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TxItem value)?  $default,){
final _that = this;
switch (_that) {
case _TxItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Tx tx,  int outputIndex,  TxItemType type,  bool pending)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TxItem() when $default != null:
return $default(_that.tx,_that.outputIndex,_that.type,_that.pending);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Tx tx,  int outputIndex,  TxItemType type,  bool pending)  $default,) {final _that = this;
switch (_that) {
case _TxItem():
return $default(_that.tx,_that.outputIndex,_that.type,_that.pending);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Tx tx,  int outputIndex,  TxItemType type,  bool pending)?  $default,) {final _that = this;
switch (_that) {
case _TxItem() when $default != null:
return $default(_that.tx,_that.outputIndex,_that.type,_that.pending);case _:
  return null;

}
}

}

/// @nodoc


class _TxItem extends TxItem {
  const _TxItem({required this.tx, required this.outputIndex, required this.type, this.pending = false}): super._();
  

@override final  Tx tx;
@override final  int outputIndex;
@override final  TxItemType type;
@override@JsonKey() final  bool pending;

/// Create a copy of TxItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TxItemCopyWith<_TxItem> get copyWith => __$TxItemCopyWithImpl<_TxItem>(this, _$identity);





@override
String toString() {
  return 'TxItem(tx: $tx, outputIndex: $outputIndex, type: $type, pending: $pending)';
}


}

/// @nodoc
abstract mixin class _$TxItemCopyWith<$Res> implements $TxItemCopyWith<$Res> {
  factory _$TxItemCopyWith(_TxItem value, $Res Function(_TxItem) _then) = __$TxItemCopyWithImpl;
@override @useResult
$Res call({
 Tx tx, int outputIndex, TxItemType type, bool pending
});


@override $TxCopyWith<$Res> get tx;

}
/// @nodoc
class __$TxItemCopyWithImpl<$Res>
    implements _$TxItemCopyWith<$Res> {
  __$TxItemCopyWithImpl(this._self, this._then);

  final _TxItem _self;
  final $Res Function(_TxItem) _then;

/// Create a copy of TxItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tx = null,Object? outputIndex = null,Object? type = null,Object? pending = null,}) {
  return _then(_TxItem(
tx: null == tx ? _self.tx : tx // ignore: cast_nullable_to_non_nullable
as Tx,outputIndex: null == outputIndex ? _self.outputIndex : outputIndex // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TxItemType,pending: null == pending ? _self.pending : pending // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of TxItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TxCopyWith<$Res> get tx {
  
  return $TxCopyWith<$Res>(_self.tx, (value) {
    return _then(_self.copyWith(tx: value));
  });
}
}

/// @nodoc
mixin _$TxListItem {

 dynamic get id;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxListItem&&const DeepCollectionEquality().equals(other.id, id));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(id));

@override
String toString() {
  return 'TxListItem(id: $id)';
}


}

/// @nodoc
class $TxListItemCopyWith<$Res>  {
$TxListItemCopyWith(TxListItem _, $Res Function(TxListItem) __);
}


/// Adds pattern-matching-related methods to [TxListItem].
extension TxListItemPatterns on TxListItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _TxListItemPendingTxItem value)?  pendingTxItem,TResult Function( _TxListItemTxItem value)?  txItem,TResult Function( _TxListItemLoader value)?  loader,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TxListItemPendingTxItem() when pendingTxItem != null:
return pendingTxItem(_that);case _TxListItemTxItem() when txItem != null:
return txItem(_that);case _TxListItemLoader() when loader != null:
return loader(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _TxListItemPendingTxItem value)  pendingTxItem,required TResult Function( _TxListItemTxItem value)  txItem,required TResult Function( _TxListItemLoader value)  loader,}){
final _that = this;
switch (_that) {
case _TxListItemPendingTxItem():
return pendingTxItem(_that);case _TxListItemTxItem():
return txItem(_that);case _TxListItemLoader():
return loader(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _TxListItemPendingTxItem value)?  pendingTxItem,TResult? Function( _TxListItemTxItem value)?  txItem,TResult? Function( _TxListItemLoader value)?  loader,}){
final _that = this;
switch (_that) {
case _TxListItemPendingTxItem() when pendingTxItem != null:
return pendingTxItem(_that);case _TxListItemTxItem() when txItem != null:
return txItem(_that);case _TxListItemLoader() when loader != null:
return loader(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( TxItem tx)?  pendingTxItem,TResult Function( TxItem tx)?  txItem,TResult Function( bool hasMore)?  loader,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TxListItemPendingTxItem() when pendingTxItem != null:
return pendingTxItem(_that.tx);case _TxListItemTxItem() when txItem != null:
return txItem(_that.tx);case _TxListItemLoader() when loader != null:
return loader(_that.hasMore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( TxItem tx)  pendingTxItem,required TResult Function( TxItem tx)  txItem,required TResult Function( bool hasMore)  loader,}) {final _that = this;
switch (_that) {
case _TxListItemPendingTxItem():
return pendingTxItem(_that.tx);case _TxListItemTxItem():
return txItem(_that.tx);case _TxListItemLoader():
return loader(_that.hasMore);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( TxItem tx)?  pendingTxItem,TResult? Function( TxItem tx)?  txItem,TResult? Function( bool hasMore)?  loader,}) {final _that = this;
switch (_that) {
case _TxListItemPendingTxItem() when pendingTxItem != null:
return pendingTxItem(_that.tx);case _TxListItemTxItem() when txItem != null:
return txItem(_that.tx);case _TxListItemLoader() when loader != null:
return loader(_that.hasMore);case _:
  return null;

}
}

}

/// @nodoc


class _TxListItemPendingTxItem extends TxListItem {
   _TxListItemPendingTxItem(this.tx): super._();
  

 final  TxItem tx;

/// Create a copy of TxListItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TxListItemPendingTxItemCopyWith<_TxListItemPendingTxItem> get copyWith => __$TxListItemPendingTxItemCopyWithImpl<_TxListItemPendingTxItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TxListItemPendingTxItem&&(identical(other.tx, tx) || other.tx == tx));
}


@override
int get hashCode => Object.hash(runtimeType,tx);

@override
String toString() {
  return 'TxListItem.pendingTxItem(tx: $tx)';
}


}

/// @nodoc
abstract mixin class _$TxListItemPendingTxItemCopyWith<$Res> implements $TxListItemCopyWith<$Res> {
  factory _$TxListItemPendingTxItemCopyWith(_TxListItemPendingTxItem value, $Res Function(_TxListItemPendingTxItem) _then) = __$TxListItemPendingTxItemCopyWithImpl;
@useResult
$Res call({
 TxItem tx
});


$TxItemCopyWith<$Res> get tx;

}
/// @nodoc
class __$TxListItemPendingTxItemCopyWithImpl<$Res>
    implements _$TxListItemPendingTxItemCopyWith<$Res> {
  __$TxListItemPendingTxItemCopyWithImpl(this._self, this._then);

  final _TxListItemPendingTxItem _self;
  final $Res Function(_TxListItemPendingTxItem) _then;

/// Create a copy of TxListItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tx = null,}) {
  return _then(_TxListItemPendingTxItem(
null == tx ? _self.tx : tx // ignore: cast_nullable_to_non_nullable
as TxItem,
  ));
}

/// Create a copy of TxListItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TxItemCopyWith<$Res> get tx {
  
  return $TxItemCopyWith<$Res>(_self.tx, (value) {
    return _then(_self.copyWith(tx: value));
  });
}
}

/// @nodoc


class _TxListItemTxItem extends TxListItem {
   _TxListItemTxItem(this.tx): super._();
  

 final  TxItem tx;

/// Create a copy of TxListItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TxListItemTxItemCopyWith<_TxListItemTxItem> get copyWith => __$TxListItemTxItemCopyWithImpl<_TxListItemTxItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TxListItemTxItem&&(identical(other.tx, tx) || other.tx == tx));
}


@override
int get hashCode => Object.hash(runtimeType,tx);

@override
String toString() {
  return 'TxListItem.txItem(tx: $tx)';
}


}

/// @nodoc
abstract mixin class _$TxListItemTxItemCopyWith<$Res> implements $TxListItemCopyWith<$Res> {
  factory _$TxListItemTxItemCopyWith(_TxListItemTxItem value, $Res Function(_TxListItemTxItem) _then) = __$TxListItemTxItemCopyWithImpl;
@useResult
$Res call({
 TxItem tx
});


$TxItemCopyWith<$Res> get tx;

}
/// @nodoc
class __$TxListItemTxItemCopyWithImpl<$Res>
    implements _$TxListItemTxItemCopyWith<$Res> {
  __$TxListItemTxItemCopyWithImpl(this._self, this._then);

  final _TxListItemTxItem _self;
  final $Res Function(_TxListItemTxItem) _then;

/// Create a copy of TxListItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tx = null,}) {
  return _then(_TxListItemTxItem(
null == tx ? _self.tx : tx // ignore: cast_nullable_to_non_nullable
as TxItem,
  ));
}

/// Create a copy of TxListItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TxItemCopyWith<$Res> get tx {
  
  return $TxItemCopyWith<$Res>(_self.tx, (value) {
    return _then(_self.copyWith(tx: value));
  });
}
}

/// @nodoc


class _TxListItemLoader extends TxListItem {
   _TxListItemLoader(this.hasMore): super._();
  

 final  bool hasMore;

/// Create a copy of TxListItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TxListItemLoaderCopyWith<_TxListItemLoader> get copyWith => __$TxListItemLoaderCopyWithImpl<_TxListItemLoader>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TxListItemLoader&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,hasMore);

@override
String toString() {
  return 'TxListItem.loader(hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class _$TxListItemLoaderCopyWith<$Res> implements $TxListItemCopyWith<$Res> {
  factory _$TxListItemLoaderCopyWith(_TxListItemLoader value, $Res Function(_TxListItemLoader) _then) = __$TxListItemLoaderCopyWithImpl;
@useResult
$Res call({
 bool hasMore
});




}
/// @nodoc
class __$TxListItemLoaderCopyWithImpl<$Res>
    implements _$TxListItemLoaderCopyWith<$Res> {
  __$TxListItemLoaderCopyWithImpl(this._self, this._then);

  final _TxListItemLoader _self;
  final $Res Function(_TxListItemLoader) _then;

/// Create a copy of TxListItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? hasMore = null,}) {
  return _then(_TxListItemLoader(
null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$TxState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TxState()';
}


}

/// @nodoc
class $TxStateCopyWith<$Res>  {
$TxStateCopyWith(TxState _, $Res Function(TxState) __);
}


/// Adds pattern-matching-related methods to [TxState].
extension TxStatePatterns on TxState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _TxStateUnknown value)?  unknown,TResult Function( _TxStatePending value)?  pending,TResult Function( _TxStateUnconfirmed value)?  unconfirmed,TResult Function( _TxStateConfirming value)?  confirming,TResult Function( _TxStateConfirmed value)?  confirmed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TxStateUnknown() when unknown != null:
return unknown(_that);case _TxStatePending() when pending != null:
return pending(_that);case _TxStateUnconfirmed() when unconfirmed != null:
return unconfirmed(_that);case _TxStateConfirming() when confirming != null:
return confirming(_that);case _TxStateConfirmed() when confirmed != null:
return confirmed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _TxStateUnknown value)  unknown,required TResult Function( _TxStatePending value)  pending,required TResult Function( _TxStateUnconfirmed value)  unconfirmed,required TResult Function( _TxStateConfirming value)  confirming,required TResult Function( _TxStateConfirmed value)  confirmed,}){
final _that = this;
switch (_that) {
case _TxStateUnknown():
return unknown(_that);case _TxStatePending():
return pending(_that);case _TxStateUnconfirmed():
return unconfirmed(_that);case _TxStateConfirming():
return confirming(_that);case _TxStateConfirmed():
return confirmed(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _TxStateUnknown value)?  unknown,TResult? Function( _TxStatePending value)?  pending,TResult? Function( _TxStateUnconfirmed value)?  unconfirmed,TResult? Function( _TxStateConfirming value)?  confirming,TResult? Function( _TxStateConfirmed value)?  confirmed,}){
final _that = this;
switch (_that) {
case _TxStateUnknown() when unknown != null:
return unknown(_that);case _TxStatePending() when pending != null:
return pending(_that);case _TxStateUnconfirmed() when unconfirmed != null:
return unconfirmed(_that);case _TxStateConfirming() when confirming != null:
return confirming(_that);case _TxStateConfirmed() when confirmed != null:
return confirmed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  unknown,TResult Function()?  pending,TResult Function()?  unconfirmed,TResult Function( BigInt confirmations)?  confirming,TResult Function()?  confirmed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TxStateUnknown() when unknown != null:
return unknown();case _TxStatePending() when pending != null:
return pending();case _TxStateUnconfirmed() when unconfirmed != null:
return unconfirmed();case _TxStateConfirming() when confirming != null:
return confirming(_that.confirmations);case _TxStateConfirmed() when confirmed != null:
return confirmed();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  unknown,required TResult Function()  pending,required TResult Function()  unconfirmed,required TResult Function( BigInt confirmations)  confirming,required TResult Function()  confirmed,}) {final _that = this;
switch (_that) {
case _TxStateUnknown():
return unknown();case _TxStatePending():
return pending();case _TxStateUnconfirmed():
return unconfirmed();case _TxStateConfirming():
return confirming(_that.confirmations);case _TxStateConfirmed():
return confirmed();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  unknown,TResult? Function()?  pending,TResult? Function()?  unconfirmed,TResult? Function( BigInt confirmations)?  confirming,TResult? Function()?  confirmed,}) {final _that = this;
switch (_that) {
case _TxStateUnknown() when unknown != null:
return unknown();case _TxStatePending() when pending != null:
return pending();case _TxStateUnconfirmed() when unconfirmed != null:
return unconfirmed();case _TxStateConfirming() when confirming != null:
return confirming(_that.confirmations);case _TxStateConfirmed() when confirmed != null:
return confirmed();case _:
  return null;

}
}

}

/// @nodoc


class _TxStateUnknown implements TxState {
  const _TxStateUnknown();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TxStateUnknown);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TxState.unknown()';
}


}




/// @nodoc


class _TxStatePending implements TxState {
  const _TxStatePending();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TxStatePending);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TxState.pending()';
}


}




/// @nodoc


class _TxStateUnconfirmed implements TxState {
  const _TxStateUnconfirmed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TxStateUnconfirmed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TxState.unconfirmed()';
}


}




/// @nodoc


class _TxStateConfirming implements TxState {
  const _TxStateConfirming(this.confirmations);
  

 final  BigInt confirmations;

/// Create a copy of TxState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TxStateConfirmingCopyWith<_TxStateConfirming> get copyWith => __$TxStateConfirmingCopyWithImpl<_TxStateConfirming>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TxStateConfirming&&(identical(other.confirmations, confirmations) || other.confirmations == confirmations));
}


@override
int get hashCode => Object.hash(runtimeType,confirmations);

@override
String toString() {
  return 'TxState.confirming(confirmations: $confirmations)';
}


}

/// @nodoc
abstract mixin class _$TxStateConfirmingCopyWith<$Res> implements $TxStateCopyWith<$Res> {
  factory _$TxStateConfirmingCopyWith(_TxStateConfirming value, $Res Function(_TxStateConfirming) _then) = __$TxStateConfirmingCopyWithImpl;
@useResult
$Res call({
 BigInt confirmations
});




}
/// @nodoc
class __$TxStateConfirmingCopyWithImpl<$Res>
    implements _$TxStateConfirmingCopyWith<$Res> {
  __$TxStateConfirmingCopyWithImpl(this._self, this._then);

  final _TxStateConfirming _self;
  final $Res Function(_TxStateConfirming) _then;

/// Create a copy of TxState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? confirmations = null,}) {
  return _then(_TxStateConfirming(
null == confirmations ? _self.confirmations : confirmations // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}


}

/// @nodoc


class _TxStateConfirmed implements TxState {
  const _TxStateConfirmed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TxStateConfirmed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TxState.confirmed()';
}


}




// dart format on
