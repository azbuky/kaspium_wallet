// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'txnotes_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TxNote {

 String get txId; String get note;
/// Create a copy of TxNote
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TxNoteCopyWith<TxNote> get copyWith => _$TxNoteCopyWithImpl<TxNote>(this as TxNote, _$identity);

  /// Serializes this TxNote to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxNote&&(identical(other.txId, txId) || other.txId == txId)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,txId,note);

@override
String toString() {
  return 'TxNote(txId: $txId, note: $note)';
}


}

/// @nodoc
abstract mixin class $TxNoteCopyWith<$Res>  {
  factory $TxNoteCopyWith(TxNote value, $Res Function(TxNote) _then) = _$TxNoteCopyWithImpl;
@useResult
$Res call({
 String txId, String note
});




}
/// @nodoc
class _$TxNoteCopyWithImpl<$Res>
    implements $TxNoteCopyWith<$Res> {
  _$TxNoteCopyWithImpl(this._self, this._then);

  final TxNote _self;
  final $Res Function(TxNote) _then;

/// Create a copy of TxNote
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? txId = null,Object? note = null,}) {
  return _then(_self.copyWith(
txId: null == txId ? _self.txId : txId // ignore: cast_nullable_to_non_nullable
as String,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TxNote].
extension TxNotePatterns on TxNote {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TxNote value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TxNote() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TxNote value)  $default,){
final _that = this;
switch (_that) {
case _TxNote():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TxNote value)?  $default,){
final _that = this;
switch (_that) {
case _TxNote() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String txId,  String note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TxNote() when $default != null:
return $default(_that.txId,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String txId,  String note)  $default,) {final _that = this;
switch (_that) {
case _TxNote():
return $default(_that.txId,_that.note);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String txId,  String note)?  $default,) {final _that = this;
switch (_that) {
case _TxNote() when $default != null:
return $default(_that.txId,_that.note);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TxNote implements TxNote {
  const _TxNote({required this.txId, required this.note});
  factory _TxNote.fromJson(Map<String, dynamic> json) => _$TxNoteFromJson(json);

@override final  String txId;
@override final  String note;

/// Create a copy of TxNote
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TxNoteCopyWith<_TxNote> get copyWith => __$TxNoteCopyWithImpl<_TxNote>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TxNoteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TxNote&&(identical(other.txId, txId) || other.txId == txId)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,txId,note);

@override
String toString() {
  return 'TxNote(txId: $txId, note: $note)';
}


}

/// @nodoc
abstract mixin class _$TxNoteCopyWith<$Res> implements $TxNoteCopyWith<$Res> {
  factory _$TxNoteCopyWith(_TxNote value, $Res Function(_TxNote) _then) = __$TxNoteCopyWithImpl;
@override @useResult
$Res call({
 String txId, String note
});




}
/// @nodoc
class __$TxNoteCopyWithImpl<$Res>
    implements _$TxNoteCopyWith<$Res> {
  __$TxNoteCopyWithImpl(this._self, this._then);

  final _TxNote _self;
  final $Res Function(_TxNote) _then;

/// Create a copy of TxNote
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? txId = null,Object? note = null,}) {
  return _then(_TxNote(
txId: null == txId ? _self.txId : txId // ignore: cast_nullable_to_non_nullable
as String,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
