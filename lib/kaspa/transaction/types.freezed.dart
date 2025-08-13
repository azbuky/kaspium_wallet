// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UtxoChanges {

 List<Utxo> get removed; List<Utxo> get added;
/// Create a copy of UtxoChanges
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UtxoChangesCopyWith<UtxoChanges> get copyWith => _$UtxoChangesCopyWithImpl<UtxoChanges>(this as UtxoChanges, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UtxoChanges&&const DeepCollectionEquality().equals(other.removed, removed)&&const DeepCollectionEquality().equals(other.added, added));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(removed),const DeepCollectionEquality().hash(added));

@override
String toString() {
  return 'UtxoChanges(removed: $removed, added: $added)';
}


}

/// @nodoc
abstract mixin class $UtxoChangesCopyWith<$Res>  {
  factory $UtxoChangesCopyWith(UtxoChanges value, $Res Function(UtxoChanges) _then) = _$UtxoChangesCopyWithImpl;
@useResult
$Res call({
 List<Utxo> removed, List<Utxo> added
});




}
/// @nodoc
class _$UtxoChangesCopyWithImpl<$Res>
    implements $UtxoChangesCopyWith<$Res> {
  _$UtxoChangesCopyWithImpl(this._self, this._then);

  final UtxoChanges _self;
  final $Res Function(UtxoChanges) _then;

/// Create a copy of UtxoChanges
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? removed = null,Object? added = null,}) {
  return _then(_self.copyWith(
removed: null == removed ? _self.removed : removed // ignore: cast_nullable_to_non_nullable
as List<Utxo>,added: null == added ? _self.added : added // ignore: cast_nullable_to_non_nullable
as List<Utxo>,
  ));
}

}


/// Adds pattern-matching-related methods to [UtxoChanges].
extension UtxoChangesPatterns on UtxoChanges {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UtxoChanges value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UtxoChanges() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UtxoChanges value)  $default,){
final _that = this;
switch (_that) {
case _UtxoChanges():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UtxoChanges value)?  $default,){
final _that = this;
switch (_that) {
case _UtxoChanges() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Utxo> removed,  List<Utxo> added)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UtxoChanges() when $default != null:
return $default(_that.removed,_that.added);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Utxo> removed,  List<Utxo> added)  $default,) {final _that = this;
switch (_that) {
case _UtxoChanges():
return $default(_that.removed,_that.added);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Utxo> removed,  List<Utxo> added)?  $default,) {final _that = this;
switch (_that) {
case _UtxoChanges() when $default != null:
return $default(_that.removed,_that.added);case _:
  return null;

}
}

}

/// @nodoc


class _UtxoChanges implements UtxoChanges {
  const _UtxoChanges({required final  List<Utxo> removed, required final  List<Utxo> added}): _removed = removed,_added = added;
  

 final  List<Utxo> _removed;
@override List<Utxo> get removed {
  if (_removed is EqualUnmodifiableListView) return _removed;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_removed);
}

 final  List<Utxo> _added;
@override List<Utxo> get added {
  if (_added is EqualUnmodifiableListView) return _added;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_added);
}


/// Create a copy of UtxoChanges
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UtxoChangesCopyWith<_UtxoChanges> get copyWith => __$UtxoChangesCopyWithImpl<_UtxoChanges>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UtxoChanges&&const DeepCollectionEquality().equals(other._removed, _removed)&&const DeepCollectionEquality().equals(other._added, _added));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_removed),const DeepCollectionEquality().hash(_added));

@override
String toString() {
  return 'UtxoChanges(removed: $removed, added: $added)';
}


}

/// @nodoc
abstract mixin class _$UtxoChangesCopyWith<$Res> implements $UtxoChangesCopyWith<$Res> {
  factory _$UtxoChangesCopyWith(_UtxoChanges value, $Res Function(_UtxoChanges) _then) = __$UtxoChangesCopyWithImpl;
@override @useResult
$Res call({
 List<Utxo> removed, List<Utxo> added
});




}
/// @nodoc
class __$UtxoChangesCopyWithImpl<$Res>
    implements _$UtxoChangesCopyWith<$Res> {
  __$UtxoChangesCopyWithImpl(this._self, this._then);

  final _UtxoChanges _self;
  final $Res Function(_UtxoChanges) _then;

/// Create a copy of UtxoChanges
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? removed = null,Object? added = null,}) {
  return _then(_UtxoChanges(
removed: null == removed ? _self._removed : removed // ignore: cast_nullable_to_non_nullable
as List<Utxo>,added: null == added ? _self._added : added // ignore: cast_nullable_to_non_nullable
as List<Utxo>,
  ));
}


}


/// @nodoc
mixin _$Utxo {

 String get address; Outpoint get outpoint; UtxoEntry get utxoEntry;
/// Create a copy of Utxo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UtxoCopyWith<Utxo> get copyWith => _$UtxoCopyWithImpl<Utxo>(this as Utxo, _$identity);

  /// Serializes this Utxo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Utxo&&(identical(other.address, address) || other.address == address)&&(identical(other.outpoint, outpoint) || other.outpoint == outpoint)&&(identical(other.utxoEntry, utxoEntry) || other.utxoEntry == utxoEntry));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,outpoint,utxoEntry);

@override
String toString() {
  return 'Utxo(address: $address, outpoint: $outpoint, utxoEntry: $utxoEntry)';
}


}

/// @nodoc
abstract mixin class $UtxoCopyWith<$Res>  {
  factory $UtxoCopyWith(Utxo value, $Res Function(Utxo) _then) = _$UtxoCopyWithImpl;
@useResult
$Res call({
 String address, Outpoint outpoint, UtxoEntry utxoEntry
});


$OutpointCopyWith<$Res> get outpoint;$UtxoEntryCopyWith<$Res> get utxoEntry;

}
/// @nodoc
class _$UtxoCopyWithImpl<$Res>
    implements $UtxoCopyWith<$Res> {
  _$UtxoCopyWithImpl(this._self, this._then);

  final Utxo _self;
  final $Res Function(Utxo) _then;

/// Create a copy of Utxo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? address = null,Object? outpoint = null,Object? utxoEntry = null,}) {
  return _then(_self.copyWith(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,outpoint: null == outpoint ? _self.outpoint : outpoint // ignore: cast_nullable_to_non_nullable
as Outpoint,utxoEntry: null == utxoEntry ? _self.utxoEntry : utxoEntry // ignore: cast_nullable_to_non_nullable
as UtxoEntry,
  ));
}
/// Create a copy of Utxo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OutpointCopyWith<$Res> get outpoint {
  
  return $OutpointCopyWith<$Res>(_self.outpoint, (value) {
    return _then(_self.copyWith(outpoint: value));
  });
}/// Create a copy of Utxo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UtxoEntryCopyWith<$Res> get utxoEntry {
  
  return $UtxoEntryCopyWith<$Res>(_self.utxoEntry, (value) {
    return _then(_self.copyWith(utxoEntry: value));
  });
}
}


