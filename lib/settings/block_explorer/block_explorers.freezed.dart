// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'block_explorers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlockExplorer _$BlockExplorerFromJson(Map<String, dynamic> json) {
  return _BlockExplorer.fromJson(json);
}

/// @nodoc
mixin _$BlockExplorer {
  KaspaNetwork get network => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get addressUrl => throw _privateConstructorUsedError;
  String get txUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlockExplorerCopyWith<BlockExplorer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockExplorerCopyWith<$Res> {
  factory $BlockExplorerCopyWith(
          BlockExplorer value, $Res Function(BlockExplorer) then) =
      _$BlockExplorerCopyWithImpl<$Res, BlockExplorer>;
  @useResult
  $Res call(
      {KaspaNetwork network,
      String name,
      String url,
      String addressUrl,
      String txUrl});
}

/// @nodoc
class _$BlockExplorerCopyWithImpl<$Res, $Val extends BlockExplorer>
    implements $BlockExplorerCopyWith<$Res> {
  _$BlockExplorerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? network = null,
    Object? name = null,
    Object? url = null,
    Object? addressUrl = null,
    Object? txUrl = null,
  }) {
    return _then(_value.copyWith(
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as KaspaNetwork,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      addressUrl: null == addressUrl
          ? _value.addressUrl
          : addressUrl // ignore: cast_nullable_to_non_nullable
              as String,
      txUrl: null == txUrl
          ? _value.txUrl
          : txUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlockExplorerImplCopyWith<$Res>
    implements $BlockExplorerCopyWith<$Res> {
  factory _$$BlockExplorerImplCopyWith(
          _$BlockExplorerImpl value, $Res Function(_$BlockExplorerImpl) then) =
      __$$BlockExplorerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {KaspaNetwork network,
      String name,
      String url,
      String addressUrl,
      String txUrl});
}

/// @nodoc
class __$$BlockExplorerImplCopyWithImpl<$Res>
    extends _$BlockExplorerCopyWithImpl<$Res, _$BlockExplorerImpl>
    implements _$$BlockExplorerImplCopyWith<$Res> {
  __$$BlockExplorerImplCopyWithImpl(
      _$BlockExplorerImpl _value, $Res Function(_$BlockExplorerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? network = null,
    Object? name = null,
    Object? url = null,
    Object? addressUrl = null,
    Object? txUrl = null,
  }) {
    return _then(_$BlockExplorerImpl(
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as KaspaNetwork,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      addressUrl: null == addressUrl
          ? _value.addressUrl
          : addressUrl // ignore: cast_nullable_to_non_nullable
              as String,
      txUrl: null == txUrl
          ? _value.txUrl
          : txUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlockExplorerImpl extends _BlockExplorer {
  const _$BlockExplorerImpl(
      {required this.network,
      required this.name,
      required this.url,
      required this.addressUrl,
      required this.txUrl})
      : super._();

  factory _$BlockExplorerImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlockExplorerImplFromJson(json);

  @override
  final KaspaNetwork network;
  @override
  final String name;
  @override
  final String url;
  @override
  final String addressUrl;
  @override
  final String txUrl;

  @override
  String toString() {
    return 'BlockExplorer(network: $network, name: $name, url: $url, addressUrl: $addressUrl, txUrl: $txUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlockExplorerImpl &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.addressUrl, addressUrl) ||
                other.addressUrl == addressUrl) &&
            (identical(other.txUrl, txUrl) || other.txUrl == txUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, network, name, url, addressUrl, txUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlockExplorerImplCopyWith<_$BlockExplorerImpl> get copyWith =>
      __$$BlockExplorerImplCopyWithImpl<_$BlockExplorerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlockExplorerImplToJson(
      this,
    );
  }
}

abstract class _BlockExplorer extends BlockExplorer {
  const factory _BlockExplorer(
      {required final KaspaNetwork network,
      required final String name,
      required final String url,
      required final String addressUrl,
      required final String txUrl}) = _$BlockExplorerImpl;
  const _BlockExplorer._() : super._();

  factory _BlockExplorer.fromJson(Map<String, dynamic> json) =
      _$BlockExplorerImpl.fromJson;

  @override
  KaspaNetwork get network;
  @override
  String get name;
  @override
  String get url;
  @override
  String get addressUrl;
  @override
  String get txUrl;
  @override
  @JsonKey(ignore: true)
  _$$BlockExplorerImplCopyWith<_$BlockExplorerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
