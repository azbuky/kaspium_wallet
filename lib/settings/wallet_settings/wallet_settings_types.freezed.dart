// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_settings_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WalletSettings _$WalletSettingsFromJson(Map<String, dynamic> json) {
  return _WalletSettings.fromJson(json);
}

/// @nodoc
mixin _$WalletSettings {
  RequestPassword get requestPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletSettingsCopyWith<WalletSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletSettingsCopyWith<$Res> {
  factory $WalletSettingsCopyWith(
          WalletSettings value, $Res Function(WalletSettings) then) =
      _$WalletSettingsCopyWithImpl<$Res, WalletSettings>;
  @useResult
  $Res call({RequestPassword requestPassword});
}

/// @nodoc
class _$WalletSettingsCopyWithImpl<$Res, $Val extends WalletSettings>
    implements $WalletSettingsCopyWith<$Res> {
  _$WalletSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestPassword = null,
  }) {
    return _then(_value.copyWith(
      requestPassword: null == requestPassword
          ? _value.requestPassword
          : requestPassword // ignore: cast_nullable_to_non_nullable
              as RequestPassword,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletSettingsImplCopyWith<$Res>
    implements $WalletSettingsCopyWith<$Res> {
  factory _$$WalletSettingsImplCopyWith(_$WalletSettingsImpl value,
          $Res Function(_$WalletSettingsImpl) then) =
      __$$WalletSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RequestPassword requestPassword});
}

/// @nodoc
class __$$WalletSettingsImplCopyWithImpl<$Res>
    extends _$WalletSettingsCopyWithImpl<$Res, _$WalletSettingsImpl>
    implements _$$WalletSettingsImplCopyWith<$Res> {
  __$$WalletSettingsImplCopyWithImpl(
      _$WalletSettingsImpl _value, $Res Function(_$WalletSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestPassword = null,
  }) {
    return _then(_$WalletSettingsImpl(
      requestPassword: null == requestPassword
          ? _value.requestPassword
          : requestPassword // ignore: cast_nullable_to_non_nullable
              as RequestPassword,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletSettingsImpl implements _WalletSettings {
  const _$WalletSettingsImpl({this.requestPassword = RequestPassword.atLaunch});

  factory _$WalletSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletSettingsImplFromJson(json);

  @override
  @JsonKey()
  final RequestPassword requestPassword;

  @override
  String toString() {
    return 'WalletSettings(requestPassword: $requestPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletSettingsImpl &&
            (identical(other.requestPassword, requestPassword) ||
                other.requestPassword == requestPassword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, requestPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletSettingsImplCopyWith<_$WalletSettingsImpl> get copyWith =>
      __$$WalletSettingsImplCopyWithImpl<_$WalletSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletSettingsImplToJson(
      this,
    );
  }
}

abstract class _WalletSettings implements WalletSettings {
  const factory _WalletSettings({final RequestPassword requestPassword}) =
      _$WalletSettingsImpl;

  factory _WalletSettings.fromJson(Map<String, dynamic> json) =
      _$WalletSettingsImpl.fromJson;

  @override
  RequestPassword get requestPassword;
  @override
  @JsonKey(ignore: true)
  _$$WalletSettingsImplCopyWith<_$WalletSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
