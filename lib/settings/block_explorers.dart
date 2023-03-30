import 'package:freezed_annotation/freezed_annotation.dart';

import '../kaspa/kaspa.dart';

part 'block_explorers.freezed.dart';
part 'block_explorers.g.dart';

const kParamPattern = '{0}';

const kBlockExplorerOptions = {
  KaspaNetwork.mainnet: [
    kKaspaExplorerMainnet,
    kKatnipMainnet,
    kKasFyiExplorerMainnet,
  ],
  KaspaNetwork.testnet: [
    kKatnipTestnet,
  ],
  KaspaNetwork.devnet: [],
  KaspaNetwork.simnet: [],
};

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

const kKatnipMainnet = BlockExplorer(
  network: KaspaNetwork.mainnet,
  name: 'Katnip',
  url: 'katnip.kaspad.net',
  addressUrl: 'https://katnip.kaspad.net/addr/$kParamPattern',
  txUrl: 'https://katnip.kaspad.net/tx/$kParamPattern',
);

const kKasFyiExplorerMainnet = BlockExplorer(
  network: KaspaNetwork.mainnet,
  name: 'Kas.fyi Explorer',
  url: 'kas.fyi',
  addressUrl: 'https://kas.fyi/address/$kParamPattern',
  txUrl: 'https://kas.fyi/transaction/$kParamPattern',
);

const kKatnipTestnet = BlockExplorer(
  network: KaspaNetwork.testnet,
  name: 'Katnip Testnet',
  url: 'katnip-testnet.kaspad.net',
  addressUrl: 'https://katnip-testnet.kaspad.net/addr/$kParamPattern',
  txUrl: 'https://katnip-testnet.kaspad.net/tx/$kParamPattern',
);
