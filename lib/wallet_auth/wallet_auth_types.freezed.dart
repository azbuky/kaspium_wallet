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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WalletStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noWallets,
    required TResult Function(IList<WalletInfo> wallets) noSelection,
    required TResult Function(WalletInfo wallet) selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noWallets,
    TResult? Function(IList<WalletInfo> wallets)? noSelection,
    TResult? Function(WalletInfo wallet)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noWallets,
    TResult Function(IList<WalletInfo> wallets)? noSelection,
    TResult Function(WalletInfo wallet)? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalletStatusNoWallets value) noWallets,
    required TResult Function(_WalletStatusNoSelection value) noSelection,
    required TResult Function(_WalletStatusSelected value) selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletStatusNoWallets value)? noWallets,
    TResult? Function(_WalletStatusNoSelection value)? noSelection,
    TResult? Function(_WalletStatusSelected value)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletStatusNoWallets value)? noWallets,
    TResult Function(_WalletStatusNoSelection value)? noSelection,
    TResult Function(_WalletStatusSelected value)? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletStatusCopyWith<$Res> {
  factory $WalletStatusCopyWith(
          WalletStatus value, $Res Function(WalletStatus) then) =
      _$WalletStatusCopyWithImpl<$Res, WalletStatus>;
}

/// @nodoc
class _$WalletStatusCopyWithImpl<$Res, $Val extends WalletStatus>
    implements $WalletStatusCopyWith<$Res> {
  _$WalletStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_WalletStatusNoWalletsCopyWith<$Res> {
  factory _$$_WalletStatusNoWalletsCopyWith(_$_WalletStatusNoWallets value,
          $Res Function(_$_WalletStatusNoWallets) then) =
      __$$_WalletStatusNoWalletsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WalletStatusNoWalletsCopyWithImpl<$Res>
    extends _$WalletStatusCopyWithImpl<$Res, _$_WalletStatusNoWallets>
    implements _$$_WalletStatusNoWalletsCopyWith<$Res> {
  __$$_WalletStatusNoWalletsCopyWithImpl(_$_WalletStatusNoWallets _value,
      $Res Function(_$_WalletStatusNoWallets) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WalletStatusNoWallets implements _WalletStatusNoWallets {
  const _$_WalletStatusNoWallets();

  @override
  String toString() {
    return 'WalletStatus.noWallets()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WalletStatusNoWallets);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noWallets,
    required TResult Function(IList<WalletInfo> wallets) noSelection,
    required TResult Function(WalletInfo wallet) selected,
  }) {
    return noWallets();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noWallets,
    TResult? Function(IList<WalletInfo> wallets)? noSelection,
    TResult? Function(WalletInfo wallet)? selected,
  }) {
    return noWallets?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noWallets,
    TResult Function(IList<WalletInfo> wallets)? noSelection,
    TResult Function(WalletInfo wallet)? selected,
    required TResult orElse(),
  }) {
    if (noWallets != null) {
      return noWallets();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalletStatusNoWallets value) noWallets,
    required TResult Function(_WalletStatusNoSelection value) noSelection,
    required TResult Function(_WalletStatusSelected value) selected,
  }) {
    return noWallets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletStatusNoWallets value)? noWallets,
    TResult? Function(_WalletStatusNoSelection value)? noSelection,
    TResult? Function(_WalletStatusSelected value)? selected,
  }) {
    return noWallets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletStatusNoWallets value)? noWallets,
    TResult Function(_WalletStatusNoSelection value)? noSelection,
    TResult Function(_WalletStatusSelected value)? selected,
    required TResult orElse(),
  }) {
    if (noWallets != null) {
      return noWallets(this);
    }
    return orElse();
  }
}

abstract class _WalletStatusNoWallets implements WalletStatus {
  const factory _WalletStatusNoWallets() = _$_WalletStatusNoWallets;
}

