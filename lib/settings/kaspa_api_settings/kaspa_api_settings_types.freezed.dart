// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kaspa_api_settings_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KaspaApiSettings _$KaspaApiSettingsFromJson(Map<String, dynamic> json) {
  return _KaspaApiSettings.fromJson(json);
}

/// @nodoc
mixin _$KaspaApiSettings {
  Map<String, String> get apiUrlByNetworkId =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KaspaApiSettingsCopyWith<KaspaApiSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KaspaApiSettingsCopyWith<$Res> {
  factory $KaspaApiSettingsCopyWith(
          KaspaApiSettings value, $Res Function(KaspaApiSettings) then) =
      _$KaspaApiSettingsCopyWithImpl<$Res, KaspaApiSettings>;
  @useResult
  $Res call({Map<String, String> apiUrlByNetworkId});
}

/// @nodoc
class _$KaspaApiSettingsCopyWithImpl<$Res, $Val extends KaspaApiSettings>
    implements $KaspaApiSettingsCopyWith<$Res> {
  _$KaspaApiSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiUrlByNetworkId = null,
  }) {
    return _then(_value.copyWith(
      apiUrlByNetworkId: null == apiUrlByNetworkId
          ? _value.apiUrlByNetworkId
          : apiUrlByNetworkId // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KaspaApiSettingsImplCopyWith<$Res>
    implements $KaspaApiSettingsCopyWith<$Res> {
  factory _$$KaspaApiSettingsImplCopyWith(_$KaspaApiSettingsImpl value,
          $Res Function(_$KaspaApiSettingsImpl) then) =
      __$$KaspaApiSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, String> apiUrlByNetworkId});
}

/// @nodoc
class __$$KaspaApiSettingsImplCopyWithImpl<$Res>
    extends _$KaspaApiSettingsCopyWithImpl<$Res, _$KaspaApiSettingsImpl>
    implements _$$KaspaApiSettingsImplCopyWith<$Res> {
  __$$KaspaApiSettingsImplCopyWithImpl(_$KaspaApiSettingsImpl _value,
      $Res Function(_$KaspaApiSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiUrlByNetworkId = null,
  }) {
    return _then(_$KaspaApiSettingsImpl(
      apiUrlByNetworkId: null == apiUrlByNetworkId
          ? _value._apiUrlByNetworkId
          : apiUrlByNetworkId // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KaspaApiSettingsImpl extends _KaspaApiSettings {
  const _$KaspaApiSettingsImpl(
      {final Map<String, String> apiUrlByNetworkId = const {}})
      : _apiUrlByNetworkId = apiUrlByNetworkId,
        super._();

  factory _$KaspaApiSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$KaspaApiSettingsImplFromJson(json);

  final Map<String, String> _apiUrlByNetworkId;
  @override
  @JsonKey()
  Map<String, String> get apiUrlByNetworkId {
    if (_apiUrlByNetworkId is EqualUnmodifiableMapView)
      return _apiUrlByNetworkId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_apiUrlByNetworkId);
  }

  @override
  String toString() {
    return 'KaspaApiSettings(apiUrlByNetworkId: $apiUrlByNetworkId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KaspaApiSettingsImpl &&
            const DeepCollectionEquality()
                .equals(other._apiUrlByNetworkId, _apiUrlByNetworkId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_apiUrlByNetworkId));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KaspaApiSettingsImplCopyWith<_$KaspaApiSettingsImpl> get copyWith =>
      __$$KaspaApiSettingsImplCopyWithImpl<_$KaspaApiSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KaspaApiSettingsImplToJson(
      this,
    );
  }
}

abstract class _KaspaApiSettings extends KaspaApiSettings {
  const factory _KaspaApiSettings(
      {final Map<String, String> apiUrlByNetworkId}) = _$KaspaApiSettingsImpl;
  const _KaspaApiSettings._() : super._();

  factory _KaspaApiSettings.fromJson(Map<String, dynamic> json) =
      _$KaspaApiSettingsImpl.fromJson;

  @override
  Map<String, String> get apiUrlByNetworkId;
  @override
  @JsonKey(ignore: true)
  _$$KaspaApiSettingsImplCopyWith<_$KaspaApiSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
