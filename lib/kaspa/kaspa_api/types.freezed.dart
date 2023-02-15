// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiAddressBalance _$ApiAddressBalanceFromJson(Map<String, dynamic> json) {
  return _ApiAddressBalance.fromJson(json);
}

/// @nodoc
mixin _$ApiAddressBalance {
  String get address => throw _privateConstructorUsedError;
  int get balance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiAddressBalanceCopyWith<ApiAddressBalance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiAddressBalanceCopyWith<$Res> {
  factory $ApiAddressBalanceCopyWith(
          ApiAddressBalance value, $Res Function(ApiAddressBalance) then) =
      _$ApiAddressBalanceCopyWithImpl<$Res, ApiAddressBalance>;
  @useResult
  $Res call({String address, int balance});
}

/// @nodoc
class _$ApiAddressBalanceCopyWithImpl<$Res, $Val extends ApiAddressBalance>
    implements $ApiAddressBalanceCopyWith<$Res> {
  _$ApiAddressBalanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? balance = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiAddressBalanceCopyWith<$Res>
    implements $ApiAddressBalanceCopyWith<$Res> {
  factory _$$_ApiAddressBalanceCopyWith(_$_ApiAddressBalance value,
          $Res Function(_$_ApiAddressBalance) then) =
      __$$_ApiAddressBalanceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String address, int balance});
}

