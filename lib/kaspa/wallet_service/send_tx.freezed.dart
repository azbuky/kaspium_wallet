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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SendTx {
  KaspaUri get uri => throw _privateConstructorUsedError;
  Transaction get tx => throw _privateConstructorUsedError;
  List<Utxo> get utxos => throw _privateConstructorUsedError;
  bool get userSelected => throw _privateConstructorUsedError;
  Amount get amount => throw _privateConstructorUsedError;
  Amount get baseFee => throw _privateConstructorUsedError;
  Amount get priorityFee => throw _privateConstructorUsedError;
  Amount get change => throw _privateConstructorUsedError;
  Address? get changeAddress => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  BigInt get mass => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SendTxCopyWith<SendTx> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendTxCopyWith<$Res> {
  factory $SendTxCopyWith(SendTx value, $Res Function(SendTx) then) =
      _$SendTxCopyWithImpl<$Res, SendTx>;
  @useResult
  $Res call(
      {KaspaUri uri,
      Transaction tx,
      List<Utxo> utxos,
      bool userSelected,
      Amount amount,
      Amount baseFee,
      Amount priorityFee,
      Amount change,
      Address? changeAddress,
      String? note,
      BigInt mass});

  $KaspaUriCopyWith<$Res> get uri;
  $TransactionCopyWith<$Res> get tx;
  $AmountCopyWith<$Res> get amount;
  $AmountCopyWith<$Res> get baseFee;
  $AmountCopyWith<$Res> get priorityFee;
  $AmountCopyWith<$Res> get change;
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
    Object? uri = null,
    Object? tx = null,
    Object? utxos = null,
    Object? userSelected = null,
    Object? amount = null,
    Object? baseFee = null,
    Object? priorityFee = null,
    Object? change = null,
    Object? changeAddress = freezed,
    Object? note = freezed,
    Object? mass = null,
  }) {
    return _then(_value.copyWith(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as KaspaUri,
      tx: null == tx
          ? _value.tx
          : tx // ignore: cast_nullable_to_non_nullable
              as Transaction,
      utxos: null == utxos
          ? _value.utxos
          : utxos // ignore: cast_nullable_to_non_nullable
              as List<Utxo>,
      userSelected: null == userSelected
          ? _value.userSelected
          : userSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Amount,
      baseFee: null == baseFee
          ? _value.baseFee
          : baseFee // ignore: cast_nullable_to_non_nullable
              as Amount,
      priorityFee: null == priorityFee
          ? _value.priorityFee
          : priorityFee // ignore: cast_nullable_to_non_nullable
              as Amount,
      change: null == change
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as Amount,
      changeAddress: freezed == changeAddress
          ? _value.changeAddress
          : changeAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      mass: null == mass
          ? _value.mass
          : mass // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $KaspaUriCopyWith<$Res> get uri {
    return $KaspaUriCopyWith<$Res>(_value.uri, (value) {
      return _then(_value.copyWith(uri: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TransactionCopyWith<$Res> get tx {
    return $TransactionCopyWith<$Res>(_value.tx, (value) {
      return _then(_value.copyWith(tx: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AmountCopyWith<$Res> get amount {
    return $AmountCopyWith<$Res>(_value.amount, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AmountCopyWith<$Res> get baseFee {
    return $AmountCopyWith<$Res>(_value.baseFee, (value) {
      return _then(_value.copyWith(baseFee: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AmountCopyWith<$Res> get priorityFee {
    return $AmountCopyWith<$Res>(_value.priorityFee, (value) {
      return _then(_value.copyWith(priorityFee: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AmountCopyWith<$Res> get change {
    return $AmountCopyWith<$Res>(_value.change, (value) {
      return _then(_value.copyWith(change: value) as $Val);
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
abstract class _$$SendTxImplCopyWith<$Res> implements $SendTxCopyWith<$Res> {
  factory _$$SendTxImplCopyWith(
          _$SendTxImpl value, $Res Function(_$SendTxImpl) then) =
      __$$SendTxImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {KaspaUri uri,
      Transaction tx,
      List<Utxo> utxos,
      bool userSelected,
      Amount amount,
      Amount baseFee,
      Amount priorityFee,
      Amount change,
      Address? changeAddress,
      String? note,
      BigInt mass});

  @override
  $KaspaUriCopyWith<$Res> get uri;
  @override
  $TransactionCopyWith<$Res> get tx;
  @override
  $AmountCopyWith<$Res> get amount;
  @override
  $AmountCopyWith<$Res> get baseFee;
  @override
  $AmountCopyWith<$Res> get priorityFee;
  @override
  $AmountCopyWith<$Res> get change;
  @override
  $AddressCopyWith<$Res>? get changeAddress;
}

/// @nodoc
class __$$SendTxImplCopyWithImpl<$Res>
    extends _$SendTxCopyWithImpl<$Res, _$SendTxImpl>
    implements _$$SendTxImplCopyWith<$Res> {
  __$$SendTxImplCopyWithImpl(
      _$SendTxImpl _value, $Res Function(_$SendTxImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? tx = null,
    Object? utxos = null,
    Object? userSelected = null,
    Object? amount = null,
    Object? baseFee = null,
    Object? priorityFee = null,
    Object? change = null,
    Object? changeAddress = freezed,
    Object? note = freezed,
    Object? mass = null,
  }) {
    return _then(_$SendTxImpl(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as KaspaUri,
      tx: null == tx
          ? _value.tx
          : tx // ignore: cast_nullable_to_non_nullable
              as Transaction,
      utxos: null == utxos
          ? _value._utxos
          : utxos // ignore: cast_nullable_to_non_nullable
              as List<Utxo>,
      userSelected: null == userSelected
          ? _value.userSelected
          : userSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Amount,
      baseFee: null == baseFee
          ? _value.baseFee
          : baseFee // ignore: cast_nullable_to_non_nullable
              as Amount,
      priorityFee: null == priorityFee
          ? _value.priorityFee
          : priorityFee // ignore: cast_nullable_to_non_nullable
              as Amount,
      change: null == change
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as Amount,
      changeAddress: freezed == changeAddress
          ? _value.changeAddress
          : changeAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      mass: null == mass
          ? _value.mass
          : mass // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc

class _$SendTxImpl extends _SendTx {
  _$SendTxImpl(
      {required this.uri,
      required this.tx,
      required final List<Utxo> utxos,
      this.userSelected = false,
      required this.amount,
      required this.baseFee,
      required this.priorityFee,
      required this.change,
      this.changeAddress,
      this.note,
      required this.mass})
      : _utxos = utxos,
        super._();

  @override
  final KaspaUri uri;
  @override
  final Transaction tx;
  final List<Utxo> _utxos;
  @override
  List<Utxo> get utxos {
    if (_utxos is EqualUnmodifiableListView) return _utxos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_utxos);
  }

  @override
  @JsonKey()
  final bool userSelected;
  @override
  final Amount amount;
  @override
  final Amount baseFee;
  @override
  final Amount priorityFee;
  @override
  final Amount change;
  @override
  final Address? changeAddress;
  @override
  final String? note;
  @override
  final BigInt mass;

  @override
  String toString() {
    return 'SendTx(uri: $uri, tx: $tx, utxos: $utxos, userSelected: $userSelected, amount: $amount, baseFee: $baseFee, priorityFee: $priorityFee, change: $change, changeAddress: $changeAddress, note: $note, mass: $mass)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendTxImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.tx, tx) || other.tx == tx) &&
            const DeepCollectionEquality().equals(other._utxos, _utxos) &&
            (identical(other.userSelected, userSelected) ||
                other.userSelected == userSelected) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.baseFee, baseFee) || other.baseFee == baseFee) &&
            (identical(other.priorityFee, priorityFee) ||
                other.priorityFee == priorityFee) &&
            (identical(other.change, change) || other.change == change) &&
            (identical(other.changeAddress, changeAddress) ||
                other.changeAddress == changeAddress) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.mass, mass) || other.mass == mass));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      uri,
      tx,
      const DeepCollectionEquality().hash(_utxos),
      userSelected,
      amount,
      baseFee,
      priorityFee,
      change,
      changeAddress,
      note,
      mass);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendTxImplCopyWith<_$SendTxImpl> get copyWith =>
      __$$SendTxImplCopyWithImpl<_$SendTxImpl>(this, _$identity);
}

abstract class _SendTx extends SendTx {
  factory _SendTx(
      {required final KaspaUri uri,
      required final Transaction tx,
      required final List<Utxo> utxos,
      final bool userSelected,
      required final Amount amount,
      required final Amount baseFee,
      required final Amount priorityFee,
      required final Amount change,
      final Address? changeAddress,
      final String? note,
      required final BigInt mass}) = _$SendTxImpl;
  _SendTx._() : super._();

  @override
  KaspaUri get uri;
  @override
  Transaction get tx;
  @override
  List<Utxo> get utxos;
  @override
  bool get userSelected;
  @override
  Amount get amount;
  @override
  Amount get baseFee;
  @override
  Amount get priorityFee;
  @override
  Amount get change;
  @override
  Address? get changeAddress;
  @override
  String? get note;
  @override
  BigInt get mass;
  @override
  @JsonKey(ignore: true)
  _$$SendTxImplCopyWith<_$SendTxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
