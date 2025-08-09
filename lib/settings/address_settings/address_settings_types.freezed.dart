// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_settings_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddressSettings _$AddressSettingsFromJson(Map<String, dynamic> json) {
  return _AddressSettings.fromJson(json);
}

/// @nodoc
mixin _$AddressSettings {
  AddressFilter get addressFilter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressSettingsCopyWith<AddressSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressSettingsCopyWith<$Res> {
  factory $AddressSettingsCopyWith(
          AddressSettings value, $Res Function(AddressSettings) then) =
      _$AddressSettingsCopyWithImpl<$Res, AddressSettings>;
  @useResult
  $Res call({AddressFilter addressFilter});
}

/// @nodoc
class _$AddressSettingsCopyWithImpl<$Res, $Val extends AddressSettings>
    implements $AddressSettingsCopyWith<$Res> {
  _$AddressSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressFilter = null,
  }) {
    return _then(_value.copyWith(
      addressFilter: null == addressFilter
          ? _value.addressFilter
          : addressFilter // ignore: cast_nullable_to_non_nullable
              as AddressFilter,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressSettingsImplCopyWith<$Res>
    implements $AddressSettingsCopyWith<$Res> {
  factory _$$AddressSettingsImplCopyWith(_$AddressSettingsImpl value,
          $Res Function(_$AddressSettingsImpl) then) =
      __$$AddressSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddressFilter addressFilter});
}

/// @nodoc
class __$$AddressSettingsImplCopyWithImpl<$Res>
    extends _$AddressSettingsCopyWithImpl<$Res, _$AddressSettingsImpl>
    implements _$$AddressSettingsImplCopyWith<$Res> {
  __$$AddressSettingsImplCopyWithImpl(
      _$AddressSettingsImpl _value, $Res Function(_$AddressSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressFilter = null,
  }) {
    return _then(_$AddressSettingsImpl(
      addressFilter: null == addressFilter
          ? _value.addressFilter
          : addressFilter // ignore: cast_nullable_to_non_nullable
              as AddressFilter,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressSettingsImpl implements _AddressSettings {
  const _$AddressSettingsImpl({this.addressFilter = AddressFilter.all});

  factory _$AddressSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressSettingsImplFromJson(json);

  @override
  @JsonKey()
  final AddressFilter addressFilter;

  @override
  String toString() {
    return 'AddressSettings(addressFilter: $addressFilter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressSettingsImpl &&
            (identical(other.addressFilter, addressFilter) ||
                other.addressFilter == addressFilter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, addressFilter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressSettingsImplCopyWith<_$AddressSettingsImpl> get copyWith =>
      __$$AddressSettingsImplCopyWithImpl<_$AddressSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressSettingsImplToJson(
      this,
    );
  }
}

abstract class _AddressSettings implements AddressSettings {
  const factory _AddressSettings({final AddressFilter addressFilter}) =
      _$AddressSettingsImpl;

  factory _AddressSettings.fromJson(Map<String, dynamic> json) =
      _$AddressSettingsImpl.fromJson;

  @override
  AddressFilter get addressFilter;
  @override
  @JsonKey(ignore: true)
  _$$AddressSettingsImplCopyWith<_$AddressSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
