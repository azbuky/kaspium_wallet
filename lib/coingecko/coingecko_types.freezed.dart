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
class _$_CoinGeckoPrice implements _CoinGeckoPrice {
  const _$_CoinGeckoPrice(
      {required this.currency, required this.price, required this.priceBtc});

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

abstract class _CoinGeckoPrice implements CoinGeckoPrice {
  const factory _CoinGeckoPrice(
      {required final AvailableCurrencies currency,
      required final Decimal price,
      required final Decimal priceBtc}) = _$_CoinGeckoPrice;

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

CoinGeckoRate _$CoinGeckoRateFromJson(Map<String, dynamic> json) {
  return _CoinGeckoRate.fromJson(json);
}

/// @nodoc
mixin _$CoinGeckoRate {
  String get name => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinGeckoRateCopyWith<CoinGeckoRate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinGeckoRateCopyWith<$Res> {
  factory $CoinGeckoRateCopyWith(
          CoinGeckoRate value, $Res Function(CoinGeckoRate) then) =
      _$CoinGeckoRateCopyWithImpl<$Res, CoinGeckoRate>;
  @useResult
  $Res call({String name, String unit, double value, String type});
}

/// @nodoc
class _$CoinGeckoRateCopyWithImpl<$Res, $Val extends CoinGeckoRate>
    implements $CoinGeckoRateCopyWith<$Res> {
  _$CoinGeckoRateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? unit = null,
    Object? value = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoinGeckoRateCopyWith<$Res>
    implements $CoinGeckoRateCopyWith<$Res> {
  factory _$$_CoinGeckoRateCopyWith(
          _$_CoinGeckoRate value, $Res Function(_$_CoinGeckoRate) then) =
      __$$_CoinGeckoRateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String unit, double value, String type});
}

/// @nodoc
class __$$_CoinGeckoRateCopyWithImpl<$Res>
    extends _$CoinGeckoRateCopyWithImpl<$Res, _$_CoinGeckoRate>
    implements _$$_CoinGeckoRateCopyWith<$Res> {
  __$$_CoinGeckoRateCopyWithImpl(
      _$_CoinGeckoRate _value, $Res Function(_$_CoinGeckoRate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? unit = null,
    Object? value = null,
    Object? type = null,
  }) {
    return _then(_$_CoinGeckoRate(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CoinGeckoRate implements _CoinGeckoRate {
  const _$_CoinGeckoRate(
      {required this.name,
      required this.unit,
      required this.value,
      required this.type});

  factory _$_CoinGeckoRate.fromJson(Map<String, dynamic> json) =>
      _$$_CoinGeckoRateFromJson(json);

  @override
  final String name;
  @override
  final String unit;
  @override
  final double value;
  @override
  final String type;

  @override
  String toString() {
    return 'CoinGeckoRate(name: $name, unit: $unit, value: $value, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoinGeckoRate &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, unit, value, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoinGeckoRateCopyWith<_$_CoinGeckoRate> get copyWith =>
      __$$_CoinGeckoRateCopyWithImpl<_$_CoinGeckoRate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoinGeckoRateToJson(
      this,
    );
  }
}

abstract class _CoinGeckoRate implements CoinGeckoRate {
  const factory _CoinGeckoRate(
      {required final String name,
      required final String unit,
      required final double value,
      required final String type}) = _$_CoinGeckoRate;

  factory _CoinGeckoRate.fromJson(Map<String, dynamic> json) =
      _$_CoinGeckoRate.fromJson;

  @override
  String get name;
  @override
  String get unit;
  @override
  double get value;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_CoinGeckoRateCopyWith<_$_CoinGeckoRate> get copyWith =>
      throw _privateConstructorUsedError;
}

CoinGeckoRates _$CoinGeckoRatesFromJson(Map<String, dynamic> json) {
  return _CoinGeckoRates.fromJson(json);
}

/// @nodoc
mixin _$CoinGeckoRates {
  Map<String, CoinGeckoRate> get rates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinGeckoRatesCopyWith<CoinGeckoRates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinGeckoRatesCopyWith<$Res> {
  factory $CoinGeckoRatesCopyWith(
          CoinGeckoRates value, $Res Function(CoinGeckoRates) then) =
      _$CoinGeckoRatesCopyWithImpl<$Res, CoinGeckoRates>;
  @useResult
  $Res call({Map<String, CoinGeckoRate> rates});
}

/// @nodoc
class _$CoinGeckoRatesCopyWithImpl<$Res, $Val extends CoinGeckoRates>
    implements $CoinGeckoRatesCopyWith<$Res> {
  _$CoinGeckoRatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rates = null,
  }) {
    return _then(_value.copyWith(
      rates: null == rates
          ? _value.rates
          : rates // ignore: cast_nullable_to_non_nullable
              as Map<String, CoinGeckoRate>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoinGeckoRatesCopyWith<$Res>
    implements $CoinGeckoRatesCopyWith<$Res> {
  factory _$$_CoinGeckoRatesCopyWith(
          _$_CoinGeckoRates value, $Res Function(_$_CoinGeckoRates) then) =
      __$$_CoinGeckoRatesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, CoinGeckoRate> rates});
}

/// @nodoc
class __$$_CoinGeckoRatesCopyWithImpl<$Res>
    extends _$CoinGeckoRatesCopyWithImpl<$Res, _$_CoinGeckoRates>
    implements _$$_CoinGeckoRatesCopyWith<$Res> {
  __$$_CoinGeckoRatesCopyWithImpl(
      _$_CoinGeckoRates _value, $Res Function(_$_CoinGeckoRates) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rates = null,
  }) {
    return _then(_$_CoinGeckoRates(
      rates: null == rates
          ? _value._rates
          : rates // ignore: cast_nullable_to_non_nullable
              as Map<String, CoinGeckoRate>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CoinGeckoRates extends _CoinGeckoRates {
  const _$_CoinGeckoRates({final Map<String, CoinGeckoRate> rates = const {}})
      : _rates = rates,
        super._();

  factory _$_CoinGeckoRates.fromJson(Map<String, dynamic> json) =>
      _$$_CoinGeckoRatesFromJson(json);

  final Map<String, CoinGeckoRate> _rates;
  @override
  @JsonKey()
  Map<String, CoinGeckoRate> get rates {
    if (_rates is EqualUnmodifiableMapView) return _rates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_rates);
  }

  @override
  String toString() {
    return 'CoinGeckoRates(rates: $rates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoinGeckoRates &&
            const DeepCollectionEquality().equals(other._rates, _rates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoinGeckoRatesCopyWith<_$_CoinGeckoRates> get copyWith =>
      __$$_CoinGeckoRatesCopyWithImpl<_$_CoinGeckoRates>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoinGeckoRatesToJson(
      this,
    );
  }
}

abstract class _CoinGeckoRates extends CoinGeckoRates {
  const factory _CoinGeckoRates({final Map<String, CoinGeckoRate> rates}) =
      _$_CoinGeckoRates;
  const _CoinGeckoRates._() : super._();

  factory _CoinGeckoRates.fromJson(Map<String, dynamic> json) =
      _$_CoinGeckoRates.fromJson;

  @override
  Map<String, CoinGeckoRate> get rates;
  @override
  @JsonKey(ignore: true)
  _$$_CoinGeckoRatesCopyWith<_$_CoinGeckoRates> get copyWith =>
      throw _privateConstructorUsedError;
}
