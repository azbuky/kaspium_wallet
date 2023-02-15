import 'dart:math';

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../kaspa/kaspa.dart';

part 'node_types.freezed.dart';
part 'node_types.g.dart';

int portForNetwork(KaspaNetwork network) {
  switch (network) {
    case KaspaNetwork.mainnet:
      return 16110;
    case KaspaNetwork.testnet:
      return 16210;
    case KaspaNetwork.simnet:
      return 16510;
    case KaspaNetwork.devnet:
      return 16610;
  }
}

KaspaNetwork networkForPort(int port) {
  switch (port) {
    case 16110:
      return KaspaNetwork.mainnet;
    case 16210:
      return KaspaNetwork.testnet;
    case 16510:
      return KaspaNetwork.simnet;
    case 16610:
      return KaspaNetwork.devnet;
    default:
      return KaspaNetwork.mainnet;
  }
}

const mainnetDnsNodeConfig = NodeConfig(
  id: 'mainner-dns-node-config',
  name: 'Mainnet DNS',
  isDns: true,
  urls: ['seeder1.kaspad.net'],
  network: KaspaNetwork.mainnet,
);

const testnetDnsNodeConfig = NodeConfig(
  id: 'testnet-dns-node-config',
  name: 'Testnet DNS',
  isDns: true,
  urls: ['seeder1-testnet.kaspad.net'],
  network: KaspaNetwork.testnet,
);

const mainnetNodeConfig = NodeConfig(
  id: '421bbd24-f5b9-43e6-ac2a-4e8a832ca127',
  name: 'Kaspa Random Mainnet',
  urls: [
    '95.217.157.39:16110',
    '159.69.241.25:16110',
  ],
  network: KaspaNetwork.mainnet,
);

const testnetNodeConfig = NodeConfig(
  id: '03b9392b-0bb2-4585-96ee-0253a7715837',
  name: 'Kaspa Random Testnet',
  urls: [
    '79.120.76.62:16210',
    '144.76.19.91:16210',
    '23.88.70.20:16210',
    '116.202.130.71:16210',
  ],
  network: KaspaNetwork.testnet,
);

@freezed
class NodeConfigSettings with _$NodeConfigSettings {
  const factory NodeConfigSettings({
    @Default(const IListConst([
      mainnetNodeConfig,
      testnetNodeConfig,
    ]))
        IList<NodeConfig> options,
    @Default(mainnetNodeConfig)
        NodeConfig selected,
  }) = _NodeConfigSettings;

  factory NodeConfigSettings.fromJson(Map<String, dynamic> json) =>
      _$NodeConfigSettingsFromJson(json);
}

@freezed
class NodeConfig with _$NodeConfig {
  const NodeConfig._();
  const factory NodeConfig({
    required String id,
    required String name,
    @Default(false) bool isDns,
    required List<String> urls,
    required KaspaNetwork network,
  }) = _NodeConfig;

  factory NodeConfig.fromJson(Map<String, dynamic> json) =>
      _$NodeConfigFromJson(json);
}

@freezed
class ActiveNodeConfig with _$ActiveNodeConfig {
  ActiveNodeConfig._();
  factory ActiveNodeConfig({
    required NodeConfig config,
  }) = _ActiveNodeConfig;

  String get name => config.name;
  KaspaNetwork get network => config.network;
  late final String url = config.urls[Random().nextInt(config.urls.length)];
}

@freezed
class AddNodeSheetState with _$AddNodeSheetState {
  const factory AddNodeSheetState({
    @Default(true) bool showNameHint,
    @Default(true) bool showUrlHint,
    @Default('') String nameValidationText,
    @Default('') String urlValidationText,
  }) = _AddNodeSheetState;
}
