// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TxIndex _$TxIndexFromJson(Map<String, dynamic> json) {
  return _TxIndex.fromJson(json);
}

/// @nodoc
mixin _$TxIndex {
  String get txId => throw _privateConstructorUsedError;
  int get blockTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TxIndexCopyWith<TxIndex> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TxIndexCopyWith<$Res> {
  factory $TxIndexCopyWith(TxIndex value, $Res Function(TxIndex) then) =
      _$TxIndexCopyWithImpl<$Res, TxIndex>;
  @useResult
  $Res call({String txId, int blockTime});
}

/// @nodoc
class _$TxIndexCopyWithImpl<$Res, $Val extends TxIndex>
    implements $TxIndexCopyWith<$Res> {
  _$TxIndexCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? txId = null,
    Object? blockTime = null,
  }) {
    return _then(_value.copyWith(
      txId: null == txId
          ? _value.txId
          : txId // ignore: cast_nullable_to_non_nullable
              as String,
      blockTime: null == blockTime
          ? _value.blockTime
          : blockTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TxIndexImplCopyWith<$Res> implements $TxIndexCopyWith<$Res> {
  factory _$$TxIndexImplCopyWith(
          _$TxIndexImpl value, $Res Function(_$TxIndexImpl) then) =
      __$$TxIndexImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String txId, int blockTime});
}

/// @nodoc
class __$$TxIndexImplCopyWithImpl<$Res>
    extends _$TxIndexCopyWithImpl<$Res, _$TxIndexImpl>
    implements _$$TxIndexImplCopyWith<$Res> {
  __$$TxIndexImplCopyWithImpl(
      _$TxIndexImpl _value, $Res Function(_$TxIndexImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? txId = null,
    Object? blockTime = null,
  }) {
    return _then(_$TxIndexImpl(
      txId: null == txId
          ? _value.txId
          : txId // ignore: cast_nullable_to_non_nullable
              as String,
      blockTime: null == blockTime
          ? _value.blockTime
          : blockTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TxIndexImpl implements _TxIndex {
  const _$TxIndexImpl({required this.txId, this.blockTime = 0});

  factory _$TxIndexImpl.fromJson(Map<String, dynamic> json) =>
      _$$TxIndexImplFromJson(json);

  @override
  final String txId;
  @override
  @JsonKey()
  final int blockTime;

  @override
  String toString() {
    return 'TxIndex(txId: $txId, blockTime: $blockTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TxIndexImpl &&
            (identical(other.txId, txId) || other.txId == txId) &&
            (identical(other.blockTime, blockTime) ||
                other.blockTime == blockTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, txId, blockTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TxIndexImplCopyWith<_$TxIndexImpl> get copyWith =>
      __$$TxIndexImplCopyWithImpl<_$TxIndexImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TxIndexImplToJson(
      this,
    );
  }
}

abstract class _TxIndex implements TxIndex {
  const factory _TxIndex({required final String txId, final int blockTime}) =
      _$TxIndexImpl;

  factory _TxIndex.fromJson(Map<String, dynamic> json) = _$TxIndexImpl.fromJson;

  @override
  String get txId;
  @override
  int get blockTime;
  @override
  @JsonKey(ignore: true)
  _$$TxIndexImplCopyWith<_$TxIndexImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TxInputData _$TxInputDataFromJson(Map<String, dynamic> json) {
  return _TxInputData.fromJson(json);
}

/// @nodoc
mixin _$TxInputData {
  String get address => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TxInputDataCopyWith<TxInputData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TxInputDataCopyWith<$Res> {
  factory $TxInputDataCopyWith(
          TxInputData value, $Res Function(TxInputData) then) =
      _$TxInputDataCopyWithImpl<$Res, TxInputData>;
  @useResult
  $Res call({String address, int amount});
}

/// @nodoc
class _$TxInputDataCopyWithImpl<$Res, $Val extends TxInputData>
    implements $TxInputDataCopyWith<$Res> {
  _$TxInputDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TxInputDataImplCopyWith<$Res>
    implements $TxInputDataCopyWith<$Res> {
  factory _$$TxInputDataImplCopyWith(
          _$TxInputDataImpl value, $Res Function(_$TxInputDataImpl) then) =
      __$$TxInputDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String address, int amount});
}

/// @nodoc
class __$$TxInputDataImplCopyWithImpl<$Res>
    extends _$TxInputDataCopyWithImpl<$Res, _$TxInputDataImpl>
    implements _$$TxInputDataImplCopyWith<$Res> {
  __$$TxInputDataImplCopyWithImpl(
      _$TxInputDataImpl _value, $Res Function(_$TxInputDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? amount = null,
  }) {
    return _then(_$TxInputDataImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TxInputDataImpl implements _TxInputData {
  const _$TxInputDataImpl({required this.address, required this.amount});

  factory _$TxInputDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TxInputDataImplFromJson(json);

  @override
  final String address;
  @override
  final int amount;

  @override
  String toString() {
    return 'TxInputData(address: $address, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TxInputDataImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TxInputDataImplCopyWith<_$TxInputDataImpl> get copyWith =>
      __$$TxInputDataImplCopyWithImpl<_$TxInputDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TxInputDataImplToJson(
      this,
    );
  }
}

abstract class _TxInputData implements TxInputData {
  const factory _TxInputData(
      {required final String address,
      required final int amount}) = _$TxInputDataImpl;

  factory _TxInputData.fromJson(Map<String, dynamic> json) =
      _$TxInputDataImpl.fromJson;

  @override
  String get address;
  @override
  int get amount;
  @override
  @JsonKey(ignore: true)
  _$$TxInputDataImplCopyWith<_$TxInputDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Tx _$TxFromJson(Map<String, dynamic> json) {
  return _Tx.fromJson(json);
}

/// @nodoc
mixin _$Tx {
  ApiTransaction get apiTx => throw _privateConstructorUsedError;
  List<TxInputData?> get inputData => throw _privateConstructorUsedError;
  int get lastUpdate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TxCopyWith<Tx> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TxCopyWith<$Res> {
  factory $TxCopyWith(Tx value, $Res Function(Tx) then) =
      _$TxCopyWithImpl<$Res, Tx>;
  @useResult
  $Res call(
      {ApiTransaction apiTx, List<TxInputData?> inputData, int lastUpdate});

  $ApiTransactionCopyWith<$Res> get apiTx;
}

/// @nodoc
class _$TxCopyWithImpl<$Res, $Val extends Tx> implements $TxCopyWith<$Res> {
  _$TxCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiTx = null,
    Object? inputData = null,
    Object? lastUpdate = null,
  }) {
    return _then(_value.copyWith(
      apiTx: null == apiTx
          ? _value.apiTx
          : apiTx // ignore: cast_nullable_to_non_nullable
              as ApiTransaction,
      inputData: null == inputData
          ? _value.inputData
          : inputData // ignore: cast_nullable_to_non_nullable
              as List<TxInputData?>,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiTransactionCopyWith<$Res> get apiTx {
    return $ApiTransactionCopyWith<$Res>(_value.apiTx, (value) {
      return _then(_value.copyWith(apiTx: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TxImplCopyWith<$Res> implements $TxCopyWith<$Res> {
  factory _$$TxImplCopyWith(_$TxImpl value, $Res Function(_$TxImpl) then) =
      __$$TxImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ApiTransaction apiTx, List<TxInputData?> inputData, int lastUpdate});

  @override
  $ApiTransactionCopyWith<$Res> get apiTx;
}

/// @nodoc
class __$$TxImplCopyWithImpl<$Res> extends _$TxCopyWithImpl<$Res, _$TxImpl>
    implements _$$TxImplCopyWith<$Res> {
  __$$TxImplCopyWithImpl(_$TxImpl _value, $Res Function(_$TxImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiTx = null,
    Object? inputData = null,
    Object? lastUpdate = null,
  }) {
    return _then(_$TxImpl(
      apiTx: null == apiTx
          ? _value.apiTx
          : apiTx // ignore: cast_nullable_to_non_nullable
              as ApiTransaction,
      inputData: null == inputData
          ? _value._inputData
          : inputData // ignore: cast_nullable_to_non_nullable
              as List<TxInputData?>,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TxImpl extends _Tx {
  const _$TxImpl(
      {required this.apiTx,
      required final List<TxInputData?> inputData,
      this.lastUpdate = 0})
      : _inputData = inputData,
        super._();

  factory _$TxImpl.fromJson(Map<String, dynamic> json) =>
      _$$TxImplFromJson(json);

  @override
  final ApiTransaction apiTx;
  final List<TxInputData?> _inputData;
  @override
  List<TxInputData?> get inputData {
    if (_inputData is EqualUnmodifiableListView) return _inputData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inputData);
  }

  @override
  @JsonKey()
  final int lastUpdate;

  @override
  String toString() {
    return 'Tx(apiTx: $apiTx, inputData: $inputData, lastUpdate: $lastUpdate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TxImpl &&
            (identical(other.apiTx, apiTx) || other.apiTx == apiTx) &&
            const DeepCollectionEquality()
                .equals(other._inputData, _inputData) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, apiTx,
      const DeepCollectionEquality().hash(_inputData), lastUpdate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TxImplCopyWith<_$TxImpl> get copyWith =>
      __$$TxImplCopyWithImpl<_$TxImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TxImplToJson(
      this,
    );
  }
}

abstract class _Tx extends Tx {
  const factory _Tx(
      {required final ApiTransaction apiTx,
      required final List<TxInputData?> inputData,
      final int lastUpdate}) = _$TxImpl;
  const _Tx._() : super._();

  factory _Tx.fromJson(Map<String, dynamic> json) = _$TxImpl.fromJson;

  @override
  ApiTransaction get apiTx;
  @override
  List<TxInputData?> get inputData;
  @override
  int get lastUpdate;
  @override
  @JsonKey(ignore: true)
  _$$TxImplCopyWith<_$TxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TxItem {
  Tx get tx => throw _privateConstructorUsedError;
  int get outputIndex => throw _privateConstructorUsedError;
  TxItemType get type => throw _privateConstructorUsedError;
  bool get pending => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TxItemCopyWith<TxItem> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TxItemCopyWith<$Res> {
  factory $TxItemCopyWith(TxItem value, $Res Function(TxItem) then) =
      _$TxItemCopyWithImpl<$Res, TxItem>;
  @useResult
  $Res call({Tx tx, int outputIndex, TxItemType type, bool pending});

  $TxCopyWith<$Res> get tx;
}

/// @nodoc
class _$TxItemCopyWithImpl<$Res, $Val extends TxItem>
    implements $TxItemCopyWith<$Res> {
  _$TxItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tx = null,
    Object? outputIndex = null,
    Object? type = null,
    Object? pending = null,
  }) {
    return _then(_value.copyWith(
      tx: null == tx
          ? _value.tx
          : tx // ignore: cast_nullable_to_non_nullable
              as Tx,
      outputIndex: null == outputIndex
          ? _value.outputIndex
          : outputIndex // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TxItemType,
      pending: null == pending
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TxCopyWith<$Res> get tx {
    return $TxCopyWith<$Res>(_value.tx, (value) {
      return _then(_value.copyWith(tx: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TxItemImplCopyWith<$Res> implements $TxItemCopyWith<$Res> {
  factory _$$TxItemImplCopyWith(
          _$TxItemImpl value, $Res Function(_$TxItemImpl) then) =
      __$$TxItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Tx tx, int outputIndex, TxItemType type, bool pending});

  @override
  $TxCopyWith<$Res> get tx;
}

/// @nodoc
class __$$TxItemImplCopyWithImpl<$Res>
    extends _$TxItemCopyWithImpl<$Res, _$TxItemImpl>
    implements _$$TxItemImplCopyWith<$Res> {
  __$$TxItemImplCopyWithImpl(
      _$TxItemImpl _value, $Res Function(_$TxItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tx = null,
    Object? outputIndex = null,
    Object? type = null,
    Object? pending = null,
  }) {
    return _then(_$TxItemImpl(
      tx: null == tx
          ? _value.tx
          : tx // ignore: cast_nullable_to_non_nullable
              as Tx,
      outputIndex: null == outputIndex
          ? _value.outputIndex
          : outputIndex // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TxItemType,
      pending: null == pending
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TxItemImpl extends _TxItem {
  const _$TxItemImpl(
      {required this.tx,
      required this.outputIndex,
      required this.type,
      this.pending = false})
      : super._();

  @override
  final Tx tx;
  @override
  final int outputIndex;
  @override
  final TxItemType type;
  @override
  @JsonKey()
  final bool pending;

  @override
  String toString() {
    return 'TxItem(tx: $tx, outputIndex: $outputIndex, type: $type, pending: $pending)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TxItemImplCopyWith<_$TxItemImpl> get copyWith =>
      __$$TxItemImplCopyWithImpl<_$TxItemImpl>(this, _$identity);
}

abstract class _TxItem extends TxItem {
  const factory _TxItem(
      {required final Tx tx,
      required final int outputIndex,
      required final TxItemType type,
      final bool pending}) = _$TxItemImpl;
  const _TxItem._() : super._();

  @override
  Tx get tx;
  @override
  int get outputIndex;
  @override
  TxItemType get type;
  @override
  bool get pending;
  @override
  @JsonKey(ignore: true)
  _$$TxItemImplCopyWith<_$TxItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TxListItem {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TxItem tx) pendingTxItem,
    required TResult Function(TxItem tx) txItem,
    required TResult Function(bool hasMore) loader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TxItem tx)? pendingTxItem,
    TResult? Function(TxItem tx)? txItem,
    TResult? Function(bool hasMore)? loader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TxItem tx)? pendingTxItem,
    TResult Function(TxItem tx)? txItem,
    TResult Function(bool hasMore)? loader,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TxListItemPendingTxItem value) pendingTxItem,
    required TResult Function(_TxListItemTxItem value) txItem,
    required TResult Function(_TxListItemLoader value) loader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TxListItemPendingTxItem value)? pendingTxItem,
    TResult? Function(_TxListItemTxItem value)? txItem,
    TResult? Function(_TxListItemLoader value)? loader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TxListItemPendingTxItem value)? pendingTxItem,
    TResult Function(_TxListItemTxItem value)? txItem,
    TResult Function(_TxListItemLoader value)? loader,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TxListItemCopyWith<$Res> {
  factory $TxListItemCopyWith(
          TxListItem value, $Res Function(TxListItem) then) =
      _$TxListItemCopyWithImpl<$Res, TxListItem>;
}

/// @nodoc
class _$TxListItemCopyWithImpl<$Res, $Val extends TxListItem>
    implements $TxListItemCopyWith<$Res> {
  _$TxListItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TxListItemPendingTxItemImplCopyWith<$Res> {
  factory _$$TxListItemPendingTxItemImplCopyWith(
          _$TxListItemPendingTxItemImpl value,
          $Res Function(_$TxListItemPendingTxItemImpl) then) =
      __$$TxListItemPendingTxItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TxItem tx});

  $TxItemCopyWith<$Res> get tx;
}

/// @nodoc
class __$$TxListItemPendingTxItemImplCopyWithImpl<$Res>
    extends _$TxListItemCopyWithImpl<$Res, _$TxListItemPendingTxItemImpl>
    implements _$$TxListItemPendingTxItemImplCopyWith<$Res> {
  __$$TxListItemPendingTxItemImplCopyWithImpl(
      _$TxListItemPendingTxItemImpl _value,
      $Res Function(_$TxListItemPendingTxItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tx = null,
  }) {
    return _then(_$TxListItemPendingTxItemImpl(
      null == tx
          ? _value.tx
          : tx // ignore: cast_nullable_to_non_nullable
              as TxItem,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TxItemCopyWith<$Res> get tx {
    return $TxItemCopyWith<$Res>(_value.tx, (value) {
      return _then(_value.copyWith(tx: value));
    });
  }
}

/// @nodoc

class _$TxListItemPendingTxItemImpl extends _TxListItemPendingTxItem {
  _$TxListItemPendingTxItemImpl(this.tx) : super._();

  @override
  final TxItem tx;

  @override
  String toString() {
    return 'TxListItem.pendingTxItem(tx: $tx)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TxListItemPendingTxItemImpl &&
            (identical(other.tx, tx) || other.tx == tx));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tx);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TxListItemPendingTxItemImplCopyWith<_$TxListItemPendingTxItemImpl>
      get copyWith => __$$TxListItemPendingTxItemImplCopyWithImpl<
          _$TxListItemPendingTxItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TxItem tx) pendingTxItem,
    required TResult Function(TxItem tx) txItem,
    required TResult Function(bool hasMore) loader,
  }) {
    return pendingTxItem(tx);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TxItem tx)? pendingTxItem,
    TResult? Function(TxItem tx)? txItem,
    TResult? Function(bool hasMore)? loader,
  }) {
    return pendingTxItem?.call(tx);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TxItem tx)? pendingTxItem,
    TResult Function(TxItem tx)? txItem,
    TResult Function(bool hasMore)? loader,
    required TResult orElse(),
  }) {
    if (pendingTxItem != null) {
      return pendingTxItem(tx);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TxListItemPendingTxItem value) pendingTxItem,
    required TResult Function(_TxListItemTxItem value) txItem,
    required TResult Function(_TxListItemLoader value) loader,
  }) {
    return pendingTxItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TxListItemPendingTxItem value)? pendingTxItem,
    TResult? Function(_TxListItemTxItem value)? txItem,
    TResult? Function(_TxListItemLoader value)? loader,
  }) {
    return pendingTxItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TxListItemPendingTxItem value)? pendingTxItem,
    TResult Function(_TxListItemTxItem value)? txItem,
    TResult Function(_TxListItemLoader value)? loader,
    required TResult orElse(),
  }) {
    if (pendingTxItem != null) {
      return pendingTxItem(this);
    }
    return orElse();
  }
}

abstract class _TxListItemPendingTxItem extends TxListItem {
  factory _TxListItemPendingTxItem(final TxItem tx) =
      _$TxListItemPendingTxItemImpl;
  _TxListItemPendingTxItem._() : super._();

  TxItem get tx;
  @JsonKey(ignore: true)
  _$$TxListItemPendingTxItemImplCopyWith<_$TxListItemPendingTxItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TxListItemTxItemImplCopyWith<$Res> {
  factory _$$TxListItemTxItemImplCopyWith(_$TxListItemTxItemImpl value,
          $Res Function(_$TxListItemTxItemImpl) then) =
      __$$TxListItemTxItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TxItem tx});

  $TxItemCopyWith<$Res> get tx;
}

/// @nodoc
class __$$TxListItemTxItemImplCopyWithImpl<$Res>
    extends _$TxListItemCopyWithImpl<$Res, _$TxListItemTxItemImpl>
    implements _$$TxListItemTxItemImplCopyWith<$Res> {
  __$$TxListItemTxItemImplCopyWithImpl(_$TxListItemTxItemImpl _value,
      $Res Function(_$TxListItemTxItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tx = null,
  }) {
    return _then(_$TxListItemTxItemImpl(
      null == tx
          ? _value.tx
          : tx // ignore: cast_nullable_to_non_nullable
              as TxItem,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TxItemCopyWith<$Res> get tx {
    return $TxItemCopyWith<$Res>(_value.tx, (value) {
      return _then(_value.copyWith(tx: value));
    });
  }
}

/// @nodoc

class _$TxListItemTxItemImpl extends _TxListItemTxItem {
  _$TxListItemTxItemImpl(this.tx) : super._();

  @override
  final TxItem tx;

  @override
  String toString() {
    return 'TxListItem.txItem(tx: $tx)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TxListItemTxItemImpl &&
            (identical(other.tx, tx) || other.tx == tx));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tx);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TxListItemTxItemImplCopyWith<_$TxListItemTxItemImpl> get copyWith =>
      __$$TxListItemTxItemImplCopyWithImpl<_$TxListItemTxItemImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TxItem tx) pendingTxItem,
    required TResult Function(TxItem tx) txItem,
    required TResult Function(bool hasMore) loader,
  }) {
    return txItem(tx);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TxItem tx)? pendingTxItem,
    TResult? Function(TxItem tx)? txItem,
    TResult? Function(bool hasMore)? loader,
  }) {
    return txItem?.call(tx);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TxItem tx)? pendingTxItem,
    TResult Function(TxItem tx)? txItem,
    TResult Function(bool hasMore)? loader,
    required TResult orElse(),
  }) {
    if (txItem != null) {
      return txItem(tx);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TxListItemPendingTxItem value) pendingTxItem,
    required TResult Function(_TxListItemTxItem value) txItem,
    required TResult Function(_TxListItemLoader value) loader,
  }) {
    return txItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TxListItemPendingTxItem value)? pendingTxItem,
    TResult? Function(_TxListItemTxItem value)? txItem,
    TResult? Function(_TxListItemLoader value)? loader,
  }) {
    return txItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TxListItemPendingTxItem value)? pendingTxItem,
    TResult Function(_TxListItemTxItem value)? txItem,
    TResult Function(_TxListItemLoader value)? loader,
    required TResult orElse(),
  }) {
    if (txItem != null) {
      return txItem(this);
    }
    return orElse();
  }
}

abstract class _TxListItemTxItem extends TxListItem {
  factory _TxListItemTxItem(final TxItem tx) = _$TxListItemTxItemImpl;
  _TxListItemTxItem._() : super._();

  TxItem get tx;
  @JsonKey(ignore: true)
  _$$TxListItemTxItemImplCopyWith<_$TxListItemTxItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TxListItemLoaderImplCopyWith<$Res> {
  factory _$$TxListItemLoaderImplCopyWith(_$TxListItemLoaderImpl value,
          $Res Function(_$TxListItemLoaderImpl) then) =
      __$$TxListItemLoaderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool hasMore});
}

/// @nodoc
class __$$TxListItemLoaderImplCopyWithImpl<$Res>
    extends _$TxListItemCopyWithImpl<$Res, _$TxListItemLoaderImpl>
    implements _$$TxListItemLoaderImplCopyWith<$Res> {
  __$$TxListItemLoaderImplCopyWithImpl(_$TxListItemLoaderImpl _value,
      $Res Function(_$TxListItemLoaderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasMore = null,
  }) {
    return _then(_$TxListItemLoaderImpl(
      null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TxListItemLoaderImpl extends _TxListItemLoader {
  _$TxListItemLoaderImpl(this.hasMore) : super._();

  @override
  final bool hasMore;

  @override
  String toString() {
    return 'TxListItem.loader(hasMore: $hasMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TxListItemLoaderImpl &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hasMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TxListItemLoaderImplCopyWith<_$TxListItemLoaderImpl> get copyWith =>
      __$$TxListItemLoaderImplCopyWithImpl<_$TxListItemLoaderImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TxItem tx) pendingTxItem,
    required TResult Function(TxItem tx) txItem,
    required TResult Function(bool hasMore) loader,
  }) {
    return loader(hasMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TxItem tx)? pendingTxItem,
    TResult? Function(TxItem tx)? txItem,
    TResult? Function(bool hasMore)? loader,
  }) {
    return loader?.call(hasMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TxItem tx)? pendingTxItem,
    TResult Function(TxItem tx)? txItem,
    TResult Function(bool hasMore)? loader,
    required TResult orElse(),
  }) {
    if (loader != null) {
      return loader(hasMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TxListItemPendingTxItem value) pendingTxItem,
    required TResult Function(_TxListItemTxItem value) txItem,
    required TResult Function(_TxListItemLoader value) loader,
  }) {
    return loader(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TxListItemPendingTxItem value)? pendingTxItem,
    TResult? Function(_TxListItemTxItem value)? txItem,
    TResult? Function(_TxListItemLoader value)? loader,
  }) {
    return loader?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TxListItemPendingTxItem value)? pendingTxItem,
    TResult Function(_TxListItemTxItem value)? txItem,
    TResult Function(_TxListItemLoader value)? loader,
    required TResult orElse(),
  }) {
    if (loader != null) {
      return loader(this);
    }
    return orElse();
  }
}

abstract class _TxListItemLoader extends TxListItem {
  factory _TxListItemLoader(final bool hasMore) = _$TxListItemLoaderImpl;
  _TxListItemLoader._() : super._();

  bool get hasMore;
  @JsonKey(ignore: true)
  _$$TxListItemLoaderImplCopyWith<_$TxListItemLoaderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TxState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() pending,
    required TResult Function() unconfirmed,
    required TResult Function(BigInt confirmations) confirming,
    required TResult Function() confirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? pending,
    TResult? Function()? unconfirmed,
    TResult? Function(BigInt confirmations)? confirming,
    TResult? Function()? confirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? pending,
    TResult Function()? unconfirmed,
    TResult Function(BigInt confirmations)? confirming,
    TResult Function()? confirmed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TxStateUnknown value) unknown,
    required TResult Function(_TxStatePending value) pending,
    required TResult Function(_TxStateUnconfirmed value) unconfirmed,
    required TResult Function(_TxStateConfirming value) confirming,
    required TResult Function(_TxStateConfirmed value) confirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TxStateUnknown value)? unknown,
    TResult? Function(_TxStatePending value)? pending,
    TResult? Function(_TxStateUnconfirmed value)? unconfirmed,
    TResult? Function(_TxStateConfirming value)? confirming,
    TResult? Function(_TxStateConfirmed value)? confirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TxStateUnknown value)? unknown,
    TResult Function(_TxStatePending value)? pending,
    TResult Function(_TxStateUnconfirmed value)? unconfirmed,
    TResult Function(_TxStateConfirming value)? confirming,
    TResult Function(_TxStateConfirmed value)? confirmed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TxStateCopyWith<$Res> {
  factory $TxStateCopyWith(TxState value, $Res Function(TxState) then) =
      _$TxStateCopyWithImpl<$Res, TxState>;
}

