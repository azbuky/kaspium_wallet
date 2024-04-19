// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WalletAddress _$WalletAddressFromJson(Map<String, dynamic> json) {
  return _WalletAddress.fromJson(json);
}

/// @nodoc
mixin _$WalletAddress {
  int get index => throw _privateConstructorUsedError;
  AddressType get type => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Address get address => throw _privateConstructorUsedError;
  bool get used => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletAddressCopyWith<WalletAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletAddressCopyWith<$Res> {
  factory $WalletAddressCopyWith(
          WalletAddress value, $Res Function(WalletAddress) then) =
      _$WalletAddressCopyWithImpl<$Res, WalletAddress>;
  @useResult
  $Res call(
      {int index, AddressType type, String name, Address address, bool used});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class _$WalletAddressCopyWithImpl<$Res, $Val extends WalletAddress>
    implements $WalletAddressCopyWith<$Res> {
  _$WalletAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? type = null,
    Object? name = null,
    Object? address = null,
    Object? used = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AddressType,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      used: null == used
          ? _value.used
          : used // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WalletAddressImplCopyWith<$Res>
    implements $WalletAddressCopyWith<$Res> {
  factory _$$WalletAddressImplCopyWith(
          _$WalletAddressImpl value, $Res Function(_$WalletAddressImpl) then) =
      __$$WalletAddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int index, AddressType type, String name, Address address, bool used});

  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$WalletAddressImplCopyWithImpl<$Res>
    extends _$WalletAddressCopyWithImpl<$Res, _$WalletAddressImpl>
    implements _$$WalletAddressImplCopyWith<$Res> {
  __$$WalletAddressImplCopyWithImpl(
      _$WalletAddressImpl _value, $Res Function(_$WalletAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? type = null,
    Object? name = null,
    Object? address = null,
    Object? used = null,
  }) {
    return _then(_$WalletAddressImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AddressType,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      used: null == used
          ? _value.used
          : used // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletAddressImpl extends _WalletAddress {
  const _$WalletAddressImpl(
      {required this.index,
      required this.type,
      required this.name,
      required this.address,
      this.used = true})
      : super._();

  factory _$WalletAddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletAddressImplFromJson(json);

  @override
  final int index;
  @override
  final AddressType type;
  @override
  final String name;
  @override
  final Address address;
  @override
  @JsonKey()
  final bool used;

  @override
  String toString() {
    return 'WalletAddress(index: $index, type: $type, name: $name, address: $address, used: $used)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletAddressImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.used, used) || other.used == used));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, index, type, name, address, used);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletAddressImplCopyWith<_$WalletAddressImpl> get copyWith =>
      __$$WalletAddressImplCopyWithImpl<_$WalletAddressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletAddressImplToJson(
      this,
    );
  }
}

abstract class _WalletAddress extends WalletAddress {
  const factory _WalletAddress(
      {required final int index,
      required final AddressType type,
      required final String name,
      required final Address address,
      final bool used}) = _$WalletAddressImpl;
  const _WalletAddress._() : super._();

  factory _WalletAddress.fromJson(Map<String, dynamic> json) =
      _$WalletAddressImpl.fromJson;

  @override
  int get index;
  @override
  AddressType get type;
  @override
  String get name;
  @override
  Address get address;
  @override
  bool get used;
  @override
  @JsonKey(ignore: true)
  _$$WalletAddressImplCopyWith<_$WalletAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
