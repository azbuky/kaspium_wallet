// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kasplex_settings_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KasplexSettings _$KasplexSettingsFromJson(Map<String, dynamic> json) {
  return _Krc20Settings.fromJson(json);
}

/// @nodoc
mixin _$KasplexSettings {
  bool get krc20Enabled => throw _privateConstructorUsedError;
  bool get userConfirmed => throw _privateConstructorUsedError;
  Map<String, String> get apiUrlByNetworkId =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KasplexSettingsCopyWith<KasplexSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KasplexSettingsCopyWith<$Res> {
  factory $KasplexSettingsCopyWith(
          KasplexSettings value, $Res Function(KasplexSettings) then) =
      _$KasplexSettingsCopyWithImpl<$Res, KasplexSettings>;
  @useResult
  $Res call(
      {bool krc20Enabled,
      bool userConfirmed,
      Map<String, String> apiUrlByNetworkId});
}

/// @nodoc
class _$KasplexSettingsCopyWithImpl<$Res, $Val extends KasplexSettings>
    implements $KasplexSettingsCopyWith<$Res> {
  _$KasplexSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? krc20Enabled = null,
    Object? userConfirmed = null,
    Object? apiUrlByNetworkId = null,
  }) {
    return _then(_value.copyWith(
      krc20Enabled: null == krc20Enabled
          ? _value.krc20Enabled
          : krc20Enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      userConfirmed: null == userConfirmed
          ? _value.userConfirmed
          : userConfirmed // ignore: cast_nullable_to_non_nullable
              as bool,
      apiUrlByNetworkId: null == apiUrlByNetworkId
          ? _value.apiUrlByNetworkId
          : apiUrlByNetworkId // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Krc20SettingsImplCopyWith<$Res>
    implements $KasplexSettingsCopyWith<$Res> {
  factory _$$Krc20SettingsImplCopyWith(
          _$Krc20SettingsImpl value, $Res Function(_$Krc20SettingsImpl) then) =
      __$$Krc20SettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool krc20Enabled,
      bool userConfirmed,
      Map<String, String> apiUrlByNetworkId});
}

/// @nodoc
class __$$Krc20SettingsImplCopyWithImpl<$Res>
    extends _$KasplexSettingsCopyWithImpl<$Res, _$Krc20SettingsImpl>
    implements _$$Krc20SettingsImplCopyWith<$Res> {
  __$$Krc20SettingsImplCopyWithImpl(
      _$Krc20SettingsImpl _value, $Res Function(_$Krc20SettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? krc20Enabled = null,
    Object? userConfirmed = null,
    Object? apiUrlByNetworkId = null,
  }) {
    return _then(_$Krc20SettingsImpl(
      krc20Enabled: null == krc20Enabled
          ? _value.krc20Enabled
          : krc20Enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      userConfirmed: null == userConfirmed
          ? _value.userConfirmed
          : userConfirmed // ignore: cast_nullable_to_non_nullable
              as bool,
      apiUrlByNetworkId: null == apiUrlByNetworkId
          ? _value._apiUrlByNetworkId
          : apiUrlByNetworkId // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Krc20SettingsImpl extends _Krc20Settings {
  const _$Krc20SettingsImpl(
      {this.krc20Enabled = false,
      this.userConfirmed = false,
      final Map<String, String> apiUrlByNetworkId = const {}})
      : _apiUrlByNetworkId = apiUrlByNetworkId,
        super._();

  factory _$Krc20SettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$Krc20SettingsImplFromJson(json);

  @override
  @JsonKey()
  final bool krc20Enabled;
  @override
  @JsonKey()
  final bool userConfirmed;
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
    return 'KasplexSettings(krc20Enabled: $krc20Enabled, userConfirmed: $userConfirmed, apiUrlByNetworkId: $apiUrlByNetworkId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Krc20SettingsImpl &&
            (identical(other.krc20Enabled, krc20Enabled) ||
                other.krc20Enabled == krc20Enabled) &&
            (identical(other.userConfirmed, userConfirmed) ||
                other.userConfirmed == userConfirmed) &&
            const DeepCollectionEquality()
                .equals(other._apiUrlByNetworkId, _apiUrlByNetworkId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, krc20Enabled, userConfirmed,
      const DeepCollectionEquality().hash(_apiUrlByNetworkId));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Krc20SettingsImplCopyWith<_$Krc20SettingsImpl> get copyWith =>
      __$$Krc20SettingsImplCopyWithImpl<_$Krc20SettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Krc20SettingsImplToJson(
      this,
    );
  }
}

abstract class _Krc20Settings extends KasplexSettings {
  const factory _Krc20Settings(
      {final bool krc20Enabled,
      final bool userConfirmed,
      final Map<String, String> apiUrlByNetworkId}) = _$Krc20SettingsImpl;
  const _Krc20Settings._() : super._();

  factory _Krc20Settings.fromJson(Map<String, dynamic> json) =
      _$Krc20SettingsImpl.fromJson;

  @override
  bool get krc20Enabled;
  @override
  bool get userConfirmed;
  @override
  Map<String, String> get apiUrlByNetworkId;
  @override
  @JsonKey(ignore: true)
  _$$Krc20SettingsImplCopyWith<_$Krc20SettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