/// @nodoc
abstract class _$$_WalletStatusNoSelectionCopyWith<$Res> {
  factory _$$_WalletStatusNoSelectionCopyWith(_$_WalletStatusNoSelection value,
          $Res Function(_$_WalletStatusNoSelection) then) =
      __$$_WalletStatusNoSelectionCopyWithImpl<$Res>;
  @useResult
  $Res call({IList<WalletInfo> wallets});
}

/// @nodoc
class __$$_WalletStatusNoSelectionCopyWithImpl<$Res>
    extends _$WalletStatusCopyWithImpl<$Res, _$_WalletStatusNoSelection>
    implements _$$_WalletStatusNoSelectionCopyWith<$Res> {
  __$$_WalletStatusNoSelectionCopyWithImpl(_$_WalletStatusNoSelection _value,
      $Res Function(_$_WalletStatusNoSelection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wallets = null,
  }) {
    return _then(_$_WalletStatusNoSelection(
      wallets: null == wallets
          ? _value.wallets
          : wallets // ignore: cast_nullable_to_non_nullable
              as IList<WalletInfo>,
    ));
  }
}

/// @nodoc

class _$_WalletStatusNoSelection implements _WalletStatusNoSelection {
  const _$_WalletStatusNoSelection({required this.wallets});

  @override
  final IList<WalletInfo> wallets;

  @override
  String toString() {
    return 'WalletStatus.noSelection(wallets: $wallets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalletStatusNoSelection &&
            const DeepCollectionEquality().equals(other.wallets, wallets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(wallets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WalletStatusNoSelectionCopyWith<_$_WalletStatusNoSelection>
      get copyWith =>
          __$$_WalletStatusNoSelectionCopyWithImpl<_$_WalletStatusNoSelection>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noWallets,
    required TResult Function(IList<WalletInfo> wallets) noSelection,
    required TResult Function(WalletInfo wallet) selected,
  }) {
    return noSelection(wallets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noWallets,
    TResult? Function(IList<WalletInfo> wallets)? noSelection,
    TResult? Function(WalletInfo wallet)? selected,
  }) {
    return noSelection?.call(wallets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noWallets,
    TResult Function(IList<WalletInfo> wallets)? noSelection,
    TResult Function(WalletInfo wallet)? selected,
    required TResult orElse(),
  }) {
    if (noSelection != null) {
      return noSelection(wallets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalletStatusNoWallets value) noWallets,
    required TResult Function(_WalletStatusNoSelection value) noSelection,
    required TResult Function(_WalletStatusSelected value) selected,
  }) {
    return noSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletStatusNoWallets value)? noWallets,
    TResult? Function(_WalletStatusNoSelection value)? noSelection,
    TResult? Function(_WalletStatusSelected value)? selected,
  }) {
    return noSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletStatusNoWallets value)? noWallets,
    TResult Function(_WalletStatusNoSelection value)? noSelection,
    TResult Function(_WalletStatusSelected value)? selected,
    required TResult orElse(),
  }) {
    if (noSelection != null) {
      return noSelection(this);
    }
    return orElse();
  }
}

abstract class _WalletStatusNoSelection implements WalletStatus {
  const factory _WalletStatusNoSelection(
      {required final IList<WalletInfo> wallets}) = _$_WalletStatusNoSelection;

