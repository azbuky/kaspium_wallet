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
      KaspaNetwork.mainnet: kKaspaExplorerMainnet,
      KaspaNetwork.testnet: kKatnipTestnet,
      KaspaNetwork.devnet: kKaspaExplorerMainnet,
      KaspaNetwork.simnet: kKaspaExplorerMainnet,
    })
    Map<KaspaNetwork, BlockExplorer> selection,
  }) = _BlockExplorerSettings;

  BlockExplorer explorerForNetwork(KaspaNetwork network) {
    return selection[network] ?? kKaspaExplorerMainnet;
  }

  factory BlockExplorerSettings.fromJson(Map<String, dynamic> json) =>
      _$BlockExplorerSettingsFromJson(json);
}
