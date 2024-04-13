// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kaspa_uri.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$KaspaUriParam {
  String get key => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KaspaUriParamCopyWith<KaspaUriParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KaspaUriParamCopyWith<$Res> {
  factory $KaspaUriParamCopyWith(
          KaspaUriParam value, $Res Function(KaspaUriParam) then) =
      _$KaspaUriParamCopyWithImpl<$Res, KaspaUriParam>;
  @useResult
  $Res call({String key, String value});
}

/// @nodoc
class _$KaspaUriParamCopyWithImpl<$Res, $Val extends KaspaUriParam>
    implements $KaspaUriParamCopyWith<$Res> {
  _$KaspaUriParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KaspaUriParamImplCopyWith<$Res>
    implements $KaspaUriParamCopyWith<$Res> {
  factory _$$KaspaUriParamImplCopyWith(
          _$KaspaUriParamImpl value, $Res Function(_$KaspaUriParamImpl) then) =
      __$$KaspaUriParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String value});
}

/// @nodoc
class __$$KaspaUriParamImplCopyWithImpl<$Res>
    extends _$KaspaUriParamCopyWithImpl<$Res, _$KaspaUriParamImpl>
    implements _$$KaspaUriParamImplCopyWith<$Res> {
  __$$KaspaUriParamImplCopyWithImpl(
      _$KaspaUriParamImpl _value, $Res Function(_$KaspaUriParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_$KaspaUriParamImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$KaspaUriParamImpl extends _KaspaUriParam {
  const _$KaspaUriParamImpl({required this.key, required this.value})
      : super._();

  @override
  final String key;
  @override
  final String value;

  @override
  String toString() {
    return 'KaspaUriParam(key: $key, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KaspaUriParamImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KaspaUriParamImplCopyWith<_$KaspaUriParamImpl> get copyWith =>
      __$$KaspaUriParamImplCopyWithImpl<_$KaspaUriParamImpl>(this, _$identity);
}

abstract class _KaspaUriParam extends KaspaUriParam {
  const factory _KaspaUriParam(
      {required final String key,
      required final String value}) = _$KaspaUriParamImpl;
  const _KaspaUriParam._() : super._();

  @override
  String get key;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$KaspaUriParamImplCopyWith<_$KaspaUriParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$KaspaUri {
  Address get address => throw _privateConstructorUsedError;
  Amount? get amount => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  IList<KaspaUriParam> get others => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KaspaUriCopyWith<KaspaUri> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KaspaUriCopyWith<$Res> {
  factory $KaspaUriCopyWith(KaspaUri value, $Res Function(KaspaUri) then) =
      _$KaspaUriCopyWithImpl<$Res, KaspaUri>;
  @useResult
  $Res call(
      {Address address,
      Amount? amount,
      String? label,
      String? message,
      IList<KaspaUriParam> others});

  $AddressCopyWith<$Res> get address;
  $AmountCopyWith<$Res>? get amount;
}

/// @nodoc
class _$KaspaUriCopyWithImpl<$Res, $Val extends KaspaUri>
    implements $KaspaUriCopyWith<$Res> {
  _$KaspaUriCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? amount = freezed,
    Object? label = freezed,
    Object? message = freezed,
    Object? others = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Amount?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      others: null == others
          ? _value.others
          : others // ignore: cast_nullable_to_non_nullable
              as IList<KaspaUriParam>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AmountCopyWith<$Res>? get amount {
    if (_value.amount == null) {
      return null;
    }

    return $AmountCopyWith<$Res>(_value.amount!, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$KaspaUriImplCopyWith<$Res>
    implements $KaspaUriCopyWith<$Res> {
  factory _$$KaspaUriImplCopyWith(
          _$KaspaUriImpl value, $Res Function(_$KaspaUriImpl) then) =
      __$$KaspaUriImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Address address,
      Amount? amount,
      String? label,
      String? message,
      IList<KaspaUriParam> others});

  @override
  $AddressCopyWith<$Res> get address;
  @override
  $AmountCopyWith<$Res>? get amount;
}

/// @nodoc
class __$$KaspaUriImplCopyWithImpl<$Res>
    extends _$KaspaUriCopyWithImpl<$Res, _$KaspaUriImpl>
    implements _$$KaspaUriImplCopyWith<$Res> {
  __$$KaspaUriImplCopyWithImpl(
      _$KaspaUriImpl _value, $Res Function(_$KaspaUriImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? amount = freezed,
    Object? label = freezed,
    Object? message = freezed,
    Object? others = null,
  }) {
    return _then(_$KaspaUriImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Amount?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      others: null == others
          ? _value.others
          : others // ignore: cast_nullable_to_non_nullable
              as IList<KaspaUriParam>,
    ));
  }
}

/// @nodoc

class _$KaspaUriImpl extends _KaspaUri {
  const _$KaspaUriImpl(
      {required this.address,
      this.amount,
      this.label,
      this.message,
      this.others = const IListConst([])})
      : super._();

  @override
  final Address address;
  @override
  final Amount? amount;
  @override
  final String? label;
  @override
  final String? message;
  @override
  @JsonKey()
  final IList<KaspaUriParam> others;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KaspaUriImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.others, others));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, amount, label, message,
      const DeepCollectionEquality().hash(others));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KaspaUriImplCopyWith<_$KaspaUriImpl> get copyWith =>
      __$$KaspaUriImplCopyWithImpl<_$KaspaUriImpl>(this, _$identity);
}

abstract class _KaspaUri extends KaspaUri {
  const factory _KaspaUri(
      {required final Address address,
      final Amount? amount,
      final String? label,
      final String? message,
      final IList<KaspaUriParam> others}) = _$KaspaUriImpl;
  const _KaspaUri._() : super._();

  @override
  Address get address;
  @override
  Amount? get amount;
  @override
  String? get label;
  @override
  String? get message;
  @override
  IList<KaspaUriParam> get others;
  @override
  @JsonKey(ignore: true)
  _$$KaspaUriImplCopyWith<_$KaspaUriImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
