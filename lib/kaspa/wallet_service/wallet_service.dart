import 'dart:async';

import '../kaspa_client.dart';
import '../transaction.dart';
import '../types.dart';
import 'send_tx.dart';
import 'signer_base.dart';

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
    required Address changeAddress,
    String? note,
  }) {
    final txBuilder = TransactionBuilder(
      utxos: spendableUtxos,
      feePerInput: feePerInput,
    );
    final tx = txBuilder.createUnsignedTransaction(
      toAddress: toAddress,
      amount: Amount.raw(amountRaw),
      changeAddress: changeAddress,
    );

    return SendTx(
      uri: KaspaUri(
        address: toAddress,
        amount: Amount.raw(amountRaw),
      ),
      amountRaw: amountRaw,
      tx: tx,
      changeAddress: txBuilder.changeAddress,
      fee: txBuilder.fee,
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

    return createSendTx(
      toAddress: compoundAddress,
      amountRaw: amountRaw,
      spendableUtxos: selectedUtxos,
      feePerInput: feePerInput,
      changeAddress: compoundAddress,
    );
  }

  Future<String> sendTransaction(SendTx rawTx) async {
    final tx = rawTx.tx;

    await _signTransaction(tx);

    final txId = await client.submitTransaction(tx.toRpc());

    return txId;
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
