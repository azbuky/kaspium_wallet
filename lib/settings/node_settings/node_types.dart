import 'dart:math';

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../kaspa/kaspa.dart';

part 'node_types.freezed.dart';
part 'node_types.g.dart';

const mainnetNodeConfig = NodeConfig(
  id: '467af0cb-055c-4d32-8d29-123506c7ed6e',
  name: 'Kaspium Official',
  urls: ['node.kaspium.io'],
  isSecure: true,
  network: KaspaNetwork.mainnet,
);

@freezed
sealed class NodeConfigSettings with _$NodeConfigSettings {
  const factory NodeConfigSettings({
    @Default(const IListConst([mainnetNodeConfig])) IList<NodeConfig> options,
    @Default(mainnetNodeConfig) NodeConfig selected,
  }) = _NodeConfigSettings;

  factory NodeConfigSettings.fromJson(Map<String, dynamic> json) =>
      _$NodeConfigSettingsFromJson(json);
}

@freezed
sealed class NodeConfig with _$NodeConfig {
  const NodeConfig._();
  const factory NodeConfig({
    required String id,
    required String name,
    @Default(false) bool isDns,
    @Default(false) bool isSecure,
    required List<String> urls,
    required KaspaNetwork network,
    @Default('') String networkSuffix,
  }) = _NodeConfig;

  String get networkId => network.idWithSuffix(networkSuffix);

  factory NodeConfig.fromJson(Map<String, dynamic> json) =>
      _$NodeConfigFromJson(json);
}

@freezed
sealed class ActiveNodeConfig with _$ActiveNodeConfig {
  ActiveNodeConfig._();
  factory ActiveNodeConfig({
    required NodeConfig config,
  }) = _ActiveNodeConfig;

  String get name => config.name;
  KaspaNetwork get network => config.network;

  bool get isSecure => config.isSecure;
  late final String url = config.urls[Random().nextInt(config.urls.length)];
  late final String networkId = config.networkId;
}

@freezed
sealed class AddNodeSheetState with _$AddNodeSheetState {
  const factory AddNodeSheetState({
    @Default(true) bool showNameHint,
    @Default(true) bool showUrlHint,
    @Default('') String nameValidationText,
    @Default('') String urlValidationText,
  }) = _AddNodeSheetState;
}
