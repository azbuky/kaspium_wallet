// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'node_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NodeConfigSettings _$NodeConfigSettingsFromJson(Map<String, dynamic> json) {
  return _NodeConfigSettings.fromJson(json);
}

/// @nodoc
mixin _$NodeConfigSettings {
  IList<NodeConfig> get options => throw _privateConstructorUsedError;
  NodeConfig get selected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NodeConfigSettingsCopyWith<NodeConfigSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NodeConfigSettingsCopyWith<$Res> {
  factory $NodeConfigSettingsCopyWith(
          NodeConfigSettings value, $Res Function(NodeConfigSettings) then) =
      _$NodeConfigSettingsCopyWithImpl<$Res, NodeConfigSettings>;
  @useResult
  $Res call({IList<NodeConfig> options, NodeConfig selected});

  $NodeConfigCopyWith<$Res> get selected;
}

/// @nodoc
class _$NodeConfigSettingsCopyWithImpl<$Res, $Val extends NodeConfigSettings>
    implements $NodeConfigSettingsCopyWith<$Res> {
  _$NodeConfigSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? options = null,
    Object? selected = null,
  }) {
    return _then(_value.copyWith(
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as IList<NodeConfig>,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as NodeConfig,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NodeConfigCopyWith<$Res> get selected {
    return $NodeConfigCopyWith<$Res>(_value.selected, (value) {
      return _then(_value.copyWith(selected: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NodeConfigSettingsImplCopyWith<$Res>
    implements $NodeConfigSettingsCopyWith<$Res> {
  factory _$$NodeConfigSettingsImplCopyWith(_$NodeConfigSettingsImpl value,
          $Res Function(_$NodeConfigSettingsImpl) then) =
      __$$NodeConfigSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IList<NodeConfig> options, NodeConfig selected});

  @override
  $NodeConfigCopyWith<$Res> get selected;
}

/// @nodoc
class __$$NodeConfigSettingsImplCopyWithImpl<$Res>
    extends _$NodeConfigSettingsCopyWithImpl<$Res, _$NodeConfigSettingsImpl>
    implements _$$NodeConfigSettingsImplCopyWith<$Res> {
  __$$NodeConfigSettingsImplCopyWithImpl(_$NodeConfigSettingsImpl _value,
      $Res Function(_$NodeConfigSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? options = null,
    Object? selected = null,
  }) {
    return _then(_$NodeConfigSettingsImpl(
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as IList<NodeConfig>,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as NodeConfig,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NodeConfigSettingsImpl implements _NodeConfigSettings {
  const _$NodeConfigSettingsImpl(
      {this.options = const IListConst([mainnetNodeConfig]),
      this.selected = mainnetNodeConfig});

  factory _$NodeConfigSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$NodeConfigSettingsImplFromJson(json);

  @override
  @JsonKey()
  final IList<NodeConfig> options;
  @override
  @JsonKey()
  final NodeConfig selected;

  @override
  String toString() {
    return 'NodeConfigSettings(options: $options, selected: $selected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NodeConfigSettingsImpl &&
            const DeepCollectionEquality().equals(other.options, options) &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(options), selected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NodeConfigSettingsImplCopyWith<_$NodeConfigSettingsImpl> get copyWith =>
      __$$NodeConfigSettingsImplCopyWithImpl<_$NodeConfigSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NodeConfigSettingsImplToJson(
      this,
    );
  }
}

abstract class _NodeConfigSettings implements NodeConfigSettings {
  const factory _NodeConfigSettings(
      {final IList<NodeConfig> options,
      final NodeConfig selected}) = _$NodeConfigSettingsImpl;

  factory _NodeConfigSettings.fromJson(Map<String, dynamic> json) =
      _$NodeConfigSettingsImpl.fromJson;

  @override
  IList<NodeConfig> get options;
  @override
  NodeConfig get selected;
  @override
  @JsonKey(ignore: true)
  _$$NodeConfigSettingsImplCopyWith<_$NodeConfigSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NodeConfig _$NodeConfigFromJson(Map<String, dynamic> json) {
  return _NodeConfig.fromJson(json);
}

/// @nodoc
mixin _$NodeConfig {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get isDns => throw _privateConstructorUsedError;
  bool get isSecure => throw _privateConstructorUsedError;
  List<String> get urls => throw _privateConstructorUsedError;
  KaspaNetwork get network => throw _privateConstructorUsedError;
  String get networkSuffix => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NodeConfigCopyWith<NodeConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NodeConfigCopyWith<$Res> {
  factory $NodeConfigCopyWith(
          NodeConfig value, $Res Function(NodeConfig) then) =
      _$NodeConfigCopyWithImpl<$Res, NodeConfig>;
  @useResult
  $Res call(
      {String id,
      String name,
      bool isDns,
      bool isSecure,
      List<String> urls,
      KaspaNetwork network,
      String networkSuffix});
}

/// @nodoc
class _$NodeConfigCopyWithImpl<$Res, $Val extends NodeConfig>
    implements $NodeConfigCopyWith<$Res> {
  _$NodeConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isDns = null,
    Object? isSecure = null,
    Object? urls = null,
    Object? network = null,
    Object? networkSuffix = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isDns: null == isDns
          ? _value.isDns
          : isDns // ignore: cast_nullable_to_non_nullable
              as bool,
      isSecure: null == isSecure
          ? _value.isSecure
          : isSecure // ignore: cast_nullable_to_non_nullable
              as bool,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as KaspaNetwork,
      networkSuffix: null == networkSuffix
          ? _value.networkSuffix
          : networkSuffix // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NodeConfigImplCopyWith<$Res>
    implements $NodeConfigCopyWith<$Res> {
  factory _$$NodeConfigImplCopyWith(
          _$NodeConfigImpl value, $Res Function(_$NodeConfigImpl) then) =
      __$$NodeConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      bool isDns,
      bool isSecure,
      List<String> urls,
      KaspaNetwork network,
      String networkSuffix});
}

/// @nodoc
class __$$NodeConfigImplCopyWithImpl<$Res>
    extends _$NodeConfigCopyWithImpl<$Res, _$NodeConfigImpl>
    implements _$$NodeConfigImplCopyWith<$Res> {
  __$$NodeConfigImplCopyWithImpl(
      _$NodeConfigImpl _value, $Res Function(_$NodeConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isDns = null,
    Object? isSecure = null,
    Object? urls = null,
    Object? network = null,
    Object? networkSuffix = null,
  }) {
    return _then(_$NodeConfigImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isDns: null == isDns
          ? _value.isDns
          : isDns // ignore: cast_nullable_to_non_nullable
              as bool,
      isSecure: null == isSecure
          ? _value.isSecure
          : isSecure // ignore: cast_nullable_to_non_nullable
              as bool,
      urls: null == urls
          ? _value._urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as KaspaNetwork,
      networkSuffix: null == networkSuffix
          ? _value.networkSuffix
          : networkSuffix // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NodeConfigImpl extends _NodeConfig {
  const _$NodeConfigImpl(
      {required this.id,
      required this.name,
      this.isDns = false,
      this.isSecure = false,
      required final List<String> urls,
      required this.network,
      this.networkSuffix = ''})
      : _urls = urls,
        super._();

  factory _$NodeConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$NodeConfigImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey()
  final bool isDns;
  @override
  @JsonKey()
  final bool isSecure;
  final List<String> _urls;
  @override
  List<String> get urls {
    if (_urls is EqualUnmodifiableListView) return _urls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_urls);
  }

  @override
  final KaspaNetwork network;
  @override
  @JsonKey()
  final String networkSuffix;

  @override
  String toString() {
    return 'NodeConfig(id: $id, name: $name, isDns: $isDns, isSecure: $isSecure, urls: $urls, network: $network, networkSuffix: $networkSuffix)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NodeConfigImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isDns, isDns) || other.isDns == isDns) &&
            (identical(other.isSecure, isSecure) ||
                other.isSecure == isSecure) &&
            const DeepCollectionEquality().equals(other._urls, _urls) &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.networkSuffix, networkSuffix) ||
                other.networkSuffix == networkSuffix));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, isDns, isSecure,
      const DeepCollectionEquality().hash(_urls), network, networkSuffix);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NodeConfigImplCopyWith<_$NodeConfigImpl> get copyWith =>
      __$$NodeConfigImplCopyWithImpl<_$NodeConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NodeConfigImplToJson(
      this,
    );
  }
}

abstract class _NodeConfig extends NodeConfig {
  const factory _NodeConfig(
      {required final String id,
      required final String name,
      final bool isDns,
      final bool isSecure,
      required final List<String> urls,
      required final KaspaNetwork network,
      final String networkSuffix}) = _$NodeConfigImpl;
  const _NodeConfig._() : super._();

  factory _NodeConfig.fromJson(Map<String, dynamic> json) =
      _$NodeConfigImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  bool get isDns;
  @override
  bool get isSecure;
  @override
  List<String> get urls;
  @override
  KaspaNetwork get network;
  @override
  String get networkSuffix;
  @override
  @JsonKey(ignore: true)
  _$$NodeConfigImplCopyWith<_$NodeConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ActiveNodeConfig {
  NodeConfig get config => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActiveNodeConfigCopyWith<ActiveNodeConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveNodeConfigCopyWith<$Res> {
  factory $ActiveNodeConfigCopyWith(
          ActiveNodeConfig value, $Res Function(ActiveNodeConfig) then) =
      _$ActiveNodeConfigCopyWithImpl<$Res, ActiveNodeConfig>;
  @useResult
  $Res call({NodeConfig config});

  $NodeConfigCopyWith<$Res> get config;
}

/// @nodoc
class _$ActiveNodeConfigCopyWithImpl<$Res, $Val extends ActiveNodeConfig>
    implements $ActiveNodeConfigCopyWith<$Res> {
  _$ActiveNodeConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? config = null,
  }) {
    return _then(_value.copyWith(
      config: null == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as NodeConfig,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NodeConfigCopyWith<$Res> get config {
    return $NodeConfigCopyWith<$Res>(_value.config, (value) {
      return _then(_value.copyWith(config: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ActiveNodeConfigImplCopyWith<$Res>
    implements $ActiveNodeConfigCopyWith<$Res> {
  factory _$$ActiveNodeConfigImplCopyWith(_$ActiveNodeConfigImpl value,
          $Res Function(_$ActiveNodeConfigImpl) then) =
      __$$ActiveNodeConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NodeConfig config});

  @override
  $NodeConfigCopyWith<$Res> get config;
}

/// @nodoc
class __$$ActiveNodeConfigImplCopyWithImpl<$Res>
    extends _$ActiveNodeConfigCopyWithImpl<$Res, _$ActiveNodeConfigImpl>
    implements _$$ActiveNodeConfigImplCopyWith<$Res> {
  __$$ActiveNodeConfigImplCopyWithImpl(_$ActiveNodeConfigImpl _value,
      $Res Function(_$ActiveNodeConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? config = null,
  }) {
    return _then(_$ActiveNodeConfigImpl(
      config: null == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as NodeConfig,
    ));
  }
}

/// @nodoc

class _$ActiveNodeConfigImpl extends _ActiveNodeConfig {
  _$ActiveNodeConfigImpl({required this.config}) : super._();

  @override
  final NodeConfig config;

  @override
  String toString() {
    return 'ActiveNodeConfig(config: $config)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActiveNodeConfigImpl &&
            (identical(other.config, config) || other.config == config));
  }

  @override
  int get hashCode => Object.hash(runtimeType, config);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActiveNodeConfigImplCopyWith<_$ActiveNodeConfigImpl> get copyWith =>
      __$$ActiveNodeConfigImplCopyWithImpl<_$ActiveNodeConfigImpl>(
          this, _$identity);
}

abstract class _ActiveNodeConfig extends ActiveNodeConfig {
  factory _ActiveNodeConfig({required final NodeConfig config}) =
      _$ActiveNodeConfigImpl;
  _ActiveNodeConfig._() : super._();

  @override
  NodeConfig get config;
  @override
  @JsonKey(ignore: true)
  _$$ActiveNodeConfigImplCopyWith<_$ActiveNodeConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddNodeSheetState {
  bool get showNameHint => throw _privateConstructorUsedError;
  bool get showUrlHint => throw _privateConstructorUsedError;
  String get nameValidationText => throw _privateConstructorUsedError;
  String get urlValidationText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddNodeSheetStateCopyWith<AddNodeSheetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddNodeSheetStateCopyWith<$Res> {
  factory $AddNodeSheetStateCopyWith(
          AddNodeSheetState value, $Res Function(AddNodeSheetState) then) =
      _$AddNodeSheetStateCopyWithImpl<$Res, AddNodeSheetState>;
  @useResult
  $Res call(
      {bool showNameHint,
      bool showUrlHint,
      String nameValidationText,
      String urlValidationText});
}

/// @nodoc
class _$AddNodeSheetStateCopyWithImpl<$Res, $Val extends AddNodeSheetState>
    implements $AddNodeSheetStateCopyWith<$Res> {
  _$AddNodeSheetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showNameHint = null,
    Object? showUrlHint = null,
    Object? nameValidationText = null,
    Object? urlValidationText = null,
  }) {
    return _then(_value.copyWith(
      showNameHint: null == showNameHint
          ? _value.showNameHint
          : showNameHint // ignore: cast_nullable_to_non_nullable
              as bool,
      showUrlHint: null == showUrlHint
          ? _value.showUrlHint
          : showUrlHint // ignore: cast_nullable_to_non_nullable
              as bool,
      nameValidationText: null == nameValidationText
          ? _value.nameValidationText
          : nameValidationText // ignore: cast_nullable_to_non_nullable
              as String,
      urlValidationText: null == urlValidationText
          ? _value.urlValidationText
          : urlValidationText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddNodeSheetStateImplCopyWith<$Res>
    implements $AddNodeSheetStateCopyWith<$Res> {
  factory _$$AddNodeSheetStateImplCopyWith(_$AddNodeSheetStateImpl value,
          $Res Function(_$AddNodeSheetStateImpl) then) =
      __$$AddNodeSheetStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool showNameHint,
      bool showUrlHint,
      String nameValidationText,
      String urlValidationText});
}

/// @nodoc
class __$$AddNodeSheetStateImplCopyWithImpl<$Res>
    extends _$AddNodeSheetStateCopyWithImpl<$Res, _$AddNodeSheetStateImpl>
    implements _$$AddNodeSheetStateImplCopyWith<$Res> {
  __$$AddNodeSheetStateImplCopyWithImpl(_$AddNodeSheetStateImpl _value,
      $Res Function(_$AddNodeSheetStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showNameHint = null,
    Object? showUrlHint = null,
    Object? nameValidationText = null,
    Object? urlValidationText = null,
  }) {
    return _then(_$AddNodeSheetStateImpl(
      showNameHint: null == showNameHint
          ? _value.showNameHint
          : showNameHint // ignore: cast_nullable_to_non_nullable
              as bool,
      showUrlHint: null == showUrlHint
          ? _value.showUrlHint
          : showUrlHint // ignore: cast_nullable_to_non_nullable
              as bool,
      nameValidationText: null == nameValidationText
          ? _value.nameValidationText
          : nameValidationText // ignore: cast_nullable_to_non_nullable
              as String,
      urlValidationText: null == urlValidationText
          ? _value.urlValidationText
          : urlValidationText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddNodeSheetStateImpl implements _AddNodeSheetState {
  const _$AddNodeSheetStateImpl(
      {this.showNameHint = true,
      this.showUrlHint = true,
      this.nameValidationText = '',
      this.urlValidationText = ''});

  @override
  @JsonKey()
  final bool showNameHint;
  @override
  @JsonKey()
  final bool showUrlHint;
  @override
  @JsonKey()
  final String nameValidationText;
  @override
  @JsonKey()
  final String urlValidationText;

  @override
  String toString() {
    return 'AddNodeSheetState(showNameHint: $showNameHint, showUrlHint: $showUrlHint, nameValidationText: $nameValidationText, urlValidationText: $urlValidationText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNodeSheetStateImpl &&
            (identical(other.showNameHint, showNameHint) ||
                other.showNameHint == showNameHint) &&
            (identical(other.showUrlHint, showUrlHint) ||
                other.showUrlHint == showUrlHint) &&
            (identical(other.nameValidationText, nameValidationText) ||
                other.nameValidationText == nameValidationText) &&
            (identical(other.urlValidationText, urlValidationText) ||
                other.urlValidationText == urlValidationText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showNameHint, showUrlHint,
      nameValidationText, urlValidationText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNodeSheetStateImplCopyWith<_$AddNodeSheetStateImpl> get copyWith =>
      __$$AddNodeSheetStateImplCopyWithImpl<_$AddNodeSheetStateImpl>(
          this, _$identity);
}

abstract class _AddNodeSheetState implements AddNodeSheetState {
  const factory _AddNodeSheetState(
      {final bool showNameHint,
      final bool showUrlHint,
      final String nameValidationText,
      final String urlValidationText}) = _$AddNodeSheetStateImpl;

  @override
  bool get showNameHint;
  @override
  bool get showUrlHint;
  @override
  String get nameValidationText;
  @override
  String get urlValidationText;
  @override
  @JsonKey(ignore: true)
  _$$AddNodeSheetStateImplCopyWith<_$AddNodeSheetStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
