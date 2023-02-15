import '../utils.dart';
import 'kaspa.dart';

bool isCoinBase({required Transaction tx}) =>
    tx.subnetworkId.hex == kSubnetworkIdCoinbaseHex;

class TxMassCalculator {
  final int massPerTxByte;
  final int massPerScriptPubKeyByte;
  final int massPerSigOp;

  static TxMassCalculator get defaultCalculator {
    return TxMassCalculator(
      massPerTxByte: 1,
      massPerScriptPubKeyByte: 10,
      massPerSigOp: 1000,
    );
  }

  TxMassCalculator({
    required this.massPerTxByte,
    required this.massPerScriptPubKeyByte,
    required this.massPerSigOp,
  });

  int calculateMass({required Transaction tx}) {
    if (isCoinBase(tx: tx)) {
      return 0;
    }

    // mass for size
    int size = txEstimatedSerializedSize(tx: tx);
    final massForSize = size * massPerTxByte;

    // mass for scriptPubKey
    int totalScriptPubKeySize = 0;
    for (final output in tx.outputs) {
      totalScriptPubKeySize += 2; // version
      totalScriptPubKeySize += output.scriptPublicKey.scriptPublicKey.length;
    }
    final massForScriptPubKeySize =
        totalScriptPubKeySize * massPerScriptPubKeyByte;

    // mass for sigOps
    int totalSigOpsCount = 0;
    for (final input in tx.inputs) {
      totalSigOpsCount += input.sigOpCount;
    }
    final massForSigOps = totalSigOpsCount * massPerSigOp;

    return massForSize + massForScriptPubKeySize + massForSigOps;
  }

  int txEstimatedSerializedSize({required Transaction tx}) {
    if (isCoinBase(tx: tx)) {
      return 0;
    }

    int size = 0;
    size += 2; // version
    size += 8; // number of inputs
    for (final input in tx.inputs) {
      size += txInputEstimatedSerializedSize(input: input);
    }
    size += 8; // number of outputs
    for (final output in tx.outputs) {
      size += txOutputEstimatedSerializedSize(output: output);
    }
    size += 8; // lock time
    size += kDomainSubnetworkIDSize;
    size += 8; // gas (uint64)
    size += kDomainHashSize;
    size += 8; // payload length (uint64)
    size += tx.payload?.length ?? 0;

    return size;
  }

  int txInputEstimatedSerializedSize({required TxInput input}) {
    int size = 0;
    size += outpointEstimatedSerializedSize(); // previous outpoint
    size += 8; // signature script length
    size += input.signatureScript.length; // signature script
    size += 8; // sequence (uint64)
    return size;
  }

  int outpointEstimatedSerializedSize() {
    int size = 0;
    size += kDomainHashSize; // transaction id
    size += 4; // index
    return size;
  }

  int txOutputEstimatedSerializedSize({required TxOutput output}) {
    int size = 0;
    size += 8; // value (uint64)
    size += 2; // output.ScriptPublicKey.Version (uint 16)
    size += 8; // length of script public key (uint64)
    size += output.scriptPublicKey.scriptPublicKey.length;
    return size;
  }
}
