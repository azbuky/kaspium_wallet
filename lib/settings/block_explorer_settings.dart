import 'package:freezed_annotation/freezed_annotation.dart';

import '../kaspa/kaspa.dart';
import 'block_explorers.dart';

part 'block_explorer_settings.freezed.dart';
part 'block_explorer_settings.g.dart';

@freezed
class BlockExplorerSettings with _$BlockExplorerSettings {
  const BlockExplorerSettings._();

  const factory BlockExplorerSettings({
    @Default(const {
      kKaspaNetworkIdMainnet: kKaspaExplorerMainnet,
      kKaspaNetworkIdTestnet10: kKaspaExplorerTestnet10,
      kKaspaNetworkIdTestnet11: kKaspaExplorerTestnet11,
    })
    Map<String, BlockExplorer> selection,
  }) = _BlockExplorerSettings;

  BlockExplorer explorerForNetwork(String networkId) {
    return selection[networkId] ?? kKaspaExplorerMainnet;
  }

  factory BlockExplorerSettings.fromJson(Map<String, dynamic> json) =>
      _$BlockExplorerSettingsFromJson(json);
}
