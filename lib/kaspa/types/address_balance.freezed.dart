// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_balance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddressBalance _$AddressBalanceFromJson(Map<String, dynamic> json) {
  return _AddressBalance.fromJson(json);
}

/// @nodoc
mixin _$AddressBalance {
  String get address => throw _privateConstructorUsedError;
  BigInt get balance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressBalanceCopyWith<AddressBalance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressBalanceCopyWith<$Res> {
  factory $AddressBalanceCopyWith(
          AddressBalance value, $Res Function(AddressBalance) then) =
      _$AddressBalanceCopyWithImpl<$Res, AddressBalance>;
  @useResult
  $Res call({String address, BigInt balance});
}

/// @nodoc
class _$AddressBalanceCopyWithImpl<$Res, $Val extends AddressBalance>
    implements $AddressBalanceCopyWith<$Res> {
  _$AddressBalanceCopyWithImpl(this._value, this._then);

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
              as BigInt,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressBalanceCopyWith<$Res>
    implements $AddressBalanceCopyWith<$Res> {
  factory _$$_AddressBalanceCopyWith(
          _$_AddressBalance value, $Res Function(_$_AddressBalance) then) =
      __$$_AddressBalanceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String address, BigInt balance});
}

/// @nodoc
class __$$_AddressBalanceCopyWithImpl<$Res>
    extends _$AddressBalanceCopyWithImpl<$Res, _$_AddressBalance>
    implements _$$_AddressBalanceCopyWith<$Res> {
  __$$_AddressBalanceCopyWithImpl(
      _$_AddressBalance _value, $Res Function(_$_AddressBalance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? balance = null,
  }) {
    return _then(_$_AddressBalance(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddressBalance extends _AddressBalance {
  const _$_AddressBalance({required this.address, required this.balance})
      : super._();

  factory _$_AddressBalance.fromJson(Map<String, dynamic> json) =>
      _$$_AddressBalanceFromJson(json);

  @override
  final String address;
  @override
  final BigInt balance;

  @override
  String toString() {
    return 'AddressBalance(address: $address, balance: $balance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressBalance &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address, balance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressBalanceCopyWith<_$_AddressBalance> get copyWith =>
      __$$_AddressBalanceCopyWithImpl<_$_AddressBalance>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressBalanceToJson(
      this,
    );
  }
}

abstract class _AddressBalance extends AddressBalance {
  const factory _AddressBalance(
      {required final String address,
      required final BigInt balance}) = _$_AddressBalance;
  const _AddressBalance._() : super._();

  factory _AddressBalance.fromJson(Map<String, dynamic> json) =
      _$_AddressBalance.fromJson;

  @override
  String get address;
  @override
  BigInt get balance;
  @override
  @JsonKey(ignore: true)
  _$$_AddressBalanceCopyWith<_$_AddressBalance> get copyWith =>
      throw _privateConstructorUsedError;
}
