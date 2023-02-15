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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BlockExplorerSettings _$BlockExplorerSettingsFromJson(
    Map<String, dynamic> json) {
  return _BlockExplorerSettings.fromJson(json);
}

/// @nodoc
mixin _$BlockExplorerSettings {
  Map<KaspaNetwork, BlockExplorer> get selection =>
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
  $Res call({Map<KaspaNetwork, BlockExplorer> selection});
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
              as Map<KaspaNetwork, BlockExplorer>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BlockExplorerSettingsCopyWith<$Res>
    implements $BlockExplorerSettingsCopyWith<$Res> {
  factory _$$_BlockExplorerSettingsCopyWith(_$_BlockExplorerSettings value,
          $Res Function(_$_BlockExplorerSettings) then) =
      __$$_BlockExplorerSettingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<KaspaNetwork, BlockExplorer> selection});
}

/// @nodoc
class __$$_BlockExplorerSettingsCopyWithImpl<$Res>
    extends _$BlockExplorerSettingsCopyWithImpl<$Res, _$_BlockExplorerSettings>
    implements _$$_BlockExplorerSettingsCopyWith<$Res> {
  __$$_BlockExplorerSettingsCopyWithImpl(_$_BlockExplorerSettings _value,
      $Res Function(_$_BlockExplorerSettings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selection = null,
  }) {
    return _then(_$_BlockExplorerSettings(
      selection: null == selection
          ? _value._selection
          : selection // ignore: cast_nullable_to_non_nullable
              as Map<KaspaNetwork, BlockExplorer>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BlockExplorerSettings extends _BlockExplorerSettings {
  const _$_BlockExplorerSettings(
      {final Map<KaspaNetwork, BlockExplorer> selection = const {
        KaspaNetwork.mainnet: kKaspaExplorerMainnet,
        KaspaNetwork.testnet: kKatnipTestnet,
        KaspaNetwork.devnet: kKaspaExplorerMainnet,
        KaspaNetwork.simnet: kKaspaExplorerMainnet
      }})
      : _selection = selection,
        super._();

  factory _$_BlockExplorerSettings.fromJson(Map<String, dynamic> json) =>
      _$$_BlockExplorerSettingsFromJson(json);

  final Map<KaspaNetwork, BlockExplorer> _selection;
  @override
  @JsonKey()
  Map<KaspaNetwork, BlockExplorer> get selection {
    if (_selection is EqualUnmodifiableMapView) return _selection;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_selection);
  }

  @override
  String toString() {
    return 'BlockExplorerSettings(selection: $selection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BlockExplorerSettings &&
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
  _$$_BlockExplorerSettingsCopyWith<_$_BlockExplorerSettings> get copyWith =>
      __$$_BlockExplorerSettingsCopyWithImpl<_$_BlockExplorerSettings>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BlockExplorerSettingsToJson(
      this,
    );
  }
}

abstract class _BlockExplorerSettings extends BlockExplorerSettings {
  const factory _BlockExplorerSettings(
          {final Map<KaspaNetwork, BlockExplorer> selection}) =
      _$_BlockExplorerSettings;
  const _BlockExplorerSettings._() : super._();

  factory _BlockExplorerSettings.fromJson(Map<String, dynamic> json) =
      _$_BlockExplorerSettings.fromJson;

  @override
  Map<KaspaNetwork, BlockExplorer> get selection;
  @override
  @JsonKey(ignore: true)
  _$$_BlockExplorerSettingsCopyWith<_$_BlockExplorerSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