/// Adds pattern-matching-related methods to [Utxo].
extension UtxoPatterns on Utxo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Utxo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Utxo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Utxo value)  $default,){
final _that = this;
switch (_that) {
case _Utxo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Utxo value)?  $default,){
final _that = this;
switch (_that) {
case _Utxo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String address,  Outpoint outpoint,  UtxoEntry utxoEntry)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Utxo() when $default != null:
return $default(_that.address,_that.outpoint,_that.utxoEntry);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String address,  Outpoint outpoint,  UtxoEntry utxoEntry)  $default,) {final _that = this;
switch (_that) {
case _Utxo():
return $default(_that.address,_that.outpoint,_that.utxoEntry);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String address,  Outpoint outpoint,  UtxoEntry utxoEntry)?  $default,) {final _that = this;
switch (_that) {
case _Utxo() when $default != null:
return $default(_that.address,_that.outpoint,_that.utxoEntry);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Utxo extends Utxo {
  const _Utxo({required this.address, required this.outpoint, required this.utxoEntry}): super._();
  factory _Utxo.fromJson(Map<String, dynamic> json) => _$UtxoFromJson(json);

@override final  String address;
@override final  Outpoint outpoint;
@override final  UtxoEntry utxoEntry;

/// Create a copy of Utxo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UtxoCopyWith<_Utxo> get copyWith => __$UtxoCopyWithImpl<_Utxo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UtxoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Utxo&&(identical(other.address, address) || other.address == address)&&(identical(other.outpoint, outpoint) || other.outpoint == outpoint)&&(identical(other.utxoEntry, utxoEntry) || other.utxoEntry == utxoEntry));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,outpoint,utxoEntry);

@override
String toString() {
  return 'Utxo(address: $address, outpoint: $outpoint, utxoEntry: $utxoEntry)';
}


}

/// @nodoc
abstract mixin class _$UtxoCopyWith<$Res> implements $UtxoCopyWith<$Res> {
  factory _$UtxoCopyWith(_Utxo value, $Res Function(_Utxo) _then) = __$UtxoCopyWithImpl;
@override @useResult
$Res call({
 String address, Outpoint outpoint, UtxoEntry utxoEntry
});


@override $OutpointCopyWith<$Res> get outpoint;@override $UtxoEntryCopyWith<$Res> get utxoEntry;

}
/// @nodoc
class __$UtxoCopyWithImpl<$Res>
    implements _$UtxoCopyWith<$Res> {
  __$UtxoCopyWithImpl(this._self, this._then);

  final _Utxo _self;
  final $Res Function(_Utxo) _then;

/// Create a copy of Utxo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? address = null,Object? outpoint = null,Object? utxoEntry = null,}) {
  return _then(_Utxo(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,outpoint: null == outpoint ? _self.outpoint : outpoint // ignore: cast_nullable_to_non_nullable
as Outpoint,utxoEntry: null == utxoEntry ? _self.utxoEntry : utxoEntry // ignore: cast_nullable_to_non_nullable
as UtxoEntry,
  ));
}

/// Create a copy of Utxo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OutpointCopyWith<$Res> get outpoint {
  
  return $OutpointCopyWith<$Res>(_self.outpoint, (value) {
    return _then(_self.copyWith(outpoint: value));
  });
}/// Create a copy of Utxo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UtxoEntryCopyWith<$Res> get utxoEntry {
  
  return $UtxoEntryCopyWith<$Res>(_self.utxoEntry, (value) {
    return _then(_self.copyWith(utxoEntry: value));
  });
}
}


/// @nodoc
mixin _$UtxoEntry {

 BigInt get amount; ScriptPublicKey get scriptPublicKey; BigInt get blockDaaScore; bool get isCoinbase;
/// Create a copy of UtxoEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UtxoEntryCopyWith<UtxoEntry> get copyWith => _$UtxoEntryCopyWithImpl<UtxoEntry>(this as UtxoEntry, _$identity);

  /// Serializes this UtxoEntry to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'UtxoEntry(amount: $amount, scriptPublicKey: $scriptPublicKey, blockDaaScore: $blockDaaScore, isCoinbase: $isCoinbase)';
}


}

