// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NodeConfigSettings _$$_NodeConfigSettingsFromJson(Map json) =>
    _$_NodeConfigSettings(
      options: json['options'] == null
          ? const IListConst([mainnetNodeConfig])
          : IList<NodeConfig>.fromJson(
              json['options'],
              (value) =>
                  NodeConfig.fromJson(Map<String, dynamic>.from(value as Map))),
      selected: json['selected'] == null
          ? mainnetNodeConfig
          : NodeConfig.fromJson(
              Map<String, dynamic>.from(json['selected'] as Map)),
    );

Map<String, dynamic> _$$_NodeConfigSettingsToJson(
        _$_NodeConfigSettings instance) =>
    <String, dynamic>{
      'options': instance.options.toJson(
        (value) => value.toJson(),
      ),
      'selected': instance.selected.toJson(),
    };

_$_NodeConfig _$$_NodeConfigFromJson(Map json) => _$_NodeConfig(
      id: json['id'] as String,
      name: json['name'] as String,
      isDns: json['isDns'] as bool? ?? false,
      isSecure: json['isSecure'] as bool? ?? false,
      urls: (json['urls'] as List<dynamic>).map((e) => e as String).toList(),
      network: $enumDecode(_$KaspaNetworkEnumMap, json['network']),
    );

Map<String, dynamic> _$$_NodeConfigToJson(_$_NodeConfig instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isDns': instance.isDns,
      'isSecure': instance.isSecure,
      'urls': instance.urls,
      'network': _$KaspaNetworkEnumMap[instance.network]!,
    };

const _$KaspaNetworkEnumMap = {
  KaspaNetwork.mainnet: 'mainnet',
  KaspaNetwork.testnet: 'testnet',
  KaspaNetwork.devnet: 'devnet',
  KaspaNetwork.simnet: 'simnet',
};
