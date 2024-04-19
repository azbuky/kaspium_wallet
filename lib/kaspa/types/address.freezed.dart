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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$AddressPublicKeyImplCopyWith<$Res>
    implements $AddressCopyWith<$Res> {
  factory _$$AddressPublicKeyImplCopyWith(_$AddressPublicKeyImpl value,
          $Res Function(_$AddressPublicKeyImpl) then) =
      __$$AddressPublicKeyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddressPrefix prefix, Uint8List publicKey});
}

/// @nodoc
class __$$AddressPublicKeyImplCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$AddressPublicKeyImpl>
    implements _$$AddressPublicKeyImplCopyWith<$Res> {
  __$$AddressPublicKeyImplCopyWithImpl(_$AddressPublicKeyImpl _value,
      $Res Function(_$AddressPublicKeyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prefix = null,
    Object? publicKey = null,
  }) {
    return _then(_$AddressPublicKeyImpl(
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

class _$AddressPublicKeyImpl extends _AddressPublicKey {
  _$AddressPublicKeyImpl({required this.prefix, required this.publicKey})
      : assert(publicKey.length == kPublicKeyLength),
        super._();

  @override
  final AddressPrefix prefix;
  @override
  final Uint8List publicKey;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressPublicKeyImpl &&
            (identical(other.prefix, prefix) || other.prefix == prefix) &&
            const DeepCollectionEquality().equals(other.publicKey, publicKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, prefix, const DeepCollectionEquality().hash(publicKey));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressPublicKeyImplCopyWith<_$AddressPublicKeyImpl> get copyWith =>
      __$$AddressPublicKeyImplCopyWithImpl<_$AddressPublicKeyImpl>(
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
      required final Uint8List publicKey}) = _$AddressPublicKeyImpl;
  _AddressPublicKey._() : super._();

  @override
  AddressPrefix get prefix;
  Uint8List get publicKey;
  @override
  @JsonKey(ignore: true)
  _$$AddressPublicKeyImplCopyWith<_$AddressPublicKeyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddressPubKeyECDSAImplCopyWith<$Res>
    implements $AddressCopyWith<$Res> {
  factory _$$AddressPubKeyECDSAImplCopyWith(_$AddressPubKeyECDSAImpl value,
          $Res Function(_$AddressPubKeyECDSAImpl) then) =
      __$$AddressPubKeyECDSAImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddressPrefix prefix, Uint8List publicKey});
}

/// @nodoc
class __$$AddressPubKeyECDSAImplCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$AddressPubKeyECDSAImpl>
    implements _$$AddressPubKeyECDSAImplCopyWith<$Res> {
  __$$AddressPubKeyECDSAImplCopyWithImpl(_$AddressPubKeyECDSAImpl _value,
      $Res Function(_$AddressPubKeyECDSAImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prefix = null,
    Object? publicKey = null,
  }) {
    return _then(_$AddressPubKeyECDSAImpl(
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

class _$AddressPubKeyECDSAImpl extends _AddressPubKeyECDSA {
  _$AddressPubKeyECDSAImpl({required this.prefix, required this.publicKey})
      : assert(publicKey.length == kPublicKeySizeECDSA),
        super._();

  @override
  final AddressPrefix prefix;
  @override
  final Uint8List publicKey;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressPubKeyECDSAImpl &&
            (identical(other.prefix, prefix) || other.prefix == prefix) &&
            const DeepCollectionEquality().equals(other.publicKey, publicKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, prefix, const DeepCollectionEquality().hash(publicKey));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressPubKeyECDSAImplCopyWith<_$AddressPubKeyECDSAImpl> get copyWith =>
      __$$AddressPubKeyECDSAImplCopyWithImpl<_$AddressPubKeyECDSAImpl>(
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
      required final Uint8List publicKey}) = _$AddressPubKeyECDSAImpl;
  _AddressPubKeyECDSA._() : super._();

  @override
  AddressPrefix get prefix;
  Uint8List get publicKey;
  @override
  @JsonKey(ignore: true)
  _$$AddressPubKeyECDSAImplCopyWith<_$AddressPubKeyECDSAImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddressScriptHashImplCopyWith<$Res>
    implements $AddressCopyWith<$Res> {
  factory _$$AddressScriptHashImplCopyWith(_$AddressScriptHashImpl value,
          $Res Function(_$AddressScriptHashImpl) then) =
      __$$AddressScriptHashImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddressPrefix prefix, Uint8List hash});
}

/// @nodoc
class __$$AddressScriptHashImplCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$AddressScriptHashImpl>
    implements _$$AddressScriptHashImplCopyWith<$Res> {
  __$$AddressScriptHashImplCopyWithImpl(_$AddressScriptHashImpl _value,
      $Res Function(_$AddressScriptHashImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prefix = null,
    Object? hash = null,
  }) {
    return _then(_$AddressScriptHashImpl(
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

class _$AddressScriptHashImpl extends _AddressScriptHash {
  _$AddressScriptHashImpl({required this.prefix, required this.hash})
      : super._();

  @override
  final AddressPrefix prefix;
  @override
  final Uint8List hash;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressScriptHashImpl &&
            (identical(other.prefix, prefix) || other.prefix == prefix) &&
            const DeepCollectionEquality().equals(other.hash, hash));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, prefix, const DeepCollectionEquality().hash(hash));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressScriptHashImplCopyWith<_$AddressScriptHashImpl> get copyWith =>
      __$$AddressScriptHashImplCopyWithImpl<_$AddressScriptHashImpl>(
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
      required final Uint8List hash}) = _$AddressScriptHashImpl;
  _AddressScriptHash._() : super._();

  @override
  AddressPrefix get prefix;
  Uint8List get hash;
  @override
  @JsonKey(ignore: true)
  _$$AddressScriptHashImplCopyWith<_$AddressScriptHashImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