/// @nodoc
abstract mixin class $UtxoEntryCopyWith<$Res>  {
  factory $UtxoEntryCopyWith(UtxoEntry value, $Res Function(UtxoEntry) _then) = _$UtxoEntryCopyWithImpl;
@useResult
$Res call({
 BigInt amount, ScriptPublicKey scriptPublicKey, BigInt blockDaaScore, bool isCoinbase
});


$ScriptPublicKeyCopyWith<$Res> get scriptPublicKey;

}
/// @nodoc
class _$UtxoEntryCopyWithImpl<$Res>
    implements $UtxoEntryCopyWith<$Res> {
  _$UtxoEntryCopyWithImpl(this._self, this._then);

  final UtxoEntry _self;
  final $Res Function(UtxoEntry) _then;

/// Create a copy of UtxoEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = null,Object? scriptPublicKey = null,Object? blockDaaScore = null,Object? isCoinbase = null,}) {
  return _then(_self.copyWith(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as BigInt,scriptPublicKey: null == scriptPublicKey ? _self.scriptPublicKey : scriptPublicKey // ignore: cast_nullable_to_non_nullable
as ScriptPublicKey,blockDaaScore: null == blockDaaScore ? _self.blockDaaScore : blockDaaScore // ignore: cast_nullable_to_non_nullable
as BigInt,isCoinbase: null == isCoinbase ? _self.isCoinbase : isCoinbase // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of UtxoEntry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScriptPublicKeyCopyWith<$Res> get scriptPublicKey {
  
  return $ScriptPublicKeyCopyWith<$Res>(_self.scriptPublicKey, (value) {
    return _then(_self.copyWith(scriptPublicKey: value));
  });
}
}


/// Adds pattern-matching-related methods to [UtxoEntry].
extension UtxoEntryPatterns on UtxoEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UtxoEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UtxoEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UtxoEntry value)  $default,){
final _that = this;
switch (_that) {
case _UtxoEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UtxoEntry value)?  $default,){
final _that = this;
switch (_that) {
case _UtxoEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BigInt amount,  ScriptPublicKey scriptPublicKey,  BigInt blockDaaScore,  bool isCoinbase)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UtxoEntry() when $default != null:
return $default(_that.amount,_that.scriptPublicKey,_that.blockDaaScore,_that.isCoinbase);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BigInt amount,  ScriptPublicKey scriptPublicKey,  BigInt blockDaaScore,  bool isCoinbase)  $default,) {final _that = this;
switch (_that) {
case _UtxoEntry():
return $default(_that.amount,_that.scriptPublicKey,_that.blockDaaScore,_that.isCoinbase);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BigInt amount,  ScriptPublicKey scriptPublicKey,  BigInt blockDaaScore,  bool isCoinbase)?  $default,) {final _that = this;
switch (_that) {
case _UtxoEntry() when $default != null:
return $default(_that.amount,_that.scriptPublicKey,_that.blockDaaScore,_that.isCoinbase);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UtxoEntry extends UtxoEntry {
  const _UtxoEntry({required this.amount, required this.scriptPublicKey, required this.blockDaaScore, required this.isCoinbase}): super._();
  factory _UtxoEntry.fromJson(Map<String, dynamic> json) => _$UtxoEntryFromJson(json);

@override final  BigInt amount;
@override final  ScriptPublicKey scriptPublicKey;
@override final  BigInt blockDaaScore;
@override final  bool isCoinbase;

/// Create a copy of UtxoEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UtxoEntryCopyWith<_UtxoEntry> get copyWith => __$UtxoEntryCopyWithImpl<_UtxoEntry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UtxoEntryToJson(this, );
}



@override
String toString() {
  return 'UtxoEntry(amount: $amount, scriptPublicKey: $scriptPublicKey, blockDaaScore: $blockDaaScore, isCoinbase: $isCoinbase)';
}


}

/// @nodoc
abstract mixin class _$UtxoEntryCopyWith<$Res> implements $UtxoEntryCopyWith<$Res> {
  factory _$UtxoEntryCopyWith(_UtxoEntry value, $Res Function(_UtxoEntry) _then) = __$UtxoEntryCopyWithImpl;
@override @useResult
$Res call({
 BigInt amount, ScriptPublicKey scriptPublicKey, BigInt blockDaaScore, bool isCoinbase
});


@override $ScriptPublicKeyCopyWith<$Res> get scriptPublicKey;

}
/// @nodoc
class __$UtxoEntryCopyWithImpl<$Res>
    implements _$UtxoEntryCopyWith<$Res> {
  __$UtxoEntryCopyWithImpl(this._self, this._then);

  final _UtxoEntry _self;
  final $Res Function(_UtxoEntry) _then;

/// Create a copy of UtxoEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? scriptPublicKey = null,Object? blockDaaScore = null,Object? isCoinbase = null,}) {
  return _then(_UtxoEntry(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as BigInt,scriptPublicKey: null == scriptPublicKey ? _self.scriptPublicKey : scriptPublicKey // ignore: cast_nullable_to_non_nullable
as ScriptPublicKey,blockDaaScore: null == blockDaaScore ? _self.blockDaaScore : blockDaaScore // ignore: cast_nullable_to_non_nullable
as BigInt,isCoinbase: null == isCoinbase ? _self.isCoinbase : isCoinbase // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of UtxoEntry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScriptPublicKeyCopyWith<$Res> get scriptPublicKey {
  
  return $ScriptPublicKeyCopyWith<$Res>(_self.scriptPublicKey, (value) {
    return _then(_self.copyWith(scriptPublicKey: value));
  });
}
}


/// @nodoc
mixin _$ScriptPublicKey {

@JsonKey(fromJson: hexToBytes, toJson: bytesToHex) Uint8List get scriptPublicKey;/*uint16*/
 int get version;
/// Create a copy of ScriptPublicKey
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScriptPublicKeyCopyWith<ScriptPublicKey> get copyWith => _$ScriptPublicKeyCopyWithImpl<ScriptPublicKey>(this as ScriptPublicKey, _$identity);

  /// Serializes this ScriptPublicKey to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScriptPublicKey&&const DeepCollectionEquality().equals(other.scriptPublicKey, scriptPublicKey)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(scriptPublicKey),version);

@override
String toString() {
  return 'ScriptPublicKey(scriptPublicKey: $scriptPublicKey, version: $version)';
}


}

/// @nodoc
abstract mixin class $ScriptPublicKeyCopyWith<$Res>  {
  factory $ScriptPublicKeyCopyWith(ScriptPublicKey value, $Res Function(ScriptPublicKey) _then) = _$ScriptPublicKeyCopyWithImpl;
@useResult
$Res call({
@JsonKey(fromJson: hexToBytes, toJson: bytesToHex) Uint8List scriptPublicKey, int version
});




}
/// @nodoc
class _$ScriptPublicKeyCopyWithImpl<$Res>
    implements $ScriptPublicKeyCopyWith<$Res> {
  _$ScriptPublicKeyCopyWithImpl(this._self, this._then);

  final ScriptPublicKey _self;
  final $Res Function(ScriptPublicKey) _then;

/// Create a copy of ScriptPublicKey
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? scriptPublicKey = null,Object? version = null,}) {
  return _then(_self.copyWith(
scriptPublicKey: null == scriptPublicKey ? _self.scriptPublicKey : scriptPublicKey // ignore: cast_nullable_to_non_nullable
as Uint8List,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ScriptPublicKey].
extension ScriptPublicKeyPatterns on ScriptPublicKey {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScriptPublicKey value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScriptPublicKey() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScriptPublicKey value)  $default,){
final _that = this;
switch (_that) {
case _ScriptPublicKey():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScriptPublicKey value)?  $default,){
final _that = this;
switch (_that) {
case _ScriptPublicKey() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(fromJson: hexToBytes, toJson: bytesToHex)  Uint8List scriptPublicKey,  int version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScriptPublicKey() when $default != null:
return $default(_that.scriptPublicKey,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(fromJson: hexToBytes, toJson: bytesToHex)  Uint8List scriptPublicKey,  int version)  $default,) {final _that = this;
switch (_that) {
case _ScriptPublicKey():
return $default(_that.scriptPublicKey,_that.version);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(fromJson: hexToBytes, toJson: bytesToHex)  Uint8List scriptPublicKey,  int version)?  $default,) {final _that = this;
switch (_that) {
case _ScriptPublicKey() when $default != null:
return $default(_that.scriptPublicKey,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScriptPublicKey extends ScriptPublicKey {
  const _ScriptPublicKey({@JsonKey(fromJson: hexToBytes, toJson: bytesToHex) required this.scriptPublicKey, required this.version}): super._();
  factory _ScriptPublicKey.fromJson(Map<String, dynamic> json) => _$ScriptPublicKeyFromJson(json);

@override@JsonKey(fromJson: hexToBytes, toJson: bytesToHex) final  Uint8List scriptPublicKey;
/*uint16*/
@override final  int version;

/// Create a copy of ScriptPublicKey
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScriptPublicKeyCopyWith<_ScriptPublicKey> get copyWith => __$ScriptPublicKeyCopyWithImpl<_ScriptPublicKey>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScriptPublicKeyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScriptPublicKey&&const DeepCollectionEquality().equals(other.scriptPublicKey, scriptPublicKey)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(scriptPublicKey),version);

@override
String toString() {
  return 'ScriptPublicKey(scriptPublicKey: $scriptPublicKey, version: $version)';
}


}

/// @nodoc
abstract mixin class _$ScriptPublicKeyCopyWith<$Res> implements $ScriptPublicKeyCopyWith<$Res> {
  factory _$ScriptPublicKeyCopyWith(_ScriptPublicKey value, $Res Function(_ScriptPublicKey) _then) = __$ScriptPublicKeyCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(fromJson: hexToBytes, toJson: bytesToHex) Uint8List scriptPublicKey, int version
});




}
/// @nodoc
class __$ScriptPublicKeyCopyWithImpl<$Res>
    implements _$ScriptPublicKeyCopyWith<$Res> {
  __$ScriptPublicKeyCopyWithImpl(this._self, this._then);

  final _ScriptPublicKey _self;
  final $Res Function(_ScriptPublicKey) _then;

/// Create a copy of ScriptPublicKey
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? scriptPublicKey = null,Object? version = null,}) {
  return _then(_ScriptPublicKey(
scriptPublicKey: null == scriptPublicKey ? _self.scriptPublicKey : scriptPublicKey // ignore: cast_nullable_to_non_nullable
as Uint8List,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$Outpoint {

 String get transactionId; int get index;
/// Create a copy of Outpoint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OutpointCopyWith<Outpoint> get copyWith => _$OutpointCopyWithImpl<Outpoint>(this as Outpoint, _$identity);

  /// Serializes this Outpoint to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Outpoint&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.index, index) || other.index == index));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,index);

@override
String toString() {
  return 'Outpoint(transactionId: $transactionId, index: $index)';
}


}

/// @nodoc
abstract mixin class $OutpointCopyWith<$Res>  {
  factory $OutpointCopyWith(Outpoint value, $Res Function(Outpoint) _then) = _$OutpointCopyWithImpl;
@useResult
$Res call({
 String transactionId, int index
});




}
/// @nodoc
class _$OutpointCopyWithImpl<$Res>
    implements $OutpointCopyWith<$Res> {
  _$OutpointCopyWithImpl(this._self, this._then);

  final Outpoint _self;
  final $Res Function(Outpoint) _then;

/// Create a copy of Outpoint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionId = null,Object? index = null,}) {
  return _then(_self.copyWith(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Outpoint].
extension OutpointPatterns on Outpoint {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Outpoint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Outpoint() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Outpoint value)  $default,){
final _that = this;
switch (_that) {
case _Outpoint():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Outpoint value)?  $default,){
final _that = this;
switch (_that) {
case _Outpoint() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String transactionId,  int index)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Outpoint() when $default != null:
return $default(_that.transactionId,_that.index);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String transactionId,  int index)  $default,) {final _that = this;
switch (_that) {
case _Outpoint():
return $default(_that.transactionId,_that.index);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String transactionId,  int index)?  $default,) {final _that = this;
switch (_that) {
case _Outpoint() when $default != null:
return $default(_that.transactionId,_that.index);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Outpoint extends Outpoint {
   _Outpoint({required this.transactionId, required this.index}): super._();
  factory _Outpoint.fromJson(Map<String, dynamic> json) => _$OutpointFromJson(json);

@override final  String transactionId;
@override final  int index;

/// Create a copy of Outpoint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OutpointCopyWith<_Outpoint> get copyWith => __$OutpointCopyWithImpl<_Outpoint>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OutpointToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Outpoint&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.index, index) || other.index == index));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,index);

@override
String toString() {
  return 'Outpoint(transactionId: $transactionId, index: $index)';
}


}

/// @nodoc
abstract mixin class _$OutpointCopyWith<$Res> implements $OutpointCopyWith<$Res> {
  factory _$OutpointCopyWith(_Outpoint value, $Res Function(_Outpoint) _then) = __$OutpointCopyWithImpl;
@override @useResult
$Res call({
 String transactionId, int index
});




}
/// @nodoc
class __$OutpointCopyWithImpl<$Res>
    implements _$OutpointCopyWith<$Res> {
  __$OutpointCopyWithImpl(this._self, this._then);

  final _Outpoint _self;
  final $Res Function(_Outpoint) _then;

/// Create a copy of Outpoint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = null,Object? index = null,}) {
  return _then(_Outpoint(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$TxInput {

 Address get address; Outpoint get previousOutpoint; Uint8List get signatureScript;/*uint64*/
 Int64 get sequence;/*byte*/
 int get sigOpCount; UtxoEntry get utxoEntry;
/// Create a copy of TxInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TxInputCopyWith<TxInput> get copyWith => _$TxInputCopyWithImpl<TxInput>(this as TxInput, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxInput&&(identical(other.address, address) || other.address == address)&&(identical(other.previousOutpoint, previousOutpoint) || other.previousOutpoint == previousOutpoint)&&const DeepCollectionEquality().equals(other.signatureScript, signatureScript)&&(identical(other.sequence, sequence) || other.sequence == sequence)&&(identical(other.sigOpCount, sigOpCount) || other.sigOpCount == sigOpCount)&&(identical(other.utxoEntry, utxoEntry) || other.utxoEntry == utxoEntry));
}


@override
int get hashCode => Object.hash(runtimeType,address,previousOutpoint,const DeepCollectionEquality().hash(signatureScript),sequence,sigOpCount,utxoEntry);

@override
String toString() {
  return 'TxInput(address: $address, previousOutpoint: $previousOutpoint, signatureScript: $signatureScript, sequence: $sequence, sigOpCount: $sigOpCount, utxoEntry: $utxoEntry)';
}


}

/// @nodoc
abstract mixin class $TxInputCopyWith<$Res>  {
  factory $TxInputCopyWith(TxInput value, $Res Function(TxInput) _then) = _$TxInputCopyWithImpl;
@useResult
$Res call({
 Address address, Outpoint previousOutpoint, Uint8List signatureScript, Int64 sequence, int sigOpCount, UtxoEntry utxoEntry
});


$AddressCopyWith<$Res> get address;$OutpointCopyWith<$Res> get previousOutpoint;$UtxoEntryCopyWith<$Res> get utxoEntry;

}
/// @nodoc
class _$TxInputCopyWithImpl<$Res>
    implements $TxInputCopyWith<$Res> {
  _$TxInputCopyWithImpl(this._self, this._then);

  final TxInput _self;
  final $Res Function(TxInput) _then;

/// Create a copy of TxInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? address = null,Object? previousOutpoint = null,Object? signatureScript = null,Object? sequence = null,Object? sigOpCount = null,Object? utxoEntry = null,}) {
  return _then(_self.copyWith(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as Address,previousOutpoint: null == previousOutpoint ? _self.previousOutpoint : previousOutpoint // ignore: cast_nullable_to_non_nullable
as Outpoint,signatureScript: null == signatureScript ? _self.signatureScript : signatureScript // ignore: cast_nullable_to_non_nullable
as Uint8List,sequence: null == sequence ? _self.sequence : sequence // ignore: cast_nullable_to_non_nullable
as Int64,sigOpCount: null == sigOpCount ? _self.sigOpCount : sigOpCount // ignore: cast_nullable_to_non_nullable
as int,utxoEntry: null == utxoEntry ? _self.utxoEntry : utxoEntry // ignore: cast_nullable_to_non_nullable
as UtxoEntry,
  ));
}
/// Create a copy of TxInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res> get address {
  
  return $AddressCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}/// Create a copy of TxInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OutpointCopyWith<$Res> get previousOutpoint {
  
  return $OutpointCopyWith<$Res>(_self.previousOutpoint, (value) {
    return _then(_self.copyWith(previousOutpoint: value));
  });
}/// Create a copy of TxInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UtxoEntryCopyWith<$Res> get utxoEntry {
  
  return $UtxoEntryCopyWith<$Res>(_self.utxoEntry, (value) {
    return _then(_self.copyWith(utxoEntry: value));
  });
}
}


/// Adds pattern-matching-related methods to [TxInput].
extension TxInputPatterns on TxInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TxInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TxInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TxInput value)  $default,){
final _that = this;
switch (_that) {
case _TxInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TxInput value)?  $default,){
final _that = this;
switch (_that) {
case _TxInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Address address,  Outpoint previousOutpoint,  Uint8List signatureScript,  Int64 sequence,  int sigOpCount,  UtxoEntry utxoEntry)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TxInput() when $default != null:
return $default(_that.address,_that.previousOutpoint,_that.signatureScript,_that.sequence,_that.sigOpCount,_that.utxoEntry);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Address address,  Outpoint previousOutpoint,  Uint8List signatureScript,  Int64 sequence,  int sigOpCount,  UtxoEntry utxoEntry)  $default,) {final _that = this;
switch (_that) {
case _TxInput():
return $default(_that.address,_that.previousOutpoint,_that.signatureScript,_that.sequence,_that.sigOpCount,_that.utxoEntry);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Address address,  Outpoint previousOutpoint,  Uint8List signatureScript,  Int64 sequence,  int sigOpCount,  UtxoEntry utxoEntry)?  $default,) {final _that = this;
switch (_that) {
case _TxInput() when $default != null:
return $default(_that.address,_that.previousOutpoint,_that.signatureScript,_that.sequence,_that.sigOpCount,_that.utxoEntry);case _:
  return null;

}
}

}

/// @nodoc


class _TxInput extends TxInput {
  const _TxInput({required this.address, required this.previousOutpoint, required this.signatureScript, required this.sequence, required this.sigOpCount, required this.utxoEntry}): super._();
  

@override final  Address address;
@override final  Outpoint previousOutpoint;
@override final  Uint8List signatureScript;
/*uint64*/
@override final  Int64 sequence;
/*byte*/
@override final  int sigOpCount;
@override final  UtxoEntry utxoEntry;

/// Create a copy of TxInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TxInputCopyWith<_TxInput> get copyWith => __$TxInputCopyWithImpl<_TxInput>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TxInput&&(identical(other.address, address) || other.address == address)&&(identical(other.previousOutpoint, previousOutpoint) || other.previousOutpoint == previousOutpoint)&&const DeepCollectionEquality().equals(other.signatureScript, signatureScript)&&(identical(other.sequence, sequence) || other.sequence == sequence)&&(identical(other.sigOpCount, sigOpCount) || other.sigOpCount == sigOpCount)&&(identical(other.utxoEntry, utxoEntry) || other.utxoEntry == utxoEntry));
}


@override
int get hashCode => Object.hash(runtimeType,address,previousOutpoint,const DeepCollectionEquality().hash(signatureScript),sequence,sigOpCount,utxoEntry);

@override
String toString() {
  return 'TxInput(address: $address, previousOutpoint: $previousOutpoint, signatureScript: $signatureScript, sequence: $sequence, sigOpCount: $sigOpCount, utxoEntry: $utxoEntry)';
}


}

