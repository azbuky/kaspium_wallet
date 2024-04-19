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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$ApiAddressBalanceImplCopyWith<$Res>
    implements $ApiAddressBalanceCopyWith<$Res> {
  factory _$$ApiAddressBalanceImplCopyWith(_$ApiAddressBalanceImpl value,
          $Res Function(_$ApiAddressBalanceImpl) then) =
      __$$ApiAddressBalanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String address, int balance});
}

/// @nodoc
class __$$ApiAddressBalanceImplCopyWithImpl<$Res>
    extends _$ApiAddressBalanceCopyWithImpl<$Res, _$ApiAddressBalanceImpl>
    implements _$$ApiAddressBalanceImplCopyWith<$Res> {
  __$$ApiAddressBalanceImplCopyWithImpl(_$ApiAddressBalanceImpl _value,
      $Res Function(_$ApiAddressBalanceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? balance = null,
  }) {
    return _then(_$ApiAddressBalanceImpl(
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
class _$ApiAddressBalanceImpl implements _ApiAddressBalance {
  const _$ApiAddressBalanceImpl({required this.address, required this.balance});

  factory _$ApiAddressBalanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiAddressBalanceImplFromJson(json);

  @override
  final String address;
  @override
  final int balance;

  @override
  String toString() {
    return 'ApiAddressBalance(address: $address, balance: $balance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiAddressBalanceImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address, balance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiAddressBalanceImplCopyWith<_$ApiAddressBalanceImpl> get copyWith =>
      __$$ApiAddressBalanceImplCopyWithImpl<_$ApiAddressBalanceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiAddressBalanceImplToJson(
      this,
    );
  }
}

abstract class _ApiAddressBalance implements ApiAddressBalance {
  const factory _ApiAddressBalance(
      {required final String address,
      required final int balance}) = _$ApiAddressBalanceImpl;

  factory _ApiAddressBalance.fromJson(Map<String, dynamic> json) =
      _$ApiAddressBalanceImpl.fromJson;

  @override
  String get address;
  @override
  int get balance;
  @override
  @JsonKey(ignore: true)
  _$$ApiAddressBalanceImplCopyWith<_$ApiAddressBalanceImpl> get copyWith =>
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
abstract class _$$ApiUtxoImplCopyWith<$Res> implements $ApiUtxoCopyWith<$Res> {
  factory _$$ApiUtxoImplCopyWith(
          _$ApiUtxoImpl value, $Res Function(_$ApiUtxoImpl) then) =
      __$$ApiUtxoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String address, ApiOutpoint outpoint, ApiUtxoEntry utxoEntry});

  @override
  $ApiOutpointCopyWith<$Res> get outpoint;
  @override
  $ApiUtxoEntryCopyWith<$Res> get utxoEntry;
}

/// @nodoc
class __$$ApiUtxoImplCopyWithImpl<$Res>
    extends _$ApiUtxoCopyWithImpl<$Res, _$ApiUtxoImpl>
    implements _$$ApiUtxoImplCopyWith<$Res> {
  __$$ApiUtxoImplCopyWithImpl(
      _$ApiUtxoImpl _value, $Res Function(_$ApiUtxoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? outpoint = null,
    Object? utxoEntry = null,
  }) {
    return _then(_$ApiUtxoImpl(
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
class _$ApiUtxoImpl implements _ApiUtxo {
  const _$ApiUtxoImpl(
      {required this.address, required this.outpoint, required this.utxoEntry});

  factory _$ApiUtxoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiUtxoImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiUtxoImpl &&
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
  _$$ApiUtxoImplCopyWith<_$ApiUtxoImpl> get copyWith =>
      __$$ApiUtxoImplCopyWithImpl<_$ApiUtxoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiUtxoImplToJson(
      this,
    );
  }
}

abstract class _ApiUtxo implements ApiUtxo {
  const factory _ApiUtxo(
      {required final String address,
      required final ApiOutpoint outpoint,
      required final ApiUtxoEntry utxoEntry}) = _$ApiUtxoImpl;

  factory _ApiUtxo.fromJson(Map<String, dynamic> json) = _$ApiUtxoImpl.fromJson;

  @override
  String get address;
  @override
  ApiOutpoint get outpoint;
  @override
  ApiUtxoEntry get utxoEntry;
  @override
  @JsonKey(ignore: true)
  _$$ApiUtxoImplCopyWith<_$ApiUtxoImpl> get copyWith =>
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
abstract class _$$OutpointImplCopyWith<$Res>
    implements $ApiOutpointCopyWith<$Res> {
  factory _$$OutpointImplCopyWith(
          _$OutpointImpl value, $Res Function(_$OutpointImpl) then) =
      __$$OutpointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String transactionId, int index});
}

/// @nodoc
class __$$OutpointImplCopyWithImpl<$Res>
    extends _$ApiOutpointCopyWithImpl<$Res, _$OutpointImpl>
    implements _$$OutpointImplCopyWith<$Res> {
  __$$OutpointImplCopyWithImpl(
      _$OutpointImpl _value, $Res Function(_$OutpointImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
    Object? index = null,
  }) {
    return _then(_$OutpointImpl(
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
class _$OutpointImpl implements _Outpoint {
  const _$OutpointImpl({required this.transactionId, required this.index});

  factory _$OutpointImpl.fromJson(Map<String, dynamic> json) =>
      _$$OutpointImplFromJson(json);

  @override
  final String transactionId;
  @override
  final int index;

  @override
  String toString() {
    return 'ApiOutpoint(transactionId: $transactionId, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutpointImpl &&
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
  _$$OutpointImplCopyWith<_$OutpointImpl> get copyWith =>
      __$$OutpointImplCopyWithImpl<_$OutpointImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OutpointImplToJson(
      this,
    );
  }
}

abstract class _Outpoint implements ApiOutpoint {
  const factory _Outpoint(
      {required final String transactionId,
      required final int index}) = _$OutpointImpl;

  factory _Outpoint.fromJson(Map<String, dynamic> json) =
      _$OutpointImpl.fromJson;

  @override
  String get transactionId;
  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$OutpointImplCopyWith<_$OutpointImpl> get copyWith =>
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
abstract class _$$ApiUtxoEntryImplCopyWith<$Res>
    implements $ApiUtxoEntryCopyWith<$Res> {
  factory _$$ApiUtxoEntryImplCopyWith(
          _$ApiUtxoEntryImpl value, $Res Function(_$ApiUtxoEntryImpl) then) =
      __$$ApiUtxoEntryImplCopyWithImpl<$Res>;
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
class __$$ApiUtxoEntryImplCopyWithImpl<$Res>
    extends _$ApiUtxoEntryCopyWithImpl<$Res, _$ApiUtxoEntryImpl>
    implements _$$ApiUtxoEntryImplCopyWith<$Res> {
  __$$ApiUtxoEntryImplCopyWithImpl(
      _$ApiUtxoEntryImpl _value, $Res Function(_$ApiUtxoEntryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? scriptPublicKey = null,
    Object? blockDaaScore = null,
    Object? isCoinbase = null,
  }) {
    return _then(_$ApiUtxoEntryImpl(
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
class _$ApiUtxoEntryImpl implements _ApiUtxoEntry {
  const _$ApiUtxoEntryImpl(
      {required this.amount,
      required this.scriptPublicKey,
      required this.blockDaaScore,
      this.isCoinbase = false});

  factory _$ApiUtxoEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiUtxoEntryImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiUtxoEntryImpl &&
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
  _$$ApiUtxoEntryImplCopyWith<_$ApiUtxoEntryImpl> get copyWith =>
      __$$ApiUtxoEntryImplCopyWithImpl<_$ApiUtxoEntryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiUtxoEntryImplToJson(
      this,
    );
  }
}

abstract class _ApiUtxoEntry implements ApiUtxoEntry {
  const factory _ApiUtxoEntry(
      {required final BigInt amount,
      required final ApiScriptPublicKey scriptPublicKey,
      required final BigInt blockDaaScore,
      final bool isCoinbase}) = _$ApiUtxoEntryImpl;

  factory _ApiUtxoEntry.fromJson(Map<String, dynamic> json) =
      _$ApiUtxoEntryImpl.fromJson;

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
  _$$ApiUtxoEntryImplCopyWith<_$ApiUtxoEntryImpl> get copyWith =>
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
abstract class _$$ApiScriptPublicKeyImplCopyWith<$Res>
    implements $ApiScriptPublicKeyCopyWith<$Res> {
  factory _$$ApiScriptPublicKeyImplCopyWith(_$ApiScriptPublicKeyImpl value,
          $Res Function(_$ApiScriptPublicKeyImpl) then) =
      __$$ApiScriptPublicKeyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String scriptPublicKey, int version});
}

/// @nodoc
class __$$ApiScriptPublicKeyImplCopyWithImpl<$Res>
    extends _$ApiScriptPublicKeyCopyWithImpl<$Res, _$ApiScriptPublicKeyImpl>
    implements _$$ApiScriptPublicKeyImplCopyWith<$Res> {
  __$$ApiScriptPublicKeyImplCopyWithImpl(_$ApiScriptPublicKeyImpl _value,
      $Res Function(_$ApiScriptPublicKeyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scriptPublicKey = null,
    Object? version = null,
  }) {
    return _then(_$ApiScriptPublicKeyImpl(
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
class _$ApiScriptPublicKeyImpl implements _ApiScriptPublicKey {
  const _$ApiScriptPublicKeyImpl(
      {required this.scriptPublicKey, this.version = 0});

  factory _$ApiScriptPublicKeyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiScriptPublicKeyImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiScriptPublicKeyImpl &&
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
  _$$ApiScriptPublicKeyImplCopyWith<_$ApiScriptPublicKeyImpl> get copyWith =>
      __$$ApiScriptPublicKeyImplCopyWithImpl<_$ApiScriptPublicKeyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiScriptPublicKeyImplToJson(
      this,
    );
  }
}

abstract class _ApiScriptPublicKey implements ApiScriptPublicKey {
  const factory _ApiScriptPublicKey(
      {required final String scriptPublicKey,
      final int version}) = _$ApiScriptPublicKeyImpl;

  factory _ApiScriptPublicKey.fromJson(Map<String, dynamic> json) =
      _$ApiScriptPublicKeyImpl.fromJson;

  @override
  String get scriptPublicKey;
  @override
  int get version;
  @override
  @JsonKey(ignore: true)
  _$$ApiScriptPublicKeyImplCopyWith<_$ApiScriptPublicKeyImpl> get copyWith =>
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
abstract class _$$ApiTxLinkImplCopyWith<$Res>
    implements $ApiTxLinkCopyWith<$Res> {
  factory _$$ApiTxLinkImplCopyWith(
          _$ApiTxLinkImpl value, $Res Function(_$ApiTxLinkImpl) then) =
      __$$ApiTxLinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? txReceived, String? txSpent});
}

/// @nodoc
class __$$ApiTxLinkImplCopyWithImpl<$Res>
    extends _$ApiTxLinkCopyWithImpl<$Res, _$ApiTxLinkImpl>
    implements _$$ApiTxLinkImplCopyWith<$Res> {
  __$$ApiTxLinkImplCopyWithImpl(
      _$ApiTxLinkImpl _value, $Res Function(_$ApiTxLinkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? txReceived = freezed,
    Object? txSpent = freezed,
  }) {
    return _then(_$ApiTxLinkImpl(
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
class _$ApiTxLinkImpl implements _ApiTxLink {
  const _$ApiTxLinkImpl({this.txReceived, this.txSpent});

  factory _$ApiTxLinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiTxLinkImplFromJson(json);

  @override
  final String? txReceived;
  @override
  final String? txSpent;

  @override
  String toString() {
    return 'ApiTxLink(txReceived: $txReceived, txSpent: $txSpent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiTxLinkImpl &&
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
  _$$ApiTxLinkImplCopyWith<_$ApiTxLinkImpl> get copyWith =>
      __$$ApiTxLinkImplCopyWithImpl<_$ApiTxLinkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiTxLinkImplToJson(
      this,
    );
  }
}

abstract class _ApiTxLink implements ApiTxLink {
  const factory _ApiTxLink({final String? txReceived, final String? txSpent}) =
      _$ApiTxLinkImpl;

  factory _ApiTxLink.fromJson(Map<String, dynamic> json) =
      _$ApiTxLinkImpl.fromJson;

  @override
  String? get txReceived;
  @override
  String? get txSpent;
  @override
  @JsonKey(ignore: true)
  _$$ApiTxLinkImplCopyWith<_$ApiTxLinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiTxId _$ApiTxIdFromJson(Map<String, dynamic> json) {
  return _ApiTxId.fromJson(json);
}

/// @nodoc
mixin _$ApiTxId {
  String get transactionId => throw _privateConstructorUsedError;
  int? get blockTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiTxIdCopyWith<ApiTxId> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiTxIdCopyWith<$Res> {
  factory $ApiTxIdCopyWith(ApiTxId value, $Res Function(ApiTxId) then) =
      _$ApiTxIdCopyWithImpl<$Res, ApiTxId>;
  @useResult
  $Res call({String transactionId, int? blockTime});
}

/// @nodoc
class _$ApiTxIdCopyWithImpl<$Res, $Val extends ApiTxId>
    implements $ApiTxIdCopyWith<$Res> {
  _$ApiTxIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
    Object? blockTime = freezed,
  }) {
    return _then(_value.copyWith(
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      blockTime: freezed == blockTime
          ? _value.blockTime
          : blockTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiTxIdImplCopyWith<$Res> implements $ApiTxIdCopyWith<$Res> {
  factory _$$ApiTxIdImplCopyWith(
          _$ApiTxIdImpl value, $Res Function(_$ApiTxIdImpl) then) =
      __$$ApiTxIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String transactionId, int? blockTime});
}

/// @nodoc
class __$$ApiTxIdImplCopyWithImpl<$Res>
    extends _$ApiTxIdCopyWithImpl<$Res, _$ApiTxIdImpl>
    implements _$$ApiTxIdImplCopyWith<$Res> {
  __$$ApiTxIdImplCopyWithImpl(
      _$ApiTxIdImpl _value, $Res Function(_$ApiTxIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
    Object? blockTime = freezed,
  }) {
    return _then(_$ApiTxIdImpl(
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      blockTime: freezed == blockTime
          ? _value.blockTime
          : blockTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ApiTxIdImpl implements _ApiTxId {
  const _$ApiTxIdImpl({required this.transactionId, this.blockTime});

  factory _$ApiTxIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiTxIdImplFromJson(json);

  @override
  final String transactionId;
  @override
  final int? blockTime;

  @override
  String toString() {
    return 'ApiTxId(transactionId: $transactionId, blockTime: $blockTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiTxIdImpl &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.blockTime, blockTime) ||
                other.blockTime == blockTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, transactionId, blockTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiTxIdImplCopyWith<_$ApiTxIdImpl> get copyWith =>
      __$$ApiTxIdImplCopyWithImpl<_$ApiTxIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiTxIdImplToJson(
      this,
    );
  }
}

abstract class _ApiTxId implements ApiTxId {
  const factory _ApiTxId(
      {required final String transactionId,
      final int? blockTime}) = _$ApiTxIdImpl;

  factory _ApiTxId.fromJson(Map<String, dynamic> json) = _$ApiTxIdImpl.fromJson;

  @override
  String get transactionId;
  @override
  int? get blockTime;
  @override
  @JsonKey(ignore: true)
  _$$ApiTxIdImplCopyWith<_$ApiTxIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiTxInput _$ApiTxInputFromJson(Map<String, dynamic> json) {
  return _ApiTxInput.fromJson(json);
}

/// @nodoc
mixin _$ApiTxInput {
  String get transactionId => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  String get previousOutpointHash => throw _privateConstructorUsedError;
  BigInt get previousOutpointIndex => throw _privateConstructorUsedError;
  String get signatureScript => throw _privateConstructorUsedError;
  BigInt get sigOpCount => throw _privateConstructorUsedError; // new fields
  String? get previousOutpointAddress => throw _privateConstructorUsedError;
  int? get previousOutpointAmount => throw _privateConstructorUsedError;

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
      {String transactionId,
      int index,
      String previousOutpointHash,
      BigInt previousOutpointIndex,
      String signatureScript,
      BigInt sigOpCount,
      String? previousOutpointAddress,
      int? previousOutpointAmount});
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
    Object? transactionId = null,
    Object? index = null,
    Object? previousOutpointHash = null,
    Object? previousOutpointIndex = null,
    Object? signatureScript = null,
    Object? sigOpCount = null,
    Object? previousOutpointAddress = freezed,
    Object? previousOutpointAmount = freezed,
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
      previousOutpointAddress: freezed == previousOutpointAddress
          ? _value.previousOutpointAddress
          : previousOutpointAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      previousOutpointAmount: freezed == previousOutpointAmount
          ? _value.previousOutpointAmount
          : previousOutpointAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiTxInputImplCopyWith<$Res>
    implements $ApiTxInputCopyWith<$Res> {
  factory _$$ApiTxInputImplCopyWith(
          _$ApiTxInputImpl value, $Res Function(_$ApiTxInputImpl) then) =
      __$$ApiTxInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String transactionId,
      int index,
      String previousOutpointHash,
      BigInt previousOutpointIndex,
      String signatureScript,
      BigInt sigOpCount,
      String? previousOutpointAddress,
      int? previousOutpointAmount});
}

/// @nodoc
class __$$ApiTxInputImplCopyWithImpl<$Res>
    extends _$ApiTxInputCopyWithImpl<$Res, _$ApiTxInputImpl>
    implements _$$ApiTxInputImplCopyWith<$Res> {
  __$$ApiTxInputImplCopyWithImpl(
      _$ApiTxInputImpl _value, $Res Function(_$ApiTxInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
    Object? index = null,
    Object? previousOutpointHash = null,
    Object? previousOutpointIndex = null,
    Object? signatureScript = null,
    Object? sigOpCount = null,
    Object? previousOutpointAddress = freezed,
    Object? previousOutpointAmount = freezed,
  }) {
    return _then(_$ApiTxInputImpl(
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
      previousOutpointAddress: freezed == previousOutpointAddress
          ? _value.previousOutpointAddress
          : previousOutpointAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      previousOutpointAmount: freezed == previousOutpointAmount
          ? _value.previousOutpointAmount
          : previousOutpointAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ApiTxInputImpl implements _ApiTxInput {
  const _$ApiTxInputImpl(
      {required this.transactionId,
      required this.index,
      required this.previousOutpointHash,
      required this.previousOutpointIndex,
      required this.signatureScript,
      required this.sigOpCount,
      this.previousOutpointAddress,
      this.previousOutpointAmount});

  factory _$ApiTxInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiTxInputImplFromJson(json);

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
// new fields
  @override
  final String? previousOutpointAddress;
  @override
  final int? previousOutpointAmount;

  @override
  String toString() {
    return 'ApiTxInput(transactionId: $transactionId, index: $index, previousOutpointHash: $previousOutpointHash, previousOutpointIndex: $previousOutpointIndex, signatureScript: $signatureScript, sigOpCount: $sigOpCount, previousOutpointAddress: $previousOutpointAddress, previousOutpointAmount: $previousOutpointAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiTxInputImpl &&
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
                other.sigOpCount == sigOpCount) &&
            (identical(
                    other.previousOutpointAddress, previousOutpointAddress) ||
                other.previousOutpointAddress == previousOutpointAddress) &&
            (identical(other.previousOutpointAmount, previousOutpointAmount) ||
                other.previousOutpointAmount == previousOutpointAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      transactionId,
      index,
      previousOutpointHash,
      previousOutpointIndex,
      signatureScript,
      sigOpCount,
      previousOutpointAddress,
      previousOutpointAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiTxInputImplCopyWith<_$ApiTxInputImpl> get copyWith =>
      __$$ApiTxInputImplCopyWithImpl<_$ApiTxInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiTxInputImplToJson(
      this,
    );
  }
}

abstract class _ApiTxInput implements ApiTxInput {
  const factory _ApiTxInput(
      {required final String transactionId,
      required final int index,
      required final String previousOutpointHash,
      required final BigInt previousOutpointIndex,
      required final String signatureScript,
      required final BigInt sigOpCount,
      final String? previousOutpointAddress,
      final int? previousOutpointAmount}) = _$ApiTxInputImpl;

  factory _ApiTxInput.fromJson(Map<String, dynamic> json) =
      _$ApiTxInputImpl.fromJson;

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
  @override // new fields
  String? get previousOutpointAddress;
  @override
  int? get previousOutpointAmount;
  @override
  @JsonKey(ignore: true)
  _$$ApiTxInputImplCopyWith<_$ApiTxInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiTxOutput _$ApiTxOutputFromJson(Map<String, dynamic> json) {
  return _ApiTxOutput.fromJson(json);
}

/// @nodoc
mixin _$ApiTxOutput {
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
      {String transactionId,
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
    Object? transactionId = null,
    Object? index = null,
    Object? amount = null,
    Object? scriptPublicKey = null,
    Object? scriptPublicKeyAddress = null,
    Object? scriptPublicKeyType = null,
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
abstract class _$$ApiTxOutputImplCopyWith<$Res>
    implements $ApiTxOutputCopyWith<$Res> {
  factory _$$ApiTxOutputImplCopyWith(
          _$ApiTxOutputImpl value, $Res Function(_$ApiTxOutputImpl) then) =
      __$$ApiTxOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String transactionId,
      int index,
      int amount,
      String scriptPublicKey,
      String scriptPublicKeyAddress,
      String scriptPublicKeyType});
}

/// @nodoc
class __$$ApiTxOutputImplCopyWithImpl<$Res>
    extends _$ApiTxOutputCopyWithImpl<$Res, _$ApiTxOutputImpl>
    implements _$$ApiTxOutputImplCopyWith<$Res> {
  __$$ApiTxOutputImplCopyWithImpl(
      _$ApiTxOutputImpl _value, $Res Function(_$ApiTxOutputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
    Object? index = null,
    Object? amount = null,
    Object? scriptPublicKey = null,
    Object? scriptPublicKeyAddress = null,
    Object? scriptPublicKeyType = null,
  }) {
    return _then(_$ApiTxOutputImpl(
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
class _$ApiTxOutputImpl implements _ApiTxOutput {
  const _$ApiTxOutputImpl(
      {required this.transactionId,
      required this.index,
      required this.amount,
      required this.scriptPublicKey,
      required this.scriptPublicKeyAddress,
      required this.scriptPublicKeyType});

  factory _$ApiTxOutputImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiTxOutputImplFromJson(json);

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
    return 'ApiTxOutput(transactionId: $transactionId, index: $index, amount: $amount, scriptPublicKey: $scriptPublicKey, scriptPublicKeyAddress: $scriptPublicKeyAddress, scriptPublicKeyType: $scriptPublicKeyType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiTxOutputImpl &&
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
  int get hashCode => Object.hash(runtimeType, transactionId, index, amount,
      scriptPublicKey, scriptPublicKeyAddress, scriptPublicKeyType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiTxOutputImplCopyWith<_$ApiTxOutputImpl> get copyWith =>
      __$$ApiTxOutputImplCopyWithImpl<_$ApiTxOutputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiTxOutputImplToJson(
      this,
    );
  }
}

abstract class _ApiTxOutput implements ApiTxOutput {
  const factory _ApiTxOutput(
      {required final String transactionId,
      required final int index,
      required final int amount,
      required final String scriptPublicKey,
      required final String scriptPublicKeyAddress,
      required final String scriptPublicKeyType}) = _$ApiTxOutputImpl;

  factory _ApiTxOutput.fromJson(Map<String, dynamic> json) =
      _$ApiTxOutputImpl.fromJson;

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
  _$$ApiTxOutputImplCopyWith<_$ApiTxOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiTransaction _$ApiTransactionFromJson(Map<String, dynamic> json) {
  return _Transaction.fromJson(json);
}

/// @nodoc
mixin _$ApiTransaction {
  String? get subnetworkId => throw _privateConstructorUsedError;
  String get transactionId => throw _privateConstructorUsedError;
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
abstract class _$$TransactionImplCopyWith<$Res>
    implements $ApiTransactionCopyWith<$Res> {
  factory _$$TransactionImplCopyWith(
          _$TransactionImpl value, $Res Function(_$TransactionImpl) then) =
      __$$TransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? subnetworkId,
      String transactionId,
      List<String> blockHash,
      int blockTime,
      bool isAccepted,
      String? acceptingBlockHash,
      int? acceptingBlockBlueScore,
      List<ApiTxInput> inputs,
      List<ApiTxOutput> outputs});
}

/// @nodoc
class __$$TransactionImplCopyWithImpl<$Res>
    extends _$ApiTransactionCopyWithImpl<$Res, _$TransactionImpl>
    implements _$$TransactionImplCopyWith<$Res> {
  __$$TransactionImplCopyWithImpl(
      _$TransactionImpl _value, $Res Function(_$TransactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subnetworkId = freezed,
    Object? transactionId = null,
    Object? blockHash = null,
    Object? blockTime = null,
    Object? isAccepted = null,
    Object? acceptingBlockHash = freezed,
    Object? acceptingBlockBlueScore = freezed,
    Object? inputs = null,
    Object? outputs = null,
  }) {
    return _then(_$TransactionImpl(
      subnetworkId: freezed == subnetworkId
          ? _value.subnetworkId
          : subnetworkId // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$TransactionImpl extends _Transaction {
  _$TransactionImpl(
      {this.subnetworkId,
      required this.transactionId,
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

  factory _$TransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionImplFromJson(json);

  @override
  final String? subnetworkId;
  @override
  final String transactionId;
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
    return 'ApiTransaction(subnetworkId: $subnetworkId, transactionId: $transactionId, blockHash: $blockHash, blockTime: $blockTime, isAccepted: $isAccepted, acceptingBlockHash: $acceptingBlockHash, acceptingBlockBlueScore: $acceptingBlockBlueScore, inputs: $inputs, outputs: $outputs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionImpl &&
            (identical(other.subnetworkId, subnetworkId) ||
                other.subnetworkId == subnetworkId) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
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
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      __$$TransactionImplCopyWithImpl<_$TransactionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionImplToJson(
      this,
    );
  }
}

abstract class _Transaction extends ApiTransaction {
  factory _Transaction(
      {final String? subnetworkId,
      required final String transactionId,
      final List<String> blockHash,
      required final int blockTime,
      required final bool isAccepted,
      final String? acceptingBlockHash,
      final int? acceptingBlockBlueScore,
      final List<ApiTxInput> inputs,
      final List<ApiTxOutput> outputs}) = _$TransactionImpl;
  _Transaction._() : super._();

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$TransactionImpl.fromJson;

  @override
  String? get subnetworkId;
  @override
  String get transactionId;
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
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
