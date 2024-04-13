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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$AddressBalanceImplCopyWith<$Res>
    implements $AddressBalanceCopyWith<$Res> {
  factory _$$AddressBalanceImplCopyWith(_$AddressBalanceImpl value,
          $Res Function(_$AddressBalanceImpl) then) =
      __$$AddressBalanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String address, BigInt balance});
}

/// @nodoc
class __$$AddressBalanceImplCopyWithImpl<$Res>
    extends _$AddressBalanceCopyWithImpl<$Res, _$AddressBalanceImpl>
    implements _$$AddressBalanceImplCopyWith<$Res> {
  __$$AddressBalanceImplCopyWithImpl(
      _$AddressBalanceImpl _value, $Res Function(_$AddressBalanceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? balance = null,
  }) {
    return _then(_$AddressBalanceImpl(
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
class _$AddressBalanceImpl extends _AddressBalance {
  const _$AddressBalanceImpl({required this.address, required this.balance})
      : super._();

  factory _$AddressBalanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressBalanceImplFromJson(json);

  @override
  final String address;
  @override
  final BigInt balance;

  @override
  String toString() {
    return 'AddressBalance(address: $address, balance: $balance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressBalanceImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address, balance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressBalanceImplCopyWith<_$AddressBalanceImpl> get copyWith =>
      __$$AddressBalanceImplCopyWithImpl<_$AddressBalanceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressBalanceImplToJson(
      this,
    );
  }
}

abstract class _AddressBalance extends AddressBalance {
  const factory _AddressBalance(
      {required final String address,
      required final BigInt balance}) = _$AddressBalanceImpl;
  const _AddressBalance._() : super._();

  factory _AddressBalance.fromJson(Map<String, dynamic> json) =
      _$AddressBalanceImpl.fromJson;

  @override
  String get address;
  @override
  BigInt get balance;
  @override
  @JsonKey(ignore: true)
  _$$AddressBalanceImplCopyWith<_$AddressBalanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
