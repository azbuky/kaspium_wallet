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

/// @nodoc
mixin _$UtxoChanges {
  List<Utxo> get removed => throw _privateConstructorUsedError;
  List<Utxo> get added => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UtxoChangesCopyWith<UtxoChanges> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UtxoChangesCopyWith<$Res> {
  factory $UtxoChangesCopyWith(
          UtxoChanges value, $Res Function(UtxoChanges) then) =
      _$UtxoChangesCopyWithImpl<$Res, UtxoChanges>;
  @useResult
  $Res call({List<Utxo> removed, List<Utxo> added});
}

/// @nodoc
class _$UtxoChangesCopyWithImpl<$Res, $Val extends UtxoChanges>
    implements $UtxoChangesCopyWith<$Res> {
  _$UtxoChangesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? removed = null,
    Object? added = null,
  }) {
    return _then(_value.copyWith(
      removed: null == removed
          ? _value.removed
          : removed // ignore: cast_nullable_to_non_nullable
              as List<Utxo>,
      added: null == added
          ? _value.added
          : added // ignore: cast_nullable_to_non_nullable
              as List<Utxo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UtxoChangesImplCopyWith<$Res>
    implements $UtxoChangesCopyWith<$Res> {
  factory _$$UtxoChangesImplCopyWith(
          _$UtxoChangesImpl value, $Res Function(_$UtxoChangesImpl) then) =
      __$$UtxoChangesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Utxo> removed, List<Utxo> added});
}

/// @nodoc
class __$$UtxoChangesImplCopyWithImpl<$Res>
    extends _$UtxoChangesCopyWithImpl<$Res, _$UtxoChangesImpl>
    implements _$$UtxoChangesImplCopyWith<$Res> {
  __$$UtxoChangesImplCopyWithImpl(
      _$UtxoChangesImpl _value, $Res Function(_$UtxoChangesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? removed = null,
    Object? added = null,
  }) {
    return _then(_$UtxoChangesImpl(
      removed: null == removed
          ? _value._removed
          : removed // ignore: cast_nullable_to_non_nullable
              as List<Utxo>,
      added: null == added
          ? _value._added
          : added // ignore: cast_nullable_to_non_nullable
              as List<Utxo>,
    ));
  }
}

/// @nodoc

class _$UtxoChangesImpl implements _UtxoChanges {
  const _$UtxoChangesImpl(
      {required final List<Utxo> removed, required final List<Utxo> added})
      : _removed = removed,
        _added = added;

  final List<Utxo> _removed;
  @override
  List<Utxo> get removed {
    if (_removed is EqualUnmodifiableListView) return _removed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_removed);
  }

  final List<Utxo> _added;
  @override
  List<Utxo> get added {
    if (_added is EqualUnmodifiableListView) return _added;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_added);
  }

  @override
  String toString() {
    return 'UtxoChanges(removed: $removed, added: $added)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UtxoChangesImpl &&
            const DeepCollectionEquality().equals(other._removed, _removed) &&
            const DeepCollectionEquality().equals(other._added, _added));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_removed),
      const DeepCollectionEquality().hash(_added));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UtxoChangesImplCopyWith<_$UtxoChangesImpl> get copyWith =>
      __$$UtxoChangesImplCopyWithImpl<_$UtxoChangesImpl>(this, _$identity);
}

abstract class _UtxoChanges implements UtxoChanges {
  const factory _UtxoChanges(
      {required final List<Utxo> removed,
      required final List<Utxo> added}) = _$UtxoChangesImpl;

