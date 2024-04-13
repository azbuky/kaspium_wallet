// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tx_report_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TxReportOptions {
  bool get ignoreCompoundTxs => throw _privateConstructorUsedError;
  bool get ignoreInternalTxs => throw _privateConstructorUsedError;
  bool get refreshTxs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TxReportOptionsCopyWith<TxReportOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TxReportOptionsCopyWith<$Res> {
  factory $TxReportOptionsCopyWith(
          TxReportOptions value, $Res Function(TxReportOptions) then) =
      _$TxReportOptionsCopyWithImpl<$Res, TxReportOptions>;
  @useResult
  $Res call({bool ignoreCompoundTxs, bool ignoreInternalTxs, bool refreshTxs});
}

/// @nodoc
class _$TxReportOptionsCopyWithImpl<$Res, $Val extends TxReportOptions>
    implements $TxReportOptionsCopyWith<$Res> {
  _$TxReportOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ignoreCompoundTxs = null,
    Object? ignoreInternalTxs = null,
    Object? refreshTxs = null,
  }) {
    return _then(_value.copyWith(
      ignoreCompoundTxs: null == ignoreCompoundTxs
          ? _value.ignoreCompoundTxs
          : ignoreCompoundTxs // ignore: cast_nullable_to_non_nullable
              as bool,
      ignoreInternalTxs: null == ignoreInternalTxs
          ? _value.ignoreInternalTxs
          : ignoreInternalTxs // ignore: cast_nullable_to_non_nullable
              as bool,
      refreshTxs: null == refreshTxs
          ? _value.refreshTxs
          : refreshTxs // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TxReportOptionsImplCopyWith<$Res>
    implements $TxReportOptionsCopyWith<$Res> {
  factory _$$TxReportOptionsImplCopyWith(_$TxReportOptionsImpl value,
          $Res Function(_$TxReportOptionsImpl) then) =
      __$$TxReportOptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool ignoreCompoundTxs, bool ignoreInternalTxs, bool refreshTxs});
}

/// @nodoc
class __$$TxReportOptionsImplCopyWithImpl<$Res>
    extends _$TxReportOptionsCopyWithImpl<$Res, _$TxReportOptionsImpl>
    implements _$$TxReportOptionsImplCopyWith<$Res> {
  __$$TxReportOptionsImplCopyWithImpl(
      _$TxReportOptionsImpl _value, $Res Function(_$TxReportOptionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ignoreCompoundTxs = null,
    Object? ignoreInternalTxs = null,
    Object? refreshTxs = null,
  }) {
    return _then(_$TxReportOptionsImpl(
      ignoreCompoundTxs: null == ignoreCompoundTxs
          ? _value.ignoreCompoundTxs
          : ignoreCompoundTxs // ignore: cast_nullable_to_non_nullable
              as bool,
      ignoreInternalTxs: null == ignoreInternalTxs
          ? _value.ignoreInternalTxs
          : ignoreInternalTxs // ignore: cast_nullable_to_non_nullable
              as bool,
      refreshTxs: null == refreshTxs
          ? _value.refreshTxs
          : refreshTxs // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TxReportOptionsImpl implements _TxReportOptions {
  const _$TxReportOptionsImpl(
      {this.ignoreCompoundTxs = false,
      this.ignoreInternalTxs = false,
      this.refreshTxs = false});

  @override
  @JsonKey()
  final bool ignoreCompoundTxs;
  @override
  @JsonKey()
  final bool ignoreInternalTxs;
  @override
  @JsonKey()
  final bool refreshTxs;

  @override
  String toString() {
    return 'TxReportOptions(ignoreCompoundTxs: $ignoreCompoundTxs, ignoreInternalTxs: $ignoreInternalTxs, refreshTxs: $refreshTxs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TxReportOptionsImpl &&
            (identical(other.ignoreCompoundTxs, ignoreCompoundTxs) ||
                other.ignoreCompoundTxs == ignoreCompoundTxs) &&
            (identical(other.ignoreInternalTxs, ignoreInternalTxs) ||
                other.ignoreInternalTxs == ignoreInternalTxs) &&
            (identical(other.refreshTxs, refreshTxs) ||
                other.refreshTxs == refreshTxs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, ignoreCompoundTxs, ignoreInternalTxs, refreshTxs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TxReportOptionsImplCopyWith<_$TxReportOptionsImpl> get copyWith =>
      __$$TxReportOptionsImplCopyWithImpl<_$TxReportOptionsImpl>(
          this, _$identity);
}

abstract class _TxReportOptions implements TxReportOptions {
  const factory _TxReportOptions(
      {final bool ignoreCompoundTxs,
      final bool ignoreInternalTxs,
      final bool refreshTxs}) = _$TxReportOptionsImpl;

  @override
  bool get ignoreCompoundTxs;
  @override
  bool get ignoreInternalTxs;
  @override
  bool get refreshTxs;
  @override
  @JsonKey(ignore: true)
  _$$TxReportOptionsImplCopyWith<_$TxReportOptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TxReportItem {
  int get timestamp => throw _privateConstructorUsedError;
  bool get isCompound => throw _privateConstructorUsedError;
  bool get isSendToSelf => throw _privateConstructorUsedError;
  String get sendAmount => throw _privateConstructorUsedError;
  String get receiveAmount => throw _privateConstructorUsedError;
  String get fee => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get txHash => throw _privateConstructorUsedError;
  String get toAddress => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TxReportItemCopyWith<TxReportItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TxReportItemCopyWith<$Res> {
  factory $TxReportItemCopyWith(
          TxReportItem value, $Res Function(TxReportItem) then) =
      _$TxReportItemCopyWithImpl<$Res, TxReportItem>;
  @useResult
  $Res call(
      {int timestamp,
      bool isCompound,
      bool isSendToSelf,
      String sendAmount,
      String receiveAmount,
      String fee,
      String label,
      String description,
      String txHash,
      String toAddress,
      String note});
}

/// @nodoc
class _$TxReportItemCopyWithImpl<$Res, $Val extends TxReportItem>
    implements $TxReportItemCopyWith<$Res> {
  _$TxReportItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? isCompound = null,
    Object? isSendToSelf = null,
    Object? sendAmount = null,
    Object? receiveAmount = null,
    Object? fee = null,
    Object? label = null,
    Object? description = null,
    Object? txHash = null,
    Object? toAddress = null,
    Object? note = null,
  }) {
    return _then(_value.copyWith(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      isCompound: null == isCompound
          ? _value.isCompound
          : isCompound // ignore: cast_nullable_to_non_nullable
              as bool,
      isSendToSelf: null == isSendToSelf
          ? _value.isSendToSelf
          : isSendToSelf // ignore: cast_nullable_to_non_nullable
              as bool,
      sendAmount: null == sendAmount
          ? _value.sendAmount
          : sendAmount // ignore: cast_nullable_to_non_nullable
              as String,
      receiveAmount: null == receiveAmount
          ? _value.receiveAmount
          : receiveAmount // ignore: cast_nullable_to_non_nullable
              as String,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      txHash: null == txHash
          ? _value.txHash
          : txHash // ignore: cast_nullable_to_non_nullable
              as String,
      toAddress: null == toAddress
          ? _value.toAddress
          : toAddress // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TxReportItemImplCopyWith<$Res>
    implements $TxReportItemCopyWith<$Res> {
  factory _$$TxReportItemImplCopyWith(
          _$TxReportItemImpl value, $Res Function(_$TxReportItemImpl) then) =
      __$$TxReportItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int timestamp,
      bool isCompound,
      bool isSendToSelf,
      String sendAmount,
      String receiveAmount,
      String fee,
      String label,
      String description,
      String txHash,
      String toAddress,
      String note});
}

/// @nodoc
class __$$TxReportItemImplCopyWithImpl<$Res>
    extends _$TxReportItemCopyWithImpl<$Res, _$TxReportItemImpl>
    implements _$$TxReportItemImplCopyWith<$Res> {
  __$$TxReportItemImplCopyWithImpl(
      _$TxReportItemImpl _value, $Res Function(_$TxReportItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? isCompound = null,
    Object? isSendToSelf = null,
    Object? sendAmount = null,
    Object? receiveAmount = null,
    Object? fee = null,
    Object? label = null,
    Object? description = null,
    Object? txHash = null,
    Object? toAddress = null,
    Object? note = null,
  }) {
    return _then(_$TxReportItemImpl(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      isCompound: null == isCompound
          ? _value.isCompound
          : isCompound // ignore: cast_nullable_to_non_nullable
              as bool,
      isSendToSelf: null == isSendToSelf
          ? _value.isSendToSelf
          : isSendToSelf // ignore: cast_nullable_to_non_nullable
              as bool,
      sendAmount: null == sendAmount
          ? _value.sendAmount
          : sendAmount // ignore: cast_nullable_to_non_nullable
              as String,
      receiveAmount: null == receiveAmount
          ? _value.receiveAmount
          : receiveAmount // ignore: cast_nullable_to_non_nullable
              as String,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      txHash: null == txHash
          ? _value.txHash
          : txHash // ignore: cast_nullable_to_non_nullable
              as String,
      toAddress: null == toAddress
          ? _value.toAddress
          : toAddress // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TxReportItemImpl implements _TxReportItem {
  const _$TxReportItemImpl(
      {required this.timestamp,
      required this.isCompound,
      required this.isSendToSelf,
      required this.sendAmount,
      required this.receiveAmount,
      required this.fee,
      this.label = '',
      this.description = '',
      required this.txHash,
      required this.toAddress,
      this.note = ''});

  @override
  final int timestamp;
  @override
  final bool isCompound;
  @override
  final bool isSendToSelf;
  @override
  final String sendAmount;
  @override
  final String receiveAmount;
  @override
  final String fee;
  @override
  @JsonKey()
  final String label;
  @override
  @JsonKey()
  final String description;
  @override
  final String txHash;
  @override
  final String toAddress;
  @override
  @JsonKey()
  final String note;

  @override
  String toString() {
    return 'TxReportItem(timestamp: $timestamp, isCompound: $isCompound, isSendToSelf: $isSendToSelf, sendAmount: $sendAmount, receiveAmount: $receiveAmount, fee: $fee, label: $label, description: $description, txHash: $txHash, toAddress: $toAddress, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TxReportItemImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.isCompound, isCompound) ||
                other.isCompound == isCompound) &&
            (identical(other.isSendToSelf, isSendToSelf) ||
                other.isSendToSelf == isSendToSelf) &&
            (identical(other.sendAmount, sendAmount) ||
                other.sendAmount == sendAmount) &&
            (identical(other.receiveAmount, receiveAmount) ||
                other.receiveAmount == receiveAmount) &&
            (identical(other.fee, fee) || other.fee == fee) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.txHash, txHash) || other.txHash == txHash) &&
            (identical(other.toAddress, toAddress) ||
                other.toAddress == toAddress) &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      timestamp,
      isCompound,
      isSendToSelf,
      sendAmount,
      receiveAmount,
      fee,
      label,
      description,
      txHash,
      toAddress,
      note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TxReportItemImplCopyWith<_$TxReportItemImpl> get copyWith =>
      __$$TxReportItemImplCopyWithImpl<_$TxReportItemImpl>(this, _$identity);
}

abstract class _TxReportItem implements TxReportItem {
  const factory _TxReportItem(
      {required final int timestamp,
      required final bool isCompound,
      required final bool isSendToSelf,
      required final String sendAmount,
      required final String receiveAmount,
      required final String fee,
      final String label,
      final String description,
      required final String txHash,
      required final String toAddress,
      final String note}) = _$TxReportItemImpl;

  @override
  int get timestamp;
  @override
  bool get isCompound;
  @override
  bool get isSendToSelf;
  @override
  String get sendAmount;
  @override
  String get receiveAmount;
  @override
  String get fee;
  @override
  String get label;
  @override
  String get description;
  @override
  String get txHash;
  @override
  String get toAddress;
  @override
  String get note;
  @override
  @JsonKey(ignore: true)
  _$$TxReportItemImplCopyWith<_$TxReportItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