  IList<WalletInfo> get wallets;
  @JsonKey(ignore: true)
  _$$_WalletStatusNoSelectionCopyWith<_$_WalletStatusNoSelection>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WalletStatusSelectedCopyWith<$Res> {
  factory _$$_WalletStatusSelectedCopyWith(_$_WalletStatusSelected value,
          $Res Function(_$_WalletStatusSelected) then) =
      __$$_WalletStatusSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({WalletInfo wallet});

  $WalletInfoCopyWith<$Res> get wallet;
}

/// @nodoc
class __$$_WalletStatusSelectedCopyWithImpl<$Res>
    extends _$WalletStatusCopyWithImpl<$Res, _$_WalletStatusSelected>
    implements _$$_WalletStatusSelectedCopyWith<$Res> {
  __$$_WalletStatusSelectedCopyWithImpl(_$_WalletStatusSelected _value,
      $Res Function(_$_WalletStatusSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wallet = null,
  }) {
    return _then(_$_WalletStatusSelected(
      wallet: null == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as WalletInfo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WalletInfoCopyWith<$Res> get wallet {
    return $WalletInfoCopyWith<$Res>(_value.wallet, (value) {
      return _then(_value.copyWith(wallet: value));
    });
  }
}

/// @nodoc

class _$_WalletStatusSelected implements _WalletStatusSelected {
  const _$_WalletStatusSelected({required this.wallet});

  @override
  final WalletInfo wallet;

  @override
  String toString() {
    return 'WalletStatus.selected(wallet: $wallet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalletStatusSelected &&
            (identical(other.wallet, wallet) || other.wallet == wallet));
  }

  @override
  int get hashCode => Object.hash(runtimeType, wallet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WalletStatusSelectedCopyWith<_$_WalletStatusSelected> get copyWith =>
      __$$_WalletStatusSelectedCopyWithImpl<_$_WalletStatusSelected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noWallets,
    required TResult Function(IList<WalletInfo> wallets) noSelection,
    required TResult Function(WalletInfo wallet) selected,
  }) {
    return selected(wallet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noWallets,
    TResult? Function(IList<WalletInfo> wallets)? noSelection,
    TResult? Function(WalletInfo wallet)? selected,
  }) {
    return selected?.call(wallet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noWallets,
    TResult Function(IList<WalletInfo> wallets)? noSelection,
    TResult Function(WalletInfo wallet)? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(wallet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalletStatusNoWallets value) noWallets,
    required TResult Function(_WalletStatusNoSelection value) noSelection,
    required TResult Function(_WalletStatusSelected value) selected,
  }) {
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletStatusNoWallets value)? noWallets,
    TResult? Function(_WalletStatusNoSelection value)? noSelection,
    TResult? Function(_WalletStatusSelected value)? selected,
  }) {
    return selected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletStatusNoWallets value)? noWallets,
    TResult Function(_WalletStatusNoSelection value)? noSelection,
    TResult Function(_WalletStatusSelected value)? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }
}

abstract class _WalletStatusSelected implements WalletStatus {
  const factory _WalletStatusSelected({required final WalletInfo wallet}) =
      _$_WalletStatusSelected;

  WalletInfo get wallet;
  @JsonKey(ignore: true)
  _$$_WalletStatusSelectedCopyWith<_$_WalletStatusSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

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
abstract class _$$_WalletAuthCopyWith<$Res>
    implements $WalletAuthCopyWith<$Res> {
  factory _$$_WalletAuthCopyWith(
          _$_WalletAuth value, $Res Function(_$_WalletAuth) then) =
      __$$_WalletAuthCopyWithImpl<$Res>;
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
class __$$_WalletAuthCopyWithImpl<$Res>
    extends _$WalletAuthCopyWithImpl<$Res, _$_WalletAuth>
    implements _$$_WalletAuthCopyWith<$Res> {
  __$$_WalletAuthCopyWithImpl(
      _$_WalletAuth _value, $Res Function(_$_WalletAuth) _then)
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
    return _then(_$_WalletAuth(
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

class _$_WalletAuth implements _WalletAuth {
  const _$_WalletAuth(
      {required this.wallet,
      this.encryptedSecret,
      this.isLocked = true,
      this.isEncrypted = false,
      this.hasMnemonic = false});

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalletAuth &&
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
  _$$_WalletAuthCopyWith<_$_WalletAuth> get copyWith =>
      __$$_WalletAuthCopyWithImpl<_$_WalletAuth>(this, _$identity);
}

abstract class _WalletAuth implements WalletAuth {
  const factory _WalletAuth(
      {required final WalletInfo wallet,
      final String? encryptedSecret,
      final bool isLocked,
      final bool isEncrypted,
      final bool hasMnemonic}) = _$_WalletAuth;

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
  _$$_WalletAuthCopyWith<_$_WalletAuth> get copyWith =>
      throw _privateConstructorUsedError;
}
