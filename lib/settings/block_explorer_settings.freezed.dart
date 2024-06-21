// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'block_explorer_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlockExplorerSettings _$BlockExplorerSettingsFromJson(
    Map<String, dynamic> json) {
  return _BlockExplorerSettings.fromJson(json);
}

/// @nodoc
mixin _$BlockExplorerSettings {
  Map<String, BlockExplorer> get selection =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlockExplorerSettingsCopyWith<BlockExplorerSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockExplorerSettingsCopyWith<$Res> {
  factory $BlockExplorerSettingsCopyWith(BlockExplorerSettings value,
          $Res Function(BlockExplorerSettings) then) =
      _$BlockExplorerSettingsCopyWithImpl<$Res, BlockExplorerSettings>;
  @useResult
  $Res call({Map<String, BlockExplorer> selection});
}

/// @nodoc
class _$BlockExplorerSettingsCopyWithImpl<$Res,
        $Val extends BlockExplorerSettings>
    implements $BlockExplorerSettingsCopyWith<$Res> {
  _$BlockExplorerSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selection = null,
  }) {
    return _then(_value.copyWith(
      selection: null == selection
          ? _value.selection
          : selection // ignore: cast_nullable_to_non_nullable
              as Map<String, BlockExplorer>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlockExplorerSettingsImplCopyWith<$Res>
    implements $BlockExplorerSettingsCopyWith<$Res> {
  factory _$$BlockExplorerSettingsImplCopyWith(
          _$BlockExplorerSettingsImpl value,
          $Res Function(_$BlockExplorerSettingsImpl) then) =
      __$$BlockExplorerSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, BlockExplorer> selection});
}

/// @nodoc
class __$$BlockExplorerSettingsImplCopyWithImpl<$Res>
    extends _$BlockExplorerSettingsCopyWithImpl<$Res,
        _$BlockExplorerSettingsImpl>
    implements _$$BlockExplorerSettingsImplCopyWith<$Res> {
  __$$BlockExplorerSettingsImplCopyWithImpl(_$BlockExplorerSettingsImpl _value,
      $Res Function(_$BlockExplorerSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selection = null,
  }) {
    return _then(_$BlockExplorerSettingsImpl(
      selection: null == selection
          ? _value._selection
          : selection // ignore: cast_nullable_to_non_nullable
              as Map<String, BlockExplorer>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlockExplorerSettingsImpl extends _BlockExplorerSettings {
  const _$BlockExplorerSettingsImpl(
      {final Map<String, BlockExplorer> selection = const {
        'mainnet': kKaspaExplorerMainnet,
        'testnet-10': kKaspaExplorerTestnet10,
        'testnet-11': kKaspaExplorerTestnet11
      }})
      : _selection = selection,
        super._();

  factory _$BlockExplorerSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlockExplorerSettingsImplFromJson(json);

  final Map<String, BlockExplorer> _selection;
  @override
  @JsonKey()
  Map<String, BlockExplorer> get selection {
    if (_selection is EqualUnmodifiableMapView) return _selection;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_selection);
  }

  @override
  String toString() {
    return 'BlockExplorerSettings(selection: $selection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlockExplorerSettingsImpl &&
            const DeepCollectionEquality()
                .equals(other._selection, _selection));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_selection));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlockExplorerSettingsImplCopyWith<_$BlockExplorerSettingsImpl>
      get copyWith => __$$BlockExplorerSettingsImplCopyWithImpl<
          _$BlockExplorerSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlockExplorerSettingsImplToJson(
      this,
    );
  }
}

abstract class _BlockExplorerSettings extends BlockExplorerSettings {
  const factory _BlockExplorerSettings(
          {final Map<String, BlockExplorer> selection}) =
      _$BlockExplorerSettingsImpl;
  const _BlockExplorerSettings._() : super._();

  factory _BlockExplorerSettings.fromJson(Map<String, dynamic> json) =
      _$BlockExplorerSettingsImpl.fromJson;

  @override
  Map<String, BlockExplorer> get selection;
  @override
  @JsonKey(ignore: true)
  _$$BlockExplorerSettingsImplCopyWith<_$BlockExplorerSettingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
