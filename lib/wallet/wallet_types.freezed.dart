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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$BoxKeysImplCopyWith<$Res> implements $BoxKeysCopyWith<$Res> {
  factory _$$BoxKeysImplCopyWith(
          _$BoxKeysImpl value, $Res Function(_$BoxKeysImpl) then) =
      __$$BoxKeysImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String boxKey, String encryptionKey});
}

/// @nodoc
class __$$BoxKeysImplCopyWithImpl<$Res>
    extends _$BoxKeysCopyWithImpl<$Res, _$BoxKeysImpl>
    implements _$$BoxKeysImplCopyWith<$Res> {
  __$$BoxKeysImplCopyWithImpl(
      _$BoxKeysImpl _value, $Res Function(_$BoxKeysImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boxKey = null,
    Object? encryptionKey = null,
  }) {
    return _then(_$BoxKeysImpl(
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
class _$BoxKeysImpl implements _BoxKeys {
  const _$BoxKeysImpl({required this.boxKey, required this.encryptionKey});

  factory _$BoxKeysImpl.fromJson(Map<String, dynamic> json) =>
      _$$BoxKeysImplFromJson(json);

  @override
  final String boxKey;
  @override
  final String encryptionKey;

  @override
  String toString() {
    return 'BoxKeys(boxKey: $boxKey, encryptionKey: $encryptionKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoxKeysImpl &&
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
  _$$BoxKeysImplCopyWith<_$BoxKeysImpl> get copyWith =>
      __$$BoxKeysImplCopyWithImpl<_$BoxKeysImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BoxKeysImplToJson(
      this,
    );
  }
}

abstract class _BoxKeys implements BoxKeys {
  const factory _BoxKeys(
      {required final String boxKey,
      required final String encryptionKey}) = _$BoxKeysImpl;

  factory _BoxKeys.fromJson(Map<String, dynamic> json) = _$BoxKeysImpl.fromJson;

  @override
  String get boxKey;
  @override
  String get encryptionKey;
  @override
  @JsonKey(ignore: true)
  _$$BoxKeysImplCopyWith<_$BoxKeysImpl> get copyWith =>
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
abstract class _$$BoxInfoImplCopyWith<$Res> implements $BoxInfoCopyWith<$Res> {
  factory _$$BoxInfoImplCopyWith(
          _$BoxInfoImpl value, $Res Function(_$BoxInfoImpl) then) =
      __$$BoxInfoImplCopyWithImpl<$Res>;
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
class __$$BoxInfoImplCopyWithImpl<$Res>
    extends _$BoxInfoCopyWithImpl<$Res, _$BoxInfoImpl>
    implements _$$BoxInfoImplCopyWith<$Res> {
  __$$BoxInfoImplCopyWithImpl(
      _$BoxInfoImpl _value, $Res Function(_$BoxInfoImpl) _then)
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
    return _then(_$BoxInfoImpl(
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
class _$BoxInfoImpl implements _BoxInfo {
  const _$BoxInfoImpl(
      {required this.address,
      required this.balance,
      required this.utxo,
      required this.txIndex,
      required this.tx});

  factory _$BoxInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BoxInfoImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoxInfoImpl &&
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
  _$$BoxInfoImplCopyWith<_$BoxInfoImpl> get copyWith =>
      __$$BoxInfoImplCopyWithImpl<_$BoxInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BoxInfoImplToJson(
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
      required final BoxKeys tx}) = _$BoxInfoImpl;

  factory _BoxInfo.fromJson(Map<String, dynamic> json) = _$BoxInfoImpl.fromJson;

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
  _$$BoxInfoImplCopyWith<_$BoxInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BoxInfoBundle _$BoxInfoBundleFromJson(Map<String, dynamic> json) {
  return _BoxInfoBundle.fromJson(json);
}

/// @nodoc
mixin _$BoxInfoBundle {
  Map<String, BoxInfo> get byNetworkId => throw _privateConstructorUsedError;
  bool get wasMigrated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoxInfoBundleCopyWith<BoxInfoBundle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoxInfoBundleCopyWith<$Res> {
  factory $BoxInfoBundleCopyWith(
          BoxInfoBundle value, $Res Function(BoxInfoBundle) then) =
      _$BoxInfoBundleCopyWithImpl<$Res, BoxInfoBundle>;
  @useResult
  $Res call({Map<String, BoxInfo> byNetworkId, bool wasMigrated});
}

/// @nodoc
class _$BoxInfoBundleCopyWithImpl<$Res, $Val extends BoxInfoBundle>
    implements $BoxInfoBundleCopyWith<$Res> {
  _$BoxInfoBundleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? byNetworkId = null,
    Object? wasMigrated = null,
  }) {
    return _then(_value.copyWith(
      byNetworkId: null == byNetworkId
          ? _value.byNetworkId
          : byNetworkId // ignore: cast_nullable_to_non_nullable
              as Map<String, BoxInfo>,
      wasMigrated: null == wasMigrated
          ? _value.wasMigrated
          : wasMigrated // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BoxInfoBundleImplCopyWith<$Res>
    implements $BoxInfoBundleCopyWith<$Res> {
  factory _$$BoxInfoBundleImplCopyWith(
          _$BoxInfoBundleImpl value, $Res Function(_$BoxInfoBundleImpl) then) =
      __$$BoxInfoBundleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, BoxInfo> byNetworkId, bool wasMigrated});
}

/// @nodoc
class __$$BoxInfoBundleImplCopyWithImpl<$Res>
    extends _$BoxInfoBundleCopyWithImpl<$Res, _$BoxInfoBundleImpl>
    implements _$$BoxInfoBundleImplCopyWith<$Res> {
  __$$BoxInfoBundleImplCopyWithImpl(
      _$BoxInfoBundleImpl _value, $Res Function(_$BoxInfoBundleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? byNetworkId = null,
    Object? wasMigrated = null,
  }) {
    return _then(_$BoxInfoBundleImpl(
      byNetworkId: null == byNetworkId
          ? _value._byNetworkId
          : byNetworkId // ignore: cast_nullable_to_non_nullable
              as Map<String, BoxInfo>,
      wasMigrated: null == wasMigrated
          ? _value.wasMigrated
          : wasMigrated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BoxInfoBundleImpl implements _BoxInfoBundle {
  const _$BoxInfoBundleImpl(
      {final Map<String, BoxInfo> byNetworkId = const {},
      this.wasMigrated = false})
      : _byNetworkId = byNetworkId;

  factory _$BoxInfoBundleImpl.fromJson(Map<String, dynamic> json) =>
      _$$BoxInfoBundleImplFromJson(json);

  final Map<String, BoxInfo> _byNetworkId;
  @override
  @JsonKey()
  Map<String, BoxInfo> get byNetworkId {
    if (_byNetworkId is EqualUnmodifiableMapView) return _byNetworkId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_byNetworkId);
  }

  @override
  @JsonKey()
  final bool wasMigrated;

  @override
  String toString() {
    return 'BoxInfoBundle(byNetworkId: $byNetworkId, wasMigrated: $wasMigrated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoxInfoBundleImpl &&
            const DeepCollectionEquality()
                .equals(other._byNetworkId, _byNetworkId) &&
            (identical(other.wasMigrated, wasMigrated) ||
                other.wasMigrated == wasMigrated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_byNetworkId), wasMigrated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoxInfoBundleImplCopyWith<_$BoxInfoBundleImpl> get copyWith =>
      __$$BoxInfoBundleImplCopyWithImpl<_$BoxInfoBundleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BoxInfoBundleImplToJson(
      this,
    );
  }
}

abstract class _BoxInfoBundle implements BoxInfoBundle {
  const factory _BoxInfoBundle(
      {final Map<String, BoxInfo> byNetworkId,
      final bool wasMigrated}) = _$BoxInfoBundleImpl;

  factory _BoxInfoBundle.fromJson(Map<String, dynamic> json) =
      _$BoxInfoBundleImpl.fromJson;

  @override
  Map<String, BoxInfo> get byNetworkId;
  @override
  bool get wasMigrated;
  @override
  @JsonKey(ignore: true)
  _$$BoxInfoBundleImplCopyWith<_$BoxInfoBundleImpl> get copyWith =>
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
abstract class _$$BoxInfoByNetworkImplCopyWith<$Res>
    implements $BoxInfoByNetworkCopyWith<$Res> {
  factory _$$BoxInfoByNetworkImplCopyWith(_$BoxInfoByNetworkImpl value,
          $Res Function(_$BoxInfoByNetworkImpl) then) =
      __$$BoxInfoByNetworkImplCopyWithImpl<$Res>;
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
class __$$BoxInfoByNetworkImplCopyWithImpl<$Res>
    extends _$BoxInfoByNetworkCopyWithImpl<$Res, _$BoxInfoByNetworkImpl>
    implements _$$BoxInfoByNetworkImplCopyWith<$Res> {
  __$$BoxInfoByNetworkImplCopyWithImpl(_$BoxInfoByNetworkImpl _value,
      $Res Function(_$BoxInfoByNetworkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainnet = null,
    Object? testnet = null,
    Object? devnet = null,
    Object? simnet = null,
  }) {
    return _then(_$BoxInfoByNetworkImpl(
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
class _$BoxInfoByNetworkImpl extends _BoxInfoByNetwork {
  const _$BoxInfoByNetworkImpl(
      {required this.mainnet,
      required this.testnet,
      required this.devnet,
      required this.simnet})
      : super._();

  factory _$BoxInfoByNetworkImpl.fromJson(Map<String, dynamic> json) =>
      _$$BoxInfoByNetworkImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoxInfoByNetworkImpl &&
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
  _$$BoxInfoByNetworkImplCopyWith<_$BoxInfoByNetworkImpl> get copyWith =>
      __$$BoxInfoByNetworkImplCopyWithImpl<_$BoxInfoByNetworkImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BoxInfoByNetworkImplToJson(
      this,
    );
  }
}

abstract class _BoxInfoByNetwork extends BoxInfoByNetwork {
  const factory _BoxInfoByNetwork(
      {required final BoxInfo mainnet,
      required final BoxInfo testnet,
      required final BoxInfo devnet,
      required final BoxInfo simnet}) = _$BoxInfoByNetworkImpl;
  const _BoxInfoByNetwork._() : super._();

  factory _BoxInfoByNetwork.fromJson(Map<String, dynamic> json) =
      _$BoxInfoByNetworkImpl.fromJson;

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
  _$$BoxInfoByNetworkImplCopyWith<_$BoxInfoByNetworkImpl> get copyWith =>
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
    required TResult Function(bool viewOnly) localHdSchnorr,
    required TResult Function(bool viewOnly) localHdEcdsa,
    required TResult Function(String mainPubKey) localHdLegacy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool viewOnly)? localHdSchnorr,
    TResult? Function(bool viewOnly)? localHdEcdsa,
    TResult? Function(String mainPubKey)? localHdLegacy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool viewOnly)? localHdSchnorr,
    TResult Function(bool viewOnly)? localHdEcdsa,
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
abstract class _$$WalletKindLocalHdSchnorrImplCopyWith<$Res> {
  factory _$$WalletKindLocalHdSchnorrImplCopyWith(
          _$WalletKindLocalHdSchnorrImpl value,
          $Res Function(_$WalletKindLocalHdSchnorrImpl) then) =
      __$$WalletKindLocalHdSchnorrImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool viewOnly});
}

/// @nodoc
class __$$WalletKindLocalHdSchnorrImplCopyWithImpl<$Res>
    extends _$WalletKindCopyWithImpl<$Res, _$WalletKindLocalHdSchnorrImpl>
    implements _$$WalletKindLocalHdSchnorrImplCopyWith<$Res> {
  __$$WalletKindLocalHdSchnorrImplCopyWithImpl(
      _$WalletKindLocalHdSchnorrImpl _value,
      $Res Function(_$WalletKindLocalHdSchnorrImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewOnly = null,
  }) {
    return _then(_$WalletKindLocalHdSchnorrImpl(
      viewOnly: null == viewOnly
          ? _value.viewOnly
          : viewOnly // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletKindLocalHdSchnorrImpl extends _WalletKindLocalHdSchnorr {
  const _$WalletKindLocalHdSchnorrImpl(
      {this.viewOnly = false, final String? $type})
      : $type = $type ?? 'localHdSchnorr',
        super._();

  factory _$WalletKindLocalHdSchnorrImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletKindLocalHdSchnorrImplFromJson(json);

  @override
  @JsonKey()
  final bool viewOnly;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WalletKind.localHdSchnorr(viewOnly: $viewOnly)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletKindLocalHdSchnorrImpl &&
            (identical(other.viewOnly, viewOnly) ||
                other.viewOnly == viewOnly));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, viewOnly);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletKindLocalHdSchnorrImplCopyWith<_$WalletKindLocalHdSchnorrImpl>
      get copyWith => __$$WalletKindLocalHdSchnorrImplCopyWithImpl<
          _$WalletKindLocalHdSchnorrImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool viewOnly) localHdSchnorr,
    required TResult Function(bool viewOnly) localHdEcdsa,
    required TResult Function(String mainPubKey) localHdLegacy,
  }) {
    return localHdSchnorr(viewOnly);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool viewOnly)? localHdSchnorr,
    TResult? Function(bool viewOnly)? localHdEcdsa,
    TResult? Function(String mainPubKey)? localHdLegacy,
  }) {
    return localHdSchnorr?.call(viewOnly);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool viewOnly)? localHdSchnorr,
    TResult Function(bool viewOnly)? localHdEcdsa,
    TResult Function(String mainPubKey)? localHdLegacy,
    required TResult orElse(),
  }) {
    if (localHdSchnorr != null) {
      return localHdSchnorr(viewOnly);
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
    return _$$WalletKindLocalHdSchnorrImplToJson(
      this,
    );
  }
}

abstract class _WalletKindLocalHdSchnorr extends WalletKind {
  const factory _WalletKindLocalHdSchnorr({final bool viewOnly}) =
      _$WalletKindLocalHdSchnorrImpl;
  const _WalletKindLocalHdSchnorr._() : super._();

  factory _WalletKindLocalHdSchnorr.fromJson(Map<String, dynamic> json) =
      _$WalletKindLocalHdSchnorrImpl.fromJson;

  bool get viewOnly;
  @JsonKey(ignore: true)
  _$$WalletKindLocalHdSchnorrImplCopyWith<_$WalletKindLocalHdSchnorrImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WalletKindLocalHdEcdsaImplCopyWith<$Res> {
  factory _$$WalletKindLocalHdEcdsaImplCopyWith(
          _$WalletKindLocalHdEcdsaImpl value,
          $Res Function(_$WalletKindLocalHdEcdsaImpl) then) =
      __$$WalletKindLocalHdEcdsaImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool viewOnly});
}

/// @nodoc
class __$$WalletKindLocalHdEcdsaImplCopyWithImpl<$Res>
    extends _$WalletKindCopyWithImpl<$Res, _$WalletKindLocalHdEcdsaImpl>
    implements _$$WalletKindLocalHdEcdsaImplCopyWith<$Res> {
  __$$WalletKindLocalHdEcdsaImplCopyWithImpl(
      _$WalletKindLocalHdEcdsaImpl _value,
      $Res Function(_$WalletKindLocalHdEcdsaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewOnly = null,
  }) {
    return _then(_$WalletKindLocalHdEcdsaImpl(
      viewOnly: null == viewOnly
          ? _value.viewOnly
          : viewOnly // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletKindLocalHdEcdsaImpl extends _WalletKindLocalHdEcdsa {
  const _$WalletKindLocalHdEcdsaImpl(
      {this.viewOnly = false, final String? $type})
      : $type = $type ?? 'localHdEcdsa',
        super._();

  factory _$WalletKindLocalHdEcdsaImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletKindLocalHdEcdsaImplFromJson(json);

  @override
  @JsonKey()
  final bool viewOnly;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WalletKind.localHdEcdsa(viewOnly: $viewOnly)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletKindLocalHdEcdsaImpl &&
            (identical(other.viewOnly, viewOnly) ||
                other.viewOnly == viewOnly));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, viewOnly);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletKindLocalHdEcdsaImplCopyWith<_$WalletKindLocalHdEcdsaImpl>
      get copyWith => __$$WalletKindLocalHdEcdsaImplCopyWithImpl<
          _$WalletKindLocalHdEcdsaImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool viewOnly) localHdSchnorr,
    required TResult Function(bool viewOnly) localHdEcdsa,
    required TResult Function(String mainPubKey) localHdLegacy,
  }) {
    return localHdEcdsa(viewOnly);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool viewOnly)? localHdSchnorr,
    TResult? Function(bool viewOnly)? localHdEcdsa,
    TResult? Function(String mainPubKey)? localHdLegacy,
  }) {
    return localHdEcdsa?.call(viewOnly);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool viewOnly)? localHdSchnorr,
    TResult Function(bool viewOnly)? localHdEcdsa,
    TResult Function(String mainPubKey)? localHdLegacy,
    required TResult orElse(),
  }) {
    if (localHdEcdsa != null) {
      return localHdEcdsa(viewOnly);
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
    return _$$WalletKindLocalHdEcdsaImplToJson(
      this,
    );
  }
}

abstract class _WalletKindLocalHdEcdsa extends WalletKind {
  const factory _WalletKindLocalHdEcdsa({final bool viewOnly}) =
      _$WalletKindLocalHdEcdsaImpl;
  const _WalletKindLocalHdEcdsa._() : super._();

  factory _WalletKindLocalHdEcdsa.fromJson(Map<String, dynamic> json) =
      _$WalletKindLocalHdEcdsaImpl.fromJson;

  bool get viewOnly;
  @JsonKey(ignore: true)
  _$$WalletKindLocalHdEcdsaImplCopyWith<_$WalletKindLocalHdEcdsaImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WalletKindLocalHdLegacyImplCopyWith<$Res> {
  factory _$$WalletKindLocalHdLegacyImplCopyWith(
          _$WalletKindLocalHdLegacyImpl value,
          $Res Function(_$WalletKindLocalHdLegacyImpl) then) =
      __$$WalletKindLocalHdLegacyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String mainPubKey});
}

/// @nodoc
class __$$WalletKindLocalHdLegacyImplCopyWithImpl<$Res>
    extends _$WalletKindCopyWithImpl<$Res, _$WalletKindLocalHdLegacyImpl>
    implements _$$WalletKindLocalHdLegacyImplCopyWith<$Res> {
  __$$WalletKindLocalHdLegacyImplCopyWithImpl(
      _$WalletKindLocalHdLegacyImpl _value,
      $Res Function(_$WalletKindLocalHdLegacyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainPubKey = null,
  }) {
    return _then(_$WalletKindLocalHdLegacyImpl(
      mainPubKey: null == mainPubKey
          ? _value.mainPubKey
          : mainPubKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletKindLocalHdLegacyImpl extends _WalletKindLocalHdLegacy {
  const _$WalletKindLocalHdLegacyImpl(
      {required this.mainPubKey, final String? $type})
      : $type = $type ?? 'localHdLegacy',
        super._();

  factory _$WalletKindLocalHdLegacyImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletKindLocalHdLegacyImplFromJson(json);

  @override
  final String mainPubKey;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WalletKind.localHdLegacy(mainPubKey: $mainPubKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletKindLocalHdLegacyImpl &&
            (identical(other.mainPubKey, mainPubKey) ||
                other.mainPubKey == mainPubKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mainPubKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletKindLocalHdLegacyImplCopyWith<_$WalletKindLocalHdLegacyImpl>
      get copyWith => __$$WalletKindLocalHdLegacyImplCopyWithImpl<
          _$WalletKindLocalHdLegacyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool viewOnly) localHdSchnorr,
    required TResult Function(bool viewOnly) localHdEcdsa,
    required TResult Function(String mainPubKey) localHdLegacy,
  }) {
    return localHdLegacy(mainPubKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool viewOnly)? localHdSchnorr,
    TResult? Function(bool viewOnly)? localHdEcdsa,
    TResult? Function(String mainPubKey)? localHdLegacy,
  }) {
    return localHdLegacy?.call(mainPubKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool viewOnly)? localHdSchnorr,
    TResult Function(bool viewOnly)? localHdEcdsa,
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
    return _$$WalletKindLocalHdLegacyImplToJson(
      this,
    );
  }
}

abstract class _WalletKindLocalHdLegacy extends WalletKind {
  const factory _WalletKindLocalHdLegacy({required final String mainPubKey}) =
      _$WalletKindLocalHdLegacyImpl;
  const _WalletKindLocalHdLegacy._() : super._();

  factory _WalletKindLocalHdLegacy.fromJson(Map<String, dynamic> json) =
      _$WalletKindLocalHdLegacyImpl.fromJson;

  String get mainPubKey;
  @JsonKey(ignore: true)
  _$$WalletKindLocalHdLegacyImplCopyWith<_$WalletKindLocalHdLegacyImpl>
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
  @deprecated
  BoxInfoByNetwork? get boxInfo => throw _privateConstructorUsedError;
  String get mainnetPublicKey =>
      throw _privateConstructorUsedError; // HDPublic key base58 encoded
  bool get usesBip39Passphrase => throw _privateConstructorUsedError;

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
      @deprecated BoxInfoByNetwork? boxInfo,
      String mainnetPublicKey,
      bool usesBip39Passphrase});

  $WalletKindCopyWith<$Res> get kind;
  $BoxInfoByNetworkCopyWith<$Res>? get boxInfo;
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
    Object? boxInfo = freezed,
    Object? mainnetPublicKey = null,
    Object? usesBip39Passphrase = null,
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
      boxInfo: freezed == boxInfo
          ? _value.boxInfo
          : boxInfo // ignore: cast_nullable_to_non_nullable
              as BoxInfoByNetwork?,
      mainnetPublicKey: null == mainnetPublicKey
          ? _value.mainnetPublicKey
          : mainnetPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
      usesBip39Passphrase: null == usesBip39Passphrase
          ? _value.usesBip39Passphrase
          : usesBip39Passphrase // ignore: cast_nullable_to_non_nullable
              as bool,
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
  $BoxInfoByNetworkCopyWith<$Res>? get boxInfo {
    if (_value.boxInfo == null) {
      return null;
    }

    return $BoxInfoByNetworkCopyWith<$Res>(_value.boxInfo!, (value) {
      return _then(_value.copyWith(boxInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WalletInfoImplCopyWith<$Res>
    implements $WalletInfoCopyWith<$Res> {
  factory _$$WalletInfoImplCopyWith(
          _$WalletInfoImpl value, $Res Function(_$WalletInfoImpl) then) =
      __$$WalletInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      WalletKind kind,
      String wid,
      @deprecated BoxInfoByNetwork? boxInfo,
      String mainnetPublicKey,
      bool usesBip39Passphrase});

  @override
  $WalletKindCopyWith<$Res> get kind;
  @override
  $BoxInfoByNetworkCopyWith<$Res>? get boxInfo;
}

/// @nodoc
class __$$WalletInfoImplCopyWithImpl<$Res>
    extends _$WalletInfoCopyWithImpl<$Res, _$WalletInfoImpl>
    implements _$$WalletInfoImplCopyWith<$Res> {
  __$$WalletInfoImplCopyWithImpl(
      _$WalletInfoImpl _value, $Res Function(_$WalletInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? kind = null,
    Object? wid = null,
    Object? boxInfo = freezed,
    Object? mainnetPublicKey = null,
    Object? usesBip39Passphrase = null,
  }) {
    return _then(_$WalletInfoImpl(
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
      boxInfo: freezed == boxInfo
          ? _value.boxInfo
          : boxInfo // ignore: cast_nullable_to_non_nullable
              as BoxInfoByNetwork?,
      mainnetPublicKey: null == mainnetPublicKey
          ? _value.mainnetPublicKey
          : mainnetPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
      usesBip39Passphrase: null == usesBip39Passphrase
          ? _value.usesBip39Passphrase
          : usesBip39Passphrase // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletInfoImpl extends _WalletInfo {
  _$WalletInfoImpl(
      {required this.name,
      this.kind = const WalletKind.localHdSchnorr(),
      required this.wid,
      @deprecated this.boxInfo,
      required this.mainnetPublicKey,
      this.usesBip39Passphrase = false})
      : super._();

  factory _$WalletInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletInfoImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey()
  final WalletKind kind;
  @override
  final String wid;
  @override
  @deprecated
  final BoxInfoByNetwork? boxInfo;
  @override
  final String mainnetPublicKey;
// HDPublic key base58 encoded
  @override
  @JsonKey()
  final bool usesBip39Passphrase;

  @override
  String toString() {
    return 'WalletInfo(name: $name, kind: $kind, wid: $wid, boxInfo: $boxInfo, mainnetPublicKey: $mainnetPublicKey, usesBip39Passphrase: $usesBip39Passphrase)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletInfoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.wid, wid) || other.wid == wid) &&
            (identical(other.boxInfo, boxInfo) || other.boxInfo == boxInfo) &&
            (identical(other.mainnetPublicKey, mainnetPublicKey) ||
                other.mainnetPublicKey == mainnetPublicKey) &&
            (identical(other.usesBip39Passphrase, usesBip39Passphrase) ||
                other.usesBip39Passphrase == usesBip39Passphrase));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, kind, wid, boxInfo,
      mainnetPublicKey, usesBip39Passphrase);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletInfoImplCopyWith<_$WalletInfoImpl> get copyWith =>
      __$$WalletInfoImplCopyWithImpl<_$WalletInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletInfoImplToJson(
      this,
    );
  }
}

abstract class _WalletInfo extends WalletInfo {
  factory _WalletInfo(
      {required final String name,
      final WalletKind kind,
      required final String wid,
      @deprecated final BoxInfoByNetwork? boxInfo,
      required final String mainnetPublicKey,
      final bool usesBip39Passphrase}) = _$WalletInfoImpl;
  _WalletInfo._() : super._();

  factory _WalletInfo.fromJson(Map<String, dynamic> json) =
      _$WalletInfoImpl.fromJson;

  @override
  String get name;
  @override
  WalletKind get kind;
  @override
  String get wid;
  @override
  @deprecated
  BoxInfoByNetwork? get boxInfo;
  @override
  String get mainnetPublicKey;
  @override // HDPublic key base58 encoded
  bool get usesBip39Passphrase;
  @override
  @JsonKey(ignore: true)
  _$$WalletInfoImplCopyWith<_$WalletInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WalletBundle _$WalletBundleFromJson(Map<String, dynamic> json) {
  return _WalletBundle.fromJson(json);
}

/// @nodoc
mixin _$WalletBundle {
  IList<WalletInfo>? get wallets => throw _privateConstructorUsedError;
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
  $Res call({IList<WalletInfo>? wallets, WalletInfo? selected});

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
    Object? wallets = freezed,
    Object? selected = freezed,
  }) {
    return _then(_value.copyWith(
      wallets: freezed == wallets
          ? _value.wallets
          : wallets // ignore: cast_nullable_to_non_nullable
              as IList<WalletInfo>?,
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
abstract class _$$WalletBundleImplCopyWith<$Res>
    implements $WalletBundleCopyWith<$Res> {
  factory _$$WalletBundleImplCopyWith(
          _$WalletBundleImpl value, $Res Function(_$WalletBundleImpl) then) =
      __$$WalletBundleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IList<WalletInfo>? wallets, WalletInfo? selected});

  @override
  $WalletInfoCopyWith<$Res>? get selected;
}

/// @nodoc
class __$$WalletBundleImplCopyWithImpl<$Res>
    extends _$WalletBundleCopyWithImpl<$Res, _$WalletBundleImpl>
    implements _$$WalletBundleImplCopyWith<$Res> {
  __$$WalletBundleImplCopyWithImpl(
      _$WalletBundleImpl _value, $Res Function(_$WalletBundleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wallets = freezed,
    Object? selected = freezed,
  }) {
    return _then(_$WalletBundleImpl(
      wallets: freezed == wallets
          ? _value.wallets
          : wallets // ignore: cast_nullable_to_non_nullable
              as IList<WalletInfo>?,
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as WalletInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletBundleImpl implements _WalletBundle {
  const _$WalletBundleImpl({this.wallets, this.selected});

  factory _$WalletBundleImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletBundleImplFromJson(json);

  @override
  final IList<WalletInfo>? wallets;
  @override
  final WalletInfo? selected;

  @override
  String toString() {
    return 'WalletBundle(wallets: $wallets, selected: $selected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletBundleImpl &&
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
  _$$WalletBundleImplCopyWith<_$WalletBundleImpl> get copyWith =>
      __$$WalletBundleImplCopyWithImpl<_$WalletBundleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletBundleImplToJson(
      this,
    );
  }
}

abstract class _WalletBundle implements WalletBundle {
  const factory _WalletBundle(
      {final IList<WalletInfo>? wallets,
      final WalletInfo? selected}) = _$WalletBundleImpl;

  factory _WalletBundle.fromJson(Map<String, dynamic> json) =
      _$WalletBundleImpl.fromJson;

  @override
  IList<WalletInfo>? get wallets;
  @override
  WalletInfo? get selected;
  @override
  @JsonKey(ignore: true)
  _$$WalletBundleImplCopyWith<_$WalletBundleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WalletData {
  String get name => throw _privateConstructorUsedError;
  WalletKind get kind => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, WalletKind kind, String seed,
            bool usesBip39Passphrase, String? mnemonic, String? password)
        seed,
    required TResult Function(String name, WalletKind kind, String kpub) kpub,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, WalletKind kind, String seed,
            bool usesBip39Passphrase, String? mnemonic, String? password)?
        seed,
    TResult? Function(String name, WalletKind kind, String kpub)? kpub,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, WalletKind kind, String seed,
            bool usesBip39Passphrase, String? mnemonic, String? password)?
        seed,
    TResult Function(String name, WalletKind kind, String kpub)? kpub,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalletDataSeed value) seed,
    required TResult Function(_WalletDataKpub value) kpub,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletDataSeed value)? seed,
    TResult? Function(_WalletDataKpub value)? kpub,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletDataSeed value)? seed,
    TResult Function(_WalletDataKpub value)? kpub,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

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
  $Res call({String name, WalletKind kind});

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
abstract class _$$WalletDataSeedImplCopyWith<$Res>
    implements $WalletDataCopyWith<$Res> {
  factory _$$WalletDataSeedImplCopyWith(_$WalletDataSeedImpl value,
          $Res Function(_$WalletDataSeedImpl) then) =
      __$$WalletDataSeedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      WalletKind kind,
      String seed,
      bool usesBip39Passphrase,
      String? mnemonic,
      String? password});

  @override
  $WalletKindCopyWith<$Res> get kind;
}

/// @nodoc
class __$$WalletDataSeedImplCopyWithImpl<$Res>
    extends _$WalletDataCopyWithImpl<$Res, _$WalletDataSeedImpl>
    implements _$$WalletDataSeedImplCopyWith<$Res> {
  __$$WalletDataSeedImplCopyWithImpl(
      _$WalletDataSeedImpl _value, $Res Function(_$WalletDataSeedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? kind = null,
    Object? seed = null,
    Object? usesBip39Passphrase = null,
    Object? mnemonic = freezed,
    Object? password = freezed,
  }) {
    return _then(_$WalletDataSeedImpl(
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
      usesBip39Passphrase: null == usesBip39Passphrase
          ? _value.usesBip39Passphrase
          : usesBip39Passphrase // ignore: cast_nullable_to_non_nullable
              as bool,
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

class _$WalletDataSeedImpl implements _WalletDataSeed {
  const _$WalletDataSeedImpl(
      {required this.name,
      required this.kind,
      required this.seed,
      required this.usesBip39Passphrase,
      this.mnemonic,
      this.password});

  @override
  final String name;
  @override
  final WalletKind kind;
  @override
  final String seed;
  @override
  final bool usesBip39Passphrase;
  @override
  final String? mnemonic;
  @override
  final String? password;

  @override
  String toString() {
    return 'WalletData.seed(name: $name, kind: $kind, seed: $seed, usesBip39Passphrase: $usesBip39Passphrase, mnemonic: $mnemonic, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletDataSeedImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.seed, seed) || other.seed == seed) &&
            (identical(other.usesBip39Passphrase, usesBip39Passphrase) ||
                other.usesBip39Passphrase == usesBip39Passphrase) &&
            (identical(other.mnemonic, mnemonic) ||
                other.mnemonic == mnemonic) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, kind, seed, usesBip39Passphrase, mnemonic, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletDataSeedImplCopyWith<_$WalletDataSeedImpl> get copyWith =>
      __$$WalletDataSeedImplCopyWithImpl<_$WalletDataSeedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, WalletKind kind, String seed,
            bool usesBip39Passphrase, String? mnemonic, String? password)
        seed,
    required TResult Function(String name, WalletKind kind, String kpub) kpub,
  }) {
    return seed(name, kind, this.seed, usesBip39Passphrase, mnemonic, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, WalletKind kind, String seed,
            bool usesBip39Passphrase, String? mnemonic, String? password)?
        seed,
    TResult? Function(String name, WalletKind kind, String kpub)? kpub,
  }) {
    return seed?.call(
        name, kind, this.seed, usesBip39Passphrase, mnemonic, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, WalletKind kind, String seed,
            bool usesBip39Passphrase, String? mnemonic, String? password)?
        seed,
    TResult Function(String name, WalletKind kind, String kpub)? kpub,
    required TResult orElse(),
  }) {
    if (seed != null) {
      return seed(
          name, kind, this.seed, usesBip39Passphrase, mnemonic, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalletDataSeed value) seed,
    required TResult Function(_WalletDataKpub value) kpub,
  }) {
    return seed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletDataSeed value)? seed,
    TResult? Function(_WalletDataKpub value)? kpub,
  }) {
    return seed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletDataSeed value)? seed,
    TResult Function(_WalletDataKpub value)? kpub,
    required TResult orElse(),
  }) {
    if (seed != null) {
      return seed(this);
    }
    return orElse();
  }
}

abstract class _WalletDataSeed implements WalletData {
  const factory _WalletDataSeed(
      {required final String name,
      required final WalletKind kind,
      required final String seed,
      required final bool usesBip39Passphrase,
      final String? mnemonic,
      final String? password}) = _$WalletDataSeedImpl;

  @override
  String get name;
  @override
  WalletKind get kind;
  String get seed;
  bool get usesBip39Passphrase;
  String? get mnemonic;
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$WalletDataSeedImplCopyWith<_$WalletDataSeedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WalletDataKpubImplCopyWith<$Res>
    implements $WalletDataCopyWith<$Res> {
  factory _$$WalletDataKpubImplCopyWith(_$WalletDataKpubImpl value,
          $Res Function(_$WalletDataKpubImpl) then) =
      __$$WalletDataKpubImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, WalletKind kind, String kpub});

  @override
  $WalletKindCopyWith<$Res> get kind;
}

/// @nodoc
class __$$WalletDataKpubImplCopyWithImpl<$Res>
    extends _$WalletDataCopyWithImpl<$Res, _$WalletDataKpubImpl>
    implements _$$WalletDataKpubImplCopyWith<$Res> {
  __$$WalletDataKpubImplCopyWithImpl(
      _$WalletDataKpubImpl _value, $Res Function(_$WalletDataKpubImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? kind = null,
    Object? kpub = null,
  }) {
    return _then(_$WalletDataKpubImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as WalletKind,
      kpub: null == kpub
          ? _value.kpub
          : kpub // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WalletDataKpubImpl implements _WalletDataKpub {
  const _$WalletDataKpubImpl(
      {required this.name, required this.kind, required this.kpub});

  @override
  final String name;
  @override
  final WalletKind kind;
  @override
  final String kpub;

  @override
  String toString() {
    return 'WalletData.kpub(name: $name, kind: $kind, kpub: $kpub)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletDataKpubImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.kpub, kpub) || other.kpub == kpub));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, kind, kpub);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletDataKpubImplCopyWith<_$WalletDataKpubImpl> get copyWith =>
      __$$WalletDataKpubImplCopyWithImpl<_$WalletDataKpubImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, WalletKind kind, String seed,
            bool usesBip39Passphrase, String? mnemonic, String? password)
        seed,
    required TResult Function(String name, WalletKind kind, String kpub) kpub,
  }) {
    return kpub(name, kind, this.kpub);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, WalletKind kind, String seed,
            bool usesBip39Passphrase, String? mnemonic, String? password)?
        seed,
    TResult? Function(String name, WalletKind kind, String kpub)? kpub,
  }) {
    return kpub?.call(name, kind, this.kpub);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, WalletKind kind, String seed,
            bool usesBip39Passphrase, String? mnemonic, String? password)?
        seed,
    TResult Function(String name, WalletKind kind, String kpub)? kpub,
    required TResult orElse(),
  }) {
    if (kpub != null) {
      return kpub(name, kind, this.kpub);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalletDataSeed value) seed,
    required TResult Function(_WalletDataKpub value) kpub,
  }) {
    return kpub(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletDataSeed value)? seed,
    TResult? Function(_WalletDataKpub value)? kpub,
  }) {
    return kpub?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletDataSeed value)? seed,
    TResult Function(_WalletDataKpub value)? kpub,
    required TResult orElse(),
  }) {
    if (kpub != null) {
      return kpub(this);
    }
    return orElse();
  }
}

abstract class _WalletDataKpub implements WalletData {
  const factory _WalletDataKpub(
      {required final String name,
      required final WalletKind kind,
      required final String kpub}) = _$WalletDataKpubImpl;

  @override
  String get name;
  @override
  WalletKind get kind;
  String get kpub;
  @override
  @JsonKey(ignore: true)
  _$$WalletDataKpubImplCopyWith<_$WalletDataKpubImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
