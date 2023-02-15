import 'dart:math';
import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';
import 'package:pointycastle/digests/blake2b.dart';

import '../../utils.dart';
import '../bip340/bip340.dart' as schnorr;
import '../kaspa.dart';

const kTransactionHashDomain = 'TransactionHash';
const kTransactionIdDomain = 'TransactionID';
const kTransactionSigningDomain = 'TransactionSigningHash';

Uint8List _getUint16(int value) {
  final data = ByteData(2);
  data.setUint16(0, value, Endian.little);
  return data.buffer.asUint8List();
}

Uint8List _getUint32(int value) {
  final data = ByteData(4);
  data.setUint32(0, value, Endian.little);
  return data.buffer.asUint8List();
}

void _addOutpoint(
  Outpoint outpoint, {
  required BytesBuilder builder,
}) {
  builder.add(hexToBytes(outpoint.transactionId));
  builder.add(_getUint32(outpoint.index));
}

Uint8List _getPreviousOutputsHash({
  required Transaction tx,
  required SigHashType hashType,
  required SighashReusedValues reusedValues,
}) {
  assert(hashType == SigHashType.sigHashAll);

  if (reusedValues.previousOutputsHash == null) {
    final builder = BytesBuilder();
    for (final txInput in tx.inputs) {
      _addOutpoint(txInput.previousOutpoint, builder: builder);
    }

    final blake2b = Blake2bDigest(
      digestSize: 32,
      key: stringToBytesUtf8(kTransactionSigningDomain),
    );
    final hash = blake2b.process(builder.takeBytes());

    reusedValues.previousOutputsHash = hash;
  }

  return reusedValues.previousOutputsHash!;
}

Uint8List _getSequencesHash({
  required Transaction tx,
  required SigHashType hashType,
  required SighashReusedValues reusedValues,
}) {
  assert(hashType == SigHashType.sigHashAll);

  if (reusedValues.sequencesHash == null) {
    final builder = BytesBuilder();
    for (final txInput in tx.inputs) {
      builder.add(txInput.sequence.toBytes().asUint8List());
    }

    final blake2b = Blake2bDigest(
      digestSize: 32,
      key: stringToBytesUtf8(kTransactionSigningDomain),
    );
    final hash = blake2b.process(builder.takeBytes());

    reusedValues.sequencesHash = hash;
  }

  return reusedValues.sequencesHash!;
}

Uint8List _getSigOpCountsHash({
  required Transaction tx,
  required SigHashType hashType,
  required SighashReusedValues reusedValues,
}) {
  assert(hashType == SigHashType.sigHashAll);

  if (reusedValues.sigOpCountsHash == null) {
    final builder = BytesBuilder();
    for (final txInput in tx.inputs) {
      builder.addByte(txInput.sigOpCount);
    }

    final blake2b = Blake2bDigest(
      digestSize: 32,
      key: stringToBytesUtf8(kTransactionSigningDomain),
    );
    final hash = blake2b.process(builder.takeBytes());

    reusedValues.sigOpCountsHash = hash;
  }

  return reusedValues.sigOpCountsHash!;
}

Uint8List _getOutputsHash({
  required Transaction tx,
  required int inputIndex,
  required SigHashType hashType,
  required SighashReusedValues reusedValues,
}) {
  assert(hashType == SigHashType.sigHashAll);

  if (reusedValues.outputsHash == null) {
    final builder = BytesBuilder();
    for (final txOutput in tx.outputs) {
      builder.add(txOutput.value.toBytes());
      builder.add(_getUint16(txOutput.scriptPublicKey.version));
      final script = txOutput.scriptPublicKey.scriptPublicKey;
      builder.add(Int64(script.length).toBytes());
      builder.add(script);
    }

    final blake2b = Blake2bDigest(
      digestSize: 32,
      key: stringToBytesUtf8(kTransactionSigningDomain),
    );
    final hash = blake2b.process(builder.takeBytes());

    reusedValues.outputsHash = hash;
  }

  return reusedValues.outputsHash!;
}

