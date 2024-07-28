import 'package:freezed_annotation/freezed_annotation.dart';

import '../kaspa/kaspa.dart';

part 'block_explorers.freezed.dart';
part 'block_explorers.g.dart';

const kParamPattern = '{0}';

@freezed
class BlockExplorer with _$BlockExplorer {
  const BlockExplorer._();
  const factory BlockExplorer({
    required KaspaNetwork network,
    required String name,
    required String url,
    required String addressUrl,
    required String txUrl,
  }) = _BlockExplorer;

  String urlForAddress(String address) =>
      addressUrl.replaceFirst(kParamPattern, address);

  String urlForTx(String hash) => txUrl.replaceFirst(kParamPattern, hash);

  factory BlockExplorer.fromJson(Map<String, dynamic> json) =>
      _$BlockExplorerFromJson(json);
}

const kKaspaExplorerMainnet = BlockExplorer(
  network: KaspaNetwork.mainnet,
  name: 'Kaspa Explorer',
  url: 'explorer.kaspa.org',
  addressUrl: 'https://explorer.kaspa.org/addresses/$kParamPattern',
  txUrl: 'https://explorer.kaspa.org/txs/$kParamPattern',
);

const kKaspaExplorerTestnet10 = BlockExplorer(
  network: KaspaNetwork.testnet,
  name: 'Kaspa Explorer',
  url: 'explorer-testnet.kaspa.ws',
  addressUrl: 'https://explorer-testnet.kaspa.ws/addresses/$kParamPattern',
  txUrl: 'https://explorer-testnet.kaspa.ws/txs/$kParamPattern',
);

const kKaspaExplorerTestnet11 = BlockExplorer(
  network: KaspaNetwork.testnet,
  name: 'Kaspa Explorer',
  url: 'explorer-tn11.kaspa.org',
  addressUrl: 'https://explorer-tn11.kaspa.org/addresses/$kParamPattern',
  txUrl: 'https://explorer-tn11.kaspa.org/txs/$kParamPattern',
);

const kKasFyiMainnet = BlockExplorer(
  network: KaspaNetwork.mainnet,
  name: 'Kas.fyi',
  url: 'kas.fyi',
  addressUrl: 'https://kas.fyi/address/$kParamPattern',
  txUrl: 'https://kas.fyi/transaction/$kParamPattern',
);

const kKasFyiTestnet = BlockExplorer(
  network: KaspaNetwork.testnet,
  name: 'Kas.fyi Testnet',
  url: 'testnet.kas.fyi',
  addressUrl: 'https://testnet.kas.fyi/address/$kParamPattern',
  txUrl: 'https://testnet.kas.fyi/transaction/$kParamPattern',
);

const kKatnipMainnet = BlockExplorer(
  network: KaspaNetwork.mainnet,
  name: 'Katnip',
  url: 'katnip.kaspad.net',
  addressUrl: 'https://katnip.kaspad.net/addr/$kParamPattern',
  txUrl: 'https://katnip.kaspad.net/tx/$kParamPattern',
);

const kKatnipTestnet = BlockExplorer(
  network: KaspaNetwork.testnet,
  name: 'Katnip Testnet',
  url: 'katnip-testnet.kaspad.net',
  addressUrl: 'https://katnip-testnet.kaspad.net/addr/$kParamPattern',
  txUrl: 'https://katnip-testnet.kaspad.net/tx/$kParamPattern',
);

const kBlockExplorersOptions = <String, List<BlockExplorer>>{
  kKaspaNetworkIdMainnet: [
    kKaspaExplorerMainnet,
    kKasFyiMainnet,
  ],
  kKaspaNetworkIdTestnet10: [
    kKaspaExplorerTestnet10,
  ],
  kKaspaNetworkIdTestnet11: [
    kKaspaExplorerTestnet11,
  ],
  kKaspaNetworkIdDevnet: [],
  kKaspaNetworkIdSimnet: [],
};