/// @nodoc
abstract mixin class _$TxInputCopyWith<$Res> implements $TxInputCopyWith<$Res> {
  factory _$TxInputCopyWith(_TxInput value, $Res Function(_TxInput) _then) = __$TxInputCopyWithImpl;
@override @useResult
$Res call({
 Address address, Outpoint previousOutpoint, Uint8List signatureScript, Int64 sequence, int sigOpCount, UtxoEntry utxoEntry
});


@override $AddressCopyWith<$Res> get address;@override $OutpointCopyWith<$Res> get previousOutpoint;@override $UtxoEntryCopyWith<$Res> get utxoEntry;

}
/// @nodoc
class __$TxInputCopyWithImpl<$Res>
    implements _$TxInputCopyWith<$Res> {
  __$TxInputCopyWithImpl(this._self, this._then);

  final _TxInput _self;
  final $Res Function(_TxInput) _then;

/// Create a copy of TxInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? address = null,Object? previousOutpoint = null,Object? signatureScript = null,Object? sequence = null,Object? sigOpCount = null,Object? utxoEntry = null,}) {
  return _then(_TxInput(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as Address,previousOutpoint: null == previousOutpoint ? _self.previousOutpoint : previousOutpoint // ignore: cast_nullable_to_non_nullable
as Outpoint,signatureScript: null == signatureScript ? _self.signatureScript : signatureScript // ignore: cast_nullable_to_non_nullable
as Uint8List,sequence: null == sequence ? _self.sequence : sequence // ignore: cast_nullable_to_non_nullable
as Int64,sigOpCount: null == sigOpCount ? _self.sigOpCount : sigOpCount // ignore: cast_nullable_to_non_nullable
as int,utxoEntry: null == utxoEntry ? _self.utxoEntry : utxoEntry // ignore: cast_nullable_to_non_nullable
as UtxoEntry,
  ));
}

