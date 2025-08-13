// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NodeConfigSettings _$NodeConfigSettingsFromJson(Map json) =>
    _NodeConfigSettings(
      options: json['options'] == null
          ? const IListConst([mainnetNodeConfig])
          : IList<NodeConfig>.fromJson(
              json['options'],
              (value) =>
                  NodeConfig.fromJson(Map<String, dynamic>.from(value as Map)),
            ),
      selected: json['selected'] == null
          ? mainnetNodeConfig
          : NodeConfig.fromJson(
              Map<String, dynamic>.from(json['selected'] as Map),
            ),
    );

Map<String, dynamic> _$NodeConfigSettingsToJson(_NodeConfigSettings instance) =>
    <String, dynamic>{
      'options': instance.options.toJson((value) => value.toJson()),
      'selected': instance.selected.toJson(),
    };

_NodeConfig _$NodeConfigFromJson(Map json) => _NodeConfig(
  id: json['id'] as String,
  name: json['name'] as String,
  isDns: json['isDns'] as bool? ?? false,
  isSecure: json['isSecure'] as bool? ?? false,
  urls: (json['urls'] as List<dynamic>).map((e) => e as String).toList(),
  network: $enumDecode(_$KaspaNetworkEnumMap, json['network']),
  networkSuffix: json['networkSuffix'] as String? ?? '',
);

Map<String, dynamic> _$NodeConfigToJson(_NodeConfig instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isDns': instance.isDns,
      'isSecure': instance.isSecure,
      'urls': instance.urls,
      'network': _$KaspaNetworkEnumMap[instance.network]!,
      'networkSuffix': instance.networkSuffix,
    };

const _$KaspaNetworkEnumMap = {
  KaspaNetwork.mainnet: 'mainnet',
  KaspaNetwork.testnet: 'testnet',
  KaspaNetwork.devnet: 'devnet',
  KaspaNetwork.simnet: 'simnet',
};
