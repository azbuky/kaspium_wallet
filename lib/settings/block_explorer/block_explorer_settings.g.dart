// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'block_explorer_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BlockExplorerSettings _$BlockExplorerSettingsFromJson(Map json) =>
    _BlockExplorerSettings(
      selection:
          (json['selection'] as Map?)?.map(
            (k, e) => MapEntry(
              k as String,
              BlockExplorer.fromJson(Map<String, dynamic>.from(e as Map)),
            ),
          ) ??
          const {
            kKaspaNetworkIdMainnet: kKaspaExplorerMainnet,
            kKaspaNetworkIdTestnet10: kKaspaExplorerTestnet10,
            kKaspaNetworkIdTestnet11: kKaspaExplorerTestnet11,
          },
    );

Map<String, dynamic> _$BlockExplorerSettingsToJson(
  _BlockExplorerSettings instance,
) => <String, dynamic>{
  'selection': instance.selection.map((k, e) => MapEntry(k, e.toJson())),
};
