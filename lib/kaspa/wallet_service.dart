import 'dart:async';

import '../transactions/send_tx.dart';
import '../utils.dart';
import 'grpc/rpc.pb.dart';
import 'kaspa.dart';
import 'transaction/transaction_builder.dart';
import 'transaction/transaction_util.dart';

class SendResult {
  final String txId;
  final Transaction tx;
  final bool changeAddressUsed;

  const SendResult({
    required this.txId,
    required this.tx,
    required this.changeAddressUsed,
  });
}

class WalletService {
  final SignerBase signer;
  final KaspaClient client;

  const WalletService({
    required this.signer,
    required this.client,
  });

  SendTx createSendTx({
    required Address toAddress,
    required BigInt amountRaw,
    required List<Utxo> spendableUtxos,
    required BigInt feePerInput,
    String? note,
  }) {
    final txBuilder = TransactionBuilder(utxos: spendableUtxos);
    final selectedUtxos = txBuilder.selectUtxos(
      spendAmount: amountRaw,
      feePerInput: feePerInput,
    );
    final fee = BigInt.from(selectedUtxos.length) * feePerInput;

    return SendTx(
      uri: KaspaUri(
        address: toAddress,
        amount: Amount.raw(amountRaw),
      ),
      amountRaw: amountRaw,
      utxos: selectedUtxos,
      fee: fee,
      note: note,
    );
  }

  SendTx createCompoundTx({
    required Address compoundAddress,
    required List<Utxo> spendableUtxos,
    required BigInt feePerInput,
  }) {
    final selectedUtxos =
        spendableUtxos.take(kMaxInputsPerTransaction).toList();
    final fee = BigInt.from(selectedUtxos.length) * feePerInput;
    final selectedTotal = selectedUtxos.fold<BigInt>(
      BigInt.zero,
      (sum, utxo) => sum + utxo.utxoEntry.amount,
    );
    final amountRaw = selectedTotal - fee;

    return SendTx(
      uri: KaspaUri(
        address: compoundAddress,
        amount: Amount.raw(amountRaw),
      ),
      amountRaw: amountRaw,
      utxos: selectedUtxos,
      fee: fee,
    );
  }

  Future<SendResult> sendTransaction(
    SendTx rawTx, {
    required Address changeAddress,
  }) async {
    final builder = TransactionBuilder(utxos: rawTx.utxos);
    final tx = builder.createUnsignedTransaction(
      toAddress: rawTx.toAddress,
      amount: rawTx.amount,
      changeAddress: changeAddress,
    );

    await _signTransaction(tx);

    final rpcTx = RpcTransaction(
      version: tx.version,
      inputs: tx.inputs.map(
        (input) => RpcTransactionInput(
          previousOutpoint: input.previousOutpoint.toRpc(),
          signatureScript: bytesToHex(input.signatureScript),
          sequence: input.sequence,
          sigOpCount: input.sigOpCount,
        ),
      ),
      outputs: tx.outputs.map(
        (output) => RpcTransactionOutput(
          amount: output.value,
          scriptPublicKey: output.scriptPublicKey.toRpc(),
        ),
      ),
      lockTime: tx.lockTime,
      subnetworkId: tx.subnetworkId.hex,
      gas: tx.gas,
      payload: tx.payload?.hex,
    );

    final txId = await client.submitTransaction(rpcTx);

    final changeAddressUsed = rpcTx.outputs.length > 1;

    return SendResult(
      txId: txId,
      tx: tx,
      changeAddressUsed: changeAddressUsed,
    );
  }

  Future<void> _signTransaction(Transaction tx) async {
    final hashType = SigHashType.sigHashAll;
    final reusedValues = SighashReusedValues();

    // Sign all inputs
    for (int index = 0; index < tx.inputs.length; ++index) {
      final input = tx.inputs[index];

      final hash = calculateSignatureHashSchnorr(
        tx: tx,
        inputIndex: index,
        hashType: hashType,
        sighashReusedValues: reusedValues,
      );

      final signature = await signer.sign(hash, input.address);

      final signatureScript =
          [signature.length + 1] + signature + [hashType.raw];
      input.signatureScript.setAll(0, signatureScript);
    }
  }
}
