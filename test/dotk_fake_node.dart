import 'package:kaspium_wallet/dotk/dotk_proof.dart';
import 'package:kaspium_wallet/dotk/dotk_registry.dart';
import 'package:kaspium_wallet/kaspa/kaspa.dart';

final kDeedTxId = 'dd' * 32;

Utxo fakeUtxo(
  String address, {
  String? transactionId,
  int index = 0,
  int daaScore = 0,
  String? covenantId,
}) => Utxo(
  address: address,
  outpoint: Outpoint(transactionId: transactionId ?? kDeedTxId, index: index),
  utxoEntry: UtxoEntry(
    amount: BigInt.one,
    scriptPublicKey: ScriptPublicKey(scriptPublicKey: Uint8List(0), version: 0),
    blockDaaScore: BigInt.from(daaScore),
    isCoinbase: false,
    covenantId: covenantId == null ? null : hexToBytes(covenantId),
  ),
);

class FakeNode implements RpcService {
  final utxos = <Utxo>[];
  final asked = <List<String>>[];

  /// Holds a registry deed at every address it is asked about
  final String? deedsEverywhere;

  FakeNode({this.deedsEverywhere});

  @override
  Future<Iterable<Utxo>> getUtxosByAddresses(Iterable<String> addresses) async {
    asked.add(addresses.toList());
    if (deedsEverywhere case final covenantId?) {
      return [
        for (final address in addresses)
          fakeUtxo(address, covenantId: covenantId),
      ];
    }
    return utxos.where((utxo) => addresses.contains(utxo.address)).toList();
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

DotkProver provingEverything() => DotkProver(
  FakeNode(deedsEverywhere: DotkRegistry.mainnet.covenantId),
  registry: DotkRegistry.mainnet,
  prefix: .kaspa,
);
