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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TxIndex _$TxIndexFromJson(Map<String, dynamic> json) {
  return _TxIndex.fromJson(json);
}

/// @nodoc
mixin _$TxIndex {
  String get txId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TxIndexCopyWith<TxIndex> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TxIndexCopyWith<$Res> {
  factory $TxIndexCopyWith(TxIndex value, $Res Function(TxIndex) then) =
      _$TxIndexCopyWithImpl<$Res, TxIndex>;
  @useResult
  $Res call({String txId});
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
  }) {
    return _then(_value.copyWith(
      txId: null == txId
          ? _value.txId
          : txId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TxIndexCopyWith<$Res> implements $TxIndexCopyWith<$Res> {
  factory _$$_TxIndexCopyWith(
          _$_TxIndex value, $Res Function(_$_TxIndex) then) =
      __$$_TxIndexCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String txId});
}

/// @nodoc
class __$$_TxIndexCopyWithImpl<$Res>
    extends _$TxIndexCopyWithImpl<$Res, _$_TxIndex>
    implements _$$_TxIndexCopyWith<$Res> {
  __$$_TxIndexCopyWithImpl(_$_TxIndex _value, $Res Function(_$_TxIndex) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? txId = null,
  }) {
    return _then(_$_TxIndex(
      txId: null == txId
          ? _value.txId
          : txId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TxIndex implements _TxIndex {
  const _$_TxIndex({required this.txId});

  factory _$_TxIndex.fromJson(Map<String, dynamic> json) =>
      _$$_TxIndexFromJson(json);

  @override
  final String txId;

  @override
  String toString() {
    return 'TxIndex(txId: $txId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TxIndex &&
            (identical(other.txId, txId) || other.txId == txId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, txId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TxIndexCopyWith<_$_TxIndex> get copyWith =>
      __$$_TxIndexCopyWithImpl<_$_TxIndex>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TxIndexToJson(
      this,
    );
  }
}

abstract class _TxIndex implements TxIndex {
  const factory _TxIndex({required final String txId}) = _$_TxIndex;

  factory _TxIndex.fromJson(Map<String, dynamic> json) = _$_TxIndex.fromJson;

  @override
  String get txId;
  @override
  @JsonKey(ignore: true)
  _$$_TxIndexCopyWith<_$_TxIndex> get copyWith =>
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
abstract class _$$_TxInputDataCopyWith<$Res>
    implements $TxInputDataCopyWith<$Res> {
  factory _$$_TxInputDataCopyWith(
          _$_TxInputData value, $Res Function(_$_TxInputData) then) =
      __$$_TxInputDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String address, int amount});
}

/// @nodoc
class __$$_TxInputDataCopyWithImpl<$Res>
    extends _$TxInputDataCopyWithImpl<$Res, _$_TxInputData>
    implements _$$_TxInputDataCopyWith<$Res> {
  __$$_TxInputDataCopyWithImpl(
      _$_TxInputData _value, $Res Function(_$_TxInputData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? amount = null,
  }) {
    return _then(_$_TxInputData(
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
class _$_TxInputData implements _TxInputData {
  const _$_TxInputData({required this.address, required this.amount});

  factory _$_TxInputData.fromJson(Map<String, dynamic> json) =>
      _$$_TxInputDataFromJson(json);

  @override
  final String address;
  @override
  final int amount;

  @override
  String toString() {
    return 'TxInputData(address: $address, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TxInputData &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TxInputDataCopyWith<_$_TxInputData> get copyWith =>
      __$$_TxInputDataCopyWithImpl<_$_TxInputData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TxInputDataToJson(
      this,
    );
  }
}

abstract class _TxInputData implements TxInputData {
  const factory _TxInputData(
      {required final String address,
      required final int amount}) = _$_TxInputData;

  factory _TxInputData.fromJson(Map<String, dynamic> json) =
      _$_TxInputData.fromJson;

  @override
  String get address;
  @override
  int get amount;
  @override
  @JsonKey(ignore: true)
  _$$_TxInputDataCopyWith<_$_TxInputData> get copyWith =>
      throw _privateConstructorUsedError;
}

Tx _$TxFromJson(Map<String, dynamic> json) {
  return _Tx.fromJson(json);
}

/// @nodoc
mixin _$Tx {
  ApiTransaction get apiTx => throw _privateConstructorUsedError;
  List<TxInputData?> get inputData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TxCopyWith<Tx> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TxCopyWith<$Res> {
  factory $TxCopyWith(Tx value, $Res Function(Tx) then) =
      _$TxCopyWithImpl<$Res, Tx>;
  @useResult
  $Res call({ApiTransaction apiTx, List<TxInputData?> inputData});

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
abstract class _$$_TxCopyWith<$Res> implements $TxCopyWith<$Res> {
  factory _$$_TxCopyWith(_$_Tx value, $Res Function(_$_Tx) then) =
      __$$_TxCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiTransaction apiTx, List<TxInputData?> inputData});

  @override
  $ApiTransactionCopyWith<$Res> get apiTx;
}

/// @nodoc
class __$$_TxCopyWithImpl<$Res> extends _$TxCopyWithImpl<$Res, _$_Tx>
    implements _$$_TxCopyWith<$Res> {
  __$$_TxCopyWithImpl(_$_Tx _value, $Res Function(_$_Tx) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiTx = null,
    Object? inputData = null,
  }) {
    return _then(_$_Tx(
      apiTx: null == apiTx
          ? _value.apiTx
          : apiTx // ignore: cast_nullable_to_non_nullable
              as ApiTransaction,
      inputData: null == inputData
          ? _value._inputData
          : inputData // ignore: cast_nullable_to_non_nullable
              as List<TxInputData?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tx extends _Tx {
  const _$_Tx(
      {required this.apiTx, required final List<TxInputData?> inputData})
      : _inputData = inputData,
        super._();

  factory _$_Tx.fromJson(Map<String, dynamic> json) => _$$_TxFromJson(json);

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
  String toString() {
    return 'Tx(apiTx: $apiTx, inputData: $inputData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tx &&
            (identical(other.apiTx, apiTx) || other.apiTx == apiTx) &&
            const DeepCollectionEquality()
                .equals(other._inputData, _inputData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, apiTx, const DeepCollectionEquality().hash(_inputData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TxCopyWith<_$_Tx> get copyWith =>
      __$$_TxCopyWithImpl<_$_Tx>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TxToJson(
      this,
    );
  }
}

abstract class _Tx extends Tx {
  const factory _Tx(
      {required final ApiTransaction apiTx,
      required final List<TxInputData?> inputData}) = _$_Tx;
  const _Tx._() : super._();

  factory _Tx.fromJson(Map<String, dynamic> json) = _$_Tx.fromJson;

  @override
  ApiTransaction get apiTx;
  @override
  List<TxInputData?> get inputData;
  @override
  @JsonKey(ignore: true)
  _$$_TxCopyWith<_$_Tx> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TxItem {
  Tx get tx => throw _privateConstructorUsedError;
  int get outputIndex => throw _privateConstructorUsedError;
  TxItemType get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TxItemCopyWith<TxItem> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TxItemCopyWith<$Res> {
  factory $TxItemCopyWith(TxItem value, $Res Function(TxItem) then) =
      _$TxItemCopyWithImpl<$Res, TxItem>;
  @useResult
  $Res call({Tx tx, int outputIndex, TxItemType type});

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
abstract class _$$_TxItemCopyWith<$Res> implements $TxItemCopyWith<$Res> {
  factory _$$_TxItemCopyWith(_$_TxItem value, $Res Function(_$_TxItem) then) =
      __$$_TxItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Tx tx, int outputIndex, TxItemType type});

  @override
  $TxCopyWith<$Res> get tx;
}

/// @nodoc
class __$$_TxItemCopyWithImpl<$Res>
    extends _$TxItemCopyWithImpl<$Res, _$_TxItem>
    implements _$$_TxItemCopyWith<$Res> {
  __$$_TxItemCopyWithImpl(_$_TxItem _value, $Res Function(_$_TxItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tx = null,
    Object? outputIndex = null,
    Object? type = null,
  }) {
    return _then(_$_TxItem(
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
    ));
  }
}

/// @nodoc

class _$_TxItem implements _TxItem {
  const _$_TxItem(
      {required this.tx, required this.outputIndex, required this.type});

  @override
  final Tx tx;
  @override
  final int outputIndex;
  @override
  final TxItemType type;

  @override
  String toString() {
    return 'TxItem(tx: $tx, outputIndex: $outputIndex, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TxItem &&
            (identical(other.tx, tx) || other.tx == tx) &&
            (identical(other.outputIndex, outputIndex) ||
                other.outputIndex == outputIndex) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tx, outputIndex, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TxItemCopyWith<_$_TxItem> get copyWith =>
      __$$_TxItemCopyWithImpl<_$_TxItem>(this, _$identity);
}

abstract class _TxItem implements TxItem {
  const factory _TxItem(
      {required final Tx tx,
      required final int outputIndex,
      required final TxItemType type}) = _$_TxItem;

  @override
  Tx get tx;
  @override
  int get outputIndex;
  @override
  TxItemType get type;
  @override
  @JsonKey(ignore: true)
  _$$_TxItemCopyWith<_$_TxItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TxListItem {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TxItem tx) txItem,
    required TResult Function(bool hasMore) loader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TxItem tx)? txItem,
    TResult? Function(bool hasMore)? loader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TxItem tx)? txItem,
    TResult Function(bool hasMore)? loader,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TxListItemTxItem value) txItem,
    required TResult Function(_TxListItemLoader value) loader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TxListItemTxItem value)? txItem,
    TResult? Function(_TxListItemLoader value)? loader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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
abstract class _$$_TxListItemTxItemCopyWith<$Res> {
  factory _$$_TxListItemTxItemCopyWith(
          _$_TxListItemTxItem value, $Res Function(_$_TxListItemTxItem) then) =
      __$$_TxListItemTxItemCopyWithImpl<$Res>;
  @useResult
  $Res call({TxItem tx});

  $TxItemCopyWith<$Res> get tx;
}

/// @nodoc
class __$$_TxListItemTxItemCopyWithImpl<$Res>
    extends _$TxListItemCopyWithImpl<$Res, _$_TxListItemTxItem>
    implements _$$_TxListItemTxItemCopyWith<$Res> {
  __$$_TxListItemTxItemCopyWithImpl(
      _$_TxListItemTxItem _value, $Res Function(_$_TxListItemTxItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tx = null,
  }) {
    return _then(_$_TxListItemTxItem(
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

class _$_TxListItemTxItem extends _TxListItemTxItem {
  _$_TxListItemTxItem(this.tx) : super._();

  @override
  final TxItem tx;

  @override
  String toString() {
    return 'TxListItem.txItem(tx: $tx)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TxListItemTxItem &&
            (identical(other.tx, tx) || other.tx == tx));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tx);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TxListItemTxItemCopyWith<_$_TxListItemTxItem> get copyWith =>
      __$$_TxListItemTxItemCopyWithImpl<_$_TxListItemTxItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TxItem tx) txItem,
    required TResult Function(bool hasMore) loader,
  }) {
    return txItem(tx);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TxItem tx)? txItem,
    TResult? Function(bool hasMore)? loader,
  }) {
    return txItem?.call(tx);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_TxListItemTxItem value) txItem,
    required TResult Function(_TxListItemLoader value) loader,
  }) {
    return txItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TxListItemTxItem value)? txItem,
    TResult? Function(_TxListItemLoader value)? loader,
  }) {
    return txItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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
  factory _TxListItemTxItem(final TxItem tx) = _$_TxListItemTxItem;
  _TxListItemTxItem._() : super._();

  TxItem get tx;
  @JsonKey(ignore: true)
  _$$_TxListItemTxItemCopyWith<_$_TxListItemTxItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TxListItemLoaderCopyWith<$Res> {
  factory _$$_TxListItemLoaderCopyWith(
          _$_TxListItemLoader value, $Res Function(_$_TxListItemLoader) then) =
      __$$_TxListItemLoaderCopyWithImpl<$Res>;
  @useResult
  $Res call({bool hasMore});
}

/// @nodoc
class __$$_TxListItemLoaderCopyWithImpl<$Res>
    extends _$TxListItemCopyWithImpl<$Res, _$_TxListItemLoader>
    implements _$$_TxListItemLoaderCopyWith<$Res> {
  __$$_TxListItemLoaderCopyWithImpl(
      _$_TxListItemLoader _value, $Res Function(_$_TxListItemLoader) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasMore = null,
  }) {
    return _then(_$_TxListItemLoader(
      null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TxListItemLoader extends _TxListItemLoader {
  _$_TxListItemLoader(this.hasMore) : super._();

  @override
  final bool hasMore;

  @override
  String toString() {
    return 'TxListItem.loader(hasMore: $hasMore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TxListItemLoader &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hasMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TxListItemLoaderCopyWith<_$_TxListItemLoader> get copyWith =>
      __$$_TxListItemLoaderCopyWithImpl<_$_TxListItemLoader>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TxItem tx) txItem,
    required TResult Function(bool hasMore) loader,
  }) {
    return loader(hasMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TxItem tx)? txItem,
    TResult? Function(bool hasMore)? loader,
  }) {
    return loader?.call(hasMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_TxListItemTxItem value) txItem,
    required TResult Function(_TxListItemLoader value) loader,
  }) {
    return loader(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TxListItemTxItem value)? txItem,
    TResult? Function(_TxListItemLoader value)? loader,
  }) {
    return loader?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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
  factory _TxListItemLoader(final bool hasMore) = _$_TxListItemLoader;
  _TxListItemLoader._() : super._();

  bool get hasMore;
  @JsonKey(ignore: true)
  _$$_TxListItemLoaderCopyWith<_$_TxListItemLoader> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TxState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() unconfirmed,
    required TResult Function(BigInt confirmations) confirming,
    required TResult Function() confirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? unconfirmed,
    TResult? Function(BigInt confirmations)? confirming,
    TResult? Function()? confirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? unconfirmed,
    TResult Function(BigInt confirmations)? confirming,
    TResult Function()? confirmed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TxStateUnknown value) unknown,
    required TResult Function(_TxStateUnconfirmed value) unconfirmed,
    required TResult Function(_TxStateConfirming value) confirming,
    required TResult Function(_TxStateConfirmed value) confirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TxStateUnknown value)? unknown,
    TResult? Function(_TxStateUnconfirmed value)? unconfirmed,
    TResult? Function(_TxStateConfirming value)? confirming,
    TResult? Function(_TxStateConfirmed value)? confirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TxStateUnknown value)? unknown,
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
abstract class _$$_TxStateUnknownCopyWith<$Res> {
  factory _$$_TxStateUnknownCopyWith(
          _$_TxStateUnknown value, $Res Function(_$_TxStateUnknown) then) =
      __$$_TxStateUnknownCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TxStateUnknownCopyWithImpl<$Res>
    extends _$TxStateCopyWithImpl<$Res, _$_TxStateUnknown>
    implements _$$_TxStateUnknownCopyWith<$Res> {
  __$$_TxStateUnknownCopyWithImpl(
      _$_TxStateUnknown _value, $Res Function(_$_TxStateUnknown) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TxStateUnknown implements _TxStateUnknown {
  const _$_TxStateUnknown();

  @override
  String toString() {
    return 'TxState.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TxStateUnknown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
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
  const factory _TxStateUnknown() = _$_TxStateUnknown;
}

/// @nodoc
abstract class _$$_TxStateUnconfirmedCopyWith<$Res> {
  factory _$$_TxStateUnconfirmedCopyWith(_$_TxStateUnconfirmed value,
          $Res Function(_$_TxStateUnconfirmed) then) =
      __$$_TxStateUnconfirmedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TxStateUnconfirmedCopyWithImpl<$Res>
    extends _$TxStateCopyWithImpl<$Res, _$_TxStateUnconfirmed>
    implements _$$_TxStateUnconfirmedCopyWith<$Res> {
  __$$_TxStateUnconfirmedCopyWithImpl(
      _$_TxStateUnconfirmed _value, $Res Function(_$_TxStateUnconfirmed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TxStateUnconfirmed implements _TxStateUnconfirmed {
  const _$_TxStateUnconfirmed();

  @override
  String toString() {
    return 'TxState.unconfirmed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TxStateUnconfirmed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
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
  const factory _TxStateUnconfirmed() = _$_TxStateUnconfirmed;
}

/// @nodoc
abstract class _$$_TxStateConfirmingCopyWith<$Res> {
  factory _$$_TxStateConfirmingCopyWith(_$_TxStateConfirming value,
          $Res Function(_$_TxStateConfirming) then) =
      __$$_TxStateConfirmingCopyWithImpl<$Res>;
  @useResult
  $Res call({BigInt confirmations});
}

/// @nodoc
class __$$_TxStateConfirmingCopyWithImpl<$Res>
    extends _$TxStateCopyWithImpl<$Res, _$_TxStateConfirming>
    implements _$$_TxStateConfirmingCopyWith<$Res> {
  __$$_TxStateConfirmingCopyWithImpl(
      _$_TxStateConfirming _value, $Res Function(_$_TxStateConfirming) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmations = null,
  }) {
    return _then(_$_TxStateConfirming(
      null == confirmations
          ? _value.confirmations
          : confirmations // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc

class _$_TxStateConfirming implements _TxStateConfirming {
  const _$_TxStateConfirming(this.confirmations);

  @override
  final BigInt confirmations;

  @override
  String toString() {
    return 'TxState.confirming(confirmations: $confirmations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TxStateConfirming &&
            (identical(other.confirmations, confirmations) ||
                other.confirmations == confirmations));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmations);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TxStateConfirmingCopyWith<_$_TxStateConfirming> get copyWith =>
      __$$_TxStateConfirmingCopyWithImpl<_$_TxStateConfirming>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
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
      _$_TxStateConfirming;

  BigInt get confirmations;
  @JsonKey(ignore: true)
  _$$_TxStateConfirmingCopyWith<_$_TxStateConfirming> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TxStateConfirmedCopyWith<$Res> {
  factory _$$_TxStateConfirmedCopyWith(
          _$_TxStateConfirmed value, $Res Function(_$_TxStateConfirmed) then) =
      __$$_TxStateConfirmedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TxStateConfirmedCopyWithImpl<$Res>
    extends _$TxStateCopyWithImpl<$Res, _$_TxStateConfirmed>
    implements _$$_TxStateConfirmedCopyWith<$Res> {
  __$$_TxStateConfirmedCopyWithImpl(
      _$_TxStateConfirmed _value, $Res Function(_$_TxStateConfirmed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TxStateConfirmed implements _TxStateConfirmed {
  const _$_TxStateConfirmed();

  @override
  String toString() {
    return 'TxState.confirmed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TxStateConfirmed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
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
  const factory _TxStateConfirmed() = _$_TxStateConfirmed;
}
