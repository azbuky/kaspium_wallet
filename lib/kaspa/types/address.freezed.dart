// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Address {
  AddressPrefix get prefix => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddressPrefix prefix, Uint8List publicKey)
        publicKey,
    required TResult Function(AddressPrefix prefix, Uint8List publicKey)
        pubKeyECDSA,
    required TResult Function(AddressPrefix prefix, Uint8List hash) scriptHash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressPrefix prefix, Uint8List publicKey)? publicKey,
    TResult? Function(AddressPrefix prefix, Uint8List publicKey)? pubKeyECDSA,
    TResult? Function(AddressPrefix prefix, Uint8List hash)? scriptHash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressPrefix prefix, Uint8List publicKey)? publicKey,
    TResult Function(AddressPrefix prefix, Uint8List publicKey)? pubKeyECDSA,
    TResult Function(AddressPrefix prefix, Uint8List hash)? scriptHash,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddressPublicKey value) publicKey,
    required TResult Function(_AddressPubKeyECDSA value) pubKeyECDSA,
    required TResult Function(_AddressScriptHash value) scriptHash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddressPublicKey value)? publicKey,
    TResult? Function(_AddressPubKeyECDSA value)? pubKeyECDSA,
    TResult? Function(_AddressScriptHash value)? scriptHash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddressPublicKey value)? publicKey,
    TResult Function(_AddressPubKeyECDSA value)? pubKeyECDSA,
    TResult Function(_AddressScriptHash value)? scriptHash,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call({AddressPrefix prefix});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prefix = null,
  }) {
    return _then(_value.copyWith(
      prefix: null == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as AddressPrefix,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressPublicKeyCopyWith<$Res>
    implements $AddressCopyWith<$Res> {
  factory _$$_AddressPublicKeyCopyWith(
          _$_AddressPublicKey value, $Res Function(_$_AddressPublicKey) then) =
      __$$_AddressPublicKeyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddressPrefix prefix, Uint8List publicKey});
}

/// @nodoc
class __$$_AddressPublicKeyCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$_AddressPublicKey>
    implements _$$_AddressPublicKeyCopyWith<$Res> {
  __$$_AddressPublicKeyCopyWithImpl(
      _$_AddressPublicKey _value, $Res Function(_$_AddressPublicKey) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prefix = null,
    Object? publicKey = null,
  }) {
    return _then(_$_AddressPublicKey(
      prefix: null == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as AddressPrefix,
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$_AddressPublicKey extends _AddressPublicKey {
  _$_AddressPublicKey({required this.prefix, required this.publicKey})
      : assert(publicKey.length == kPublicKeyLength),
        super._();

  @override
  final AddressPrefix prefix;
  @override
  final Uint8List publicKey;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressPublicKey &&
            (identical(other.prefix, prefix) || other.prefix == prefix) &&
            const DeepCollectionEquality().equals(other.publicKey, publicKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, prefix, const DeepCollectionEquality().hash(publicKey));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressPublicKeyCopyWith<_$_AddressPublicKey> get copyWith =>
      __$$_AddressPublicKeyCopyWithImpl<_$_AddressPublicKey>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddressPrefix prefix, Uint8List publicKey)
        publicKey,
    required TResult Function(AddressPrefix prefix, Uint8List publicKey)
        pubKeyECDSA,
    required TResult Function(AddressPrefix prefix, Uint8List hash) scriptHash,
  }) {
    return publicKey(prefix, this.publicKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressPrefix prefix, Uint8List publicKey)? publicKey,
    TResult? Function(AddressPrefix prefix, Uint8List publicKey)? pubKeyECDSA,
    TResult? Function(AddressPrefix prefix, Uint8List hash)? scriptHash,
  }) {
    return publicKey?.call(prefix, this.publicKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressPrefix prefix, Uint8List publicKey)? publicKey,
    TResult Function(AddressPrefix prefix, Uint8List publicKey)? pubKeyECDSA,
    TResult Function(AddressPrefix prefix, Uint8List hash)? scriptHash,
    required TResult orElse(),
  }) {
    if (publicKey != null) {
      return publicKey(prefix, this.publicKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddressPublicKey value) publicKey,
    required TResult Function(_AddressPubKeyECDSA value) pubKeyECDSA,
    required TResult Function(_AddressScriptHash value) scriptHash,
  }) {
    return publicKey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddressPublicKey value)? publicKey,
    TResult? Function(_AddressPubKeyECDSA value)? pubKeyECDSA,
    TResult? Function(_AddressScriptHash value)? scriptHash,
  }) {
    return publicKey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddressPublicKey value)? publicKey,
    TResult Function(_AddressPubKeyECDSA value)? pubKeyECDSA,
    TResult Function(_AddressScriptHash value)? scriptHash,
    required TResult orElse(),
  }) {
    if (publicKey != null) {
      return publicKey(this);
    }
    return orElse();
  }
}