/// @nodoc
class _$TxStateCopyWithImpl<$Res, $Val extends TxState>
    implements $TxStateCopyWith<$Res> {
  _$TxStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TxStateUnknownImplCopyWith<$Res> {
  factory _$$TxStateUnknownImplCopyWith(_$TxStateUnknownImpl value,
          $Res Function(_$TxStateUnknownImpl) then) =
      __$$TxStateUnknownImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TxStateUnknownImplCopyWithImpl<$Res>
    extends _$TxStateCopyWithImpl<$Res, _$TxStateUnknownImpl>
    implements _$$TxStateUnknownImplCopyWith<$Res> {
  __$$TxStateUnknownImplCopyWithImpl(
      _$TxStateUnknownImpl _value, $Res Function(_$TxStateUnknownImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TxStateUnknownImpl implements _TxStateUnknown {
  const _$TxStateUnknownImpl();

  @override
  String toString() {
    return 'TxState.unknown()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TxStateUnknownImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() pending,
    required TResult Function() unconfirmed,
    required TResult Function(BigInt confirmations) confirming,
    required TResult Function() confirmed,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? pending,
    TResult? Function()? unconfirmed,
    TResult? Function(BigInt confirmations)? confirming,
    TResult? Function()? confirmed,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? pending,
    TResult Function()? unconfirmed,
    TResult Function(BigInt confirmations)? confirming,
    TResult Function()? confirmed,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TxStateUnknown value) unknown,
    required TResult Function(_TxStatePending value) pending,
    required TResult Function(_TxStateUnconfirmed value) unconfirmed,
    required TResult Function(_TxStateConfirming value) confirming,
    required TResult Function(_TxStateConfirmed value) confirmed,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TxStateUnknown value)? unknown,
    TResult? Function(_TxStatePending value)? pending,
    TResult? Function(_TxStateUnconfirmed value)? unconfirmed,
    TResult? Function(_TxStateConfirming value)? confirming,
    TResult? Function(_TxStateConfirmed value)? confirmed,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TxStateUnknown value)? unknown,
    TResult Function(_TxStatePending value)? pending,
    TResult Function(_TxStateUnconfirmed value)? unconfirmed,
    TResult Function(_TxStateConfirming value)? confirming,
    TResult Function(_TxStateConfirmed value)? confirmed,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _TxStateUnknown implements TxState {
  const factory _TxStateUnknown() = _$TxStateUnknownImpl;
}

/// @nodoc
abstract class _$$TxStatePendingImplCopyWith<$Res> {
  factory _$$TxStatePendingImplCopyWith(_$TxStatePendingImpl value,
          $Res Function(_$TxStatePendingImpl) then) =
      __$$TxStatePendingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TxStatePendingImplCopyWithImpl<$Res>
    extends _$TxStateCopyWithImpl<$Res, _$TxStatePendingImpl>
    implements _$$TxStatePendingImplCopyWith<$Res> {
  __$$TxStatePendingImplCopyWithImpl(
      _$TxStatePendingImpl _value, $Res Function(_$TxStatePendingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TxStatePendingImpl implements _TxStatePending {
  const _$TxStatePendingImpl();

  @override
  String toString() {
    return 'TxState.pending()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TxStatePendingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() pending,
    required TResult Function() unconfirmed,
    required TResult Function(BigInt confirmations) confirming,
    required TResult Function() confirmed,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? pending,
    TResult? Function()? unconfirmed,
    TResult? Function(BigInt confirmations)? confirming,
    TResult? Function()? confirmed,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? pending,
    TResult Function()? unconfirmed,
    TResult Function(BigInt confirmations)? confirming,
    TResult Function()? confirmed,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TxStateUnknown value) unknown,
    required TResult Function(_TxStatePending value) pending,
    required TResult Function(_TxStateUnconfirmed value) unconfirmed,
    required TResult Function(_TxStateConfirming value) confirming,
    required TResult Function(_TxStateConfirmed value) confirmed,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TxStateUnknown value)? unknown,
    TResult? Function(_TxStatePending value)? pending,
    TResult? Function(_TxStateUnconfirmed value)? unconfirmed,
    TResult? Function(_TxStateConfirming value)? confirming,
    TResult? Function(_TxStateConfirmed value)? confirmed,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TxStateUnknown value)? unknown,
    TResult Function(_TxStatePending value)? pending,
    TResult Function(_TxStateUnconfirmed value)? unconfirmed,
    TResult Function(_TxStateConfirming value)? confirming,
    TResult Function(_TxStateConfirmed value)? confirmed,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class _TxStatePending implements TxState {
  const factory _TxStatePending() = _$TxStatePendingImpl;
}

/// @nodoc
abstract class _$$TxStateUnconfirmedImplCopyWith<$Res> {
  factory _$$TxStateUnconfirmedImplCopyWith(_$TxStateUnconfirmedImpl value,
          $Res Function(_$TxStateUnconfirmedImpl) then) =
      __$$TxStateUnconfirmedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TxStateUnconfirmedImplCopyWithImpl<$Res>
    extends _$TxStateCopyWithImpl<$Res, _$TxStateUnconfirmedImpl>
    implements _$$TxStateUnconfirmedImplCopyWith<$Res> {
  __$$TxStateUnconfirmedImplCopyWithImpl(_$TxStateUnconfirmedImpl _value,
      $Res Function(_$TxStateUnconfirmedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TxStateUnconfirmedImpl implements _TxStateUnconfirmed {
  const _$TxStateUnconfirmedImpl();

  @override
  String toString() {
    return 'TxState.unconfirmed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TxStateUnconfirmedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() pending,
    required TResult Function() unconfirmed,
    required TResult Function(BigInt confirmations) confirming,
    required TResult Function() confirmed,
  }) {
    return unconfirmed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? pending,
    TResult? Function()? unconfirmed,
    TResult? Function(BigInt confirmations)? confirming,
    TResult? Function()? confirmed,
  }) {
    return unconfirmed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? pending,
    TResult Function()? unconfirmed,
    TResult Function(BigInt confirmations)? confirming,
    TResult Function()? confirmed,
    required TResult orElse(),
  }) {
    if (unconfirmed != null) {
      return unconfirmed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TxStateUnknown value) unknown,
    required TResult Function(_TxStatePending value) pending,
    required TResult Function(_TxStateUnconfirmed value) unconfirmed,
    required TResult Function(_TxStateConfirming value) confirming,
    required TResult Function(_TxStateConfirmed value) confirmed,
  }) {
    return unconfirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TxStateUnknown value)? unknown,
    TResult? Function(_TxStatePending value)? pending,
    TResult? Function(_TxStateUnconfirmed value)? unconfirmed,
    TResult? Function(_TxStateConfirming value)? confirming,
    TResult? Function(_TxStateConfirmed value)? confirmed,
  }) {
    return unconfirmed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TxStateUnknown value)? unknown,
    TResult Function(_TxStatePending value)? pending,
    TResult Function(_TxStateUnconfirmed value)? unconfirmed,
    TResult Function(_TxStateConfirming value)? confirming,
    TResult Function(_TxStateConfirmed value)? confirmed,
    required TResult orElse(),
  }) {
    if (unconfirmed != null) {
      return unconfirmed(this);
    }
    return orElse();
  }
}

abstract class _TxStateUnconfirmed implements TxState {
  const factory _TxStateUnconfirmed() = _$TxStateUnconfirmedImpl;
}

/// @nodoc
abstract class _$$TxStateConfirmingImplCopyWith<$Res> {
  factory _$$TxStateConfirmingImplCopyWith(_$TxStateConfirmingImpl value,
          $Res Function(_$TxStateConfirmingImpl) then) =
      __$$TxStateConfirmingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BigInt confirmations});
}

/// @nodoc
class __$$TxStateConfirmingImplCopyWithImpl<$Res>
    extends _$TxStateCopyWithImpl<$Res, _$TxStateConfirmingImpl>
    implements _$$TxStateConfirmingImplCopyWith<$Res> {
  __$$TxStateConfirmingImplCopyWithImpl(_$TxStateConfirmingImpl _value,
      $Res Function(_$TxStateConfirmingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmations = null,
  }) {
    return _then(_$TxStateConfirmingImpl(
      null == confirmations
          ? _value.confirmations
          : confirmations // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc

class _$TxStateConfirmingImpl implements _TxStateConfirming {
  const _$TxStateConfirmingImpl(this.confirmations);

  @override
  final BigInt confirmations;

  @override
  String toString() {
    return 'TxState.confirming(confirmations: $confirmations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TxStateConfirmingImpl &&
            (identical(other.confirmations, confirmations) ||
                other.confirmations == confirmations));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmations);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TxStateConfirmingImplCopyWith<_$TxStateConfirmingImpl> get copyWith =>
      __$$TxStateConfirmingImplCopyWithImpl<_$TxStateConfirmingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() pending,
    required TResult Function() unconfirmed,
    required TResult Function(BigInt confirmations) confirming,
    required TResult Function() confirmed,
  }) {
    return confirming(confirmations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? pending,
    TResult? Function()? unconfirmed,
    TResult? Function(BigInt confirmations)? confirming,
    TResult? Function()? confirmed,
  }) {
    return confirming?.call(confirmations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? pending,
    TResult Function()? unconfirmed,
    TResult Function(BigInt confirmations)? confirming,
    TResult Function()? confirmed,
    required TResult orElse(),
  }) {
    if (confirming != null) {
      return confirming(confirmations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TxStateUnknown value) unknown,
    required TResult Function(_TxStatePending value) pending,
    required TResult Function(_TxStateUnconfirmed value) unconfirmed,
    required TResult Function(_TxStateConfirming value) confirming,
    required TResult Function(_TxStateConfirmed value) confirmed,
  }) {
    return confirming(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TxStateUnknown value)? unknown,
    TResult? Function(_TxStatePending value)? pending,
    TResult? Function(_TxStateUnconfirmed value)? unconfirmed,
    TResult? Function(_TxStateConfirming value)? confirming,
    TResult? Function(_TxStateConfirmed value)? confirmed,
  }) {
    return confirming?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TxStateUnknown value)? unknown,
    TResult Function(_TxStatePending value)? pending,
    TResult Function(_TxStateUnconfirmed value)? unconfirmed,
    TResult Function(_TxStateConfirming value)? confirming,
    TResult Function(_TxStateConfirmed value)? confirmed,
    required TResult orElse(),
  }) {
    if (confirming != null) {
      return confirming(this);
    }
    return orElse();
  }
}