/// Create a copy of TxInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res> get address {
  
  return $AddressCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}/// Create a copy of TxInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OutpointCopyWith<$Res> get previousOutpoint {
  
  return $OutpointCopyWith<$Res>(_self.previousOutpoint, (value) {
    return _then(_self.copyWith(previousOutpoint: value));
  });
}/// Create a copy of TxInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UtxoEntryCopyWith<$Res> get utxoEntry {
  
  return $UtxoEntryCopyWith<$Res>(_self.utxoEntry, (value) {
    return _then(_self.copyWith(utxoEntry: value));
  });
}
}

/// @nodoc
mixin _$TxOutput {

/*uint64*/
 Int64 get value; ScriptPublicKey get scriptPublicKey;
/// Create a copy of TxOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TxOutputCopyWith<TxOutput> get copyWith => _$TxOutputCopyWithImpl<TxOutput>(this as TxOutput, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxOutput&&(identical(other.value, value) || other.value == value)&&(identical(other.scriptPublicKey, scriptPublicKey) || other.scriptPublicKey == scriptPublicKey));
}


@override
int get hashCode => Object.hash(runtimeType,value,scriptPublicKey);

@override
String toString() {
  return 'TxOutput(value: $value, scriptPublicKey: $scriptPublicKey)';
}


}