abstract class _AddressPublicKey extends Address {
  factory _AddressPublicKey(
      {required final AddressPrefix prefix,
      required final Uint8List publicKey}) = _$_AddressPublicKey;
  _AddressPublicKey._() : super._();

  @override
  AddressPrefix get prefix;
  Uint8List get publicKey;
  @override
  @JsonKey(ignore: true)
  _$$_AddressPublicKeyCopyWith<_$_AddressPublicKey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddressPubKeyECDSACopyWith<$Res>
    implements $AddressCopyWith<$Res> {
  factory _$$_AddressPubKeyECDSACopyWith(_$_AddressPubKeyECDSA value,
          $Res Function(_$_AddressPubKeyECDSA) then) =
      __$$_AddressPubKeyECDSACopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddressPrefix prefix, Uint8List publicKey});
}

/// @nodoc
class __$$_AddressPubKeyECDSACopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$_AddressPubKeyECDSA>
    implements _$$_AddressPubKeyECDSACopyWith<$Res> {
  __$$_AddressPubKeyECDSACopyWithImpl(
      _$_AddressPubKeyECDSA _value, $Res Function(_$_AddressPubKeyECDSA) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prefix = null,
    Object? publicKey = null,
  }) {
    return _then(_$_AddressPubKeyECDSA(
      prefix: null == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as AddressPrefix,
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$_AddressPubKeyECDSA extends _AddressPubKeyECDSA {
  _$_AddressPubKeyECDSA({required this.prefix, required this.publicKey})
      : assert(publicKey.length == kPublicKeySizeECDSA),
        super._();

  @override
  final AddressPrefix prefix;
  @override
  final Uint8List publicKey;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressPubKeyECDSA &&
            (identical(other.prefix, prefix) || other.prefix == prefix) &&
            const DeepCollectionEquality().equals(other.publicKey, publicKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, prefix, const DeepCollectionEquality().hash(publicKey));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressPubKeyECDSACopyWith<_$_AddressPubKeyECDSA> get copyWith =>
      __$$_AddressPubKeyECDSACopyWithImpl<_$_AddressPubKeyECDSA>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddressPrefix prefix, Uint8List publicKey)
        publicKey,
    required TResult Function(AddressPrefix prefix, Uint8List publicKey)
        pubKeyECDSA,
    required TResult Function(AddressPrefix prefix, Uint8List hash) scriptHash,
  }) {
    return pubKeyECDSA(prefix, this.publicKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressPrefix prefix, Uint8List publicKey)? publicKey,
    TResult? Function(AddressPrefix prefix, Uint8List publicKey)? pubKeyECDSA,
    TResult? Function(AddressPrefix prefix, Uint8List hash)? scriptHash,
  }) {
    return pubKeyECDSA?.call(prefix, this.publicKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressPrefix prefix, Uint8List publicKey)? publicKey,
    TResult Function(AddressPrefix prefix, Uint8List publicKey)? pubKeyECDSA,
    TResult Function(AddressPrefix prefix, Uint8List hash)? scriptHash,
    required TResult orElse(),
  }) {
    if (pubKeyECDSA != null) {
      return pubKeyECDSA(prefix, this.publicKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddressPublicKey value) publicKey,
    required TResult Function(_AddressPubKeyECDSA value) pubKeyECDSA,
    required TResult Function(_AddressScriptHash value) scriptHash,
  }) {
    return pubKeyECDSA(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddressPublicKey value)? publicKey,
    TResult? Function(_AddressPubKeyECDSA value)? pubKeyECDSA,
    TResult? Function(_AddressScriptHash value)? scriptHash,
  }) {
    return pubKeyECDSA?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddressPublicKey value)? publicKey,
    TResult Function(_AddressPubKeyECDSA value)? pubKeyECDSA,
    TResult Function(_AddressScriptHash value)? scriptHash,
    required TResult orElse(),
  }) {
    if (pubKeyECDSA != null) {
      return pubKeyECDSA(this);
    }
    return orElse();
  }
}

