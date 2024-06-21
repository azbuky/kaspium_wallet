// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'block_explorer_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlockExplorerSettingsImpl _$$BlockExplorerSettingsImplFromJson(Map json) =>
    _$BlockExplorerSettingsImpl(
      selection: (json['selection'] as Map?)?.map(
            (k, e) => MapEntry(k as String,
                BlockExplorer.fromJson(Map<String, dynamic>.from(e as Map))),
          ) ??
          const {
            'mainnet': kKaspaExplorerMainnet,
            'testnet-10': kKaspaExplorerTestnet10,
            'testnet-11': kKaspaExplorerTestnet11
          },
    );

Map<String, dynamic> _$$BlockExplorerSettingsImplToJson(
        _$BlockExplorerSettingsImpl instance) =>
    <String, dynamic>{
      'selection': instance.selection.map((k, e) => MapEntry(k, e.toJson())),
    };