abstract class _TxStateConfirming implements TxState {
  const factory _TxStateConfirming(final BigInt confirmations) =
      _$TxStateConfirmingImpl;

  BigInt get confirmations;
  @JsonKey(ignore: true)
  _$$TxStateConfirmingImplCopyWith<_$TxStateConfirmingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TxStateConfirmedImplCopyWith<$Res> {
  factory _$$TxStateConfirmedImplCopyWith(_$TxStateConfirmedImpl value,
          $Res Function(_$TxStateConfirmedImpl) then) =
      __$$TxStateConfirmedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TxStateConfirmedImplCopyWithImpl<$Res>
    extends _$TxStateCopyWithImpl<$Res, _$TxStateConfirmedImpl>
    implements _$$TxStateConfirmedImplCopyWith<$Res> {
  __$$TxStateConfirmedImplCopyWithImpl(_$TxStateConfirmedImpl _value,
      $Res Function(_$TxStateConfirmedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TxStateConfirmedImpl implements _TxStateConfirmed {
  const _$TxStateConfirmedImpl();

  @override
  String toString() {
    return 'TxState.confirmed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TxStateConfirmedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() pending,
    required TResult Function() unconfirmed,
    required TResult Function(BigInt confirmations) confirming,
    required TResult Function() confirmed,
  }) {
    return confirmed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? pending,
    TResult? Function()? unconfirmed,
    TResult? Function(BigInt confirmations)? confirming,
    TResult? Function()? confirmed,
  }) {
    return confirmed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? pending,
    TResult Function()? unconfirmed,
    TResult Function(BigInt confirmations)? confirming,
    TResult Function()? confirmed,
    required TResult orElse(),
  }) {
    if (confirmed != null) {
      return confirmed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TxStateUnknown value) unknown,
    required TResult Function(_TxStatePending value) pending,
    required TResult Function(_TxStateUnconfirmed value) unconfirmed,
    required TResult Function(_TxStateConfirming value) confirming,
    required TResult Function(_TxStateConfirmed value) confirmed,
  }) {
    return confirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TxStateUnknown value)? unknown,
    TResult? Function(_TxStatePending value)? pending,
    TResult? Function(_TxStateUnconfirmed value)? unconfirmed,
    TResult? Function(_TxStateConfirming value)? confirming,
    TResult? Function(_TxStateConfirmed value)? confirmed,
  }) {
    return confirmed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TxStateUnknown value)? unknown,
    TResult Function(_TxStatePending value)? pending,
    TResult Function(_TxStateUnconfirmed value)? unconfirmed,
    TResult Function(_TxStateConfirming value)? confirming,
    TResult Function(_TxStateConfirmed value)? confirmed,
    required TResult orElse(),
  }) {
    if (confirmed != null) {
      return confirmed(this);
    }
    return orElse();
  }
}

abstract class _TxStateConfirmed implements TxState {
  const factory _TxStateConfirmed() = _$TxStateConfirmedImpl;
}