/// @nodoc
abstract mixin class $TxOutputCopyWith<$Res>  {
  factory $TxOutputCopyWith(TxOutput value, $Res Function(TxOutput) _then) = _$TxOutputCopyWithImpl;
@useResult
$Res call({
 Int64 value, ScriptPublicKey scriptPublicKey
});


$ScriptPublicKeyCopyWith<$Res> get scriptPublicKey;

}
/// @nodoc
class _$TxOutputCopyWithImpl<$Res>
    implements $TxOutputCopyWith<$Res> {
  _$TxOutputCopyWithImpl(this._self, this._then);

  final TxOutput _self;
  final $Res Function(TxOutput) _then;

/// Create a copy of TxOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,Object? scriptPublicKey = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as Int64,scriptPublicKey: null == scriptPublicKey ? _self.scriptPublicKey : scriptPublicKey // ignore: cast_nullable_to_non_nullable
as ScriptPublicKey,
  ));
}
/// Create a copy of TxOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScriptPublicKeyCopyWith<$Res> get scriptPublicKey {
  
  return $ScriptPublicKeyCopyWith<$Res>(_self.scriptPublicKey, (value) {
    return _then(_self.copyWith(scriptPublicKey: value));
  });
}
}


/// Adds pattern-matching-related methods to [TxOutput].
extension TxOutputPatterns on TxOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TxOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TxOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TxOutput value)  $default,){
final _that = this;
switch (_that) {
case _TxOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TxOutput value)?  $default,){
final _that = this;
switch (_that) {
case _TxOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Int64 value,  ScriptPublicKey scriptPublicKey)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TxOutput() when $default != null:
return $default(_that.value,_that.scriptPublicKey);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Int64 value,  ScriptPublicKey scriptPublicKey)  $default,) {final _that = this;
switch (_that) {
case _TxOutput():
return $default(_that.value,_that.scriptPublicKey);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Int64 value,  ScriptPublicKey scriptPublicKey)?  $default,) {final _that = this;
switch (_that) {
case _TxOutput() when $default != null:
return $default(_that.value,_that.scriptPublicKey);case _:
  return null;

}
}

}

/// @nodoc


class _TxOutput extends TxOutput {
  const _TxOutput({required this.value, required this.scriptPublicKey}): super._();
  

/*uint64*/
@override final  Int64 value;
@override final  ScriptPublicKey scriptPublicKey;

/// Create a copy of TxOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TxOutputCopyWith<_TxOutput> get copyWith => __$TxOutputCopyWithImpl<_TxOutput>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TxOutput&&(identical(other.value, value) || other.value == value)&&(identical(other.scriptPublicKey, scriptPublicKey) || other.scriptPublicKey == scriptPublicKey));
}


@override
int get hashCode => Object.hash(runtimeType,value,scriptPublicKey);

@override
String toString() {
  return 'TxOutput(value: $value, scriptPublicKey: $scriptPublicKey)';
}


}

/// @nodoc
abstract mixin class _$TxOutputCopyWith<$Res> implements $TxOutputCopyWith<$Res> {
  factory _$TxOutputCopyWith(_TxOutput value, $Res Function(_TxOutput) _then) = __$TxOutputCopyWithImpl;
@override @useResult
$Res call({
 Int64 value, ScriptPublicKey scriptPublicKey
});


@override $ScriptPublicKeyCopyWith<$Res> get scriptPublicKey;

}
/// @nodoc
class __$TxOutputCopyWithImpl<$Res>
    implements _$TxOutputCopyWith<$Res> {
  __$TxOutputCopyWithImpl(this._self, this._then);

  final _TxOutput _self;
  final $Res Function(_TxOutput) _then;

/// Create a copy of TxOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,Object? scriptPublicKey = null,}) {
  return _then(_TxOutput(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as Int64,scriptPublicKey: null == scriptPublicKey ? _self.scriptPublicKey : scriptPublicKey // ignore: cast_nullable_to_non_nullable
as ScriptPublicKey,
  ));
}

/// Create a copy of TxOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScriptPublicKeyCopyWith<$Res> get scriptPublicKey {
  
  return $ScriptPublicKeyCopyWith<$Res>(_self.scriptPublicKey, (value) {
    return _then(_self.copyWith(scriptPublicKey: value));
  });
}
}

/// @nodoc
mixin _$Transaction {

/*uint16*/
 int get version; List<TxInput> get inputs; List<TxOutput> get outputs;/*uint64*/
 Int64 get lockTime;/*byte[20]*/
 Uint8List get subnetworkId;/*uint64*/
 Int64 get gas; Uint8List? get payload;/*uint64*/
 Int64? get fee;/*uint64*/
 Int64? get mass; Uint8List? get id;
/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionCopyWith<Transaction> get copyWith => _$TransactionCopyWithImpl<Transaction>(this as Transaction, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Transaction&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other.inputs, inputs)&&const DeepCollectionEquality().equals(other.outputs, outputs)&&(identical(other.lockTime, lockTime) || other.lockTime == lockTime)&&const DeepCollectionEquality().equals(other.subnetworkId, subnetworkId)&&(identical(other.gas, gas) || other.gas == gas)&&const DeepCollectionEquality().equals(other.payload, payload)&&(identical(other.fee, fee) || other.fee == fee)&&(identical(other.mass, mass) || other.mass == mass)&&const DeepCollectionEquality().equals(other.id, id));
}


@override
int get hashCode => Object.hash(runtimeType,version,const DeepCollectionEquality().hash(inputs),const DeepCollectionEquality().hash(outputs),lockTime,const DeepCollectionEquality().hash(subnetworkId),gas,const DeepCollectionEquality().hash(payload),fee,mass,const DeepCollectionEquality().hash(id));

@override
String toString() {
  return 'Transaction(version: $version, inputs: $inputs, outputs: $outputs, lockTime: $lockTime, subnetworkId: $subnetworkId, gas: $gas, payload: $payload, fee: $fee, mass: $mass, id: $id)';
}


}

/// @nodoc
abstract mixin class $TransactionCopyWith<$Res>  {
  factory $TransactionCopyWith(Transaction value, $Res Function(Transaction) _then) = _$TransactionCopyWithImpl;
@useResult
$Res call({
 int version, List<TxInput> inputs, List<TxOutput> outputs, Int64 lockTime, Uint8List subnetworkId, Int64 gas, Uint8List? payload, Int64? fee, Int64? mass, Uint8List? id
});




}
/// @nodoc
class _$TransactionCopyWithImpl<$Res>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._self, this._then);

  final Transaction _self;
  final $Res Function(Transaction) _then;

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? version = null,Object? inputs = null,Object? outputs = null,Object? lockTime = null,Object? subnetworkId = null,Object? gas = null,Object? payload = freezed,Object? fee = freezed,Object? mass = freezed,Object? id = freezed,}) {
  return _then(_self.copyWith(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,inputs: null == inputs ? _self.inputs : inputs // ignore: cast_nullable_to_non_nullable
as List<TxInput>,outputs: null == outputs ? _self.outputs : outputs // ignore: cast_nullable_to_non_nullable
as List<TxOutput>,lockTime: null == lockTime ? _self.lockTime : lockTime // ignore: cast_nullable_to_non_nullable
as Int64,subnetworkId: null == subnetworkId ? _self.subnetworkId : subnetworkId // ignore: cast_nullable_to_non_nullable
as Uint8List,gas: null == gas ? _self.gas : gas // ignore: cast_nullable_to_non_nullable
as Int64,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as Uint8List?,fee: freezed == fee ? _self.fee : fee // ignore: cast_nullable_to_non_nullable
as Int64?,mass: freezed == mass ? _self.mass : mass // ignore: cast_nullable_to_non_nullable
as Int64?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uint8List?,
  ));
}

}


