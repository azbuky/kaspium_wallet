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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$TxSettingsImplCopyWith<$Res>
    implements $TxSettingsCopyWith<$Res> {
  factory _$$TxSettingsImplCopyWith(
          _$TxSettingsImpl value, $Res Function(_$TxSettingsImpl) then) =
      __$$TxSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TxFilter txFilter});
}

/// @nodoc
class __$$TxSettingsImplCopyWithImpl<$Res>
    extends _$TxSettingsCopyWithImpl<$Res, _$TxSettingsImpl>
    implements _$$TxSettingsImplCopyWith<$Res> {
  __$$TxSettingsImplCopyWithImpl(
      _$TxSettingsImpl _value, $Res Function(_$TxSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? txFilter = null,
  }) {
    return _then(_$TxSettingsImpl(
      txFilter: null == txFilter
          ? _value.txFilter
          : txFilter // ignore: cast_nullable_to_non_nullable
              as TxFilter,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TxSettingsImpl implements _TxSettings {
  const _$TxSettingsImpl({this.txFilter = TxFilter.all});

  factory _$TxSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TxSettingsImplFromJson(json);

  @override
  @JsonKey()
  final TxFilter txFilter;

  @override
  String toString() {
    return 'TxSettings(txFilter: $txFilter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TxSettingsImpl &&
            (identical(other.txFilter, txFilter) ||
                other.txFilter == txFilter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, txFilter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TxSettingsImplCopyWith<_$TxSettingsImpl> get copyWith =>
      __$$TxSettingsImplCopyWithImpl<_$TxSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TxSettingsImplToJson(
      this,
    );
  }
}

abstract class _TxSettings implements TxSettings {
  const factory _TxSettings({final TxFilter txFilter}) = _$TxSettingsImpl;

  factory _TxSettings.fromJson(Map<String, dynamic> json) =
      _$TxSettingsImpl.fromJson;

  @override
  TxFilter get txFilter;
  @override
  @JsonKey(ignore: true)
  _$$TxSettingsImplCopyWith<_$TxSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
