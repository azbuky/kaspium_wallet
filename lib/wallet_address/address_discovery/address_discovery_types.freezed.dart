// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_discovery_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScanIndexes {
  int? get start => throw _privateConstructorUsedError;
  int? get scanned => throw _privateConstructorUsedError;
  int? get last => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScanIndexesCopyWith<ScanIndexes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanIndexesCopyWith<$Res> {
  factory $ScanIndexesCopyWith(
          ScanIndexes value, $Res Function(ScanIndexes) then) =
      _$ScanIndexesCopyWithImpl<$Res, ScanIndexes>;
  @useResult
  $Res call({int? start, int? scanned, int? last});
}

/// @nodoc
class _$ScanIndexesCopyWithImpl<$Res, $Val extends ScanIndexes>
    implements $ScanIndexesCopyWith<$Res> {
  _$ScanIndexesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = freezed,
    Object? scanned = freezed,
    Object? last = freezed,
  }) {
    return _then(_value.copyWith(
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int?,
      scanned: freezed == scanned
          ? _value.scanned
          : scanned // ignore: cast_nullable_to_non_nullable
              as int?,
      last: freezed == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScanIndexesImplCopyWith<$Res>
    implements $ScanIndexesCopyWith<$Res> {
  factory _$$ScanIndexesImplCopyWith(
          _$ScanIndexesImpl value, $Res Function(_$ScanIndexesImpl) then) =
      __$$ScanIndexesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? start, int? scanned, int? last});
}

/// @nodoc
class __$$ScanIndexesImplCopyWithImpl<$Res>
    extends _$ScanIndexesCopyWithImpl<$Res, _$ScanIndexesImpl>
    implements _$$ScanIndexesImplCopyWith<$Res> {
  __$$ScanIndexesImplCopyWithImpl(
      _$ScanIndexesImpl _value, $Res Function(_$ScanIndexesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = freezed,
    Object? scanned = freezed,
    Object? last = freezed,
  }) {
    return _then(_$ScanIndexesImpl(
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int?,
      scanned: freezed == scanned
          ? _value.scanned
          : scanned // ignore: cast_nullable_to_non_nullable
              as int?,
      last: freezed == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ScanIndexesImpl extends _ScanIndexes {
  const _$ScanIndexesImpl({this.start, this.scanned, this.last}) : super._();

  @override
  final int? start;
  @override
  final int? scanned;
  @override
  final int? last;

  @override
  String toString() {
    return 'ScanIndexes(start: $start, scanned: $scanned, last: $last)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanIndexesImpl &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.scanned, scanned) || other.scanned == scanned) &&
            (identical(other.last, last) || other.last == last));
  }

  @override
  int get hashCode => Object.hash(runtimeType, start, scanned, last);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScanIndexesImplCopyWith<_$ScanIndexesImpl> get copyWith =>
      __$$ScanIndexesImplCopyWithImpl<_$ScanIndexesImpl>(this, _$identity);
}

abstract class _ScanIndexes extends ScanIndexes {
  const factory _ScanIndexes(
      {final int? start,
      final int? scanned,
      final int? last}) = _$ScanIndexesImpl;
  const _ScanIndexes._() : super._();

  @override
  int? get start;
  @override
  int? get scanned;
  @override
  int? get last;
  @override
  @JsonKey(ignore: true)
  _$$ScanIndexesImplCopyWith<_$ScanIndexesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
