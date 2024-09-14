import 'dart:async';

import '../kaspa_client.dart';
import '../transaction.dart';
import '../transaction/mass_calculator.dart';
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
    required Amount amount,
    required List<Utxo> spendableUtxos,
    List<Utxo>? selectedUtxos,
    required BigInt feePerInput,
    Amount? priorityFee,
    required Address changeAddress,
    String? note,
  }) {
    final txBuilder = TransactionBuilder(
      utxos: spendableUtxos,
      feePerInput: feePerInput,
      priorityFee: priorityFee,
    );
    final tx = txBuilder.createUnsignedTransaction(
      toAddress: toAddress,
      amountRaw: amount.raw,
      changeAddress: changeAddress,
      preselectedUtxos: selectedUtxos,
    );

    final massCalculator = MassCalculator(
      massPerTxByte: 1,
      massPerScriptPubKeyByte: 10,
      massPerSigOp: 1000,
      storageMassParameter: kStorageMassParameter,
    );

    final mass = massCalculator.calcTxOverallMass(tx: tx);

    return SendTx(
      uri: KaspaUri(
        address: toAddress,
        amount: amount,
      ),
      tx: tx,
      utxos: txBuilder.selectedUtxos,
      amount: amount,
      change: txBuilder.change,
      changeAddress: txBuilder.changeAddress,
      baseFee: txBuilder.baseFee,
      priorityFee: txBuilder.priorityFee,
      note: note,
      mass: mass,
    );
  }

  SendTx createCompoundTx({
    required Address compoundAddress,
    required List<Utxo> spendableUtxos,
    required BigInt feePerInput,
    Amount? priorityFee,
  }) {
    final selectedUtxos =
        spendableUtxos.take(kMaxInputsPerTransaction).toList();
    final fee = BigInt.from(selectedUtxos.length) * feePerInput +
        (priorityFee?.raw ?? BigInt.zero);
    final selectedTotal = selectedUtxos.fold<BigInt>(
      BigInt.zero,
      (sum, utxo) => sum + utxo.utxoEntry.amount,
    );
    final amountRaw = selectedTotal - fee;

    return createSendTx(
      toAddress: compoundAddress,
      amount: Amount.raw(amountRaw),
      spendableUtxos: spendableUtxos,
      selectedUtxos: selectedUtxos,
      feePerInput: feePerInput,
      priorityFee: priorityFee,
      changeAddress: compoundAddress,
    );
  }

  Future<String> sendTransaction(Transaction tx, {bool rbf = false}) async {
    await _signTransaction(tx);

    final rpcTx = tx.toRpc();

    if (rbf) {
      final result = await client.submitTransactionReplacement(rpcTx);
      return result.transactionId;
    }

    final txId = await client.submitTransaction(rpcTx);
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
