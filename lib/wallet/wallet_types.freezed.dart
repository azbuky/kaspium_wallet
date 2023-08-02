// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BoxKeys _$BoxKeysFromJson(Map<String, dynamic> json) {
  return _BoxKeys.fromJson(json);
}

/// @nodoc
mixin _$BoxKeys {
  String get boxKey => throw _privateConstructorUsedError;
  String get encryptionKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoxKeysCopyWith<BoxKeys> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoxKeysCopyWith<$Res> {
  factory $BoxKeysCopyWith(BoxKeys value, $Res Function(BoxKeys) then) =
      _$BoxKeysCopyWithImpl<$Res, BoxKeys>;
  @useResult
  $Res call({String boxKey, String encryptionKey});
}

/// @nodoc
class _$BoxKeysCopyWithImpl<$Res, $Val extends BoxKeys>
    implements $BoxKeysCopyWith<$Res> {
  _$BoxKeysCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boxKey = null,
    Object? encryptionKey = null,
  }) {
    return _then(_value.copyWith(
      boxKey: null == boxKey
          ? _value.boxKey
          : boxKey // ignore: cast_nullable_to_non_nullable
              as String,
      encryptionKey: null == encryptionKey
          ? _value.encryptionKey
          : encryptionKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BoxKeysCopyWith<$Res> implements $BoxKeysCopyWith<$Res> {
  factory _$$_BoxKeysCopyWith(
          _$_BoxKeys value, $Res Function(_$_BoxKeys) then) =
      __$$_BoxKeysCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String boxKey, String encryptionKey});
}

/// @nodoc
class __$$_BoxKeysCopyWithImpl<$Res>
    extends _$BoxKeysCopyWithImpl<$Res, _$_BoxKeys>
    implements _$$_BoxKeysCopyWith<$Res> {
  __$$_BoxKeysCopyWithImpl(_$_BoxKeys _value, $Res Function(_$_BoxKeys) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boxKey = null,
    Object? encryptionKey = null,
  }) {
    return _then(_$_BoxKeys(
      boxKey: null == boxKey
          ? _value.boxKey
          : boxKey // ignore: cast_nullable_to_non_nullable
              as String,
      encryptionKey: null == encryptionKey
          ? _value.encryptionKey
          : encryptionKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BoxKeys implements _BoxKeys {
  const _$_BoxKeys({required this.boxKey, required this.encryptionKey});

  factory _$_BoxKeys.fromJson(Map<String, dynamic> json) =>
      _$$_BoxKeysFromJson(json);

  @override
  final String boxKey;
  @override
  final String encryptionKey;

  @override
  String toString() {
    return 'BoxKeys(boxKey: $boxKey, encryptionKey: $encryptionKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BoxKeys &&
            (identical(other.boxKey, boxKey) || other.boxKey == boxKey) &&
            (identical(other.encryptionKey, encryptionKey) ||
                other.encryptionKey == encryptionKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, boxKey, encryptionKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BoxKeysCopyWith<_$_BoxKeys> get copyWith =>
      __$$_BoxKeysCopyWithImpl<_$_BoxKeys>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BoxKeysToJson(
      this,
    );
  }
}

abstract class _BoxKeys implements BoxKeys {
  const factory _BoxKeys(
      {required final String boxKey,
      required final String encryptionKey}) = _$_BoxKeys;

  factory _BoxKeys.fromJson(Map<String, dynamic> json) = _$_BoxKeys.fromJson;

  @override
  String get boxKey;
  @override
  String get encryptionKey;
  @override
  @JsonKey(ignore: true)
  _$$_BoxKeysCopyWith<_$_BoxKeys> get copyWith =>
      throw _privateConstructorUsedError;
}

BoxInfo _$BoxInfoFromJson(Map<String, dynamic> json) {
  return _BoxInfo.fromJson(json);
}

/// @nodoc
mixin _$BoxInfo {
  BoxKeys get address => throw _privateConstructorUsedError;
  BoxKeys get balance => throw _privateConstructorUsedError;
  BoxKeys get utxo => throw _privateConstructorUsedError;
  BoxKeys get txIndex => throw _privateConstructorUsedError;
  BoxKeys get tx => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoxInfoCopyWith<BoxInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoxInfoCopyWith<$Res> {
  factory $BoxInfoCopyWith(BoxInfo value, $Res Function(BoxInfo) then) =
      _$BoxInfoCopyWithImpl<$Res, BoxInfo>;
  @useResult
  $Res call(
      {BoxKeys address,
      BoxKeys balance,
      BoxKeys utxo,
      BoxKeys txIndex,
      BoxKeys tx});

  $BoxKeysCopyWith<$Res> get address;
  $BoxKeysCopyWith<$Res> get balance;
  $BoxKeysCopyWith<$Res> get utxo;
  $BoxKeysCopyWith<$Res> get txIndex;
  $BoxKeysCopyWith<$Res> get tx;
}

/// @nodoc
class _$BoxInfoCopyWithImpl<$Res, $Val extends BoxInfo>
    implements $BoxInfoCopyWith<$Res> {
  _$BoxInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? balance = null,
    Object? utxo = null,
    Object? txIndex = null,
    Object? tx = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as BoxKeys,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as BoxKeys,
      utxo: null == utxo
          ? _value.utxo
          : utxo // ignore: cast_nullable_to_non_nullable
              as BoxKeys,
      txIndex: null == txIndex
          ? _value.txIndex
          : txIndex // ignore: cast_nullable_to_non_nullable
              as BoxKeys,
      tx: null == tx
          ? _value.tx
          : tx // ignore: cast_nullable_to_non_nullable
              as BoxKeys,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BoxKeysCopyWith<$Res> get address {
    return $BoxKeysCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BoxKeysCopyWith<$Res> get balance {
    return $BoxKeysCopyWith<$Res>(_value.balance, (value) {
      return _then(_value.copyWith(balance: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BoxKeysCopyWith<$Res> get utxo {
    return $BoxKeysCopyWith<$Res>(_value.utxo, (value) {
      return _then(_value.copyWith(utxo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BoxKeysCopyWith<$Res> get txIndex {
    return $BoxKeysCopyWith<$Res>(_value.txIndex, (value) {
      return _then(_value.copyWith(txIndex: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BoxKeysCopyWith<$Res> get tx {
    return $BoxKeysCopyWith<$Res>(_value.tx, (value) {
      return _then(_value.copyWith(tx: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BoxInfoCopyWith<$Res> implements $BoxInfoCopyWith<$Res> {
  factory _$$_BoxInfoCopyWith(
          _$_BoxInfo value, $Res Function(_$_BoxInfo) then) =
      __$$_BoxInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BoxKeys address,
      BoxKeys balance,
      BoxKeys utxo,
      BoxKeys txIndex,
      BoxKeys tx});

  @override
  $BoxKeysCopyWith<$Res> get address;
  @override
  $BoxKeysCopyWith<$Res> get balance;
  @override
  $BoxKeysCopyWith<$Res> get utxo;
  @override
  $BoxKeysCopyWith<$Res> get txIndex;
  @override
  $BoxKeysCopyWith<$Res> get tx;
}

/// @nodoc
class __$$_BoxInfoCopyWithImpl<$Res>
    extends _$BoxInfoCopyWithImpl<$Res, _$_BoxInfo>
    implements _$$_BoxInfoCopyWith<$Res> {
  __$$_BoxInfoCopyWithImpl(_$_BoxInfo _value, $Res Function(_$_BoxInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? balance = null,
    Object? utxo = null,
    Object? txIndex = null,
    Object? tx = null,
  }) {
    return _then(_$_BoxInfo(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as BoxKeys,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as BoxKeys,
      utxo: null == utxo
          ? _value.utxo
          : utxo // ignore: cast_nullable_to_non_nullable
              as BoxKeys,
      txIndex: null == txIndex
          ? _value.txIndex
          : txIndex // ignore: cast_nullable_to_non_nullable
              as BoxKeys,
      tx: null == tx
          ? _value.tx
          : tx // ignore: cast_nullable_to_non_nullable
              as BoxKeys,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BoxInfo implements _BoxInfo {
  const _$_BoxInfo(
      {required this.address,
      required this.balance,
      required this.utxo,
      required this.txIndex,
      required this.tx});

  factory _$_BoxInfo.fromJson(Map<String, dynamic> json) =>
      _$$_BoxInfoFromJson(json);

  @override
  final BoxKeys address;
  @override
  final BoxKeys balance;
  @override
  final BoxKeys utxo;
  @override
  final BoxKeys txIndex;
  @override
  final BoxKeys tx;

  @override
  String toString() {
    return 'BoxInfo(address: $address, balance: $balance, utxo: $utxo, txIndex: $txIndex, tx: $tx)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BoxInfo &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.utxo, utxo) || other.utxo == utxo) &&
            (identical(other.txIndex, txIndex) || other.txIndex == txIndex) &&
            (identical(other.tx, tx) || other.tx == tx));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, address, balance, utxo, txIndex, tx);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BoxInfoCopyWith<_$_BoxInfo> get copyWith =>
      __$$_BoxInfoCopyWithImpl<_$_BoxInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BoxInfoToJson(
      this,
    );
  }
}

abstract class _BoxInfo implements BoxInfo {
  const factory _BoxInfo(
      {required final BoxKeys address,
      required final BoxKeys balance,
      required final BoxKeys utxo,
      required final BoxKeys txIndex,
      required final BoxKeys tx}) = _$_BoxInfo;

  factory _BoxInfo.fromJson(Map<String, dynamic> json) = _$_BoxInfo.fromJson;

  @override
  BoxKeys get address;
  @override
  BoxKeys get balance;
  @override
  BoxKeys get utxo;
  @override
  BoxKeys get txIndex;
  @override
  BoxKeys get tx;
  @override
  @JsonKey(ignore: true)
  _$$_BoxInfoCopyWith<_$_BoxInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

BoxInfoByNetwork _$BoxInfoByNetworkFromJson(Map<String, dynamic> json) {
  return _BoxInfoByNetwork.fromJson(json);
}

/// @nodoc
mixin _$BoxInfoByNetwork {
  BoxInfo get mainnet => throw _privateConstructorUsedError;
  BoxInfo get testnet => throw _privateConstructorUsedError;
  BoxInfo get devnet => throw _privateConstructorUsedError;
  BoxInfo get simnet => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoxInfoByNetworkCopyWith<BoxInfoByNetwork> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoxInfoByNetworkCopyWith<$Res> {
  factory $BoxInfoByNetworkCopyWith(
          BoxInfoByNetwork value, $Res Function(BoxInfoByNetwork) then) =
      _$BoxInfoByNetworkCopyWithImpl<$Res, BoxInfoByNetwork>;
  @useResult
  $Res call({BoxInfo mainnet, BoxInfo testnet, BoxInfo devnet, BoxInfo simnet});

  $BoxInfoCopyWith<$Res> get mainnet;
  $BoxInfoCopyWith<$Res> get testnet;
  $BoxInfoCopyWith<$Res> get devnet;
  $BoxInfoCopyWith<$Res> get simnet;
}

/// @nodoc
class _$BoxInfoByNetworkCopyWithImpl<$Res, $Val extends BoxInfoByNetwork>
    implements $BoxInfoByNetworkCopyWith<$Res> {
  _$BoxInfoByNetworkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainnet = null,
    Object? testnet = null,
    Object? devnet = null,
    Object? simnet = null,
  }) {
    return _then(_value.copyWith(
      mainnet: null == mainnet
          ? _value.mainnet
          : mainnet // ignore: cast_nullable_to_non_nullable
              as BoxInfo,
      testnet: null == testnet
          ? _value.testnet
          : testnet // ignore: cast_nullable_to_non_nullable
              as BoxInfo,
      devnet: null == devnet
          ? _value.devnet
          : devnet // ignore: cast_nullable_to_non_nullable
              as BoxInfo,
      simnet: null == simnet
          ? _value.simnet
          : simnet // ignore: cast_nullable_to_non_nullable
              as BoxInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BoxInfoCopyWith<$Res> get mainnet {
    return $BoxInfoCopyWith<$Res>(_value.mainnet, (value) {
      return _then(_value.copyWith(mainnet: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BoxInfoCopyWith<$Res> get testnet {
    return $BoxInfoCopyWith<$Res>(_value.testnet, (value) {
      return _then(_value.copyWith(testnet: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BoxInfoCopyWith<$Res> get devnet {
    return $BoxInfoCopyWith<$Res>(_value.devnet, (value) {
      return _then(_value.copyWith(devnet: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BoxInfoCopyWith<$Res> get simnet {
    return $BoxInfoCopyWith<$Res>(_value.simnet, (value) {
      return _then(_value.copyWith(simnet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BoxInfoByNetworkCopyWith<$Res>
    implements $BoxInfoByNetworkCopyWith<$Res> {
  factory _$$_BoxInfoByNetworkCopyWith(
          _$_BoxInfoByNetwork value, $Res Function(_$_BoxInfoByNetwork) then) =
      __$$_BoxInfoByNetworkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BoxInfo mainnet, BoxInfo testnet, BoxInfo devnet, BoxInfo simnet});

  @override
  $BoxInfoCopyWith<$Res> get mainnet;
  @override
  $BoxInfoCopyWith<$Res> get testnet;
  @override
  $BoxInfoCopyWith<$Res> get devnet;
  @override
  $BoxInfoCopyWith<$Res> get simnet;
}

/// @nodoc
class __$$_BoxInfoByNetworkCopyWithImpl<$Res>
    extends _$BoxInfoByNetworkCopyWithImpl<$Res, _$_BoxInfoByNetwork>
    implements _$$_BoxInfoByNetworkCopyWith<$Res> {
  __$$_BoxInfoByNetworkCopyWithImpl(
      _$_BoxInfoByNetwork _value, $Res Function(_$_BoxInfoByNetwork) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainnet = null,
    Object? testnet = null,
    Object? devnet = null,
    Object? simnet = null,
  }) {
    return _then(_$_BoxInfoByNetwork(
      mainnet: null == mainnet
          ? _value.mainnet
          : mainnet // ignore: cast_nullable_to_non_nullable
              as BoxInfo,
      testnet: null == testnet
          ? _value.testnet
          : testnet // ignore: cast_nullable_to_non_nullable
              as BoxInfo,
      devnet: null == devnet
          ? _value.devnet
          : devnet // ignore: cast_nullable_to_non_nullable
              as BoxInfo,
      simnet: null == simnet
          ? _value.simnet
          : simnet // ignore: cast_nullable_to_non_nullable
              as BoxInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BoxInfoByNetwork extends _BoxInfoByNetwork {
  const _$_BoxInfoByNetwork(
      {required this.mainnet,
      required this.testnet,
      required this.devnet,
      required this.simnet})
      : super._();

  factory _$_BoxInfoByNetwork.fromJson(Map<String, dynamic> json) =>
      _$$_BoxInfoByNetworkFromJson(json);

  @override
  final BoxInfo mainnet;
  @override
  final BoxInfo testnet;
  @override
  final BoxInfo devnet;
  @override
  final BoxInfo simnet;

  @override
  String toString() {
    return 'BoxInfoByNetwork(mainnet: $mainnet, testnet: $testnet, devnet: $devnet, simnet: $simnet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BoxInfoByNetwork &&
            (identical(other.mainnet, mainnet) || other.mainnet == mainnet) &&
            (identical(other.testnet, testnet) || other.testnet == testnet) &&
            (identical(other.devnet, devnet) || other.devnet == devnet) &&
            (identical(other.simnet, simnet) || other.simnet == simnet));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, mainnet, testnet, devnet, simnet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BoxInfoByNetworkCopyWith<_$_BoxInfoByNetwork> get copyWith =>
      __$$_BoxInfoByNetworkCopyWithImpl<_$_BoxInfoByNetwork>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BoxInfoByNetworkToJson(
      this,
    );
  }
}

abstract class _BoxInfoByNetwork extends BoxInfoByNetwork {
  const factory _BoxInfoByNetwork(
      {required final BoxInfo mainnet,
      required final BoxInfo testnet,
      required final BoxInfo devnet,
      required final BoxInfo simnet}) = _$_BoxInfoByNetwork;
  const _BoxInfoByNetwork._() : super._();

  factory _BoxInfoByNetwork.fromJson(Map<String, dynamic> json) =
      _$_BoxInfoByNetwork.fromJson;

  @override
  BoxInfo get mainnet;
  @override
  BoxInfo get testnet;
  @override
  BoxInfo get devnet;
  @override
  BoxInfo get simnet;
  @override
  @JsonKey(ignore: true)
  _$$_BoxInfoByNetworkCopyWith<_$_BoxInfoByNetwork> get copyWith =>
      throw _privateConstructorUsedError;
}

WalletKind _$WalletKindFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'localHdSchnorr':
      return _WalletKindLocalHdSchnorr.fromJson(json);
    case 'localHdEcdsa':
      return _WalletKindLocalHdEcdsa.fromJson(json);
    case 'localHdLegacy':
      return _WalletKindLocalHdLegacy.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'WalletKind',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$WalletKind {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() localHdSchnorr,
    required TResult Function() localHdEcdsa,
    required TResult Function(String mainPubKey) localHdLegacy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? localHdSchnorr,
    TResult? Function()? localHdEcdsa,
    TResult? Function(String mainPubKey)? localHdLegacy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? localHdSchnorr,
    TResult Function()? localHdEcdsa,
    TResult Function(String mainPubKey)? localHdLegacy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalletKindLocalHdSchnorr value) localHdSchnorr,
    required TResult Function(_WalletKindLocalHdEcdsa value) localHdEcdsa,
    required TResult Function(_WalletKindLocalHdLegacy value) localHdLegacy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletKindLocalHdSchnorr value)? localHdSchnorr,
    TResult? Function(_WalletKindLocalHdEcdsa value)? localHdEcdsa,
    TResult? Function(_WalletKindLocalHdLegacy value)? localHdLegacy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletKindLocalHdSchnorr value)? localHdSchnorr,
    TResult Function(_WalletKindLocalHdEcdsa value)? localHdEcdsa,
    TResult Function(_WalletKindLocalHdLegacy value)? localHdLegacy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletKindCopyWith<$Res> {
  factory $WalletKindCopyWith(
          WalletKind value, $Res Function(WalletKind) then) =
      _$WalletKindCopyWithImpl<$Res, WalletKind>;
}

/// @nodoc
class _$WalletKindCopyWithImpl<$Res, $Val extends WalletKind>
    implements $WalletKindCopyWith<$Res> {
  _$WalletKindCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_WalletKindLocalHdSchnorrCopyWith<$Res> {
  factory _$$_WalletKindLocalHdSchnorrCopyWith(
          _$_WalletKindLocalHdSchnorr value,
          $Res Function(_$_WalletKindLocalHdSchnorr) then) =
      __$$_WalletKindLocalHdSchnorrCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WalletKindLocalHdSchnorrCopyWithImpl<$Res>
    extends _$WalletKindCopyWithImpl<$Res, _$_WalletKindLocalHdSchnorr>
    implements _$$_WalletKindLocalHdSchnorrCopyWith<$Res> {
  __$$_WalletKindLocalHdSchnorrCopyWithImpl(_$_WalletKindLocalHdSchnorr _value,
      $Res Function(_$_WalletKindLocalHdSchnorr) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_WalletKindLocalHdSchnorr extends _WalletKindLocalHdSchnorr {
  const _$_WalletKindLocalHdSchnorr({final String? $type})
      : $type = $type ?? 'localHdSchnorr',
        super._();

  factory _$_WalletKindLocalHdSchnorr.fromJson(Map<String, dynamic> json) =>
      _$$_WalletKindLocalHdSchnorrFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WalletKind.localHdSchnorr()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalletKindLocalHdSchnorr);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() localHdSchnorr,
    required TResult Function() localHdEcdsa,
    required TResult Function(String mainPubKey) localHdLegacy,
  }) {
    return localHdSchnorr();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? localHdSchnorr,
    TResult? Function()? localHdEcdsa,
    TResult? Function(String mainPubKey)? localHdLegacy,
  }) {
    return localHdSchnorr?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? localHdSchnorr,
    TResult Function()? localHdEcdsa,
    TResult Function(String mainPubKey)? localHdLegacy,
    required TResult orElse(),
  }) {
    if (localHdSchnorr != null) {
      return localHdSchnorr();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalletKindLocalHdSchnorr value) localHdSchnorr,
    required TResult Function(_WalletKindLocalHdEcdsa value) localHdEcdsa,
    required TResult Function(_WalletKindLocalHdLegacy value) localHdLegacy,
  }) {
    return localHdSchnorr(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletKindLocalHdSchnorr value)? localHdSchnorr,
    TResult? Function(_WalletKindLocalHdEcdsa value)? localHdEcdsa,
    TResult? Function(_WalletKindLocalHdLegacy value)? localHdLegacy,
  }) {
    return localHdSchnorr?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletKindLocalHdSchnorr value)? localHdSchnorr,
    TResult Function(_WalletKindLocalHdEcdsa value)? localHdEcdsa,
    TResult Function(_WalletKindLocalHdLegacy value)? localHdLegacy,
    required TResult orElse(),
  }) {
    if (localHdSchnorr != null) {
      return localHdSchnorr(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalletKindLocalHdSchnorrToJson(
      this,
    );
  }
}

abstract class _WalletKindLocalHdSchnorr extends WalletKind {
  const factory _WalletKindLocalHdSchnorr() = _$_WalletKindLocalHdSchnorr;
  const _WalletKindLocalHdSchnorr._() : super._();

  factory _WalletKindLocalHdSchnorr.fromJson(Map<String, dynamic> json) =
      _$_WalletKindLocalHdSchnorr.fromJson;
}

/// @nodoc
abstract class _$$_WalletKindLocalHdEcdsaCopyWith<$Res> {
  factory _$$_WalletKindLocalHdEcdsaCopyWith(_$_WalletKindLocalHdEcdsa value,
          $Res Function(_$_WalletKindLocalHdEcdsa) then) =
      __$$_WalletKindLocalHdEcdsaCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WalletKindLocalHdEcdsaCopyWithImpl<$Res>
    extends _$WalletKindCopyWithImpl<$Res, _$_WalletKindLocalHdEcdsa>
    implements _$$_WalletKindLocalHdEcdsaCopyWith<$Res> {
  __$$_WalletKindLocalHdEcdsaCopyWithImpl(_$_WalletKindLocalHdEcdsa _value,
      $Res Function(_$_WalletKindLocalHdEcdsa) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_WalletKindLocalHdEcdsa extends _WalletKindLocalHdEcdsa {
  const _$_WalletKindLocalHdEcdsa({final String? $type})
      : $type = $type ?? 'localHdEcdsa',
        super._();

  factory _$_WalletKindLocalHdEcdsa.fromJson(Map<String, dynamic> json) =>
      _$$_WalletKindLocalHdEcdsaFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WalletKind.localHdEcdsa()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalletKindLocalHdEcdsa);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() localHdSchnorr,
    required TResult Function() localHdEcdsa,
    required TResult Function(String mainPubKey) localHdLegacy,
  }) {
    return localHdEcdsa();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? localHdSchnorr,
    TResult? Function()? localHdEcdsa,
    TResult? Function(String mainPubKey)? localHdLegacy,
  }) {
    return localHdEcdsa?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? localHdSchnorr,
    TResult Function()? localHdEcdsa,
    TResult Function(String mainPubKey)? localHdLegacy,
    required TResult orElse(),
  }) {
    if (localHdEcdsa != null) {
      return localHdEcdsa();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalletKindLocalHdSchnorr value) localHdSchnorr,
    required TResult Function(_WalletKindLocalHdEcdsa value) localHdEcdsa,
    required TResult Function(_WalletKindLocalHdLegacy value) localHdLegacy,
  }) {
    return localHdEcdsa(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletKindLocalHdSchnorr value)? localHdSchnorr,
    TResult? Function(_WalletKindLocalHdEcdsa value)? localHdEcdsa,
    TResult? Function(_WalletKindLocalHdLegacy value)? localHdLegacy,
  }) {
    return localHdEcdsa?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletKindLocalHdSchnorr value)? localHdSchnorr,
    TResult Function(_WalletKindLocalHdEcdsa value)? localHdEcdsa,
    TResult Function(_WalletKindLocalHdLegacy value)? localHdLegacy,
    required TResult orElse(),
  }) {
    if (localHdEcdsa != null) {
      return localHdEcdsa(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalletKindLocalHdEcdsaToJson(
      this,
    );
  }
}

abstract class _WalletKindLocalHdEcdsa extends WalletKind {
  const factory _WalletKindLocalHdEcdsa() = _$_WalletKindLocalHdEcdsa;
  const _WalletKindLocalHdEcdsa._() : super._();

  factory _WalletKindLocalHdEcdsa.fromJson(Map<String, dynamic> json) =
      _$_WalletKindLocalHdEcdsa.fromJson;
}

/// @nodoc
abstract class _$$_WalletKindLocalHdLegacyCopyWith<$Res> {
  factory _$$_WalletKindLocalHdLegacyCopyWith(_$_WalletKindLocalHdLegacy value,
          $Res Function(_$_WalletKindLocalHdLegacy) then) =
      __$$_WalletKindLocalHdLegacyCopyWithImpl<$Res>;
  @useResult
  $Res call({String mainPubKey});
}

/// @nodoc
class __$$_WalletKindLocalHdLegacyCopyWithImpl<$Res>
    extends _$WalletKindCopyWithImpl<$Res, _$_WalletKindLocalHdLegacy>
    implements _$$_WalletKindLocalHdLegacyCopyWith<$Res> {
  __$$_WalletKindLocalHdLegacyCopyWithImpl(_$_WalletKindLocalHdLegacy _value,
      $Res Function(_$_WalletKindLocalHdLegacy) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainPubKey = null,
  }) {
    return _then(_$_WalletKindLocalHdLegacy(
      mainPubKey: null == mainPubKey
          ? _value.mainPubKey
          : mainPubKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WalletKindLocalHdLegacy extends _WalletKindLocalHdLegacy {
  const _$_WalletKindLocalHdLegacy(
      {required this.mainPubKey, final String? $type})
      : $type = $type ?? 'localHdLegacy',
        super._();

  factory _$_WalletKindLocalHdLegacy.fromJson(Map<String, dynamic> json) =>
      _$$_WalletKindLocalHdLegacyFromJson(json);

  @override
  final String mainPubKey;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WalletKind.localHdLegacy(mainPubKey: $mainPubKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalletKindLocalHdLegacy &&
            (identical(other.mainPubKey, mainPubKey) ||
                other.mainPubKey == mainPubKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mainPubKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WalletKindLocalHdLegacyCopyWith<_$_WalletKindLocalHdLegacy>
      get copyWith =>
          __$$_WalletKindLocalHdLegacyCopyWithImpl<_$_WalletKindLocalHdLegacy>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() localHdSchnorr,
    required TResult Function() localHdEcdsa,
    required TResult Function(String mainPubKey) localHdLegacy,
  }) {
    return localHdLegacy(mainPubKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? localHdSchnorr,
    TResult? Function()? localHdEcdsa,
    TResult? Function(String mainPubKey)? localHdLegacy,
  }) {
    return localHdLegacy?.call(mainPubKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? localHdSchnorr,
    TResult Function()? localHdEcdsa,
    TResult Function(String mainPubKey)? localHdLegacy,
    required TResult orElse(),
  }) {
    if (localHdLegacy != null) {
      return localHdLegacy(mainPubKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalletKindLocalHdSchnorr value) localHdSchnorr,
    required TResult Function(_WalletKindLocalHdEcdsa value) localHdEcdsa,
    required TResult Function(_WalletKindLocalHdLegacy value) localHdLegacy,
  }) {
    return localHdLegacy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletKindLocalHdSchnorr value)? localHdSchnorr,
    TResult? Function(_WalletKindLocalHdEcdsa value)? localHdEcdsa,
    TResult? Function(_WalletKindLocalHdLegacy value)? localHdLegacy,
  }) {
    return localHdLegacy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletKindLocalHdSchnorr value)? localHdSchnorr,
    TResult Function(_WalletKindLocalHdEcdsa value)? localHdEcdsa,
    TResult Function(_WalletKindLocalHdLegacy value)? localHdLegacy,
    required TResult orElse(),
  }) {
    if (localHdLegacy != null) {
      return localHdLegacy(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalletKindLocalHdLegacyToJson(
      this,
    );
  }
}

abstract class _WalletKindLocalHdLegacy extends WalletKind {
  const factory _WalletKindLocalHdLegacy({required final String mainPubKey}) =
      _$_WalletKindLocalHdLegacy;
  const _WalletKindLocalHdLegacy._() : super._();

  factory _WalletKindLocalHdLegacy.fromJson(Map<String, dynamic> json) =
      _$_WalletKindLocalHdLegacy.fromJson;

  String get mainPubKey;
  @JsonKey(ignore: true)
  _$$_WalletKindLocalHdLegacyCopyWith<_$_WalletKindLocalHdLegacy>
      get copyWith => throw _privateConstructorUsedError;
}

WalletInfo _$WalletInfoFromJson(Map<String, dynamic> json) {
  return _WalletInfo.fromJson(json);
}

/// @nodoc
mixin _$WalletInfo {
  String get name => throw _privateConstructorUsedError;
  WalletKind get kind => throw _privateConstructorUsedError;
  String get wid => throw _privateConstructorUsedError;
  BoxInfoByNetwork get boxInfo =>
      throw _privateConstructorUsedError; // HDPublic key base58 encoded
  String get mainnetPublicKey => throw _privateConstructorUsedError;
  String get testnetPublicKey => throw _privateConstructorUsedError;
  String get simnetPublicKey => throw _privateConstructorUsedError;
  String get devnetPublicKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletInfoCopyWith<WalletInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletInfoCopyWith<$Res> {
  factory $WalletInfoCopyWith(
          WalletInfo value, $Res Function(WalletInfo) then) =
      _$WalletInfoCopyWithImpl<$Res, WalletInfo>;
  @useResult
  $Res call(
      {String name,
      WalletKind kind,
      String wid,
      BoxInfoByNetwork boxInfo,
      String mainnetPublicKey,
      String testnetPublicKey,
      String simnetPublicKey,
      String devnetPublicKey});

  $WalletKindCopyWith<$Res> get kind;
  $BoxInfoByNetworkCopyWith<$Res> get boxInfo;
}

/// @nodoc
class _$WalletInfoCopyWithImpl<$Res, $Val extends WalletInfo>
    implements $WalletInfoCopyWith<$Res> {
  _$WalletInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? kind = null,
    Object? wid = null,
    Object? boxInfo = null,
    Object? mainnetPublicKey = null,
    Object? testnetPublicKey = null,
    Object? simnetPublicKey = null,
    Object? devnetPublicKey = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as WalletKind,
      wid: null == wid
          ? _value.wid
          : wid // ignore: cast_nullable_to_non_nullable
              as String,
      boxInfo: null == boxInfo
          ? _value.boxInfo
          : boxInfo // ignore: cast_nullable_to_non_nullable
              as BoxInfoByNetwork,
      mainnetPublicKey: null == mainnetPublicKey
          ? _value.mainnetPublicKey
          : mainnetPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
      testnetPublicKey: null == testnetPublicKey
          ? _value.testnetPublicKey
          : testnetPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
      simnetPublicKey: null == simnetPublicKey
          ? _value.simnetPublicKey
          : simnetPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
      devnetPublicKey: null == devnetPublicKey
          ? _value.devnetPublicKey
          : devnetPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WalletKindCopyWith<$Res> get kind {
    return $WalletKindCopyWith<$Res>(_value.kind, (value) {
      return _then(_value.copyWith(kind: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BoxInfoByNetworkCopyWith<$Res> get boxInfo {
    return $BoxInfoByNetworkCopyWith<$Res>(_value.boxInfo, (value) {
      return _then(_value.copyWith(boxInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WalletInfoCopyWith<$Res>
    implements $WalletInfoCopyWith<$Res> {
  factory _$$_WalletInfoCopyWith(
          _$_WalletInfo value, $Res Function(_$_WalletInfo) then) =
      __$$_WalletInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      WalletKind kind,
      String wid,
      BoxInfoByNetwork boxInfo,
      String mainnetPublicKey,
      String testnetPublicKey,
      String simnetPublicKey,
      String devnetPublicKey});

  @override
  $WalletKindCopyWith<$Res> get kind;
  @override
  $BoxInfoByNetworkCopyWith<$Res> get boxInfo;
}

/// @nodoc
class __$$_WalletInfoCopyWithImpl<$Res>
    extends _$WalletInfoCopyWithImpl<$Res, _$_WalletInfo>
    implements _$$_WalletInfoCopyWith<$Res> {
  __$$_WalletInfoCopyWithImpl(
      _$_WalletInfo _value, $Res Function(_$_WalletInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? kind = null,
    Object? wid = null,
    Object? boxInfo = null,
    Object? mainnetPublicKey = null,
    Object? testnetPublicKey = null,
    Object? simnetPublicKey = null,
    Object? devnetPublicKey = null,
  }) {
    return _then(_$_WalletInfo(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as WalletKind,
      wid: null == wid
          ? _value.wid
          : wid // ignore: cast_nullable_to_non_nullable
              as String,
      boxInfo: null == boxInfo
          ? _value.boxInfo
          : boxInfo // ignore: cast_nullable_to_non_nullable
              as BoxInfoByNetwork,
      mainnetPublicKey: null == mainnetPublicKey
          ? _value.mainnetPublicKey
          : mainnetPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
      testnetPublicKey: null == testnetPublicKey
          ? _value.testnetPublicKey
          : testnetPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
      simnetPublicKey: null == simnetPublicKey
          ? _value.simnetPublicKey
          : simnetPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
      devnetPublicKey: null == devnetPublicKey
          ? _value.devnetPublicKey
          : devnetPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WalletInfo extends _WalletInfo {
  const _$_WalletInfo(
      {required this.name,
      this.kind = const WalletKind.localHdSchnorr(),
      required this.wid,
      required this.boxInfo,
      required this.mainnetPublicKey,
      required this.testnetPublicKey,
      required this.simnetPublicKey,
      required this.devnetPublicKey})
      : super._();

  factory _$_WalletInfo.fromJson(Map<String, dynamic> json) =>
      _$$_WalletInfoFromJson(json);

  @override
  final String name;
  @override
  @JsonKey()
  final WalletKind kind;
  @override
  final String wid;
  @override
  final BoxInfoByNetwork boxInfo;
// HDPublic key base58 encoded
  @override
  final String mainnetPublicKey;
  @override
  final String testnetPublicKey;
  @override
  final String simnetPublicKey;
  @override
  final String devnetPublicKey;

  @override
  String toString() {
    return 'WalletInfo(name: $name, kind: $kind, wid: $wid, boxInfo: $boxInfo, mainnetPublicKey: $mainnetPublicKey, testnetPublicKey: $testnetPublicKey, simnetPublicKey: $simnetPublicKey, devnetPublicKey: $devnetPublicKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalletInfo &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.wid, wid) || other.wid == wid) &&
            (identical(other.boxInfo, boxInfo) || other.boxInfo == boxInfo) &&
            (identical(other.mainnetPublicKey, mainnetPublicKey) ||
                other.mainnetPublicKey == mainnetPublicKey) &&
            (identical(other.testnetPublicKey, testnetPublicKey) ||
                other.testnetPublicKey == testnetPublicKey) &&
            (identical(other.simnetPublicKey, simnetPublicKey) ||
                other.simnetPublicKey == simnetPublicKey) &&
            (identical(other.devnetPublicKey, devnetPublicKey) ||
                other.devnetPublicKey == devnetPublicKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, kind, wid, boxInfo,
      mainnetPublicKey, testnetPublicKey, simnetPublicKey, devnetPublicKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WalletInfoCopyWith<_$_WalletInfo> get copyWith =>
      __$$_WalletInfoCopyWithImpl<_$_WalletInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalletInfoToJson(
      this,
    );
  }
}

abstract class _WalletInfo extends WalletInfo {
  const factory _WalletInfo(
      {required final String name,
      final WalletKind kind,
      required final String wid,
      required final BoxInfoByNetwork boxInfo,
      required final String mainnetPublicKey,
      required final String testnetPublicKey,
      required final String simnetPublicKey,
      required final String devnetPublicKey}) = _$_WalletInfo;
  const _WalletInfo._() : super._();

  factory _WalletInfo.fromJson(Map<String, dynamic> json) =
      _$_WalletInfo.fromJson;

  @override
  String get name;
  @override
  WalletKind get kind;
  @override
  String get wid;
  @override
  BoxInfoByNetwork get boxInfo;
  @override // HDPublic key base58 encoded
  String get mainnetPublicKey;
  @override
  String get testnetPublicKey;
  @override
  String get simnetPublicKey;
  @override
  String get devnetPublicKey;
  @override
  @JsonKey(ignore: true)
  _$$_WalletInfoCopyWith<_$_WalletInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

WalletBundle _$WalletBundleFromJson(Map<String, dynamic> json) {
  return _WalletBundle.fromJson(json);
}

/// @nodoc
mixin _$WalletBundle {
  IList<WalletInfo> get wallets => throw _privateConstructorUsedError;
  WalletInfo? get selected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletBundleCopyWith<WalletBundle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletBundleCopyWith<$Res> {
  factory $WalletBundleCopyWith(
          WalletBundle value, $Res Function(WalletBundle) then) =
      _$WalletBundleCopyWithImpl<$Res, WalletBundle>;
  @useResult
  $Res call({IList<WalletInfo> wallets, WalletInfo? selected});

  $WalletInfoCopyWith<$Res>? get selected;
}

/// @nodoc
class _$WalletBundleCopyWithImpl<$Res, $Val extends WalletBundle>
    implements $WalletBundleCopyWith<$Res> {
  _$WalletBundleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wallets = null,
    Object? selected = freezed,
  }) {
    return _then(_value.copyWith(
      wallets: null == wallets
          ? _value.wallets
          : wallets // ignore: cast_nullable_to_non_nullable
              as IList<WalletInfo>,
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as WalletInfo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WalletInfoCopyWith<$Res>? get selected {
    if (_value.selected == null) {
      return null;
    }

    return $WalletInfoCopyWith<$Res>(_value.selected!, (value) {
      return _then(_value.copyWith(selected: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WalletBundleCopyWith<$Res>
    implements $WalletBundleCopyWith<$Res> {
  factory _$$_WalletBundleCopyWith(
          _$_WalletBundle value, $Res Function(_$_WalletBundle) then) =
      __$$_WalletBundleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IList<WalletInfo> wallets, WalletInfo? selected});

  @override
  $WalletInfoCopyWith<$Res>? get selected;
}

/// @nodoc
class __$$_WalletBundleCopyWithImpl<$Res>
    extends _$WalletBundleCopyWithImpl<$Res, _$_WalletBundle>
    implements _$$_WalletBundleCopyWith<$Res> {
  __$$_WalletBundleCopyWithImpl(
      _$_WalletBundle _value, $Res Function(_$_WalletBundle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wallets = null,
    Object? selected = freezed,
  }) {
    return _then(_$_WalletBundle(
      wallets: null == wallets
          ? _value.wallets
          : wallets // ignore: cast_nullable_to_non_nullable
              as IList<WalletInfo>,
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as WalletInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WalletBundle implements _WalletBundle {
  const _$_WalletBundle(
      {this.wallets = const IListConst<WalletInfo>([]), this.selected});

  factory _$_WalletBundle.fromJson(Map<String, dynamic> json) =>
      _$$_WalletBundleFromJson(json);

  @override
  @JsonKey()
  final IList<WalletInfo> wallets;
  @override
  final WalletInfo? selected;

  @override
  String toString() {
    return 'WalletBundle(wallets: $wallets, selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalletBundle &&
            const DeepCollectionEquality().equals(other.wallets, wallets) &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(wallets), selected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WalletBundleCopyWith<_$_WalletBundle> get copyWith =>
      __$$_WalletBundleCopyWithImpl<_$_WalletBundle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalletBundleToJson(
      this,
    );
  }
}

abstract class _WalletBundle implements WalletBundle {
  const factory _WalletBundle(
      {final IList<WalletInfo> wallets,
      final WalletInfo? selected}) = _$_WalletBundle;

  factory _WalletBundle.fromJson(Map<String, dynamic> json) =
      _$_WalletBundle.fromJson;

  @override
  IList<WalletInfo> get wallets;
  @override
  WalletInfo? get selected;
  @override
  @JsonKey(ignore: true)
  _$$_WalletBundleCopyWith<_$_WalletBundle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WalletData {
  String get name => throw _privateConstructorUsedError;
  WalletKind get kind => throw _privateConstructorUsedError;
  String get seed => throw _privateConstructorUsedError;
  String? get mnemonic => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WalletDataCopyWith<WalletData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletDataCopyWith<$Res> {
  factory $WalletDataCopyWith(
          WalletData value, $Res Function(WalletData) then) =
      _$WalletDataCopyWithImpl<$Res, WalletData>;
  @useResult
  $Res call(
      {String name,
      WalletKind kind,
      String seed,
      String? mnemonic,
      String? password});

  $WalletKindCopyWith<$Res> get kind;
}

/// @nodoc
class _$WalletDataCopyWithImpl<$Res, $Val extends WalletData>
    implements $WalletDataCopyWith<$Res> {
  _$WalletDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? kind = null,
    Object? seed = null,
    Object? mnemonic = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as WalletKind,
      seed: null == seed
          ? _value.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as String,
      mnemonic: freezed == mnemonic
          ? _value.mnemonic
          : mnemonic // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WalletKindCopyWith<$Res> get kind {
    return $WalletKindCopyWith<$Res>(_value.kind, (value) {
      return _then(_value.copyWith(kind: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WalletDataCopyWith<$Res>
    implements $WalletDataCopyWith<$Res> {
  factory _$$_WalletDataCopyWith(
          _$_WalletData value, $Res Function(_$_WalletData) then) =
      __$$_WalletDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      WalletKind kind,
      String seed,
      String? mnemonic,
      String? password});

  @override
  $WalletKindCopyWith<$Res> get kind;
}

/// @nodoc
class __$$_WalletDataCopyWithImpl<$Res>
    extends _$WalletDataCopyWithImpl<$Res, _$_WalletData>
    implements _$$_WalletDataCopyWith<$Res> {
  __$$_WalletDataCopyWithImpl(
      _$_WalletData _value, $Res Function(_$_WalletData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? kind = null,
    Object? seed = null,
    Object? mnemonic = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_WalletData(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as WalletKind,
      seed: null == seed
          ? _value.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as String,
      mnemonic: freezed == mnemonic
          ? _value.mnemonic
          : mnemonic // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_WalletData implements _WalletData {
  const _$_WalletData(
      {required this.name,
      required this.kind,
      required this.seed,
      this.mnemonic,
      this.password});

  @override
  final String name;
  @override
  final WalletKind kind;
  @override
  final String seed;
  @override
  final String? mnemonic;
  @override
  final String? password;

  @override
  String toString() {
    return 'WalletData(name: $name, kind: $kind, seed: $seed, mnemonic: $mnemonic, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalletData &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.seed, seed) || other.seed == seed) &&
            (identical(other.mnemonic, mnemonic) ||
                other.mnemonic == mnemonic) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, kind, seed, mnemonic, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WalletDataCopyWith<_$_WalletData> get copyWith =>
      __$$_WalletDataCopyWithImpl<_$_WalletData>(this, _$identity);
}

abstract class _WalletData implements WalletData {
  const factory _WalletData(
      {required final String name,
      required final WalletKind kind,
      required final String seed,
      final String? mnemonic,
      final String? password}) = _$_WalletData;

  @override
  String get name;
  @override
  WalletKind get kind;
  @override
  String get seed;
  @override
  String? get mnemonic;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$_WalletDataCopyWith<_$_WalletData> get copyWith =>
      throw _privateConstructorUsedError;
}