/// @nodoc
class __$$_ApiAddressBalanceCopyWithImpl<$Res>
    extends _$ApiAddressBalanceCopyWithImpl<$Res, _$_ApiAddressBalance>
    implements _$$_ApiAddressBalanceCopyWith<$Res> {
  __$$_ApiAddressBalanceCopyWithImpl(
      _$_ApiAddressBalance _value, $Res Function(_$_ApiAddressBalance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? balance = null,
  }) {
    return _then(_$_ApiAddressBalance(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiAddressBalance implements _ApiAddressBalance {
  const _$_ApiAddressBalance({required this.address, required this.balance});

  factory _$_ApiAddressBalance.fromJson(Map<String, dynamic> json) =>
      _$$_ApiAddressBalanceFromJson(json);

  @override
  final String address;
  @override
  final int balance;

  @override
  String toString() {
    return 'ApiAddressBalance(address: $address, balance: $balance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiAddressBalance &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address, balance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiAddressBalanceCopyWith<_$_ApiAddressBalance> get copyWith =>
      __$$_ApiAddressBalanceCopyWithImpl<_$_ApiAddressBalance>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiAddressBalanceToJson(
      this,
    );
  }
}

abstract class _ApiAddressBalance implements ApiAddressBalance {
  const factory _ApiAddressBalance(
      {required final String address,
      required final int balance}) = _$_ApiAddressBalance;

  factory _ApiAddressBalance.fromJson(Map<String, dynamic> json) =
      _$_ApiAddressBalance.fromJson;

  @override
  String get address;
  @override
  int get balance;
  @override
  @JsonKey(ignore: true)
  _$$_ApiAddressBalanceCopyWith<_$_ApiAddressBalance> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiUtxo _$ApiUtxoFromJson(Map<String, dynamic> json) {
  return _ApiUtxo.fromJson(json);
}

/// @nodoc
mixin _$ApiUtxo {
  String get address => throw _privateConstructorUsedError;
  ApiOutpoint get outpoint => throw _privateConstructorUsedError;
  ApiUtxoEntry get utxoEntry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiUtxoCopyWith<ApiUtxo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiUtxoCopyWith<$Res> {
  factory $ApiUtxoCopyWith(ApiUtxo value, $Res Function(ApiUtxo) then) =
      _$ApiUtxoCopyWithImpl<$Res, ApiUtxo>;
  @useResult
  $Res call({String address, ApiOutpoint outpoint, ApiUtxoEntry utxoEntry});

  $ApiOutpointCopyWith<$Res> get outpoint;
  $ApiUtxoEntryCopyWith<$Res> get utxoEntry;
}

/// @nodoc
class _$ApiUtxoCopyWithImpl<$Res, $Val extends ApiUtxo>
    implements $ApiUtxoCopyWith<$Res> {
  _$ApiUtxoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? outpoint = null,
    Object? utxoEntry = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      outpoint: null == outpoint
          ? _value.outpoint
          : outpoint // ignore: cast_nullable_to_non_nullable
              as ApiOutpoint,
      utxoEntry: null == utxoEntry
          ? _value.utxoEntry
          : utxoEntry // ignore: cast_nullable_to_non_nullable
              as ApiUtxoEntry,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiOutpointCopyWith<$Res> get outpoint {
    return $ApiOutpointCopyWith<$Res>(_value.outpoint, (value) {
      return _then(_value.copyWith(outpoint: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiUtxoEntryCopyWith<$Res> get utxoEntry {
    return $ApiUtxoEntryCopyWith<$Res>(_value.utxoEntry, (value) {
      return _then(_value.copyWith(utxoEntry: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ApiUtxoCopyWith<$Res> implements $ApiUtxoCopyWith<$Res> {
  factory _$$_ApiUtxoCopyWith(
          _$_ApiUtxo value, $Res Function(_$_ApiUtxo) then) =
      __$$_ApiUtxoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String address, ApiOutpoint outpoint, ApiUtxoEntry utxoEntry});

  @override
  $ApiOutpointCopyWith<$Res> get outpoint;
  @override
  $ApiUtxoEntryCopyWith<$Res> get utxoEntry;
}

/// @nodoc
class __$$_ApiUtxoCopyWithImpl<$Res>
    extends _$ApiUtxoCopyWithImpl<$Res, _$_ApiUtxo>
    implements _$$_ApiUtxoCopyWith<$Res> {
  __$$_ApiUtxoCopyWithImpl(_$_ApiUtxo _value, $Res Function(_$_ApiUtxo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? outpoint = null,
    Object? utxoEntry = null,
  }) {
    return _then(_$_ApiUtxo(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      outpoint: null == outpoint
          ? _value.outpoint
          : outpoint // ignore: cast_nullable_to_non_nullable
              as ApiOutpoint,
      utxoEntry: null == utxoEntry
          ? _value.utxoEntry
          : utxoEntry // ignore: cast_nullable_to_non_nullable
              as ApiUtxoEntry,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiUtxo implements _ApiUtxo {
  const _$_ApiUtxo(
      {required this.address, required this.outpoint, required this.utxoEntry});

  factory _$_ApiUtxo.fromJson(Map<String, dynamic> json) =>
      _$$_ApiUtxoFromJson(json);

  @override
  final String address;
  @override
  final ApiOutpoint outpoint;
  @override
  final ApiUtxoEntry utxoEntry;

  @override
  String toString() {
    return 'ApiUtxo(address: $address, outpoint: $outpoint, utxoEntry: $utxoEntry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiUtxo &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.outpoint, outpoint) ||
                other.outpoint == outpoint) &&
            (identical(other.utxoEntry, utxoEntry) ||
                other.utxoEntry == utxoEntry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address, outpoint, utxoEntry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiUtxoCopyWith<_$_ApiUtxo> get copyWith =>
      __$$_ApiUtxoCopyWithImpl<_$_ApiUtxo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiUtxoToJson(
      this,
    );
  }
}

abstract class _ApiUtxo implements ApiUtxo {
  const factory _ApiUtxo(
      {required final String address,
      required final ApiOutpoint outpoint,
      required final ApiUtxoEntry utxoEntry}) = _$_ApiUtxo;

  factory _ApiUtxo.fromJson(Map<String, dynamic> json) = _$_ApiUtxo.fromJson;

  @override
  String get address;
  @override
  ApiOutpoint get outpoint;
  @override
  ApiUtxoEntry get utxoEntry;
  @override
  @JsonKey(ignore: true)
  _$$_ApiUtxoCopyWith<_$_ApiUtxo> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiOutpoint _$ApiOutpointFromJson(Map<String, dynamic> json) {
  return _Outpoint.fromJson(json);
}

/// @nodoc
mixin _$ApiOutpoint {
  String get transactionId => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiOutpointCopyWith<ApiOutpoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiOutpointCopyWith<$Res> {
  factory $ApiOutpointCopyWith(
          ApiOutpoint value, $Res Function(ApiOutpoint) then) =
      _$ApiOutpointCopyWithImpl<$Res, ApiOutpoint>;
  @useResult
  $Res call({String transactionId, int index});
}

/// @nodoc
class _$ApiOutpointCopyWithImpl<$Res, $Val extends ApiOutpoint>
    implements $ApiOutpointCopyWith<$Res> {
  _$ApiOutpointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OutpointCopyWith<$Res>
    implements $ApiOutpointCopyWith<$Res> {
  factory _$$_OutpointCopyWith(
          _$_Outpoint value, $Res Function(_$_Outpoint) then) =
      __$$_OutpointCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String transactionId, int index});
}

/// @nodoc
class __$$_OutpointCopyWithImpl<$Res>
    extends _$ApiOutpointCopyWithImpl<$Res, _$_Outpoint>
    implements _$$_OutpointCopyWith<$Res> {
  __$$_OutpointCopyWithImpl(
      _$_Outpoint _value, $Res Function(_$_Outpoint) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
    Object? index = null,
  }) {
    return _then(_$_Outpoint(
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Outpoint implements _Outpoint {
  const _$_Outpoint({required this.transactionId, required this.index});

  factory _$_Outpoint.fromJson(Map<String, dynamic> json) =>
      _$$_OutpointFromJson(json);

  @override
  final String transactionId;
  @override
  final int index;

  @override
  String toString() {
    return 'ApiOutpoint(transactionId: $transactionId, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Outpoint &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.index, index) || other.index == index));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, transactionId, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OutpointCopyWith<_$_Outpoint> get copyWith =>
      __$$_OutpointCopyWithImpl<_$_Outpoint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OutpointToJson(
      this,
    );
  }
}

abstract class _Outpoint implements ApiOutpoint {
  const factory _Outpoint(
      {required final String transactionId,
      required final int index}) = _$_Outpoint;

  factory _Outpoint.fromJson(Map<String, dynamic> json) = _$_Outpoint.fromJson;

  @override
  String get transactionId;
  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$_OutpointCopyWith<_$_Outpoint> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiUtxoEntry _$ApiUtxoEntryFromJson(Map<String, dynamic> json) {
  return _ApiUtxoEntry.fromJson(json);
}

/// @nodoc
mixin _$ApiUtxoEntry {
  BigInt get amount => throw _privateConstructorUsedError;
  ApiScriptPublicKey get scriptPublicKey => throw _privateConstructorUsedError;
  BigInt get blockDaaScore => throw _privateConstructorUsedError;
  bool get isCoinbase => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiUtxoEntryCopyWith<ApiUtxoEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiUtxoEntryCopyWith<$Res> {
  factory $ApiUtxoEntryCopyWith(
          ApiUtxoEntry value, $Res Function(ApiUtxoEntry) then) =
      _$ApiUtxoEntryCopyWithImpl<$Res, ApiUtxoEntry>;
  @useResult
  $Res call(
      {BigInt amount,
      ApiScriptPublicKey scriptPublicKey,
      BigInt blockDaaScore,
      bool isCoinbase});

  $ApiScriptPublicKeyCopyWith<$Res> get scriptPublicKey;
}

/// @nodoc
class _$ApiUtxoEntryCopyWithImpl<$Res, $Val extends ApiUtxoEntry>
    implements $ApiUtxoEntryCopyWith<$Res> {
  _$ApiUtxoEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? scriptPublicKey = null,
    Object? blockDaaScore = null,
    Object? isCoinbase = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      scriptPublicKey: null == scriptPublicKey
          ? _value.scriptPublicKey
          : scriptPublicKey // ignore: cast_nullable_to_non_nullable
              as ApiScriptPublicKey,
      blockDaaScore: null == blockDaaScore
          ? _value.blockDaaScore
          : blockDaaScore // ignore: cast_nullable_to_non_nullable
              as BigInt,
      isCoinbase: null == isCoinbase
          ? _value.isCoinbase
          : isCoinbase // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiScriptPublicKeyCopyWith<$Res> get scriptPublicKey {
    return $ApiScriptPublicKeyCopyWith<$Res>(_value.scriptPublicKey, (value) {
      return _then(_value.copyWith(scriptPublicKey: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ApiUtxoEntryCopyWith<$Res>
    implements $ApiUtxoEntryCopyWith<$Res> {
  factory _$$_ApiUtxoEntryCopyWith(
          _$_ApiUtxoEntry value, $Res Function(_$_ApiUtxoEntry) then) =
      __$$_ApiUtxoEntryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BigInt amount,
      ApiScriptPublicKey scriptPublicKey,
      BigInt blockDaaScore,
      bool isCoinbase});

  @override
  $ApiScriptPublicKeyCopyWith<$Res> get scriptPublicKey;
}

/// @nodoc
class __$$_ApiUtxoEntryCopyWithImpl<$Res>
    extends _$ApiUtxoEntryCopyWithImpl<$Res, _$_ApiUtxoEntry>
    implements _$$_ApiUtxoEntryCopyWith<$Res> {
  __$$_ApiUtxoEntryCopyWithImpl(
      _$_ApiUtxoEntry _value, $Res Function(_$_ApiUtxoEntry) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? scriptPublicKey = null,
    Object? blockDaaScore = null,
    Object? isCoinbase = null,
  }) {
    return _then(_$_ApiUtxoEntry(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      scriptPublicKey: null == scriptPublicKey
          ? _value.scriptPublicKey
          : scriptPublicKey // ignore: cast_nullable_to_non_nullable
              as ApiScriptPublicKey,
      blockDaaScore: null == blockDaaScore
          ? _value.blockDaaScore
          : blockDaaScore // ignore: cast_nullable_to_non_nullable
              as BigInt,
      isCoinbase: null == isCoinbase
          ? _value.isCoinbase
          : isCoinbase // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiUtxoEntry implements _ApiUtxoEntry {
  const _$_ApiUtxoEntry(
      {required this.amount,
      required this.scriptPublicKey,
      required this.blockDaaScore,
      this.isCoinbase = false});

  factory _$_ApiUtxoEntry.fromJson(Map<String, dynamic> json) =>
      _$$_ApiUtxoEntryFromJson(json);

  @override
  final BigInt amount;
  @override
  final ApiScriptPublicKey scriptPublicKey;
  @override
  final BigInt blockDaaScore;
  @override
  @JsonKey()
  final bool isCoinbase;

  @override
  String toString() {
    return 'ApiUtxoEntry(amount: $amount, scriptPublicKey: $scriptPublicKey, blockDaaScore: $blockDaaScore, isCoinbase: $isCoinbase)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiUtxoEntry &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.scriptPublicKey, scriptPublicKey) ||
                other.scriptPublicKey == scriptPublicKey) &&
            (identical(other.blockDaaScore, blockDaaScore) ||
                other.blockDaaScore == blockDaaScore) &&
            (identical(other.isCoinbase, isCoinbase) ||
                other.isCoinbase == isCoinbase));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, amount, scriptPublicKey, blockDaaScore, isCoinbase);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiUtxoEntryCopyWith<_$_ApiUtxoEntry> get copyWith =>
      __$$_ApiUtxoEntryCopyWithImpl<_$_ApiUtxoEntry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiUtxoEntryToJson(
      this,
    );
  }
}

abstract class _ApiUtxoEntry implements ApiUtxoEntry {
  const factory _ApiUtxoEntry(
      {required final BigInt amount,
      required final ApiScriptPublicKey scriptPublicKey,
      required final BigInt blockDaaScore,
      final bool isCoinbase}) = _$_ApiUtxoEntry;

  factory _ApiUtxoEntry.fromJson(Map<String, dynamic> json) =
      _$_ApiUtxoEntry.fromJson;

  @override
  BigInt get amount;
  @override
  ApiScriptPublicKey get scriptPublicKey;
  @override
  BigInt get blockDaaScore;
  @override
  bool get isCoinbase;
  @override
  @JsonKey(ignore: true)
  _$$_ApiUtxoEntryCopyWith<_$_ApiUtxoEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiScriptPublicKey _$ApiScriptPublicKeyFromJson(Map<String, dynamic> json) {
  return _ApiScriptPublicKey.fromJson(json);
}

/// @nodoc
mixin _$ApiScriptPublicKey {
  String get scriptPublicKey => throw _privateConstructorUsedError;
  int get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiScriptPublicKeyCopyWith<ApiScriptPublicKey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiScriptPublicKeyCopyWith<$Res> {
  factory $ApiScriptPublicKeyCopyWith(
          ApiScriptPublicKey value, $Res Function(ApiScriptPublicKey) then) =
      _$ApiScriptPublicKeyCopyWithImpl<$Res, ApiScriptPublicKey>;
  @useResult
  $Res call({String scriptPublicKey, int version});
}

/// @nodoc
class _$ApiScriptPublicKeyCopyWithImpl<$Res, $Val extends ApiScriptPublicKey>
    implements $ApiScriptPublicKeyCopyWith<$Res> {
  _$ApiScriptPublicKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scriptPublicKey = null,
    Object? version = null,
  }) {
    return _then(_value.copyWith(
      scriptPublicKey: null == scriptPublicKey
          ? _value.scriptPublicKey
          : scriptPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiScriptPublicKeyCopyWith<$Res>
    implements $ApiScriptPublicKeyCopyWith<$Res> {
  factory _$$_ApiScriptPublicKeyCopyWith(_$_ApiScriptPublicKey value,
          $Res Function(_$_ApiScriptPublicKey) then) =
      __$$_ApiScriptPublicKeyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String scriptPublicKey, int version});
}

/// @nodoc
class __$$_ApiScriptPublicKeyCopyWithImpl<$Res>
    extends _$ApiScriptPublicKeyCopyWithImpl<$Res, _$_ApiScriptPublicKey>
    implements _$$_ApiScriptPublicKeyCopyWith<$Res> {
  __$$_ApiScriptPublicKeyCopyWithImpl(
      _$_ApiScriptPublicKey _value, $Res Function(_$_ApiScriptPublicKey) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scriptPublicKey = null,
    Object? version = null,
  }) {
    return _then(_$_ApiScriptPublicKey(
      scriptPublicKey: null == scriptPublicKey
          ? _value.scriptPublicKey
          : scriptPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiScriptPublicKey implements _ApiScriptPublicKey {
  const _$_ApiScriptPublicKey(
      {required this.scriptPublicKey, this.version = 0});

  factory _$_ApiScriptPublicKey.fromJson(Map<String, dynamic> json) =>
      _$$_ApiScriptPublicKeyFromJson(json);

  @override
  final String scriptPublicKey;
  @override
  @JsonKey()
  final int version;

  @override
  String toString() {
    return 'ApiScriptPublicKey(scriptPublicKey: $scriptPublicKey, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiScriptPublicKey &&
            (identical(other.scriptPublicKey, scriptPublicKey) ||
                other.scriptPublicKey == scriptPublicKey) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, scriptPublicKey, version);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiScriptPublicKeyCopyWith<_$_ApiScriptPublicKey> get copyWith =>
      __$$_ApiScriptPublicKeyCopyWithImpl<_$_ApiScriptPublicKey>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiScriptPublicKeyToJson(
      this,
    );
  }
}

abstract class _ApiScriptPublicKey implements ApiScriptPublicKey {
  const factory _ApiScriptPublicKey(
      {required final String scriptPublicKey,
      final int version}) = _$_ApiScriptPublicKey;

  factory _ApiScriptPublicKey.fromJson(Map<String, dynamic> json) =
      _$_ApiScriptPublicKey.fromJson;

  @override
  String get scriptPublicKey;
  @override
  int get version;
  @override
  @JsonKey(ignore: true)
  _$$_ApiScriptPublicKeyCopyWith<_$_ApiScriptPublicKey> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiTxLink _$ApiTxLinkFromJson(Map<String, dynamic> json) {
  return _ApiTxLink.fromJson(json);
}

/// @nodoc
mixin _$ApiTxLink {
  String? get txReceived => throw _privateConstructorUsedError;
  String? get txSpent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiTxLinkCopyWith<ApiTxLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiTxLinkCopyWith<$Res> {
  factory $ApiTxLinkCopyWith(ApiTxLink value, $Res Function(ApiTxLink) then) =
      _$ApiTxLinkCopyWithImpl<$Res, ApiTxLink>;
  @useResult
  $Res call({String? txReceived, String? txSpent});
}

/// @nodoc
class _$ApiTxLinkCopyWithImpl<$Res, $Val extends ApiTxLink>
    implements $ApiTxLinkCopyWith<$Res> {
  _$ApiTxLinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? txReceived = freezed,
    Object? txSpent = freezed,
  }) {
    return _then(_value.copyWith(
      txReceived: freezed == txReceived
          ? _value.txReceived
          : txReceived // ignore: cast_nullable_to_non_nullable
              as String?,
      txSpent: freezed == txSpent
          ? _value.txSpent
          : txSpent // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiTxLinkCopyWith<$Res> implements $ApiTxLinkCopyWith<$Res> {
  factory _$$_ApiTxLinkCopyWith(
          _$_ApiTxLink value, $Res Function(_$_ApiTxLink) then) =
      __$$_ApiTxLinkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? txReceived, String? txSpent});
}

/// @nodoc
class __$$_ApiTxLinkCopyWithImpl<$Res>
    extends _$ApiTxLinkCopyWithImpl<$Res, _$_ApiTxLink>
    implements _$$_ApiTxLinkCopyWith<$Res> {
  __$$_ApiTxLinkCopyWithImpl(
      _$_ApiTxLink _value, $Res Function(_$_ApiTxLink) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? txReceived = freezed,
    Object? txSpent = freezed,
  }) {
    return _then(_$_ApiTxLink(
      txReceived: freezed == txReceived
          ? _value.txReceived
          : txReceived // ignore: cast_nullable_to_non_nullable
              as String?,
      txSpent: freezed == txSpent
          ? _value.txSpent
          : txSpent // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_ApiTxLink implements _ApiTxLink {
  const _$_ApiTxLink({this.txReceived, this.txSpent});

  factory _$_ApiTxLink.fromJson(Map<String, dynamic> json) =>
      _$$_ApiTxLinkFromJson(json);

  @override
  final String? txReceived;
  @override
  final String? txSpent;

  @override
  String toString() {
    return 'ApiTxLink(txReceived: $txReceived, txSpent: $txSpent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiTxLink &&
            (identical(other.txReceived, txReceived) ||
                other.txReceived == txReceived) &&
            (identical(other.txSpent, txSpent) || other.txSpent == txSpent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, txReceived, txSpent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiTxLinkCopyWith<_$_ApiTxLink> get copyWith =>
      __$$_ApiTxLinkCopyWithImpl<_$_ApiTxLink>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiTxLinkToJson(
      this,
    );
  }
}

abstract class _ApiTxLink implements ApiTxLink {
  const factory _ApiTxLink({final String? txReceived, final String? txSpent}) =
      _$_ApiTxLink;

  factory _ApiTxLink.fromJson(Map<String, dynamic> json) =
      _$_ApiTxLink.fromJson;

  @override
  String? get txReceived;
  @override
  String? get txSpent;
  @override
  @JsonKey(ignore: true)
  _$$_ApiTxLinkCopyWith<_$_ApiTxLink> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiTxInput _$ApiTxInputFromJson(Map<String, dynamic> json) {
  return _ApiTxInput.fromJson(json);
}

/// @nodoc
mixin _$ApiTxInput {
  int get id => throw _privateConstructorUsedError;
  String get transactionId => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  String get previousOutpointHash => throw _privateConstructorUsedError;
  BigInt get previousOutpointIndex => throw _privateConstructorUsedError;
  String get signatureScript => throw _privateConstructorUsedError;
  BigInt get sigOpCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiTxInputCopyWith<ApiTxInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiTxInputCopyWith<$Res> {
  factory $ApiTxInputCopyWith(
          ApiTxInput value, $Res Function(ApiTxInput) then) =
      _$ApiTxInputCopyWithImpl<$Res, ApiTxInput>;
  @useResult
  $Res call(
      {int id,
      String transactionId,
      int index,
      String previousOutpointHash,
      BigInt previousOutpointIndex,
      String signatureScript,
      BigInt sigOpCount});
}

/// @nodoc
class _$ApiTxInputCopyWithImpl<$Res, $Val extends ApiTxInput>
    implements $ApiTxInputCopyWith<$Res> {
  _$ApiTxInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? transactionId = null,
    Object? index = null,
    Object? previousOutpointHash = null,
    Object? previousOutpointIndex = null,
    Object? signatureScript = null,
    Object? sigOpCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      previousOutpointHash: null == previousOutpointHash
          ? _value.previousOutpointHash
          : previousOutpointHash // ignore: cast_nullable_to_non_nullable
              as String,
      previousOutpointIndex: null == previousOutpointIndex
          ? _value.previousOutpointIndex
          : previousOutpointIndex // ignore: cast_nullable_to_non_nullable
              as BigInt,
      signatureScript: null == signatureScript
          ? _value.signatureScript
          : signatureScript // ignore: cast_nullable_to_non_nullable
              as String,
      sigOpCount: null == sigOpCount
          ? _value.sigOpCount
          : sigOpCount // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiTxInputCopyWith<$Res>
    implements $ApiTxInputCopyWith<$Res> {
  factory _$$_ApiTxInputCopyWith(
          _$_ApiTxInput value, $Res Function(_$_ApiTxInput) then) =
      __$$_ApiTxInputCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String transactionId,
      int index,
      String previousOutpointHash,
      BigInt previousOutpointIndex,
      String signatureScript,
      BigInt sigOpCount});
}

/// @nodoc
class __$$_ApiTxInputCopyWithImpl<$Res>
    extends _$ApiTxInputCopyWithImpl<$Res, _$_ApiTxInput>
    implements _$$_ApiTxInputCopyWith<$Res> {
  __$$_ApiTxInputCopyWithImpl(
      _$_ApiTxInput _value, $Res Function(_$_ApiTxInput) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? transactionId = null,
    Object? index = null,
    Object? previousOutpointHash = null,
    Object? previousOutpointIndex = null,
    Object? signatureScript = null,
    Object? sigOpCount = null,
  }) {
    return _then(_$_ApiTxInput(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      previousOutpointHash: null == previousOutpointHash
          ? _value.previousOutpointHash
          : previousOutpointHash // ignore: cast_nullable_to_non_nullable
              as String,
      previousOutpointIndex: null == previousOutpointIndex
          ? _value.previousOutpointIndex
          : previousOutpointIndex // ignore: cast_nullable_to_non_nullable
              as BigInt,
      signatureScript: null == signatureScript
          ? _value.signatureScript
          : signatureScript // ignore: cast_nullable_to_non_nullable
              as String,
      sigOpCount: null == sigOpCount
          ? _value.sigOpCount
          : sigOpCount // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_ApiTxInput implements _ApiTxInput {
  const _$_ApiTxInput(
      {required this.id,
      required this.transactionId,
      required this.index,
      required this.previousOutpointHash,
      required this.previousOutpointIndex,
      required this.signatureScript,
      required this.sigOpCount});

  factory _$_ApiTxInput.fromJson(Map<String, dynamic> json) =>
      _$$_ApiTxInputFromJson(json);

  @override
  final int id;
  @override
  final String transactionId;
  @override
  final int index;
  @override
  final String previousOutpointHash;
  @override
  final BigInt previousOutpointIndex;
  @override
  final String signatureScript;
  @override
  final BigInt sigOpCount;

  @override
  String toString() {
    return 'ApiTxInput(id: $id, transactionId: $transactionId, index: $index, previousOutpointHash: $previousOutpointHash, previousOutpointIndex: $previousOutpointIndex, signatureScript: $signatureScript, sigOpCount: $sigOpCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiTxInput &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.previousOutpointHash, previousOutpointHash) ||
                other.previousOutpointHash == previousOutpointHash) &&
            (identical(other.previousOutpointIndex, previousOutpointIndex) ||
                other.previousOutpointIndex == previousOutpointIndex) &&
            (identical(other.signatureScript, signatureScript) ||
                other.signatureScript == signatureScript) &&
            (identical(other.sigOpCount, sigOpCount) ||
                other.sigOpCount == sigOpCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, transactionId, index,
      previousOutpointHash, previousOutpointIndex, signatureScript, sigOpCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiTxInputCopyWith<_$_ApiTxInput> get copyWith =>
      __$$_ApiTxInputCopyWithImpl<_$_ApiTxInput>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiTxInputToJson(
      this,
    );
  }
}

abstract class _ApiTxInput implements ApiTxInput {
  const factory _ApiTxInput(
      {required final int id,
      required final String transactionId,
      required final int index,
      required final String previousOutpointHash,
      required final BigInt previousOutpointIndex,
      required final String signatureScript,
      required final BigInt sigOpCount}) = _$_ApiTxInput;

  factory _ApiTxInput.fromJson(Map<String, dynamic> json) =
      _$_ApiTxInput.fromJson;

  @override
  int get id;
  @override
  String get transactionId;
  @override
  int get index;
  @override
  String get previousOutpointHash;
  @override
  BigInt get previousOutpointIndex;
  @override
  String get signatureScript;
  @override
  BigInt get sigOpCount;
  @override
  @JsonKey(ignore: true)
  _$$_ApiTxInputCopyWith<_$_ApiTxInput> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiTxOutput _$ApiTxOutputFromJson(Map<String, dynamic> json) {
  return _ApiTxOutput.fromJson(json);
}

/// @nodoc
mixin _$ApiTxOutput {
  int get id => throw _privateConstructorUsedError;
  String get transactionId => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get scriptPublicKey => throw _privateConstructorUsedError;
  String get scriptPublicKeyAddress => throw _privateConstructorUsedError;
  String get scriptPublicKeyType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiTxOutputCopyWith<ApiTxOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiTxOutputCopyWith<$Res> {
  factory $ApiTxOutputCopyWith(
          ApiTxOutput value, $Res Function(ApiTxOutput) then) =
      _$ApiTxOutputCopyWithImpl<$Res, ApiTxOutput>;
  @useResult
  $Res call(
      {int id,
      String transactionId,
      int index,
      int amount,
      String scriptPublicKey,
      String scriptPublicKeyAddress,
      String scriptPublicKeyType});
}

/// @nodoc
class _$ApiTxOutputCopyWithImpl<$Res, $Val extends ApiTxOutput>
    implements $ApiTxOutputCopyWith<$Res> {
  _$ApiTxOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? transactionId = null,
    Object? index = null,
    Object? amount = null,
    Object? scriptPublicKey = null,
    Object? scriptPublicKeyAddress = null,
    Object? scriptPublicKeyType = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      scriptPublicKey: null == scriptPublicKey
          ? _value.scriptPublicKey
          : scriptPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
      scriptPublicKeyAddress: null == scriptPublicKeyAddress
          ? _value.scriptPublicKeyAddress
          : scriptPublicKeyAddress // ignore: cast_nullable_to_non_nullable
              as String,
      scriptPublicKeyType: null == scriptPublicKeyType
          ? _value.scriptPublicKeyType
          : scriptPublicKeyType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiTxOutputCopyWith<$Res>
    implements $ApiTxOutputCopyWith<$Res> {
  factory _$$_ApiTxOutputCopyWith(
          _$_ApiTxOutput value, $Res Function(_$_ApiTxOutput) then) =
      __$$_ApiTxOutputCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String transactionId,
      int index,
      int amount,
      String scriptPublicKey,
      String scriptPublicKeyAddress,
      String scriptPublicKeyType});
}

/// @nodoc
class __$$_ApiTxOutputCopyWithImpl<$Res>
    extends _$ApiTxOutputCopyWithImpl<$Res, _$_ApiTxOutput>
    implements _$$_ApiTxOutputCopyWith<$Res> {
  __$$_ApiTxOutputCopyWithImpl(
      _$_ApiTxOutput _value, $Res Function(_$_ApiTxOutput) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? transactionId = null,
    Object? index = null,
    Object? amount = null,
    Object? scriptPublicKey = null,
    Object? scriptPublicKeyAddress = null,
    Object? scriptPublicKeyType = null,
  }) {
    return _then(_$_ApiTxOutput(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      scriptPublicKey: null == scriptPublicKey
          ? _value.scriptPublicKey
          : scriptPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
      scriptPublicKeyAddress: null == scriptPublicKeyAddress
          ? _value.scriptPublicKeyAddress
          : scriptPublicKeyAddress // ignore: cast_nullable_to_non_nullable
              as String,
      scriptPublicKeyType: null == scriptPublicKeyType
          ? _value.scriptPublicKeyType
          : scriptPublicKeyType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_ApiTxOutput implements _ApiTxOutput {
  const _$_ApiTxOutput(
      {required this.id,
      required this.transactionId,
      required this.index,
      required this.amount,
      required this.scriptPublicKey,
      required this.scriptPublicKeyAddress,
      required this.scriptPublicKeyType});

  factory _$_ApiTxOutput.fromJson(Map<String, dynamic> json) =>
      _$$_ApiTxOutputFromJson(json);

  @override
  final int id;
  @override
  final String transactionId;
  @override
  final int index;
  @override
  final int amount;
  @override
  final String scriptPublicKey;
  @override
  final String scriptPublicKeyAddress;
  @override
  final String scriptPublicKeyType;

  @override
  String toString() {
    return 'ApiTxOutput(id: $id, transactionId: $transactionId, index: $index, amount: $amount, scriptPublicKey: $scriptPublicKey, scriptPublicKeyAddress: $scriptPublicKeyAddress, scriptPublicKeyType: $scriptPublicKeyType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiTxOutput &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.scriptPublicKey, scriptPublicKey) ||
                other.scriptPublicKey == scriptPublicKey) &&
            (identical(other.scriptPublicKeyAddress, scriptPublicKeyAddress) ||
                other.scriptPublicKeyAddress == scriptPublicKeyAddress) &&
            (identical(other.scriptPublicKeyType, scriptPublicKeyType) ||
                other.scriptPublicKeyType == scriptPublicKeyType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, transactionId, index, amount,
      scriptPublicKey, scriptPublicKeyAddress, scriptPublicKeyType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiTxOutputCopyWith<_$_ApiTxOutput> get copyWith =>
      __$$_ApiTxOutputCopyWithImpl<_$_ApiTxOutput>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiTxOutputToJson(
      this,
    );
  }
}

abstract class _ApiTxOutput implements ApiTxOutput {
  const factory _ApiTxOutput(
      {required final int id,
      required final String transactionId,
      required final int index,
      required final int amount,
      required final String scriptPublicKey,
      required final String scriptPublicKeyAddress,
      required final String scriptPublicKeyType}) = _$_ApiTxOutput;

  factory _ApiTxOutput.fromJson(Map<String, dynamic> json) =
      _$_ApiTxOutput.fromJson;

  @override
  int get id;
  @override
  String get transactionId;
  @override
  int get index;
  @override
  int get amount;
  @override
  String get scriptPublicKey;
  @override
  String get scriptPublicKeyAddress;
  @override
  String get scriptPublicKeyType;
  @override
  @JsonKey(ignore: true)
  _$$_ApiTxOutputCopyWith<_$_ApiTxOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiTransaction _$ApiTransactionFromJson(Map<String, dynamic> json) {
  return _Transaction.fromJson(json);
}

/// @nodoc
mixin _$ApiTransaction {
  String? get subnetworkId => throw _privateConstructorUsedError;
  String get transactionId => throw _privateConstructorUsedError;
  String? get hash => throw _privateConstructorUsedError;
  BigInt? get mass => throw _privateConstructorUsedError;
  List<String> get blockHash => throw _privateConstructorUsedError;
  int get blockTime => throw _privateConstructorUsedError;
  bool get isAccepted => throw _privateConstructorUsedError;
  String? get acceptingBlockHash => throw _privateConstructorUsedError;
  int? get acceptingBlockBlueScore => throw _privateConstructorUsedError;
  List<ApiTxInput> get inputs => throw _privateConstructorUsedError;
  List<ApiTxOutput> get outputs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiTransactionCopyWith<ApiTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiTransactionCopyWith<$Res> {
  factory $ApiTransactionCopyWith(
          ApiTransaction value, $Res Function(ApiTransaction) then) =
      _$ApiTransactionCopyWithImpl<$Res, ApiTransaction>;
  @useResult
  $Res call(
      {String? subnetworkId,
      String transactionId,
      String? hash,
      BigInt? mass,
      List<String> blockHash,
      int blockTime,
      bool isAccepted,
      String? acceptingBlockHash,
      int? acceptingBlockBlueScore,
      List<ApiTxInput> inputs,
      List<ApiTxOutput> outputs});
}

/// @nodoc
class _$ApiTransactionCopyWithImpl<$Res, $Val extends ApiTransaction>
    implements $ApiTransactionCopyWith<$Res> {
  _$ApiTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subnetworkId = freezed,
    Object? transactionId = null,
    Object? hash = freezed,
    Object? mass = freezed,
    Object? blockHash = null,
    Object? blockTime = null,
    Object? isAccepted = null,
    Object? acceptingBlockHash = freezed,
    Object? acceptingBlockBlueScore = freezed,
    Object? inputs = null,
    Object? outputs = null,
  }) {
    return _then(_value.copyWith(
      subnetworkId: freezed == subnetworkId
          ? _value.subnetworkId
          : subnetworkId // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      hash: freezed == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String?,
      mass: freezed == mass
          ? _value.mass
          : mass // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      blockHash: null == blockHash
          ? _value.blockHash
          : blockHash // ignore: cast_nullable_to_non_nullable
              as List<String>,
      blockTime: null == blockTime
          ? _value.blockTime
          : blockTime // ignore: cast_nullable_to_non_nullable
              as int,
      isAccepted: null == isAccepted
          ? _value.isAccepted
          : isAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
      acceptingBlockHash: freezed == acceptingBlockHash
          ? _value.acceptingBlockHash
          : acceptingBlockHash // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptingBlockBlueScore: freezed == acceptingBlockBlueScore
          ? _value.acceptingBlockBlueScore
          : acceptingBlockBlueScore // ignore: cast_nullable_to_non_nullable
              as int?,
      inputs: null == inputs
          ? _value.inputs
          : inputs // ignore: cast_nullable_to_non_nullable
              as List<ApiTxInput>,
      outputs: null == outputs
          ? _value.outputs
          : outputs // ignore: cast_nullable_to_non_nullable
              as List<ApiTxOutput>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionCopyWith<$Res>
    implements $ApiTransactionCopyWith<$Res> {
  factory _$$_TransactionCopyWith(
          _$_Transaction value, $Res Function(_$_Transaction) then) =
      __$$_TransactionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? subnetworkId,
      String transactionId,
      String? hash,
      BigInt? mass,
      List<String> blockHash,
      int blockTime,
      bool isAccepted,
      String? acceptingBlockHash,
      int? acceptingBlockBlueScore,
      List<ApiTxInput> inputs,
      List<ApiTxOutput> outputs});
}

/// @nodoc
class __$$_TransactionCopyWithImpl<$Res>
    extends _$ApiTransactionCopyWithImpl<$Res, _$_Transaction>
    implements _$$_TransactionCopyWith<$Res> {
  __$$_TransactionCopyWithImpl(
      _$_Transaction _value, $Res Function(_$_Transaction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subnetworkId = freezed,
    Object? transactionId = null,
    Object? hash = freezed,
    Object? mass = freezed,
    Object? blockHash = null,
    Object? blockTime = null,
    Object? isAccepted = null,
    Object? acceptingBlockHash = freezed,
    Object? acceptingBlockBlueScore = freezed,
    Object? inputs = null,
    Object? outputs = null,
  }) {
    return _then(_$_Transaction(
      subnetworkId: freezed == subnetworkId
          ? _value.subnetworkId
          : subnetworkId // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      hash: freezed == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String?,
      mass: freezed == mass
          ? _value.mass
          : mass // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      blockHash: null == blockHash
          ? _value._blockHash
          : blockHash // ignore: cast_nullable_to_non_nullable
              as List<String>,
      blockTime: null == blockTime
          ? _value.blockTime
          : blockTime // ignore: cast_nullable_to_non_nullable
              as int,
      isAccepted: null == isAccepted
          ? _value.isAccepted
          : isAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
      acceptingBlockHash: freezed == acceptingBlockHash
          ? _value.acceptingBlockHash
          : acceptingBlockHash // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptingBlockBlueScore: freezed == acceptingBlockBlueScore
          ? _value.acceptingBlockBlueScore
          : acceptingBlockBlueScore // ignore: cast_nullable_to_non_nullable
              as int?,
      inputs: null == inputs
          ? _value._inputs
          : inputs // ignore: cast_nullable_to_non_nullable
              as List<ApiTxInput>,
      outputs: null == outputs
          ? _value._outputs
          : outputs // ignore: cast_nullable_to_non_nullable
              as List<ApiTxOutput>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Transaction extends _Transaction {
  _$_Transaction(
      {this.subnetworkId,
      required this.transactionId,
      this.hash,
      this.mass,
      final List<String> blockHash = const [],
      required this.blockTime,
      required this.isAccepted,
      this.acceptingBlockHash,
      this.acceptingBlockBlueScore,
      final List<ApiTxInput> inputs = const [],
      final List<ApiTxOutput> outputs = const []})
      : _blockHash = blockHash,
        _inputs = inputs,
        _outputs = outputs,
        super._();

  factory _$_Transaction.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionFromJson(json);

  @override
  final String? subnetworkId;
  @override
  final String transactionId;
  @override
  final String? hash;
  @override
  final BigInt? mass;
  final List<String> _blockHash;
  @override
  @JsonKey()
  List<String> get blockHash {
    if (_blockHash is EqualUnmodifiableListView) return _blockHash;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blockHash);
  }

  @override
  final int blockTime;
  @override
  final bool isAccepted;
  @override
  final String? acceptingBlockHash;
  @override
  final int? acceptingBlockBlueScore;
  final List<ApiTxInput> _inputs;
  @override
  @JsonKey()
  List<ApiTxInput> get inputs {
    if (_inputs is EqualUnmodifiableListView) return _inputs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inputs);
  }

  final List<ApiTxOutput> _outputs;
  @override
  @JsonKey()
  List<ApiTxOutput> get outputs {
    if (_outputs is EqualUnmodifiableListView) return _outputs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outputs);
  }

  @override
  String toString() {
    return 'ApiTransaction(subnetworkId: $subnetworkId, transactionId: $transactionId, hash: $hash, mass: $mass, blockHash: $blockHash, blockTime: $blockTime, isAccepted: $isAccepted, acceptingBlockHash: $acceptingBlockHash, acceptingBlockBlueScore: $acceptingBlockBlueScore, inputs: $inputs, outputs: $outputs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Transaction &&
            (identical(other.subnetworkId, subnetworkId) ||
                other.subnetworkId == subnetworkId) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.mass, mass) || other.mass == mass) &&
            const DeepCollectionEquality()
                .equals(other._blockHash, _blockHash) &&
            (identical(other.blockTime, blockTime) ||
                other.blockTime == blockTime) &&
            (identical(other.isAccepted, isAccepted) ||
                other.isAccepted == isAccepted) &&
            (identical(other.acceptingBlockHash, acceptingBlockHash) ||
                other.acceptingBlockHash == acceptingBlockHash) &&
            (identical(
                    other.acceptingBlockBlueScore, acceptingBlockBlueScore) ||
                other.acceptingBlockBlueScore == acceptingBlockBlueScore) &&
            const DeepCollectionEquality().equals(other._inputs, _inputs) &&
            const DeepCollectionEquality().equals(other._outputs, _outputs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      subnetworkId,
      transactionId,
      hash,
      mass,
      const DeepCollectionEquality().hash(_blockHash),
      blockTime,
      isAccepted,
      acceptingBlockHash,
      acceptingBlockBlueScore,
      const DeepCollectionEquality().hash(_inputs),
      const DeepCollectionEquality().hash(_outputs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionCopyWith<_$_Transaction> get copyWith =>
      __$$_TransactionCopyWithImpl<_$_Transaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionToJson(
      this,
    );
  }
}

abstract class _Transaction extends ApiTransaction {
  factory _Transaction(
      {final String? subnetworkId,
      required final String transactionId,
      final String? hash,
      final BigInt? mass,
      final List<String> blockHash,
      required final int blockTime,
      required final bool isAccepted,
      final String? acceptingBlockHash,
      final int? acceptingBlockBlueScore,
      final List<ApiTxInput> inputs,
      final List<ApiTxOutput> outputs}) = _$_Transaction;
  _Transaction._() : super._();

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$_Transaction.fromJson;

  @override
  String? get subnetworkId;
  @override
  String get transactionId;
  @override
  String? get hash;
  @override
  BigInt? get mass;
  @override
  List<String> get blockHash;
  @override
  int get blockTime;
  @override
  bool get isAccepted;
  @override
  String? get acceptingBlockHash;
  @override
  int? get acceptingBlockBlueScore;
  @override
  List<ApiTxInput> get inputs;
  @override
  List<ApiTxOutput> get outputs;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionCopyWith<_$_Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}
