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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CoinGeckoPrice _$CoinGeckoPriceFromJson(Map<String, dynamic> json) {
  return _CoinGeckoPrice.fromJson(json);
}

/// @nodoc
mixin _$CoinGeckoPrice {
  AvailableCurrencies get currency => throw _privateConstructorUsedError;
  Decimal get price => throw _privateConstructorUsedError;
  Decimal get priceBtc => throw _privateConstructorUsedError;

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
  $Res call({AvailableCurrencies currency, Decimal price, Decimal priceBtc});
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
    Object? priceBtc = null,
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
      priceBtc: null == priceBtc
          ? _value.priceBtc
          : priceBtc // ignore: cast_nullable_to_non_nullable
              as Decimal,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoinGeckoPriceCopyWith<$Res>
    implements $CoinGeckoPriceCopyWith<$Res> {
  factory _$$_CoinGeckoPriceCopyWith(
          _$_CoinGeckoPrice value, $Res Function(_$_CoinGeckoPrice) then) =
      __$$_CoinGeckoPriceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AvailableCurrencies currency, Decimal price, Decimal priceBtc});
}

/// @nodoc
class __$$_CoinGeckoPriceCopyWithImpl<$Res>
    extends _$CoinGeckoPriceCopyWithImpl<$Res, _$_CoinGeckoPrice>
    implements _$$_CoinGeckoPriceCopyWith<$Res> {
  __$$_CoinGeckoPriceCopyWithImpl(
      _$_CoinGeckoPrice _value, $Res Function(_$_CoinGeckoPrice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? price = null,
    Object? priceBtc = null,
  }) {
    return _then(_$_CoinGeckoPrice(
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as AvailableCurrencies,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Decimal,
      priceBtc: null == priceBtc
          ? _value.priceBtc
          : priceBtc // ignore: cast_nullable_to_non_nullable
              as Decimal,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CoinGeckoPrice extends _CoinGeckoPrice {
  const _$_CoinGeckoPrice(
      {required this.currency, required this.price, required this.priceBtc})
      : super._();

  factory _$_CoinGeckoPrice.fromJson(Map<String, dynamic> json) =>
      _$$_CoinGeckoPriceFromJson(json);

  @override
  final AvailableCurrencies currency;
  @override
  final Decimal price;
  @override
  final Decimal priceBtc;

  @override
  String toString() {
    return 'CoinGeckoPrice(currency: $currency, price: $price, priceBtc: $priceBtc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoinGeckoPrice &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceBtc, priceBtc) ||
                other.priceBtc == priceBtc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currency, price, priceBtc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoinGeckoPriceCopyWith<_$_CoinGeckoPrice> get copyWith =>
      __$$_CoinGeckoPriceCopyWithImpl<_$_CoinGeckoPrice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoinGeckoPriceToJson(
      this,
    );
  }
}

abstract class _CoinGeckoPrice extends CoinGeckoPrice {
  const factory _CoinGeckoPrice(
      {required final AvailableCurrencies currency,
      required final Decimal price,
      required final Decimal priceBtc}) = _$_CoinGeckoPrice;
  const _CoinGeckoPrice._() : super._();

  factory _CoinGeckoPrice.fromJson(Map<String, dynamic> json) =
      _$_CoinGeckoPrice.fromJson;

  @override
  AvailableCurrencies get currency;
  @override
  Decimal get price;
  @override
  Decimal get priceBtc;
  @override
  @JsonKey(ignore: true)
  _$$_CoinGeckoPriceCopyWith<_$_CoinGeckoPrice> get copyWith =>
      throw _privateConstructorUsedError;
}
