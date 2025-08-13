// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tx_report_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TxReportOptions {

 bool get ignoreCompoundTxs; bool get ignoreInternalTxs; bool get refreshTxs;
/// Create a copy of TxReportOptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TxReportOptionsCopyWith<TxReportOptions> get copyWith => _$TxReportOptionsCopyWithImpl<TxReportOptions>(this as TxReportOptions, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxReportOptions&&(identical(other.ignoreCompoundTxs, ignoreCompoundTxs) || other.ignoreCompoundTxs == ignoreCompoundTxs)&&(identical(other.ignoreInternalTxs, ignoreInternalTxs) || other.ignoreInternalTxs == ignoreInternalTxs)&&(identical(other.refreshTxs, refreshTxs) || other.refreshTxs == refreshTxs));
}


@override
int get hashCode => Object.hash(runtimeType,ignoreCompoundTxs,ignoreInternalTxs,refreshTxs);

@override
String toString() {
  return 'TxReportOptions(ignoreCompoundTxs: $ignoreCompoundTxs, ignoreInternalTxs: $ignoreInternalTxs, refreshTxs: $refreshTxs)';
}


}

/// @nodoc
abstract mixin class $TxReportOptionsCopyWith<$Res>  {
  factory $TxReportOptionsCopyWith(TxReportOptions value, $Res Function(TxReportOptions) _then) = _$TxReportOptionsCopyWithImpl;
@useResult
$Res call({
 bool ignoreCompoundTxs, bool ignoreInternalTxs, bool refreshTxs
});




}
/// @nodoc
class _$TxReportOptionsCopyWithImpl<$Res>
    implements $TxReportOptionsCopyWith<$Res> {
  _$TxReportOptionsCopyWithImpl(this._self, this._then);

  final TxReportOptions _self;
  final $Res Function(TxReportOptions) _then;

/// Create a copy of TxReportOptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ignoreCompoundTxs = null,Object? ignoreInternalTxs = null,Object? refreshTxs = null,}) {
  return _then(_self.copyWith(
ignoreCompoundTxs: null == ignoreCompoundTxs ? _self.ignoreCompoundTxs : ignoreCompoundTxs // ignore: cast_nullable_to_non_nullable
as bool,ignoreInternalTxs: null == ignoreInternalTxs ? _self.ignoreInternalTxs : ignoreInternalTxs // ignore: cast_nullable_to_non_nullable
as bool,refreshTxs: null == refreshTxs ? _self.refreshTxs : refreshTxs // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [TxReportOptions].
extension TxReportOptionsPatterns on TxReportOptions {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TxReportOptions value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TxReportOptions() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TxReportOptions value)  $default,){
final _that = this;
switch (_that) {
case _TxReportOptions():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TxReportOptions value)?  $default,){
final _that = this;
switch (_that) {
case _TxReportOptions() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool ignoreCompoundTxs,  bool ignoreInternalTxs,  bool refreshTxs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TxReportOptions() when $default != null:
return $default(_that.ignoreCompoundTxs,_that.ignoreInternalTxs,_that.refreshTxs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool ignoreCompoundTxs,  bool ignoreInternalTxs,  bool refreshTxs)  $default,) {final _that = this;
switch (_that) {
case _TxReportOptions():
return $default(_that.ignoreCompoundTxs,_that.ignoreInternalTxs,_that.refreshTxs);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool ignoreCompoundTxs,  bool ignoreInternalTxs,  bool refreshTxs)?  $default,) {final _that = this;
switch (_that) {
case _TxReportOptions() when $default != null:
return $default(_that.ignoreCompoundTxs,_that.ignoreInternalTxs,_that.refreshTxs);case _:
  return null;

}
}

}

/// @nodoc


class _TxReportOptions implements TxReportOptions {
  const _TxReportOptions({this.ignoreCompoundTxs = false, this.ignoreInternalTxs = false, this.refreshTxs = false});
  

@override@JsonKey() final  bool ignoreCompoundTxs;
@override@JsonKey() final  bool ignoreInternalTxs;
@override@JsonKey() final  bool refreshTxs;

/// Create a copy of TxReportOptions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TxReportOptionsCopyWith<_TxReportOptions> get copyWith => __$TxReportOptionsCopyWithImpl<_TxReportOptions>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TxReportOptions&&(identical(other.ignoreCompoundTxs, ignoreCompoundTxs) || other.ignoreCompoundTxs == ignoreCompoundTxs)&&(identical(other.ignoreInternalTxs, ignoreInternalTxs) || other.ignoreInternalTxs == ignoreInternalTxs)&&(identical(other.refreshTxs, refreshTxs) || other.refreshTxs == refreshTxs));
}


@override
int get hashCode => Object.hash(runtimeType,ignoreCompoundTxs,ignoreInternalTxs,refreshTxs);

@override
String toString() {
  return 'TxReportOptions(ignoreCompoundTxs: $ignoreCompoundTxs, ignoreInternalTxs: $ignoreInternalTxs, refreshTxs: $refreshTxs)';
}


}

/// @nodoc
abstract mixin class _$TxReportOptionsCopyWith<$Res> implements $TxReportOptionsCopyWith<$Res> {
  factory _$TxReportOptionsCopyWith(_TxReportOptions value, $Res Function(_TxReportOptions) _then) = __$TxReportOptionsCopyWithImpl;
@override @useResult
$Res call({
 bool ignoreCompoundTxs, bool ignoreInternalTxs, bool refreshTxs
});




}
/// @nodoc
class __$TxReportOptionsCopyWithImpl<$Res>
    implements _$TxReportOptionsCopyWith<$Res> {
  __$TxReportOptionsCopyWithImpl(this._self, this._then);

  final _TxReportOptions _self;
  final $Res Function(_TxReportOptions) _then;

/// Create a copy of TxReportOptions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ignoreCompoundTxs = null,Object? ignoreInternalTxs = null,Object? refreshTxs = null,}) {
  return _then(_TxReportOptions(
ignoreCompoundTxs: null == ignoreCompoundTxs ? _self.ignoreCompoundTxs : ignoreCompoundTxs // ignore: cast_nullable_to_non_nullable
as bool,ignoreInternalTxs: null == ignoreInternalTxs ? _self.ignoreInternalTxs : ignoreInternalTxs // ignore: cast_nullable_to_non_nullable
as bool,refreshTxs: null == refreshTxs ? _self.refreshTxs : refreshTxs // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$TxReportItem {

 int get timestamp; bool get isCompound; bool get isSendToSelf; String get sendAmount; String get receiveAmount; String get fee; String get label; String get description; String get txHash; String get toAddress; String get note;
/// Create a copy of TxReportItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TxReportItemCopyWith<TxReportItem> get copyWith => _$TxReportItemCopyWithImpl<TxReportItem>(this as TxReportItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxReportItem&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.isCompound, isCompound) || other.isCompound == isCompound)&&(identical(other.isSendToSelf, isSendToSelf) || other.isSendToSelf == isSendToSelf)&&(identical(other.sendAmount, sendAmount) || other.sendAmount == sendAmount)&&(identical(other.receiveAmount, receiveAmount) || other.receiveAmount == receiveAmount)&&(identical(other.fee, fee) || other.fee == fee)&&(identical(other.label, label) || other.label == label)&&(identical(other.description, description) || other.description == description)&&(identical(other.txHash, txHash) || other.txHash == txHash)&&(identical(other.toAddress, toAddress) || other.toAddress == toAddress)&&(identical(other.note, note) || other.note == note));
}


@override
int get hashCode => Object.hash(runtimeType,timestamp,isCompound,isSendToSelf,sendAmount,receiveAmount,fee,label,description,txHash,toAddress,note);

@override
String toString() {
  return 'TxReportItem(timestamp: $timestamp, isCompound: $isCompound, isSendToSelf: $isSendToSelf, sendAmount: $sendAmount, receiveAmount: $receiveAmount, fee: $fee, label: $label, description: $description, txHash: $txHash, toAddress: $toAddress, note: $note)';
}


}

/// @nodoc
abstract mixin class $TxReportItemCopyWith<$Res>  {
  factory $TxReportItemCopyWith(TxReportItem value, $Res Function(TxReportItem) _then) = _$TxReportItemCopyWithImpl;
@useResult
$Res call({
 int timestamp, bool isCompound, bool isSendToSelf, String sendAmount, String receiveAmount, String fee, String label, String description, String txHash, String toAddress, String note
});




}
/// @nodoc
class _$TxReportItemCopyWithImpl<$Res>
    implements $TxReportItemCopyWith<$Res> {
  _$TxReportItemCopyWithImpl(this._self, this._then);

  final TxReportItem _self;
  final $Res Function(TxReportItem) _then;

/// Create a copy of TxReportItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timestamp = null,Object? isCompound = null,Object? isSendToSelf = null,Object? sendAmount = null,Object? receiveAmount = null,Object? fee = null,Object? label = null,Object? description = null,Object? txHash = null,Object? toAddress = null,Object? note = null,}) {
  return _then(_self.copyWith(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,isCompound: null == isCompound ? _self.isCompound : isCompound // ignore: cast_nullable_to_non_nullable
as bool,isSendToSelf: null == isSendToSelf ? _self.isSendToSelf : isSendToSelf // ignore: cast_nullable_to_non_nullable
as bool,sendAmount: null == sendAmount ? _self.sendAmount : sendAmount // ignore: cast_nullable_to_non_nullable
as String,receiveAmount: null == receiveAmount ? _self.receiveAmount : receiveAmount // ignore: cast_nullable_to_non_nullable
as String,fee: null == fee ? _self.fee : fee // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,txHash: null == txHash ? _self.txHash : txHash // ignore: cast_nullable_to_non_nullable
as String,toAddress: null == toAddress ? _self.toAddress : toAddress // ignore: cast_nullable_to_non_nullable
as String,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TxReportItem].
extension TxReportItemPatterns on TxReportItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TxReportItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TxReportItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TxReportItem value)  $default,){
final _that = this;
switch (_that) {
case _TxReportItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TxReportItem value)?  $default,){
final _that = this;
switch (_that) {
case _TxReportItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int timestamp,  bool isCompound,  bool isSendToSelf,  String sendAmount,  String receiveAmount,  String fee,  String label,  String description,  String txHash,  String toAddress,  String note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TxReportItem() when $default != null:
return $default(_that.timestamp,_that.isCompound,_that.isSendToSelf,_that.sendAmount,_that.receiveAmount,_that.fee,_that.label,_that.description,_that.txHash,_that.toAddress,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int timestamp,  bool isCompound,  bool isSendToSelf,  String sendAmount,  String receiveAmount,  String fee,  String label,  String description,  String txHash,  String toAddress,  String note)  $default,) {final _that = this;
switch (_that) {
case _TxReportItem():
return $default(_that.timestamp,_that.isCompound,_that.isSendToSelf,_that.sendAmount,_that.receiveAmount,_that.fee,_that.label,_that.description,_that.txHash,_that.toAddress,_that.note);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int timestamp,  bool isCompound,  bool isSendToSelf,  String sendAmount,  String receiveAmount,  String fee,  String label,  String description,  String txHash,  String toAddress,  String note)?  $default,) {final _that = this;
switch (_that) {
case _TxReportItem() when $default != null:
return $default(_that.timestamp,_that.isCompound,_that.isSendToSelf,_that.sendAmount,_that.receiveAmount,_that.fee,_that.label,_that.description,_that.txHash,_that.toAddress,_that.note);case _:
  return null;

}
}

}

/// @nodoc


class _TxReportItem implements TxReportItem {
  const _TxReportItem({required this.timestamp, required this.isCompound, required this.isSendToSelf, required this.sendAmount, required this.receiveAmount, required this.fee, this.label = '', this.description = '', required this.txHash, required this.toAddress, this.note = ''});
  

@override final  int timestamp;
@override final  bool isCompound;
@override final  bool isSendToSelf;
@override final  String sendAmount;
@override final  String receiveAmount;
@override final  String fee;
@override@JsonKey() final  String label;
@override@JsonKey() final  String description;
@override final  String txHash;
@override final  String toAddress;
@override@JsonKey() final  String note;

/// Create a copy of TxReportItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TxReportItemCopyWith<_TxReportItem> get copyWith => __$TxReportItemCopyWithImpl<_TxReportItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TxReportItem&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.isCompound, isCompound) || other.isCompound == isCompound)&&(identical(other.isSendToSelf, isSendToSelf) || other.isSendToSelf == isSendToSelf)&&(identical(other.sendAmount, sendAmount) || other.sendAmount == sendAmount)&&(identical(other.receiveAmount, receiveAmount) || other.receiveAmount == receiveAmount)&&(identical(other.fee, fee) || other.fee == fee)&&(identical(other.label, label) || other.label == label)&&(identical(other.description, description) || other.description == description)&&(identical(other.txHash, txHash) || other.txHash == txHash)&&(identical(other.toAddress, toAddress) || other.toAddress == toAddress)&&(identical(other.note, note) || other.note == note));
}


@override
int get hashCode => Object.hash(runtimeType,timestamp,isCompound,isSendToSelf,sendAmount,receiveAmount,fee,label,description,txHash,toAddress,note);

@override
String toString() {
  return 'TxReportItem(timestamp: $timestamp, isCompound: $isCompound, isSendToSelf: $isSendToSelf, sendAmount: $sendAmount, receiveAmount: $receiveAmount, fee: $fee, label: $label, description: $description, txHash: $txHash, toAddress: $toAddress, note: $note)';
}


}

/// @nodoc
abstract mixin class _$TxReportItemCopyWith<$Res> implements $TxReportItemCopyWith<$Res> {
  factory _$TxReportItemCopyWith(_TxReportItem value, $Res Function(_TxReportItem) _then) = __$TxReportItemCopyWithImpl;
@override @useResult
$Res call({
 int timestamp, bool isCompound, bool isSendToSelf, String sendAmount, String receiveAmount, String fee, String label, String description, String txHash, String toAddress, String note
});




}
/// @nodoc
class __$TxReportItemCopyWithImpl<$Res>
    implements _$TxReportItemCopyWith<$Res> {
  __$TxReportItemCopyWithImpl(this._self, this._then);

  final _TxReportItem _self;
  final $Res Function(_TxReportItem) _then;

/// Create a copy of TxReportItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timestamp = null,Object? isCompound = null,Object? isSendToSelf = null,Object? sendAmount = null,Object? receiveAmount = null,Object? fee = null,Object? label = null,Object? description = null,Object? txHash = null,Object? toAddress = null,Object? note = null,}) {
  return _then(_TxReportItem(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,isCompound: null == isCompound ? _self.isCompound : isCompound // ignore: cast_nullable_to_non_nullable
as bool,isSendToSelf: null == isSendToSelf ? _self.isSendToSelf : isSendToSelf // ignore: cast_nullable_to_non_nullable
as bool,sendAmount: null == sendAmount ? _self.sendAmount : sendAmount // ignore: cast_nullable_to_non_nullable
as String,receiveAmount: null == receiveAmount ? _self.receiveAmount : receiveAmount // ignore: cast_nullable_to_non_nullable
as String,fee: null == fee ? _self.fee : fee // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,txHash: null == txHash ? _self.txHash : txHash // ignore: cast_nullable_to_non_nullable
as String,toAddress: null == toAddress ? _self.toAddress : toAddress // ignore: cast_nullable_to_non_nullable
as String,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
