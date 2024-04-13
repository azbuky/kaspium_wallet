// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'txnotes_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TxNote _$TxNoteFromJson(Map<String, dynamic> json) {
  return _TxNote.fromJson(json);
}

/// @nodoc
mixin _$TxNote {
  String get txId => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TxNoteCopyWith<TxNote> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TxNoteCopyWith<$Res> {
  factory $TxNoteCopyWith(TxNote value, $Res Function(TxNote) then) =
      _$TxNoteCopyWithImpl<$Res, TxNote>;
  @useResult
  $Res call({String txId, String note});
}

/// @nodoc
class _$TxNoteCopyWithImpl<$Res, $Val extends TxNote>
    implements $TxNoteCopyWith<$Res> {
  _$TxNoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? txId = null,
    Object? note = null,
  }) {
    return _then(_value.copyWith(
      txId: null == txId
          ? _value.txId
          : txId // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TxNoteImplCopyWith<$Res> implements $TxNoteCopyWith<$Res> {
  factory _$$TxNoteImplCopyWith(
          _$TxNoteImpl value, $Res Function(_$TxNoteImpl) then) =
      __$$TxNoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String txId, String note});
}

/// @nodoc
class __$$TxNoteImplCopyWithImpl<$Res>
    extends _$TxNoteCopyWithImpl<$Res, _$TxNoteImpl>
    implements _$$TxNoteImplCopyWith<$Res> {
  __$$TxNoteImplCopyWithImpl(
      _$TxNoteImpl _value, $Res Function(_$TxNoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? txId = null,
    Object? note = null,
  }) {
    return _then(_$TxNoteImpl(
      txId: null == txId
          ? _value.txId
          : txId // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TxNoteImpl implements _TxNote {
  const _$TxNoteImpl({required this.txId, required this.note});

  factory _$TxNoteImpl.fromJson(Map<String, dynamic> json) =>
      _$$TxNoteImplFromJson(json);

  @override
  final String txId;
  @override
  final String note;

  @override
  String toString() {
    return 'TxNote(txId: $txId, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TxNoteImpl &&
            (identical(other.txId, txId) || other.txId == txId) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, txId, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TxNoteImplCopyWith<_$TxNoteImpl> get copyWith =>
      __$$TxNoteImplCopyWithImpl<_$TxNoteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TxNoteImplToJson(
      this,
    );
  }
}

abstract class _TxNote implements TxNote {
  const factory _TxNote(
      {required final String txId, required final String note}) = _$TxNoteImpl;

  factory _TxNote.fromJson(Map<String, dynamic> json) = _$TxNoteImpl.fromJson;

  @override
  String get txId;
  @override
  String get note;
  @override
  @JsonKey(ignore: true)
  _$$TxNoteImplCopyWith<_$TxNoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