/// Adds pattern-matching-related methods to [Transaction].
extension TransactionPatterns on Transaction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Transaction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Transaction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Transaction value)  $default,){
final _that = this;
switch (_that) {
case _Transaction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Transaction value)?  $default,){
final _that = this;
switch (_that) {
case _Transaction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int version,  List<TxInput> inputs,  List<TxOutput> outputs,  Int64 lockTime,  Uint8List subnetworkId,  Int64 gas,  Uint8List? payload,  Int64? fee,  Int64? mass,  Uint8List? id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Transaction() when $default != null:
return $default(_that.version,_that.inputs,_that.outputs,_that.lockTime,_that.subnetworkId,_that.gas,_that.payload,_that.fee,_that.mass,_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int version,  List<TxInput> inputs,  List<TxOutput> outputs,  Int64 lockTime,  Uint8List subnetworkId,  Int64 gas,  Uint8List? payload,  Int64? fee,  Int64? mass,  Uint8List? id)  $default,) {final _that = this;
switch (_that) {
case _Transaction():
return $default(_that.version,_that.inputs,_that.outputs,_that.lockTime,_that.subnetworkId,_that.gas,_that.payload,_that.fee,_that.mass,_that.id);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int version,  List<TxInput> inputs,  List<TxOutput> outputs,  Int64 lockTime,  Uint8List subnetworkId,  Int64 gas,  Uint8List? payload,  Int64? fee,  Int64? mass,  Uint8List? id)?  $default,) {final _that = this;
switch (_that) {
case _Transaction() when $default != null:
return $default(_that.version,_that.inputs,_that.outputs,_that.lockTime,_that.subnetworkId,_that.gas,_that.payload,_that.fee,_that.mass,_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _Transaction extends Transaction {
  const _Transaction({required this.version, required final  List<TxInput> inputs, required final  List<TxOutput> outputs, required this.lockTime, required this.subnetworkId, required this.gas, this.payload, this.fee, this.mass, this.id}): _inputs = inputs,_outputs = outputs,super._();
  

/*uint16*/
@override final  int version;
 final  List<TxInput> _inputs;
@override List<TxInput> get inputs {
  if (_inputs is EqualUnmodifiableListView) return _inputs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_inputs);
}

 final  List<TxOutput> _outputs;
@override List<TxOutput> get outputs {
  if (_outputs is EqualUnmodifiableListView) return _outputs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_outputs);
}

/*uint64*/
@override final  Int64 lockTime;
/*byte[20]*/
@override final  Uint8List subnetworkId;
/*uint64*/
@override final  Int64 gas;
@override final  Uint8List? payload;
/*uint64*/
@override final  Int64? fee;
/*uint64*/
@override final  Int64? mass;
@override final  Uint8List? id;

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionCopyWith<_Transaction> get copyWith => __$TransactionCopyWithImpl<_Transaction>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Transaction&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other._inputs, _inputs)&&const DeepCollectionEquality().equals(other._outputs, _outputs)&&(identical(other.lockTime, lockTime) || other.lockTime == lockTime)&&const DeepCollectionEquality().equals(other.subnetworkId, subnetworkId)&&(identical(other.gas, gas) || other.gas == gas)&&const DeepCollectionEquality().equals(other.payload, payload)&&(identical(other.fee, fee) || other.fee == fee)&&(identical(other.mass, mass) || other.mass == mass)&&const DeepCollectionEquality().equals(other.id, id));
}


@override
int get hashCode => Object.hash(runtimeType,version,const DeepCollectionEquality().hash(_inputs),const DeepCollectionEquality().hash(_outputs),lockTime,const DeepCollectionEquality().hash(subnetworkId),gas,const DeepCollectionEquality().hash(payload),fee,mass,const DeepCollectionEquality().hash(id));

@override
String toString() {
  return 'Transaction(version: $version, inputs: $inputs, outputs: $outputs, lockTime: $lockTime, subnetworkId: $subnetworkId, gas: $gas, payload: $payload, fee: $fee, mass: $mass, id: $id)';
}


}

/// @nodoc
abstract mixin class _$TransactionCopyWith<$Res> implements $TransactionCopyWith<$Res> {
  factory _$TransactionCopyWith(_Transaction value, $Res Function(_Transaction) _then) = __$TransactionCopyWithImpl;
@override @useResult
$Res call({
 int version, List<TxInput> inputs, List<TxOutput> outputs, Int64 lockTime, Uint8List subnetworkId, Int64 gas, Uint8List? payload, Int64? fee, Int64? mass, Uint8List? id
});




}
/// @nodoc
class __$TransactionCopyWithImpl<$Res>
    implements _$TransactionCopyWith<$Res> {
  __$TransactionCopyWithImpl(this._self, this._then);

  final _Transaction _self;
  final $Res Function(_Transaction) _then;

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? version = null,Object? inputs = null,Object? outputs = null,Object? lockTime = null,Object? subnetworkId = null,Object? gas = null,Object? payload = freezed,Object? fee = freezed,Object? mass = freezed,Object? id = freezed,}) {
  return _then(_Transaction(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,inputs: null == inputs ? _self._inputs : inputs // ignore: cast_nullable_to_non_nullable
as List<TxInput>,outputs: null == outputs ? _self._outputs : outputs // ignore: cast_nullable_to_non_nullable
as List<TxOutput>,lockTime: null == lockTime ? _self.lockTime : lockTime // ignore: cast_nullable_to_non_nullable
as Int64,subnetworkId: null == subnetworkId ? _self.subnetworkId : subnetworkId // ignore: cast_nullable_to_non_nullable
as Uint8List,gas: null == gas ? _self.gas : gas // ignore: cast_nullable_to_non_nullable
as Int64,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as Uint8List?,fee: freezed == fee ? _self.fee : fee // ignore: cast_nullable_to_non_nullable
as Int64?,mass: freezed == mass ? _self.mass : mass // ignore: cast_nullable_to_non_nullable
as Int64?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uint8List?,
  ));
}


}