abstract class _AddressPubKeyECDSA extends Address {
  factory _AddressPubKeyECDSA(
      {required final AddressPrefix prefix,
      required final Uint8List publicKey}) = _$_AddressPubKeyECDSA;
  _AddressPubKeyECDSA._() : super._();

  @override
  AddressPrefix get prefix;
  Uint8List get publicKey;
  @override
  @JsonKey(ignore: true)
  _$$_AddressPubKeyECDSACopyWith<_$_AddressPubKeyECDSA> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddressScriptHashCopyWith<$Res>
    implements $AddressCopyWith<$Res> {
  factory _$$_AddressScriptHashCopyWith(_$_AddressScriptHash value,
          $Res Function(_$_AddressScriptHash) then) =
      __$$_AddressScriptHashCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddressPrefix prefix, Uint8List hash});
}

/// @nodoc
class __$$_AddressScriptHashCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$_AddressScriptHash>
    implements _$$_AddressScriptHashCopyWith<$Res> {
  __$$_AddressScriptHashCopyWithImpl(
      _$_AddressScriptHash _value, $Res Function(_$_AddressScriptHash) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prefix = null,
    Object? hash = null,
  }) {
    return _then(_$_AddressScriptHash(
      prefix: null == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as AddressPrefix,
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$_AddressScriptHash extends _AddressScriptHash {
  _$_AddressScriptHash({required this.prefix, required this.hash}) : super._();

  @override
  final AddressPrefix prefix;
  @override
  final Uint8List hash;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressScriptHash &&
            (identical(other.prefix, prefix) || other.prefix == prefix) &&
            const DeepCollectionEquality().equals(other.hash, hash));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, prefix, const DeepCollectionEquality().hash(hash));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressScriptHashCopyWith<_$_AddressScriptHash> get copyWith =>
      __$$_AddressScriptHashCopyWithImpl<_$_AddressScriptHash>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddressPrefix prefix, Uint8List publicKey)
        publicKey,
    required TResult Function(AddressPrefix prefix, Uint8List publicKey)
        pubKeyECDSA,
    required TResult Function(AddressPrefix prefix, Uint8List hash) scriptHash,
  }) {
    return scriptHash(prefix, hash);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressPrefix prefix, Uint8List publicKey)? publicKey,
    TResult? Function(AddressPrefix prefix, Uint8List publicKey)? pubKeyECDSA,
    TResult? Function(AddressPrefix prefix, Uint8List hash)? scriptHash,
  }) {
    return scriptHash?.call(prefix, hash);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressPrefix prefix, Uint8List publicKey)? publicKey,
    TResult Function(AddressPrefix prefix, Uint8List publicKey)? pubKeyECDSA,
    TResult Function(AddressPrefix prefix, Uint8List hash)? scriptHash,
    required TResult orElse(),
  }) {
    if (scriptHash != null) {
      return scriptHash(prefix, hash);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddressPublicKey value) publicKey,
    required TResult Function(_AddressPubKeyECDSA value) pubKeyECDSA,
    required TResult Function(_AddressScriptHash value) scriptHash,
  }) {
    return scriptHash(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddressPublicKey value)? publicKey,
    TResult? Function(_AddressPubKeyECDSA value)? pubKeyECDSA,
    TResult? Function(_AddressScriptHash value)? scriptHash,
  }) {
    return scriptHash?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddressPublicKey value)? publicKey,
    TResult Function(_AddressPubKeyECDSA value)? pubKeyECDSA,
    TResult Function(_AddressScriptHash value)? scriptHash,
    required TResult orElse(),
  }) {
    if (scriptHash != null) {
      return scriptHash(this);
    }
    return orElse();
  }
}

abstract class _AddressScriptHash extends Address {
  factory _AddressScriptHash(
      {required final AddressPrefix prefix,
      required final Uint8List hash}) = _$_AddressScriptHash;
  _AddressScriptHash._() : super._();

  @override
  AddressPrefix get prefix;
  Uint8List get hash;
  @override
  @JsonKey(ignore: true)
  _$$_AddressScriptHashCopyWith<_$_AddressScriptHash> get copyWith =>
      throw _privateConstructorUsedError;
}
