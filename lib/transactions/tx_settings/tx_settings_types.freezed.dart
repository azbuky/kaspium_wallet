// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tx_settings_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TxSettings _$TxSettingsFromJson(Map<String, dynamic> json) {
  return _TxSettings.fromJson(json);
}

/// @nodoc
mixin _$TxSettings {
  TxFilter get txFilter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TxSettingsCopyWith<TxSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TxSettingsCopyWith<$Res> {
  factory $TxSettingsCopyWith(
          TxSettings value, $Res Function(TxSettings) then) =
      _$TxSettingsCopyWithImpl<$Res, TxSettings>;
  @useResult
  $Res call({TxFilter txFilter});
}

/// @nodoc
class _$TxSettingsCopyWithImpl<$Res, $Val extends TxSettings>
    implements $TxSettingsCopyWith<$Res> {
  _$TxSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? txFilter = null,
  }) {
    return _then(_value.copyWith(
      txFilter: null == txFilter
          ? _value.txFilter
          : txFilter // ignore: cast_nullable_to_non_nullable
              as TxFilter,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TxSettingsCopyWith<$Res>
    implements $TxSettingsCopyWith<$Res> {
  factory _$$_TxSettingsCopyWith(
          _$_TxSettings value, $Res Function(_$_TxSettings) then) =
      __$$_TxSettingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TxFilter txFilter});
}

/// @nodoc
class __$$_TxSettingsCopyWithImpl<$Res>
    extends _$TxSettingsCopyWithImpl<$Res, _$_TxSettings>
    implements _$$_TxSettingsCopyWith<$Res> {
  __$$_TxSettingsCopyWithImpl(
      _$_TxSettings _value, $Res Function(_$_TxSettings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? txFilter = null,
  }) {
    return _then(_$_TxSettings(
      txFilter: null == txFilter
          ? _value.txFilter
          : txFilter // ignore: cast_nullable_to_non_nullable
              as TxFilter,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TxSettings implements _TxSettings {
  const _$_TxSettings({this.txFilter = TxFilter.all});

  factory _$_TxSettings.fromJson(Map<String, dynamic> json) =>
      _$$_TxSettingsFromJson(json);

  @override
  @JsonKey()
  final TxFilter txFilter;

  @override
  String toString() {
    return 'TxSettings(txFilter: $txFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TxSettings &&
            (identical(other.txFilter, txFilter) ||
                other.txFilter == txFilter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, txFilter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TxSettingsCopyWith<_$_TxSettings> get copyWith =>
      __$$_TxSettingsCopyWithImpl<_$_TxSettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TxSettingsToJson(
      this,
    );
  }
}

abstract class _TxSettings implements TxSettings {
  const factory _TxSettings({final TxFilter txFilter}) = _$_TxSettings;

  factory _TxSettings.fromJson(Map<String, dynamic> json) =
      _$_TxSettings.fromJson;

  @override
  TxFilter get txFilter;
  @override
  @JsonKey(ignore: true)
  _$$_TxSettingsCopyWith<_$_TxSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
