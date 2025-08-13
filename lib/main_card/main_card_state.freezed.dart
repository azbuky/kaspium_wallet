// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_card_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MainCardState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainCardState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MainCardState()';
}


}

/// @nodoc
class $MainCardStateCopyWith<$Res>  {
$MainCardStateCopyWith(MainCardState _, $Res Function(MainCardState) __);
}


/// Adds pattern-matching-related methods to [MainCardState].
extension MainCardStatePatterns on MainCardState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ShowBalance value)?  showBalance,TResult Function( _HideBalance value)?  hideBalance,TResult Function( _HideAll value)?  hideAll,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShowBalance() when showBalance != null:
return showBalance(_that);case _HideBalance() when hideBalance != null:
return hideBalance(_that);case _HideAll() when hideAll != null:
return hideAll(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ShowBalance value)  showBalance,required TResult Function( _HideBalance value)  hideBalance,required TResult Function( _HideAll value)  hideAll,}){
final _that = this;
switch (_that) {
case _ShowBalance():
return showBalance(_that);case _HideBalance():
return hideBalance(_that);case _HideAll():
return hideAll(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ShowBalance value)?  showBalance,TResult? Function( _HideBalance value)?  hideBalance,TResult? Function( _HideAll value)?  hideAll,}){
final _that = this;
switch (_that) {
case _ShowBalance() when showBalance != null:
return showBalance(_that);case _HideBalance() when hideBalance != null:
return hideBalance(_that);case _HideAll() when hideAll != null:
return hideAll(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  showBalance,TResult Function()?  hideBalance,TResult Function()?  hideAll,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShowBalance() when showBalance != null:
return showBalance();case _HideBalance() when hideBalance != null:
return hideBalance();case _HideAll() when hideAll != null:
return hideAll();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  showBalance,required TResult Function()  hideBalance,required TResult Function()  hideAll,}) {final _that = this;
switch (_that) {
case _ShowBalance():
return showBalance();case _HideBalance():
return hideBalance();case _HideAll():
return hideAll();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  showBalance,TResult? Function()?  hideBalance,TResult? Function()?  hideAll,}) {final _that = this;
switch (_that) {
case _ShowBalance() when showBalance != null:
return showBalance();case _HideBalance() when hideBalance != null:
return hideBalance();case _HideAll() when hideAll != null:
return hideAll();case _:
  return null;

}
}

}

/// @nodoc


class _ShowBalance extends MainCardState {
  const _ShowBalance(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShowBalance);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MainCardState.showBalance()';
}


}




/// @nodoc


class _HideBalance extends MainCardState {
  const _HideBalance(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HideBalance);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MainCardState.hideBalance()';
}


}




/// @nodoc


class _HideAll extends MainCardState {
  const _HideAll(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HideAll);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MainCardState.hideAll()';
}


}




// dart format on
