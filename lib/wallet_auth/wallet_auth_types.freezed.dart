// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_auth_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WalletAuth {
  WalletInfo get wallet => throw _privateConstructorUsedError;
  String? get encryptedSecret => throw _privateConstructorUsedError;
  bool get isLocked => throw _privateConstructorUsedError;
  bool get isEncrypted => throw _privateConstructorUsedError;
  bool get hasMnemonic => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WalletAuthCopyWith<WalletAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletAuthCopyWith<$Res> {
  factory $WalletAuthCopyWith(
          WalletAuth value, $Res Function(WalletAuth) then) =
      _$WalletAuthCopyWithImpl<$Res, WalletAuth>;
  @useResult
  $Res call(
      {WalletInfo wallet,
      String? encryptedSecret,
      bool isLocked,
      bool isEncrypted,
      bool hasMnemonic});

  $WalletInfoCopyWith<$Res> get wallet;
}

/// @nodoc
class _$WalletAuthCopyWithImpl<$Res, $Val extends WalletAuth>
    implements $WalletAuthCopyWith<$Res> {
  _$WalletAuthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wallet = null,
    Object? encryptedSecret = freezed,
    Object? isLocked = null,
    Object? isEncrypted = null,
    Object? hasMnemonic = null,
  }) {
    return _then(_value.copyWith(
      wallet: null == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as WalletInfo,
      encryptedSecret: freezed == encryptedSecret
          ? _value.encryptedSecret
          : encryptedSecret // ignore: cast_nullable_to_non_nullable
              as String?,
      isLocked: null == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      isEncrypted: null == isEncrypted
          ? _value.isEncrypted
          : isEncrypted // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMnemonic: null == hasMnemonic
          ? _value.hasMnemonic
          : hasMnemonic // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WalletInfoCopyWith<$Res> get wallet {
    return $WalletInfoCopyWith<$Res>(_value.wallet, (value) {
      return _then(_value.copyWith(wallet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WalletAuthImplCopyWith<$Res>
    implements $WalletAuthCopyWith<$Res> {
  factory _$$WalletAuthImplCopyWith(
          _$WalletAuthImpl value, $Res Function(_$WalletAuthImpl) then) =
      __$$WalletAuthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WalletInfo wallet,
      String? encryptedSecret,
      bool isLocked,
      bool isEncrypted,
      bool hasMnemonic});

  @override
  $WalletInfoCopyWith<$Res> get wallet;
}

/// @nodoc
class __$$WalletAuthImplCopyWithImpl<$Res>
    extends _$WalletAuthCopyWithImpl<$Res, _$WalletAuthImpl>
    implements _$$WalletAuthImplCopyWith<$Res> {
  __$$WalletAuthImplCopyWithImpl(
      _$WalletAuthImpl _value, $Res Function(_$WalletAuthImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wallet = null,
    Object? encryptedSecret = freezed,
    Object? isLocked = null,
    Object? isEncrypted = null,
    Object? hasMnemonic = null,
  }) {
    return _then(_$WalletAuthImpl(
      wallet: null == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as WalletInfo,
      encryptedSecret: freezed == encryptedSecret
          ? _value.encryptedSecret
          : encryptedSecret // ignore: cast_nullable_to_non_nullable
              as String?,
      isLocked: null == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      isEncrypted: null == isEncrypted
          ? _value.isEncrypted
          : isEncrypted // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMnemonic: null == hasMnemonic
          ? _value.hasMnemonic
          : hasMnemonic // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$WalletAuthImpl extends _WalletAuth {
  const _$WalletAuthImpl(
      {required this.wallet,
      this.encryptedSecret,
      this.isLocked = true,
      this.isEncrypted = false,
      this.hasMnemonic = false})
      : super._();

  @override
  final WalletInfo wallet;
  @override
  final String? encryptedSecret;
  @override
  @JsonKey()
  final bool isLocked;
  @override
  @JsonKey()
  final bool isEncrypted;
  @override
  @JsonKey()
  final bool hasMnemonic;

  @override
  String toString() {
    return 'WalletAuth(wallet: $wallet, encryptedSecret: $encryptedSecret, isLocked: $isLocked, isEncrypted: $isEncrypted, hasMnemonic: $hasMnemonic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletAuthImpl &&
            (identical(other.wallet, wallet) || other.wallet == wallet) &&
            (identical(other.encryptedSecret, encryptedSecret) ||
                other.encryptedSecret == encryptedSecret) &&
            (identical(other.isLocked, isLocked) ||
                other.isLocked == isLocked) &&
            (identical(other.isEncrypted, isEncrypted) ||
                other.isEncrypted == isEncrypted) &&
            (identical(other.hasMnemonic, hasMnemonic) ||
                other.hasMnemonic == hasMnemonic));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, wallet, encryptedSecret, isLocked, isEncrypted, hasMnemonic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletAuthImplCopyWith<_$WalletAuthImpl> get copyWith =>
      __$$WalletAuthImplCopyWithImpl<_$WalletAuthImpl>(this, _$identity);
}

abstract class _WalletAuth extends WalletAuth {
  const factory _WalletAuth(
      {required final WalletInfo wallet,
      final String? encryptedSecret,
      final bool isLocked,
      final bool isEncrypted,
      final bool hasMnemonic}) = _$WalletAuthImpl;
  const _WalletAuth._() : super._();

  @override
  WalletInfo get wallet;
  @override
  String? get encryptedSecret;
  @override
  bool get isLocked;
  @override
  bool get isEncrypted;
  @override
  bool get hasMnemonic;
  @override
  @JsonKey(ignore: true)
  _$$WalletAuthImplCopyWith<_$WalletAuthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