  @override
  List<Utxo> get removed;
  @override
  List<Utxo> get added;
  @override
  @JsonKey(ignore: true)
  _$$UtxoChangesImplCopyWith<_$UtxoChangesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Utxo _$UtxoFromJson(Map<String, dynamic> json) {
  return _Utxo.fromJson(json);
}

/// @nodoc
mixin _$Utxo {
  String get address => throw _privateConstructorUsedError;
  Outpoint get outpoint => throw _privateConstructorUsedError;
  UtxoEntry get utxoEntry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UtxoCopyWith<Utxo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UtxoCopyWith<$Res> {
  factory $UtxoCopyWith(Utxo value, $Res Function(Utxo) then) =
      _$UtxoCopyWithImpl<$Res, Utxo>;
  @useResult
  $Res call({String address, Outpoint outpoint, UtxoEntry utxoEntry});

  $OutpointCopyWith<$Res> get outpoint;
  $UtxoEntryCopyWith<$Res> get utxoEntry;
}

/// @nodoc
class _$UtxoCopyWithImpl<$Res, $Val extends Utxo>
    implements $UtxoCopyWith<$Res> {
  _$UtxoCopyWithImpl(this._value, this._then);

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
              as Outpoint,
      utxoEntry: null == utxoEntry
          ? _value.utxoEntry
          : utxoEntry // ignore: cast_nullable_to_non_nullable
              as UtxoEntry,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OutpointCopyWith<$Res> get outpoint {
    return $OutpointCopyWith<$Res>(_value.outpoint, (value) {
      return _then(_value.copyWith(outpoint: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UtxoEntryCopyWith<$Res> get utxoEntry {
    return $UtxoEntryCopyWith<$Res>(_value.utxoEntry, (value) {
      return _then(_value.copyWith(utxoEntry: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UtxoImplCopyWith<$Res> implements $UtxoCopyWith<$Res> {
  factory _$$UtxoImplCopyWith(
          _$UtxoImpl value, $Res Function(_$UtxoImpl) then) =
      __$$UtxoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String address, Outpoint outpoint, UtxoEntry utxoEntry});

  @override
  $OutpointCopyWith<$Res> get outpoint;
  @override
  $UtxoEntryCopyWith<$Res> get utxoEntry;
}

/// @nodoc
class __$$UtxoImplCopyWithImpl<$Res>
    extends _$UtxoCopyWithImpl<$Res, _$UtxoImpl>
    implements _$$UtxoImplCopyWith<$Res> {
  __$$UtxoImplCopyWithImpl(_$UtxoImpl _value, $Res Function(_$UtxoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? outpoint = null,
    Object? utxoEntry = null,
  }) {
    return _then(_$UtxoImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      outpoint: null == outpoint
          ? _value.outpoint
          : outpoint // ignore: cast_nullable_to_non_nullable
              as Outpoint,
      utxoEntry: null == utxoEntry
          ? _value.utxoEntry
          : utxoEntry // ignore: cast_nullable_to_non_nullable
              as UtxoEntry,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UtxoImpl extends _Utxo {
  const _$UtxoImpl(
      {required this.address, required this.outpoint, required this.utxoEntry})
      : super._();

  factory _$UtxoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UtxoImplFromJson(json);

  @override
  final String address;
  @override
  final Outpoint outpoint;
  @override
  final UtxoEntry utxoEntry;

  @override
  String toString() {
    return 'Utxo(address: $address, outpoint: $outpoint, utxoEntry: $utxoEntry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UtxoImpl &&
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
  _$$UtxoImplCopyWith<_$UtxoImpl> get copyWith =>
      __$$UtxoImplCopyWithImpl<_$UtxoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UtxoImplToJson(
      this,
    );
  }
}

abstract class _Utxo extends Utxo {
  const factory _Utxo(
      {required final String address,
      required final Outpoint outpoint,
      required final UtxoEntry utxoEntry}) = _$UtxoImpl;
  const _Utxo._() : super._();

  factory _Utxo.fromJson(Map<String, dynamic> json) = _$UtxoImpl.fromJson;

  @override
  String get address;
  @override
  Outpoint get outpoint;
  @override
  UtxoEntry get utxoEntry;
  @override
  @JsonKey(ignore: true)
  _$$UtxoImplCopyWith<_$UtxoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UtxoEntry _$UtxoEntryFromJson(Map<String, dynamic> json) {
  return _UtxoEntry.fromJson(json);
}

/// @nodoc
mixin _$UtxoEntry {
  BigInt get amount => throw _privateConstructorUsedError;
  ScriptPublicKey get scriptPublicKey => throw _privateConstructorUsedError;
  BigInt get blockDaaScore => throw _privateConstructorUsedError;
  bool get isCoinbase => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UtxoEntryCopyWith<UtxoEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UtxoEntryCopyWith<$Res> {
  factory $UtxoEntryCopyWith(UtxoEntry value, $Res Function(UtxoEntry) then) =
      _$UtxoEntryCopyWithImpl<$Res, UtxoEntry>;
  @useResult
  $Res call(
      {BigInt amount,
      ScriptPublicKey scriptPublicKey,
      BigInt blockDaaScore,
      bool isCoinbase});

  $ScriptPublicKeyCopyWith<$Res> get scriptPublicKey;
}

/// @nodoc
class _$UtxoEntryCopyWithImpl<$Res, $Val extends UtxoEntry>
    implements $UtxoEntryCopyWith<$Res> {
  _$UtxoEntryCopyWithImpl(this._value, this._then);

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
              as ScriptPublicKey,
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
  $ScriptPublicKeyCopyWith<$Res> get scriptPublicKey {
    return $ScriptPublicKeyCopyWith<$Res>(_value.scriptPublicKey, (value) {
      return _then(_value.copyWith(scriptPublicKey: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UtxoEntryImplCopyWith<$Res>
    implements $UtxoEntryCopyWith<$Res> {
  factory _$$UtxoEntryImplCopyWith(
          _$UtxoEntryImpl value, $Res Function(_$UtxoEntryImpl) then) =
      __$$UtxoEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BigInt amount,
      ScriptPublicKey scriptPublicKey,
      BigInt blockDaaScore,
      bool isCoinbase});

  @override
  $ScriptPublicKeyCopyWith<$Res> get scriptPublicKey;
}

/// @nodoc
class __$$UtxoEntryImplCopyWithImpl<$Res>
    extends _$UtxoEntryCopyWithImpl<$Res, _$UtxoEntryImpl>
    implements _$$UtxoEntryImplCopyWith<$Res> {
  __$$UtxoEntryImplCopyWithImpl(
      _$UtxoEntryImpl _value, $Res Function(_$UtxoEntryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? scriptPublicKey = null,
    Object? blockDaaScore = null,
    Object? isCoinbase = null,
  }) {
    return _then(_$UtxoEntryImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      scriptPublicKey: null == scriptPublicKey
          ? _value.scriptPublicKey
          : scriptPublicKey // ignore: cast_nullable_to_non_nullable
              as ScriptPublicKey,
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
class _$UtxoEntryImpl extends _UtxoEntry {
  const _$UtxoEntryImpl(
      {required this.amount,
      required this.scriptPublicKey,
      required this.blockDaaScore,
      required this.isCoinbase})
      : super._();

  factory _$UtxoEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$UtxoEntryImplFromJson(json);

  @override
  final BigInt amount;
  @override
  final ScriptPublicKey scriptPublicKey;
  @override
  final BigInt blockDaaScore;
  @override
  final bool isCoinbase;

  @override
  String toString() {
    return 'UtxoEntry(amount: $amount, scriptPublicKey: $scriptPublicKey, blockDaaScore: $blockDaaScore, isCoinbase: $isCoinbase)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UtxoEntryImplCopyWith<_$UtxoEntryImpl> get copyWith =>
      __$$UtxoEntryImplCopyWithImpl<_$UtxoEntryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UtxoEntryImplToJson(
      this,
    );
  }
}

abstract class _UtxoEntry extends UtxoEntry {
  const factory _UtxoEntry(
      {required final BigInt amount,
      required final ScriptPublicKey scriptPublicKey,
      required final BigInt blockDaaScore,
      required final bool isCoinbase}) = _$UtxoEntryImpl;
  const _UtxoEntry._() : super._();

  factory _UtxoEntry.fromJson(Map<String, dynamic> json) =
      _$UtxoEntryImpl.fromJson;

  @override
  BigInt get amount;
  @override
  ScriptPublicKey get scriptPublicKey;
  @override
  BigInt get blockDaaScore;
  @override
  bool get isCoinbase;
  @override
  @JsonKey(ignore: true)
  _$$UtxoEntryImplCopyWith<_$UtxoEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ScriptPublicKey _$ScriptPublicKeyFromJson(Map<String, dynamic> json) {
  return _ScriptPublicKey.fromJson(json);
}

/// @nodoc
mixin _$ScriptPublicKey {
  @JsonKey(fromJson: hexToBytes, toJson: bytesToHex)
  Uint8List get scriptPublicKey =>
      throw _privateConstructorUsedError; /*uint16*/
  int get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScriptPublicKeyCopyWith<ScriptPublicKey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScriptPublicKeyCopyWith<$Res> {
  factory $ScriptPublicKeyCopyWith(
          ScriptPublicKey value, $Res Function(ScriptPublicKey) then) =
      _$ScriptPublicKeyCopyWithImpl<$Res, ScriptPublicKey>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: hexToBytes, toJson: bytesToHex)
          Uint8List scriptPublicKey,
      int version});
}

/// @nodoc
class _$ScriptPublicKeyCopyWithImpl<$Res, $Val extends ScriptPublicKey>
    implements $ScriptPublicKeyCopyWith<$Res> {
  _$ScriptPublicKeyCopyWithImpl(this._value, this._then);

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
              as Uint8List,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScriptPublicKeyImplCopyWith<$Res>
    implements $ScriptPublicKeyCopyWith<$Res> {
  factory _$$ScriptPublicKeyImplCopyWith(_$ScriptPublicKeyImpl value,
          $Res Function(_$ScriptPublicKeyImpl) then) =
      __$$ScriptPublicKeyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: hexToBytes, toJson: bytesToHex)
          Uint8List scriptPublicKey,
      int version});
}

/// @nodoc
class __$$ScriptPublicKeyImplCopyWithImpl<$Res>
    extends _$ScriptPublicKeyCopyWithImpl<$Res, _$ScriptPublicKeyImpl>
    implements _$$ScriptPublicKeyImplCopyWith<$Res> {
  __$$ScriptPublicKeyImplCopyWithImpl(
      _$ScriptPublicKeyImpl _value, $Res Function(_$ScriptPublicKeyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scriptPublicKey = null,
    Object? version = null,
  }) {
    return _then(_$ScriptPublicKeyImpl(
      scriptPublicKey: null == scriptPublicKey
          ? _value.scriptPublicKey
          : scriptPublicKey // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScriptPublicKeyImpl extends _ScriptPublicKey {
  const _$ScriptPublicKeyImpl(
      {@JsonKey(fromJson: hexToBytes, toJson: bytesToHex)
          required this.scriptPublicKey,
      required this.version})
      : super._();

  factory _$ScriptPublicKeyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScriptPublicKeyImplFromJson(json);

  @override
  @JsonKey(fromJson: hexToBytes, toJson: bytesToHex)
  final Uint8List scriptPublicKey;
/*uint16*/
  @override
  final int version;

  @override
  String toString() {
    return 'ScriptPublicKey(scriptPublicKey: $scriptPublicKey, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScriptPublicKeyImpl &&
            const DeepCollectionEquality()
                .equals(other.scriptPublicKey, scriptPublicKey) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(scriptPublicKey), version);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScriptPublicKeyImplCopyWith<_$ScriptPublicKeyImpl> get copyWith =>
      __$$ScriptPublicKeyImplCopyWithImpl<_$ScriptPublicKeyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScriptPublicKeyImplToJson(
      this,
    );
  }
}

abstract class _ScriptPublicKey extends ScriptPublicKey {
  const factory _ScriptPublicKey(
      {@JsonKey(fromJson: hexToBytes, toJson: bytesToHex)
          required final Uint8List scriptPublicKey,
      required final int version}) = _$ScriptPublicKeyImpl;
  const _ScriptPublicKey._() : super._();

  factory _ScriptPublicKey.fromJson(Map<String, dynamic> json) =
      _$ScriptPublicKeyImpl.fromJson;

  @override
  @JsonKey(fromJson: hexToBytes, toJson: bytesToHex)
  Uint8List get scriptPublicKey;
  @override /*uint16*/
  int get version;
  @override
  @JsonKey(ignore: true)
  _$$ScriptPublicKeyImplCopyWith<_$ScriptPublicKeyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Outpoint _$OutpointFromJson(Map<String, dynamic> json) {
  return _Outpoint.fromJson(json);
}

/// @nodoc
mixin _$Outpoint {
  String get transactionId => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutpointCopyWith<Outpoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutpointCopyWith<$Res> {
  factory $OutpointCopyWith(Outpoint value, $Res Function(Outpoint) then) =
      _$OutpointCopyWithImpl<$Res, Outpoint>;
  @useResult
  $Res call({String transactionId, int index});
}

/// @nodoc
class _$OutpointCopyWithImpl<$Res, $Val extends Outpoint>
    implements $OutpointCopyWith<$Res> {
  _$OutpointCopyWithImpl(this._value, this._then);

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
    implements $OutpointCopyWith<$Res> {
  factory _$$OutpointImplCopyWith(
          _$OutpointImpl value, $Res Function(_$OutpointImpl) then) =
      __$$OutpointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String transactionId, int index});
}

/// @nodoc
class __$$OutpointImplCopyWithImpl<$Res>
    extends _$OutpointCopyWithImpl<$Res, _$OutpointImpl>
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
class _$OutpointImpl extends _Outpoint {
  _$OutpointImpl({required this.transactionId, required this.index})
      : super._();

  factory _$OutpointImpl.fromJson(Map<String, dynamic> json) =>
      _$$OutpointImplFromJson(json);

  @override
  final String transactionId;
  @override
  final int index;

  @override
  String toString() {
    return 'Outpoint(transactionId: $transactionId, index: $index)';
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

abstract class _Outpoint extends Outpoint {
  factory _Outpoint(
      {required final String transactionId,
      required final int index}) = _$OutpointImpl;
  _Outpoint._() : super._();

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

/// @nodoc
mixin _$TxInput {
  Address get address => throw _privateConstructorUsedError;
  Outpoint get previousOutpoint => throw _privateConstructorUsedError;
  Uint8List get signatureScript =>
      throw _privateConstructorUsedError; /*uint64*/
  Int64 get sequence => throw _privateConstructorUsedError; /*byte*/
  int get sigOpCount => throw _privateConstructorUsedError;
  UtxoEntry get utxoEntry => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TxInputCopyWith<TxInput> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TxInputCopyWith<$Res> {
  factory $TxInputCopyWith(TxInput value, $Res Function(TxInput) then) =
      _$TxInputCopyWithImpl<$Res, TxInput>;
  @useResult
  $Res call(
      {Address address,
      Outpoint previousOutpoint,
      Uint8List signatureScript,
      Int64 sequence,
      int sigOpCount,
      UtxoEntry utxoEntry});

  $AddressCopyWith<$Res> get address;
  $OutpointCopyWith<$Res> get previousOutpoint;
  $UtxoEntryCopyWith<$Res> get utxoEntry;
}

/// @nodoc
class _$TxInputCopyWithImpl<$Res, $Val extends TxInput>
    implements $TxInputCopyWith<$Res> {
  _$TxInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? previousOutpoint = null,
    Object? signatureScript = null,
    Object? sequence = null,
    Object? sigOpCount = null,
    Object? utxoEntry = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      previousOutpoint: null == previousOutpoint
          ? _value.previousOutpoint
          : previousOutpoint // ignore: cast_nullable_to_non_nullable
              as Outpoint,
      signatureScript: null == signatureScript
          ? _value.signatureScript
          : signatureScript // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      sequence: null == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as Int64,
      sigOpCount: null == sigOpCount
          ? _value.sigOpCount
          : sigOpCount // ignore: cast_nullable_to_non_nullable
              as int,
      utxoEntry: null == utxoEntry
          ? _value.utxoEntry
          : utxoEntry // ignore: cast_nullable_to_non_nullable
              as UtxoEntry,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OutpointCopyWith<$Res> get previousOutpoint {
    return $OutpointCopyWith<$Res>(_value.previousOutpoint, (value) {
      return _then(_value.copyWith(previousOutpoint: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UtxoEntryCopyWith<$Res> get utxoEntry {
    return $UtxoEntryCopyWith<$Res>(_value.utxoEntry, (value) {
      return _then(_value.copyWith(utxoEntry: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TxInputImplCopyWith<$Res> implements $TxInputCopyWith<$Res> {
  factory _$$TxInputImplCopyWith(
          _$TxInputImpl value, $Res Function(_$TxInputImpl) then) =
      __$$TxInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Address address,
      Outpoint previousOutpoint,
      Uint8List signatureScript,
      Int64 sequence,
      int sigOpCount,
      UtxoEntry utxoEntry});

  @override
  $AddressCopyWith<$Res> get address;
  @override
  $OutpointCopyWith<$Res> get previousOutpoint;
  @override
  $UtxoEntryCopyWith<$Res> get utxoEntry;
}

/// @nodoc
class __$$TxInputImplCopyWithImpl<$Res>
    extends _$TxInputCopyWithImpl<$Res, _$TxInputImpl>
    implements _$$TxInputImplCopyWith<$Res> {
  __$$TxInputImplCopyWithImpl(
      _$TxInputImpl _value, $Res Function(_$TxInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? previousOutpoint = null,
    Object? signatureScript = null,
    Object? sequence = null,
    Object? sigOpCount = null,
    Object? utxoEntry = null,
  }) {
    return _then(_$TxInputImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      previousOutpoint: null == previousOutpoint
          ? _value.previousOutpoint
          : previousOutpoint // ignore: cast_nullable_to_non_nullable
              as Outpoint,
      signatureScript: null == signatureScript
          ? _value.signatureScript
          : signatureScript // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      sequence: null == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as Int64,
      sigOpCount: null == sigOpCount
          ? _value.sigOpCount
          : sigOpCount // ignore: cast_nullable_to_non_nullable
              as int,
      utxoEntry: null == utxoEntry
          ? _value.utxoEntry
          : utxoEntry // ignore: cast_nullable_to_non_nullable
              as UtxoEntry,
    ));
  }
}

/// @nodoc

class _$TxInputImpl extends _TxInput {
  const _$TxInputImpl(
      {required this.address,
      required this.previousOutpoint,
      required this.signatureScript,
      required this.sequence,
      required this.sigOpCount,
      required this.utxoEntry})
      : super._();

  @override
  final Address address;
  @override
  final Outpoint previousOutpoint;
  @override
  final Uint8List signatureScript;
/*uint64*/
  @override
  final Int64 sequence;
/*byte*/
  @override
  final int sigOpCount;
  @override
  final UtxoEntry utxoEntry;

  @override
  String toString() {
    return 'TxInput(address: $address, previousOutpoint: $previousOutpoint, signatureScript: $signatureScript, sequence: $sequence, sigOpCount: $sigOpCount, utxoEntry: $utxoEntry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TxInputImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.previousOutpoint, previousOutpoint) ||
                other.previousOutpoint == previousOutpoint) &&
            const DeepCollectionEquality()
                .equals(other.signatureScript, signatureScript) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.sigOpCount, sigOpCount) ||
                other.sigOpCount == sigOpCount) &&
            (identical(other.utxoEntry, utxoEntry) ||
                other.utxoEntry == utxoEntry));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      address,
      previousOutpoint,
      const DeepCollectionEquality().hash(signatureScript),
      sequence,
      sigOpCount,
      utxoEntry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TxInputImplCopyWith<_$TxInputImpl> get copyWith =>
      __$$TxInputImplCopyWithImpl<_$TxInputImpl>(this, _$identity);
}

abstract class _TxInput extends TxInput {
  const factory _TxInput(
      {required final Address address,
      required final Outpoint previousOutpoint,
      required final Uint8List signatureScript,
      required final Int64 sequence,
      required final int sigOpCount,
      required final UtxoEntry utxoEntry}) = _$TxInputImpl;
  const _TxInput._() : super._();

  @override
  Address get address;
  @override
  Outpoint get previousOutpoint;
  @override
  Uint8List get signatureScript;
  @override /*uint64*/
  Int64 get sequence;
  @override /*byte*/
  int get sigOpCount;
  @override
  UtxoEntry get utxoEntry;
  @override
  @JsonKey(ignore: true)
  _$$TxInputImplCopyWith<_$TxInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TxOutput {
/*uint64*/
  Int64 get value => throw _privateConstructorUsedError;
  ScriptPublicKey get scriptPublicKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TxOutputCopyWith<TxOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TxOutputCopyWith<$Res> {
  factory $TxOutputCopyWith(TxOutput value, $Res Function(TxOutput) then) =
      _$TxOutputCopyWithImpl<$Res, TxOutput>;
  @useResult
  $Res call({Int64 value, ScriptPublicKey scriptPublicKey});

  $ScriptPublicKeyCopyWith<$Res> get scriptPublicKey;
}

/// @nodoc
class _$TxOutputCopyWithImpl<$Res, $Val extends TxOutput>
    implements $TxOutputCopyWith<$Res> {
  _$TxOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? scriptPublicKey = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Int64,
      scriptPublicKey: null == scriptPublicKey
          ? _value.scriptPublicKey
          : scriptPublicKey // ignore: cast_nullable_to_non_nullable
              as ScriptPublicKey,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ScriptPublicKeyCopyWith<$Res> get scriptPublicKey {
    return $ScriptPublicKeyCopyWith<$Res>(_value.scriptPublicKey, (value) {
      return _then(_value.copyWith(scriptPublicKey: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TxOutputImplCopyWith<$Res>
    implements $TxOutputCopyWith<$Res> {
  factory _$$TxOutputImplCopyWith(
          _$TxOutputImpl value, $Res Function(_$TxOutputImpl) then) =
      __$$TxOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Int64 value, ScriptPublicKey scriptPublicKey});

  @override
  $ScriptPublicKeyCopyWith<$Res> get scriptPublicKey;
}

/// @nodoc
class __$$TxOutputImplCopyWithImpl<$Res>
    extends _$TxOutputCopyWithImpl<$Res, _$TxOutputImpl>
    implements _$$TxOutputImplCopyWith<$Res> {
  __$$TxOutputImplCopyWithImpl(
      _$TxOutputImpl _value, $Res Function(_$TxOutputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? scriptPublicKey = null,
  }) {
    return _then(_$TxOutputImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Int64,
      scriptPublicKey: null == scriptPublicKey
          ? _value.scriptPublicKey
          : scriptPublicKey // ignore: cast_nullable_to_non_nullable
              as ScriptPublicKey,
    ));
  }
}

/// @nodoc

class _$TxOutputImpl extends _TxOutput {
  const _$TxOutputImpl({required this.value, required this.scriptPublicKey})
      : super._();

/*uint64*/
  @override
  final Int64 value;
  @override
  final ScriptPublicKey scriptPublicKey;

  @override
  String toString() {
    return 'TxOutput(value: $value, scriptPublicKey: $scriptPublicKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TxOutputImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.scriptPublicKey, scriptPublicKey) ||
                other.scriptPublicKey == scriptPublicKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, scriptPublicKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TxOutputImplCopyWith<_$TxOutputImpl> get copyWith =>
      __$$TxOutputImplCopyWithImpl<_$TxOutputImpl>(this, _$identity);
}

abstract class _TxOutput extends TxOutput {
  const factory _TxOutput(
      {required final Int64 value,
      required final ScriptPublicKey scriptPublicKey}) = _$TxOutputImpl;
  const _TxOutput._() : super._();

  @override /*uint64*/
  Int64 get value;
  @override
  ScriptPublicKey get scriptPublicKey;
  @override
  @JsonKey(ignore: true)
  _$$TxOutputImplCopyWith<_$TxOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Transaction {
/*uint16*/
  int get version => throw _privateConstructorUsedError;
  List<TxInput> get inputs => throw _privateConstructorUsedError;
  List<TxOutput> get outputs => throw _privateConstructorUsedError; /*uint64*/
  Int64 get lockTime => throw _privateConstructorUsedError; /*byte[20]*/
  Uint8List get subnetworkId => throw _privateConstructorUsedError; /*uint64*/
  Int64 get gas => throw _privateConstructorUsedError;
  Uint8List? get payload => throw _privateConstructorUsedError; /*uint64*/
  Int64? get fee => throw _privateConstructorUsedError; /*uint64*/
  Int64? get mass => throw _privateConstructorUsedError;
  Uint8List? get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res, Transaction>;
  @useResult
  $Res call(
      {int version,
      List<TxInput> inputs,
      List<TxOutput> outputs,
      Int64 lockTime,
      Uint8List subnetworkId,
      Int64 gas,
      Uint8List? payload,
      Int64? fee,
      Int64? mass,
      Uint8List? id});
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res, $Val extends Transaction>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? inputs = null,
    Object? outputs = null,
    Object? lockTime = null,
    Object? subnetworkId = null,
    Object? gas = null,
    Object? payload = freezed,
    Object? fee = freezed,
    Object? mass = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      inputs: null == inputs
          ? _value.inputs
          : inputs // ignore: cast_nullable_to_non_nullable
              as List<TxInput>,
      outputs: null == outputs
          ? _value.outputs
          : outputs // ignore: cast_nullable_to_non_nullable
              as List<TxOutput>,
      lockTime: null == lockTime
          ? _value.lockTime
          : lockTime // ignore: cast_nullable_to_non_nullable
              as Int64,
      subnetworkId: null == subnetworkId
          ? _value.subnetworkId
          : subnetworkId // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      gas: null == gas
          ? _value.gas
          : gas // ignore: cast_nullable_to_non_nullable
              as Int64,
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      fee: freezed == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as Int64?,
      mass: freezed == mass
          ? _value.mass
          : mass // ignore: cast_nullable_to_non_nullable
              as Int64?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionImplCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$$TransactionImplCopyWith(
          _$TransactionImpl value, $Res Function(_$TransactionImpl) then) =
      __$$TransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int version,
      List<TxInput> inputs,
      List<TxOutput> outputs,
      Int64 lockTime,
      Uint8List subnetworkId,
      Int64 gas,
      Uint8List? payload,
      Int64? fee,
      Int64? mass,
      Uint8List? id});
}

/// @nodoc
class __$$TransactionImplCopyWithImpl<$Res>
    extends _$TransactionCopyWithImpl<$Res, _$TransactionImpl>
    implements _$$TransactionImplCopyWith<$Res> {
  __$$TransactionImplCopyWithImpl(
      _$TransactionImpl _value, $Res Function(_$TransactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? inputs = null,
    Object? outputs = null,
    Object? lockTime = null,
    Object? subnetworkId = null,
    Object? gas = null,
    Object? payload = freezed,
    Object? fee = freezed,
    Object? mass = freezed,
    Object? id = freezed,
  }) {
    return _then(_$TransactionImpl(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      inputs: null == inputs
          ? _value._inputs
          : inputs // ignore: cast_nullable_to_non_nullable
              as List<TxInput>,
      outputs: null == outputs
          ? _value._outputs
          : outputs // ignore: cast_nullable_to_non_nullable
              as List<TxOutput>,
      lockTime: null == lockTime
          ? _value.lockTime
          : lockTime // ignore: cast_nullable_to_non_nullable
              as Int64,
      subnetworkId: null == subnetworkId
          ? _value.subnetworkId
          : subnetworkId // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      gas: null == gas
          ? _value.gas
          : gas // ignore: cast_nullable_to_non_nullable
              as Int64,
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      fee: freezed == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as Int64?,
      mass: freezed == mass
          ? _value.mass
          : mass // ignore: cast_nullable_to_non_nullable
              as Int64?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

class _$TransactionImpl implements _Transaction {
  const _$TransactionImpl(
      {required this.version,
      required final List<TxInput> inputs,
      required final List<TxOutput> outputs,
      required this.lockTime,
      required this.subnetworkId,
      required this.gas,
      this.payload,
      this.fee,
      this.mass,
      this.id})
      : _inputs = inputs,
        _outputs = outputs;

/*uint16*/
  @override
  final int version;
  final List<TxInput> _inputs;
  @override
  List<TxInput> get inputs {
    if (_inputs is EqualUnmodifiableListView) return _inputs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inputs);
  }

  final List<TxOutput> _outputs;
  @override
  List<TxOutput> get outputs {
    if (_outputs is EqualUnmodifiableListView) return _outputs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outputs);
  }

/*uint64*/
  @override
  final Int64 lockTime;
/*byte[20]*/
  @override
  final Uint8List subnetworkId;
/*uint64*/
  @override
  final Int64 gas;
  @override
  final Uint8List? payload;
/*uint64*/
  @override
  final Int64? fee;
/*uint64*/
  @override
  final Int64? mass;
  @override
  final Uint8List? id;

  @override
  String toString() {
    return 'Transaction(version: $version, inputs: $inputs, outputs: $outputs, lockTime: $lockTime, subnetworkId: $subnetworkId, gas: $gas, payload: $payload, fee: $fee, mass: $mass, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionImpl &&
            (identical(other.version, version) || other.version == version) &&
            const DeepCollectionEquality().equals(other._inputs, _inputs) &&
            const DeepCollectionEquality().equals(other._outputs, _outputs) &&
            (identical(other.lockTime, lockTime) ||
                other.lockTime == lockTime) &&
            const DeepCollectionEquality()
                .equals(other.subnetworkId, subnetworkId) &&
            (identical(other.gas, gas) || other.gas == gas) &&
            const DeepCollectionEquality().equals(other.payload, payload) &&
            (identical(other.fee, fee) || other.fee == fee) &&
            (identical(other.mass, mass) || other.mass == mass) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      version,
      const DeepCollectionEquality().hash(_inputs),
      const DeepCollectionEquality().hash(_outputs),
      lockTime,
      const DeepCollectionEquality().hash(subnetworkId),
      gas,
      const DeepCollectionEquality().hash(payload),
      fee,
      mass,
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      __$$TransactionImplCopyWithImpl<_$TransactionImpl>(this, _$identity);
}

abstract class _Transaction implements Transaction {
  const factory _Transaction(
      {required final int version,
      required final List<TxInput> inputs,
      required final List<TxOutput> outputs,
      required final Int64 lockTime,
      required final Uint8List subnetworkId,
      required final Int64 gas,
      final Uint8List? payload,
      final Int64? fee,
      final Int64? mass,
      final Uint8List? id}) = _$TransactionImpl;

  @override /*uint16*/
  int get version;
  @override
  List<TxInput> get inputs;
  @override
  List<TxOutput> get outputs;
  @override /*uint64*/
  Int64 get lockTime;
  @override /*byte[20]*/
  Uint8List get subnetworkId;
  @override /*uint64*/
  Int64 get gas;
  @override
  Uint8List? get payload;
  @override /*uint64*/
  Int64? get fee;
  @override /*uint64*/
  Int64? get mass;
  @override
  Uint8List? get id;
  @override
  @JsonKey(ignore: true)
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SighashReusedValues {
  Uint8List? get previousOutputsHash => throw _privateConstructorUsedError;
  set previousOutputsHash(Uint8List? value) =>
      throw _privateConstructorUsedError;
  Uint8List? get sequencesHash => throw _privateConstructorUsedError;
  set sequencesHash(Uint8List? value) => throw _privateConstructorUsedError;
  Uint8List? get sigOpCountsHash => throw _privateConstructorUsedError;
  set sigOpCountsHash(Uint8List? value) => throw _privateConstructorUsedError;
  Uint8List? get outputsHash => throw _privateConstructorUsedError;
  set outputsHash(Uint8List? value) => throw _privateConstructorUsedError;
  Uint8List? get payloadHash => throw _privateConstructorUsedError;
  set payloadHash(Uint8List? value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SighashReusedValuesCopyWith<SighashReusedValues> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SighashReusedValuesCopyWith<$Res> {
  factory $SighashReusedValuesCopyWith(
          SighashReusedValues value, $Res Function(SighashReusedValues) then) =
      _$SighashReusedValuesCopyWithImpl<$Res, SighashReusedValues>;
  @useResult
  $Res call(
      {Uint8List? previousOutputsHash,
      Uint8List? sequencesHash,
      Uint8List? sigOpCountsHash,
      Uint8List? outputsHash,
      Uint8List? payloadHash});
}

/// @nodoc
class _$SighashReusedValuesCopyWithImpl<$Res, $Val extends SighashReusedValues>
    implements $SighashReusedValuesCopyWith<$Res> {
  _$SighashReusedValuesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? previousOutputsHash = freezed,
    Object? sequencesHash = freezed,
    Object? sigOpCountsHash = freezed,
    Object? outputsHash = freezed,
    Object? payloadHash = freezed,
  }) {
    return _then(_value.copyWith(
      previousOutputsHash: freezed == previousOutputsHash
          ? _value.previousOutputsHash
          : previousOutputsHash // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      sequencesHash: freezed == sequencesHash
          ? _value.sequencesHash
          : sequencesHash // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      sigOpCountsHash: freezed == sigOpCountsHash
          ? _value.sigOpCountsHash
          : sigOpCountsHash // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      outputsHash: freezed == outputsHash
          ? _value.outputsHash
          : outputsHash // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      payloadHash: freezed == payloadHash
          ? _value.payloadHash
          : payloadHash // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SighashReusedValuesImplCopyWith<$Res>
    implements $SighashReusedValuesCopyWith<$Res> {
  factory _$$SighashReusedValuesImplCopyWith(_$SighashReusedValuesImpl value,
          $Res Function(_$SighashReusedValuesImpl) then) =
      __$$SighashReusedValuesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Uint8List? previousOutputsHash,
      Uint8List? sequencesHash,
      Uint8List? sigOpCountsHash,
      Uint8List? outputsHash,
      Uint8List? payloadHash});
}

/// @nodoc
class __$$SighashReusedValuesImplCopyWithImpl<$Res>
    extends _$SighashReusedValuesCopyWithImpl<$Res, _$SighashReusedValuesImpl>
    implements _$$SighashReusedValuesImplCopyWith<$Res> {
  __$$SighashReusedValuesImplCopyWithImpl(_$SighashReusedValuesImpl _value,
      $Res Function(_$SighashReusedValuesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? previousOutputsHash = freezed,
    Object? sequencesHash = freezed,
    Object? sigOpCountsHash = freezed,
    Object? outputsHash = freezed,
    Object? payloadHash = freezed,
  }) {
    return _then(_$SighashReusedValuesImpl(
      previousOutputsHash: freezed == previousOutputsHash
          ? _value.previousOutputsHash
          : previousOutputsHash // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      sequencesHash: freezed == sequencesHash
          ? _value.sequencesHash
          : sequencesHash // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      sigOpCountsHash: freezed == sigOpCountsHash
          ? _value.sigOpCountsHash
          : sigOpCountsHash // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      outputsHash: freezed == outputsHash
          ? _value.outputsHash
          : outputsHash // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      payloadHash: freezed == payloadHash
          ? _value.payloadHash
          : payloadHash // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

class _$SighashReusedValuesImpl implements _SighashReusedValues {
  _$SighashReusedValuesImpl(
      {this.previousOutputsHash,
      this.sequencesHash,
      this.sigOpCountsHash,
      this.outputsHash,
      this.payloadHash});

  @override
  Uint8List? previousOutputsHash;
  @override
  Uint8List? sequencesHash;
  @override
  Uint8List? sigOpCountsHash;
  @override
  Uint8List? outputsHash;
  @override
  Uint8List? payloadHash;

  @override
  String toString() {
    return 'SighashReusedValues(previousOutputsHash: $previousOutputsHash, sequencesHash: $sequencesHash, sigOpCountsHash: $sigOpCountsHash, outputsHash: $outputsHash, payloadHash: $payloadHash)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SighashReusedValuesImplCopyWith<_$SighashReusedValuesImpl> get copyWith =>
      __$$SighashReusedValuesImplCopyWithImpl<_$SighashReusedValuesImpl>(
          this, _$identity);
}

abstract class _SighashReusedValues implements SighashReusedValues {
  factory _SighashReusedValues(
      {Uint8List? previousOutputsHash,
      Uint8List? sequencesHash,
      Uint8List? sigOpCountsHash,
      Uint8List? outputsHash,
      Uint8List? payloadHash}) = _$SighashReusedValuesImpl;

  @override
  Uint8List? get previousOutputsHash;
  set previousOutputsHash(Uint8List? value);
  @override
  Uint8List? get sequencesHash;
  set sequencesHash(Uint8List? value);
  @override
  Uint8List? get sigOpCountsHash;
  set sigOpCountsHash(Uint8List? value);
  @override
  Uint8List? get outputsHash;
  set outputsHash(Uint8List? value);
  @override
  Uint8List? get payloadHash;
  set payloadHash(Uint8List? value);
  @override
  @JsonKey(ignore: true)
  _$$SighashReusedValuesImplCopyWith<_$SighashReusedValuesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