Uint8List calculateSignatureHash({
  required Transaction tx,
  required int inputIndex,
  required TxInput txInput,
  required ScriptPublicKey prevScriptPublicKey,
  required SigHashType hashType,
  required SighashReusedValues reusedValues,
}) {
  final builder = BytesBuilder();

  // version
  final version = _getUint16(tx.version);
  builder.add(version);

  // previosOutputsHash
  final previousOutputsHash = _getPreviousOutputsHash(
    tx: tx,
    hashType: hashType,
    reusedValues: reusedValues,
  );
  builder.add(previousOutputsHash);

  // sequencesHash
  final sequencesHash = _getSequencesHash(
    tx: tx,
    hashType: hashType,
    reusedValues: reusedValues,
  );
  builder.add(sequencesHash);

  // sigOpCountsHash
  final sigOpCountsHash = _getSigOpCountsHash(
    tx: tx,
    hashType: hashType,
    reusedValues: reusedValues,
  );
  builder.add(sigOpCountsHash);

  // hashOutpoint
  _addOutpoint(txInput.previousOutpoint, builder: builder);

  // prevScriptPublicKey
  builder.add(_getUint16(prevScriptPublicKey.version));
  final script = prevScriptPublicKey.scriptPublicKey;
  builder.add(Int64(script.length).toBytes());
  builder.add(script);

  // amount
  builder.add(txInput.utxoEntry.amount.toInt64().toBytes());

  // sequence
  builder.add(txInput.sequence.toBytes());

  // sigOpCount
  builder.addByte(txInput.sigOpCount);

  // outputsHash
  final outputsHash = _getOutputsHash(
    tx: tx,
    inputIndex: inputIndex,
    hashType: hashType,
    reusedValues: reusedValues,
  );
  builder.add(outputsHash);

  // lockTime
  builder.add(tx.lockTime.toBytes());

  // subnetworkId
  builder.add(tx.subnetworkId);

  // gas
  builder.add(tx.gas.toBytes());

  // payloadHash
  builder.add(Uint8List(32));

  // hashType
  builder.addByte(hashType.raw);

  final blake2b = Blake2bDigest(
    digestSize: 32,
    key: stringToBytesUtf8(kTransactionSigningDomain),
  );

  final hash = blake2b.process(builder.takeBytes());

  return hash;
}

Uint8List calculateSignatureHashSchnorr({
  required Transaction tx,
  required int inputIndex,
  required SigHashType hashType,
  required SighashReusedValues sighashReusedValues,
}) {
  assert(hashType == SigHashType.sigHashAll);

  final input = tx.inputs[inputIndex];
  final prevScriptPublicKey = input.utxoEntry.scriptPublicKey;

  return calculateSignatureHash(
    tx: tx,
    inputIndex: inputIndex,
    txInput: input,
    prevScriptPublicKey: prevScriptPublicKey,
    hashType: hashType,
    reusedValues: sighashReusedValues,
  );
}

Uint8List _genAux([int bytes = 32]) {
  final random = Random.secure();
  final aux = Uint8List(bytes);
  for (int i = 0; i < bytes; ++i) {
    aux[i] = random.nextInt(0xFF);
  }
  return aux;
}

String signSchnorrHex({
  required String privateKey,
  required String hash,
  required String aux,
}) {
  final signature = schnorr.sign(privateKey, hash, aux);

  return signature;
}

bool verifySchnorr({
  required String publicKey,
  required String hash,
  required String signature,
}) {
  final result = schnorr.verify(publicKey, hash, signature);
  return result;
}

Uint8List signSchnorr({
  required Uint8List hash,
  required Uint8List privateKey,
}) {
  final signatureHex = signSchnorrHex(
    privateKey: bytesToHex(privateKey),
    hash: bytesToHex(hash),
    aux: bytesToHex(_genAux()),
  );

  return hexToBytes(signatureHex);
}
