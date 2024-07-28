import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';

import '../types.dart';
import '../utils.dart';
import 'txscript.dart';
import 'types.dart';

class TransactionBuilder {
  final List<Utxo> utxos;
  final BigInt feePerInput;

  Address? _changeAddress;
  Address? get changeAddress => _changeAddress;
  BigInt _fee = BigInt.zero;
  BigInt get fee => _fee;

  TransactionBuilder({
    required this.utxos,
    BigInt? feePerInput,
  }) : feePerInput = feePerInput ?? kFeePerInput;

  Transaction createUnsignedTransaction({
    required Address toAddress,
    required Amount amount,
    required Address changeAddress,
  }) {
    final selectedUtxos = _selectUtxos(spendAmount: amount.raw);

    final changeAmount = _getChangeAmountRaw(
      selectedUtxos: selectedUtxos,
      spendAmount: amount.raw,
    );

    final hasChange = changeAmount >= kMinChangeTarget;

    final payments = <Address, Int64>{
      toAddress: amount.raw.toInt64(),
      if (hasChange) changeAddress: changeAmount.toInt64(),
    };

    if (hasChange) {
      _changeAddress = changeAddress;
      _fee = feePerInput * BigInt.from(selectedUtxos.length);
    } else {
      _changeAddress = null;
      _fee = feePerInput * BigInt.from(selectedUtxos.length) + changeAmount;
    }

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
  }) {
    final selectedUtxos = <Utxo>[];
    var totalValue = BigInt.zero;
    for (final utxo in utxos) {
      selectedUtxos.add(utxo);
      totalValue += utxo.utxoEntry.amount;

      final fee = feePerInput * BigInt.from(selectedUtxos.length);
      final totalSpend = spendAmount + fee;

      if (totalValue == totalSpend ||
          (totalValue >= totalSpend + kMinChangeTarget &&
              selectedUtxos.length > 1)) {
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

  BigInt _getChangeAmountRaw({
    required List<Utxo> selectedUtxos,
    required BigInt spendAmount,
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
