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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WalletAddress _$WalletAddressFromJson(Map<String, dynamic> json) {
  return _WalletAddress.fromJson(json);
}

/// @nodoc
mixin _$WalletAddress {
  int get index => throw _privateConstructorUsedError;
  AddressType get type => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Address get address => throw _privateConstructorUsedError;

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
  $Res call({int index, AddressType type, String name, Address address});

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
abstract class _$$_WalletAddressCopyWith<$Res>
    implements $WalletAddressCopyWith<$Res> {
  factory _$$_WalletAddressCopyWith(
          _$_WalletAddress value, $Res Function(_$_WalletAddress) then) =
      __$$_WalletAddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, AddressType type, String name, Address address});

  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$_WalletAddressCopyWithImpl<$Res>
    extends _$WalletAddressCopyWithImpl<$Res, _$_WalletAddress>
    implements _$$_WalletAddressCopyWith<$Res> {
  __$$_WalletAddressCopyWithImpl(
      _$_WalletAddress _value, $Res Function(_$_WalletAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? type = null,
    Object? name = null,
    Object? address = null,
  }) {
    return _then(_$_WalletAddress(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WalletAddress extends _WalletAddress {
  const _$_WalletAddress(
      {required this.index,
      required this.type,
      required this.name,
      required this.address})
      : super._();

  factory _$_WalletAddress.fromJson(Map<String, dynamic> json) =>
      _$$_WalletAddressFromJson(json);

  @override
  final int index;
  @override
  final AddressType type;
  @override
  final String name;
  @override
  final Address address;

  @override
  String toString() {
    return 'WalletAddress(index: $index, type: $type, name: $name, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalletAddress &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, index, type, name, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WalletAddressCopyWith<_$_WalletAddress> get copyWith =>
      __$$_WalletAddressCopyWithImpl<_$_WalletAddress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalletAddressToJson(
      this,
    );
  }
}

abstract class _WalletAddress extends WalletAddress {
  const factory _WalletAddress(
      {required final int index,
      required final AddressType type,
      required final String name,
      required final Address address}) = _$_WalletAddress;
  const _WalletAddress._() : super._();

  factory _WalletAddress.fromJson(Map<String, dynamic> json) =
      _$_WalletAddress.fromJson;

  @override
  int get index;
  @override
  AddressType get type;
  @override
  String get name;
  @override
  Address get address;
  @override
  @JsonKey(ignore: true)
  _$$_WalletAddressCopyWith<_$_WalletAddress> get copyWith =>
      throw _privateConstructorUsedError;
}
