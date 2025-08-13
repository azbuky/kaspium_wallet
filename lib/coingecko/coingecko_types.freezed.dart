// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coingecko_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CoinGeckoPrice {

 AvailableCurrencies get currency; Decimal get price; int get timestamp;
/// Create a copy of CoinGeckoPrice
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoinGeckoPriceCopyWith<CoinGeckoPrice> get copyWith => _$CoinGeckoPriceCopyWithImpl<CoinGeckoPrice>(this as CoinGeckoPrice, _$identity);

  /// Serializes this CoinGeckoPrice to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoinGeckoPrice&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.price, price) || other.price == price)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currency,price,timestamp);

@override
String toString() {
  return 'CoinGeckoPrice(currency: $currency, price: $price, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $CoinGeckoPriceCopyWith<$Res>  {
  factory $CoinGeckoPriceCopyWith(CoinGeckoPrice value, $Res Function(CoinGeckoPrice) _then) = _$CoinGeckoPriceCopyWithImpl;
@useResult
$Res call({
 AvailableCurrencies currency, Decimal price, int timestamp
});




}
/// @nodoc
class _$CoinGeckoPriceCopyWithImpl<$Res>
    implements $CoinGeckoPriceCopyWith<$Res> {
  _$CoinGeckoPriceCopyWithImpl(this._self, this._then);

  final CoinGeckoPrice _self;
  final $Res Function(CoinGeckoPrice) _then;

/// Create a copy of CoinGeckoPrice
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currency = null,Object? price = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as AvailableCurrencies,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as Decimal,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CoinGeckoPrice].
extension CoinGeckoPricePatterns on CoinGeckoPrice {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CoinGeckoPrice value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CoinGeckoPrice() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CoinGeckoPrice value)  $default,){
final _that = this;
switch (_that) {
case _CoinGeckoPrice():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CoinGeckoPrice value)?  $default,){
final _that = this;
switch (_that) {
case _CoinGeckoPrice() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AvailableCurrencies currency,  Decimal price,  int timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CoinGeckoPrice() when $default != null:
return $default(_that.currency,_that.price,_that.timestamp);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AvailableCurrencies currency,  Decimal price,  int timestamp)  $default,) {final _that = this;
switch (_that) {
case _CoinGeckoPrice():
return $default(_that.currency,_that.price,_that.timestamp);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AvailableCurrencies currency,  Decimal price,  int timestamp)?  $default,) {final _that = this;
switch (_that) {
case _CoinGeckoPrice() when $default != null:
return $default(_that.currency,_that.price,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CoinGeckoPrice extends CoinGeckoPrice {
  const _CoinGeckoPrice({required this.currency, required this.price, this.timestamp = 0}): super._();
  factory _CoinGeckoPrice.fromJson(Map<String, dynamic> json) => _$CoinGeckoPriceFromJson(json);

@override final  AvailableCurrencies currency;
@override final  Decimal price;
@override@JsonKey() final  int timestamp;

/// Create a copy of CoinGeckoPrice
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoinGeckoPriceCopyWith<_CoinGeckoPrice> get copyWith => __$CoinGeckoPriceCopyWithImpl<_CoinGeckoPrice>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CoinGeckoPriceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoinGeckoPrice&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.price, price) || other.price == price)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currency,price,timestamp);

@override
String toString() {
  return 'CoinGeckoPrice(currency: $currency, price: $price, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$CoinGeckoPriceCopyWith<$Res> implements $CoinGeckoPriceCopyWith<$Res> {
  factory _$CoinGeckoPriceCopyWith(_CoinGeckoPrice value, $Res Function(_CoinGeckoPrice) _then) = __$CoinGeckoPriceCopyWithImpl;
@override @useResult
$Res call({
 AvailableCurrencies currency, Decimal price, int timestamp
});




}
/// @nodoc
class __$CoinGeckoPriceCopyWithImpl<$Res>
    implements _$CoinGeckoPriceCopyWith<$Res> {
  __$CoinGeckoPriceCopyWithImpl(this._self, this._then);

  final _CoinGeckoPrice _self;
  final $Res Function(_CoinGeckoPrice) _then;

/// Create a copy of CoinGeckoPrice
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currency = null,Object? price = null,Object? timestamp = null,}) {
  return _then(_CoinGeckoPrice(
currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as AvailableCurrencies,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as Decimal,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
