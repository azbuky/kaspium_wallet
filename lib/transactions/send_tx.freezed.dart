// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_tx.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SendTx {
  Address get toAddress => throw _privateConstructorUsedError;
  Address? get changeAddress => throw _privateConstructorUsedError;
  BigInt get amountRaw => throw _privateConstructorUsedError;
  List<Utxo> get utxos => throw _privateConstructorUsedError;
  BigInt? get fee => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SendTxCopyWith<SendTx> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendTxCopyWith<$Res> {
  factory $SendTxCopyWith(SendTx value, $Res Function(SendTx) then) =
      _$SendTxCopyWithImpl<$Res, SendTx>;
  @useResult
  $Res call(
      {Address toAddress,
      Address? changeAddress,
      BigInt amountRaw,
      List<Utxo> utxos,
      BigInt? fee,
      String? note});

  $AddressCopyWith<$Res> get toAddress;
  $AddressCopyWith<$Res>? get changeAddress;
}

/// @nodoc
class _$SendTxCopyWithImpl<$Res, $Val extends SendTx>
    implements $SendTxCopyWith<$Res> {
  _$SendTxCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toAddress = null,
    Object? changeAddress = freezed,
    Object? amountRaw = null,
    Object? utxos = null,
    Object? fee = freezed,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      toAddress: null == toAddress
          ? _value.toAddress
          : toAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      changeAddress: freezed == changeAddress
          ? _value.changeAddress
          : changeAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      amountRaw: null == amountRaw
          ? _value.amountRaw
          : amountRaw // ignore: cast_nullable_to_non_nullable
              as BigInt,
      utxos: null == utxos
          ? _value.utxos
          : utxos // ignore: cast_nullable_to_non_nullable
              as List<Utxo>,
      fee: freezed == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get toAddress {
    return $AddressCopyWith<$Res>(_value.toAddress, (value) {
      return _then(_value.copyWith(toAddress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get changeAddress {
    if (_value.changeAddress == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.changeAddress!, (value) {
      return _then(_value.copyWith(changeAddress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SendTxCopyWith<$Res> implements $SendTxCopyWith<$Res> {
  factory _$$_SendTxCopyWith(_$_SendTx value, $Res Function(_$_SendTx) then) =
      __$$_SendTxCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Address toAddress,
      Address? changeAddress,
      BigInt amountRaw,
      List<Utxo> utxos,
      BigInt? fee,
      String? note});

  @override
  $AddressCopyWith<$Res> get toAddress;
  @override
  $AddressCopyWith<$Res>? get changeAddress;
}

/// @nodoc
class __$$_SendTxCopyWithImpl<$Res>
    extends _$SendTxCopyWithImpl<$Res, _$_SendTx>
    implements _$$_SendTxCopyWith<$Res> {
  __$$_SendTxCopyWithImpl(_$_SendTx _value, $Res Function(_$_SendTx) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toAddress = null,
    Object? changeAddress = freezed,
    Object? amountRaw = null,
    Object? utxos = null,
    Object? fee = freezed,
    Object? note = freezed,
  }) {
    return _then(_$_SendTx(
      toAddress: null == toAddress
          ? _value.toAddress
          : toAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      changeAddress: freezed == changeAddress
          ? _value.changeAddress
          : changeAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      amountRaw: null == amountRaw
          ? _value.amountRaw
          : amountRaw // ignore: cast_nullable_to_non_nullable
              as BigInt,
      utxos: null == utxos
          ? _value._utxos
          : utxos // ignore: cast_nullable_to_non_nullable
              as List<Utxo>,
      fee: freezed == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SendTx extends _SendTx {
  _$_SendTx(
      {required this.toAddress,
      this.changeAddress,
      required this.amountRaw,
      final List<Utxo> utxos = const [],
      this.fee,
      this.note})
      : _utxos = utxos,
        super._();

  @override
  final Address toAddress;
  @override
  final Address? changeAddress;
  @override
  final BigInt amountRaw;
  final List<Utxo> _utxos;
  @override
  @JsonKey()
  List<Utxo> get utxos {
    if (_utxos is EqualUnmodifiableListView) return _utxos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_utxos);
  }

  @override
  final BigInt? fee;
  @override
  final String? note;

  @override
  String toString() {
    return 'SendTx(toAddress: $toAddress, changeAddress: $changeAddress, amountRaw: $amountRaw, utxos: $utxos, fee: $fee, note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendTx &&
            (identical(other.toAddress, toAddress) ||
                other.toAddress == toAddress) &&
            (identical(other.changeAddress, changeAddress) ||
                other.changeAddress == changeAddress) &&
            (identical(other.amountRaw, amountRaw) ||
                other.amountRaw == amountRaw) &&
            const DeepCollectionEquality().equals(other._utxos, _utxos) &&
            (identical(other.fee, fee) || other.fee == fee) &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, toAddress, changeAddress,
      amountRaw, const DeepCollectionEquality().hash(_utxos), fee, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendTxCopyWith<_$_SendTx> get copyWith =>
      __$$_SendTxCopyWithImpl<_$_SendTx>(this, _$identity);
}

abstract class _SendTx extends SendTx {
  factory _SendTx(
      {required final Address toAddress,
      final Address? changeAddress,
      required final BigInt amountRaw,
      final List<Utxo> utxos,
      final BigInt? fee,
      final String? note}) = _$_SendTx;
  _SendTx._() : super._();

  @override
  Address get toAddress;
  @override
  Address? get changeAddress;
  @override
  BigInt get amountRaw;
  @override
  List<Utxo> get utxos;
  @override
  BigInt? get fee;
  @override
  String? get note;
  @override
  @JsonKey(ignore: true)
  _$$_SendTxCopyWith<_$_SendTx> get copyWith =>
      throw _privateConstructorUsedError;
}
