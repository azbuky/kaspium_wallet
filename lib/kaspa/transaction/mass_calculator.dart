import '../utils.dart';
import 'types.dart';

BigInt _max(BigInt a, BigInt b) => a > b ? a : b;

enum Kip9Version {
  alpha,
  beta,
}

class MassCalculator {
  final int massPerTxByte;
  final int massPerScriptPubKeyByte;
  final int massPerSigOp;
  final BigInt storageMassParameter;

  static MassCalculator get defaultCalculator {
    return MassCalculator(
      massPerTxByte: 1,
      massPerScriptPubKeyByte: 10,
      massPerSigOp: 1000,
      storageMassParameter: kStorageMassParameter,
    );
  }

  MassCalculator({
    required this.massPerTxByte,
    required this.massPerScriptPubKeyByte,
    required this.massPerSigOp,
    required this.storageMassParameter,
  });

  BigInt calcTxOverallMass({
    required Transaction tx,
    Kip9Version version = Kip9Version.beta,
  }) {
    final computeMass = BigInt.from(calcTxComputeMass(tx: tx));
    final storageMass = calcTxStorageMass(tx: tx);
    return switch (version) {
      Kip9Version.alpha => computeMass + storageMass,
      Kip9Version.beta => _max(computeMass, storageMass),
    };
  }

  BigInt calcTxStorageMass({
    required Transaction tx,
    Kip9Version version = Kip9Version.beta,
  }) {
    if (tx.isCoinbase) {
      return BigInt.zero;
    }

    final harmonicOuts = tx.outputs
        .map(
          (output) => storageMassParameter ~/ output.value.toUnsignedBigInt(),
        )
        .fold(
          BigInt.zero,
          (total, element) => total + element,
        );

    final outsLen = tx.outputs.length;
    final insLen = tx.inputs.length;

    final isRelaxed =
        outsLen == 1 || insLen == 1 || (outsLen == 2 && insLen == 2);
    if (version == Kip9Version.beta && isRelaxed) {
      final harmonicIns = tx.inputs
          .map(
            (input) => storageMassParameter ~/ input.utxoEntry.amount,
          )
          .fold(
            BigInt.zero,
            (total, element) => total + element,
          );

      return _max(BigInt.zero, harmonicOuts - harmonicIns);
    }

    final sumIns = tx.inputs
        .map((input) => input.utxoEntry.amount)
        .fold(BigInt.zero, (previousValue, element) => previousValue + element);

    final meanIns = sumIns ~/ BigInt.from(insLen);

    final arithmeticIns =
        BigInt.from(insLen) * (storageMassParameter ~/ meanIns);

    return _max(BigInt.zero, harmonicOuts - arithmeticIns);
  }

  int calcTxComputeMass({required Transaction tx}) {
    if (tx.isCoinbase) {
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
