// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NodeConfigSettingsImpl _$$NodeConfigSettingsImplFromJson(Map json) =>
    _$NodeConfigSettingsImpl(
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

Map<String, dynamic> _$$NodeConfigSettingsImplToJson(
        _$NodeConfigSettingsImpl instance) =>
    <String, dynamic>{
      'options': instance.options.toJson(
        (value) => value.toJson(),
      ),
      'selected': instance.selected.toJson(),
    };

_$NodeConfigImpl _$$NodeConfigImplFromJson(Map json) => _$NodeConfigImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      isDns: json['isDns'] as bool? ?? false,
      isSecure: json['isSecure'] as bool? ?? false,
      urls: (json['urls'] as List<dynamic>).map((e) => e as String).toList(),
      network: $enumDecode(_$KaspaNetworkEnumMap, json['network']),
    );

Map<String, dynamic> _$$NodeConfigImplToJson(_$NodeConfigImpl instance) =>
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
