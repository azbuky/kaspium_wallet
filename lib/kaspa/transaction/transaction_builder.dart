import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';

import '../types.dart';
import '../utils.dart';
import 'txscript.dart';
import 'types.dart';

class TransactionBuilder {
  final List<Utxo> utxos;

  TransactionBuilder({
    required this.utxos,
  });

  List<Utxo> selectUtxos({
    required BigInt spendAmount,
    required BigInt feePerInput,
  }) {
    final selectedUtxos = _selectUtxos(
      spendAmount: spendAmount,
      feePerInput: feePerInput,
    );

    return selectedUtxos;
  }

  Transaction createUnsignedTransaction({
    required Address toAddress,
    required Amount amount,
    required Address changeAddress,
  }) {
    final selectedUtxos = _selectUtxos(
      spendAmount: amount.raw,
      feePerInput: kFeePerInput,
    );

    final changeAmount = _getChangeRaw(
      selectedUtxos: selectedUtxos,
      spendAmount: amount.raw,
      feePerInput: kFeePerInput,
    );

    final payments = <Address, Int64>{
      toAddress: amount.raw.toInt64(),
      if (changeAmount > kFeePerInput) changeAddress: changeAmount.toInt64(),
    };

    final unsignedTransaction = _createUnsignedTransaction(
      utxos: selectedUtxos,
      payments: payments,
    );

    return unsignedTransaction;
  }

  Transaction _createUnsignedTransaction({
    required List<Utxo> utxos,
    required Map<Address, Int64> payments,
  }) {
    final inputs = utxos.map((utxo) {
      return TxInput(
        address: Address.decodeAddress(utxo.address),
        previousOutpoint: utxo.outpoint,
        signatureScript: Uint8List(64 + 2),
        sequence: Int64.ZERO,
        sigOpCount: 1,
        utxoEntry: utxo.utxoEntry.copyWith(
          blockDaaScore: kUnacceptedDAASccore.toUnsignedBigInt(),
          isCoinbase: false,
        ),
      );
    });

    final outputs = payments.entries.map((e) {
      final scriptPublicKey = payToAddressScript(e.key);
      return TxOutput(
        value: e.value,
        scriptPublicKey: scriptPublicKey,
      );
    });

    final tx = Transaction(
      version: kMaxTransactionVersion,
      inputs: inputs.toList(),
      outputs: outputs.toList(),
      lockTime: Int64.ZERO,
      subnetworkId: kSubnetworkIdNative,
      gas: Int64.ZERO,
      payload: null,
    );
    return tx;
  }

  List<Utxo> _selectUtxos({
    required BigInt spendAmount,
    required BigInt feePerInput,
  }) {
    final selectedUtxos = <Utxo>[];
    var totalValue = BigInt.zero;
    for (final utxo in utxos) {
      selectedUtxos.add(utxo);
      totalValue += utxo.utxoEntry.amount;

      final fee = feePerInput * BigInt.from(selectedUtxos.length);
      final totalSpend = spendAmount + fee;

      if (totalValue >= totalSpend) {
        break;
      }
    }

    final fee = feePerInput * BigInt.from(selectedUtxos.length);
    final totalSpend = spendAmount + fee;

    if (totalValue < totalSpend) {
      throw Exception('Not enough funds');
    }

    return selectedUtxos;
  }

  BigInt _getChangeRaw({
    required List<Utxo> selectedUtxos,
    required BigInt spendAmount,
    required BigInt feePerInput,
  }) {
    var totalValue = BigInt.zero;

    for (final utxo in selectedUtxos) {
      totalValue += utxo.utxoEntry.amount;
    }

    final fee = feePerInput * BigInt.from(selectedUtxos.length);
    final totalSpend = spendAmount + fee;

    return totalValue - totalSpend;
  }
}