/// @nodoc
mixin _$SighashReusedValues {

 Uint8List? get previousOutputsHash; set previousOutputsHash(Uint8List? value); Uint8List? get sequencesHash; set sequencesHash(Uint8List? value); Uint8List? get sigOpCountsHash; set sigOpCountsHash(Uint8List? value); Uint8List? get outputsHash; set outputsHash(Uint8List? value); Uint8List? get payloadHash; set payloadHash(Uint8List? value);
/// Create a copy of SighashReusedValues
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SighashReusedValuesCopyWith<SighashReusedValues> get copyWith => _$SighashReusedValuesCopyWithImpl<SighashReusedValues>(this as SighashReusedValues, _$identity);





@override
String toString() {
  return 'SighashReusedValues(previousOutputsHash: $previousOutputsHash, sequencesHash: $sequencesHash, sigOpCountsHash: $sigOpCountsHash, outputsHash: $outputsHash, payloadHash: $payloadHash)';
}


}

/// @nodoc
abstract mixin class $SighashReusedValuesCopyWith<$Res>  {
  factory $SighashReusedValuesCopyWith(SighashReusedValues value, $Res Function(SighashReusedValues) _then) = _$SighashReusedValuesCopyWithImpl;
@useResult
$Res call({
 Uint8List? previousOutputsHash, Uint8List? sequencesHash, Uint8List? sigOpCountsHash, Uint8List? outputsHash, Uint8List? payloadHash
});




}
/// @nodoc
class _$SighashReusedValuesCopyWithImpl<$Res>
    implements $SighashReusedValuesCopyWith<$Res> {
  _$SighashReusedValuesCopyWithImpl(this._self, this._then);

  final SighashReusedValues _self;
  final $Res Function(SighashReusedValues) _then;

/// Create a copy of SighashReusedValues
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? previousOutputsHash = freezed,Object? sequencesHash = freezed,Object? sigOpCountsHash = freezed,Object? outputsHash = freezed,Object? payloadHash = freezed,}) {
  return _then(_self.copyWith(
previousOutputsHash: freezed == previousOutputsHash ? _self.previousOutputsHash : previousOutputsHash // ignore: cast_nullable_to_non_nullable
as Uint8List?,sequencesHash: freezed == sequencesHash ? _self.sequencesHash : sequencesHash // ignore: cast_nullable_to_non_nullable
as Uint8List?,sigOpCountsHash: freezed == sigOpCountsHash ? _self.sigOpCountsHash : sigOpCountsHash // ignore: cast_nullable_to_non_nullable
as Uint8List?,outputsHash: freezed == outputsHash ? _self.outputsHash : outputsHash // ignore: cast_nullable_to_non_nullable
as Uint8List?,payloadHash: freezed == payloadHash ? _self.payloadHash : payloadHash // ignore: cast_nullable_to_non_nullable
as Uint8List?,
  ));
}

}


/// Adds pattern-matching-related methods to [SighashReusedValues].
extension SighashReusedValuesPatterns on SighashReusedValues {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SighashReusedValues value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SighashReusedValues() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SighashReusedValues value)  $default,){
final _that = this;
switch (_that) {
case _SighashReusedValues():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SighashReusedValues value)?  $default,){
final _that = this;
switch (_that) {
case _SighashReusedValues() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Uint8List? previousOutputsHash,  Uint8List? sequencesHash,  Uint8List? sigOpCountsHash,  Uint8List? outputsHash,  Uint8List? payloadHash)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SighashReusedValues() when $default != null:
return $default(_that.previousOutputsHash,_that.sequencesHash,_that.sigOpCountsHash,_that.outputsHash,_that.payloadHash);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Uint8List? previousOutputsHash,  Uint8List? sequencesHash,  Uint8List? sigOpCountsHash,  Uint8List? outputsHash,  Uint8List? payloadHash)  $default,) {final _that = this;
switch (_that) {
case _SighashReusedValues():
return $default(_that.previousOutputsHash,_that.sequencesHash,_that.sigOpCountsHash,_that.outputsHash,_that.payloadHash);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Uint8List? previousOutputsHash,  Uint8List? sequencesHash,  Uint8List? sigOpCountsHash,  Uint8List? outputsHash,  Uint8List? payloadHash)?  $default,) {final _that = this;
switch (_that) {
case _SighashReusedValues() when $default != null:
return $default(_that.previousOutputsHash,_that.sequencesHash,_that.sigOpCountsHash,_that.outputsHash,_that.payloadHash);case _:
  return null;

}
}

}

/// @nodoc


class _SighashReusedValues implements SighashReusedValues {
   _SighashReusedValues({this.previousOutputsHash, this.sequencesHash, this.sigOpCountsHash, this.outputsHash, this.payloadHash});
  

@override  Uint8List? previousOutputsHash;
@override  Uint8List? sequencesHash;
@override  Uint8List? sigOpCountsHash;
@override  Uint8List? outputsHash;
@override  Uint8List? payloadHash;

/// Create a copy of SighashReusedValues
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SighashReusedValuesCopyWith<_SighashReusedValues> get copyWith => __$SighashReusedValuesCopyWithImpl<_SighashReusedValues>(this, _$identity);





@override
String toString() {
  return 'SighashReusedValues(previousOutputsHash: $previousOutputsHash, sequencesHash: $sequencesHash, sigOpCountsHash: $sigOpCountsHash, outputsHash: $outputsHash, payloadHash: $payloadHash)';
}


}

/// @nodoc
abstract mixin class _$SighashReusedValuesCopyWith<$Res> implements $SighashReusedValuesCopyWith<$Res> {
  factory _$SighashReusedValuesCopyWith(_SighashReusedValues value, $Res Function(_SighashReusedValues) _then) = __$SighashReusedValuesCopyWithImpl;
@override @useResult
$Res call({
 Uint8List? previousOutputsHash, Uint8List? sequencesHash, Uint8List? sigOpCountsHash, Uint8List? outputsHash, Uint8List? payloadHash
});




}
/// @nodoc
class __$SighashReusedValuesCopyWithImpl<$Res>
    implements _$SighashReusedValuesCopyWith<$Res> {
  __$SighashReusedValuesCopyWithImpl(this._self, this._then);

  final _SighashReusedValues _self;
  final $Res Function(_SighashReusedValues) _then;

/// Create a copy of SighashReusedValues
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? previousOutputsHash = freezed,Object? sequencesHash = freezed,Object? sigOpCountsHash = freezed,Object? outputsHash = freezed,Object? payloadHash = freezed,}) {
  return _then(_SighashReusedValues(
previousOutputsHash: freezed == previousOutputsHash ? _self.previousOutputsHash : previousOutputsHash // ignore: cast_nullable_to_non_nullable
as Uint8List?,sequencesHash: freezed == sequencesHash ? _self.sequencesHash : sequencesHash // ignore: cast_nullable_to_non_nullable
as Uint8List?,sigOpCountsHash: freezed == sigOpCountsHash ? _self.sigOpCountsHash : sigOpCountsHash // ignore: cast_nullable_to_non_nullable
as Uint8List?,outputsHash: freezed == outputsHash ? _self.outputsHash : outputsHash // ignore: cast_nullable_to_non_nullable
as Uint8List?,payloadHash: freezed == payloadHash ? _self.payloadHash : payloadHash // ignore: cast_nullable_to_non_nullable
as Uint8List?,
  ));
}


}

// dart format on
