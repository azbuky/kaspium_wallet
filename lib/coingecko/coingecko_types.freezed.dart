// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coingecko_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CoinGeckoPrice _$CoinGeckoPriceFromJson(Map<String, dynamic> json) {
  return _CoinGeckoPrice.fromJson(json);
}

/// @nodoc
mixin _$CoinGeckoPrice {
  AvailableCurrencies get currency => throw _privateConstructorUsedError;
  Decimal get price => throw _privateConstructorUsedError;
  int get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinGeckoPriceCopyWith<CoinGeckoPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinGeckoPriceCopyWith<$Res> {
  factory $CoinGeckoPriceCopyWith(
          CoinGeckoPrice value, $Res Function(CoinGeckoPrice) then) =
      _$CoinGeckoPriceCopyWithImpl<$Res, CoinGeckoPrice>;
  @useResult
  $Res call({AvailableCurrencies currency, Decimal price, int timestamp});
}

/// @nodoc
class _$CoinGeckoPriceCopyWithImpl<$Res, $Val extends CoinGeckoPrice>
    implements $CoinGeckoPriceCopyWith<$Res> {
  _$CoinGeckoPriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? price = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as AvailableCurrencies,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Decimal,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoinGeckoPriceImplCopyWith<$Res>
    implements $CoinGeckoPriceCopyWith<$Res> {
  factory _$$CoinGeckoPriceImplCopyWith(_$CoinGeckoPriceImpl value,
          $Res Function(_$CoinGeckoPriceImpl) then) =
      __$$CoinGeckoPriceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AvailableCurrencies currency, Decimal price, int timestamp});
}

/// @nodoc
class __$$CoinGeckoPriceImplCopyWithImpl<$Res>
    extends _$CoinGeckoPriceCopyWithImpl<$Res, _$CoinGeckoPriceImpl>
    implements _$$CoinGeckoPriceImplCopyWith<$Res> {
  __$$CoinGeckoPriceImplCopyWithImpl(
      _$CoinGeckoPriceImpl _value, $Res Function(_$CoinGeckoPriceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? price = null,
    Object? timestamp = null,
  }) {
    return _then(_$CoinGeckoPriceImpl(
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as AvailableCurrencies,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Decimal,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoinGeckoPriceImpl extends _CoinGeckoPrice {
  const _$CoinGeckoPriceImpl(
      {required this.currency, required this.price, this.timestamp = 0})
      : super._();

  factory _$CoinGeckoPriceImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoinGeckoPriceImplFromJson(json);

  @override
  final AvailableCurrencies currency;
  @override
  final Decimal price;
  @override
  @JsonKey()
  final int timestamp;

  @override
  String toString() {
    return 'CoinGeckoPrice(currency: $currency, price: $price, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoinGeckoPriceImpl &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currency, price, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoinGeckoPriceImplCopyWith<_$CoinGeckoPriceImpl> get copyWith =>
      __$$CoinGeckoPriceImplCopyWithImpl<_$CoinGeckoPriceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoinGeckoPriceImplToJson(
      this,
    );
  }
}

abstract class _CoinGeckoPrice extends CoinGeckoPrice {
  const factory _CoinGeckoPrice(
      {required final AvailableCurrencies currency,
      required final Decimal price,
      final int timestamp}) = _$CoinGeckoPriceImpl;
  const _CoinGeckoPrice._() : super._();

  factory _CoinGeckoPrice.fromJson(Map<String, dynamic> json) =
      _$CoinGeckoPriceImpl.fromJson;

  @override
  AvailableCurrencies get currency;
  @override
  Decimal get price;
  @override
  int get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$CoinGeckoPriceImplCopyWith<_$CoinGeckoPriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
