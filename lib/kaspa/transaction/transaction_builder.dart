import 'dart:collection';
import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';

import '../kaspa.dart';
import 'txscript.dart';

class TransactionBuilder {
  final List<Utxo> utxos;
  final BigInt feePerInputRaw;
  final Amount priorityFee;

  BigInt _change = BigInt.zero;
  Amount get change => Amount.raw(_change);

  Address? _changeAddress;
  Address? get changeAddress => _changeAddress;

  BigInt _baseFee = BigInt.zero;
  Amount get baseFee => Amount.raw(_baseFee);

  List<Utxo> _selectedUtxos = <Utxo>[];
  List<Utxo> get selectedUtxos => UnmodifiableListView(_selectedUtxos);

  TransactionBuilder({
    required this.utxos,
    BigInt? feePerInput,
    Amount? priorityFee,
  })  : feePerInputRaw = feePerInput ?? kFeePerInput,
        priorityFee = priorityFee ?? Amount.zero;

  Transaction? rebuildTransaction(
    ApiTransaction tx, {
    required Address toAddress,
    required Address changeAddress,
  }) {
    final amountRaw = BigInt.from(tx.outputs.first.amount);

    final utxoMap = tx.inputs
        .map(
          (input) => (
            input.previousOutpointHash,
            input.previousOutpointIndex.toInt(),
          ),
        )
        .toSet();
    final txUtxos = <Utxo>[];
    for (final utxo in utxos) {
      final outpoint = (utxo.outpoint.transactionId, utxo.outpoint.index);
      if (utxoMap.contains(outpoint)) {
        txUtxos.add(utxo);
        utxoMap.remove(outpoint);
        if (utxoMap.isEmpty) {
          break;
        }
      }
    }

    int index = 0;
    while (index++ < kMaxInputsPerTransaction) {
      try {
        final tx = createUnsignedTransaction(
          toAddress: toAddress,
          amountRaw: amountRaw,
          changeAddress: changeAddress,
          preselectedUtxos: txUtxos,
        );
        return tx;
      } catch (e) {
        if (utxos.length == txUtxos.length) {
          // Not enough funds
          rethrow;
        }
        final newUtxo = utxos.firstWhere(
          (utxo) => !selectedUtxos.contains(utxo),
        );
        txUtxos.add(newUtxo);
      }
    }
    return null;
  }

  Transaction createUnsignedTransaction({
    required Address toAddress,
    required BigInt amountRaw,
    required Address changeAddress,
    List<Utxo>? preselectedUtxos,
  }) {
    _selectedUtxos = preselectedUtxos != null
        ? _userSelectedUtxos(
            userSelectedUtxos: preselectedUtxos,
            spendAmountRaw: amountRaw,
          )
        : _selectUtxos(spendAmount: amountRaw);

    final changeAmount = _getChangeAmountRaw(
      selectedUtxos: _selectedUtxos,
      spendAmount: amountRaw,
    );

    final hasChange = changeAmount >= kMinChangeTarget ||
        changeAmount >= amountRaw ~/ BigInt.two;

    final payments = <Address, Int64>{
      toAddress: amountRaw.toInt64(),
      if (hasChange) changeAddress: changeAmount.toInt64(),
    };

    if (hasChange) {
      _change = changeAmount;
      _changeAddress = changeAddress;
      _baseFee = feePerInputRaw * BigInt.from(_selectedUtxos.length);
    } else {
      _change = BigInt.zero;
      _changeAddress = null;
      _baseFee =
          feePerInputRaw * BigInt.from(_selectedUtxos.length) + changeAmount;
    }

    final unsignedTransaction = _createUnsignedTransaction(
      utxos: _selectedUtxos,
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

  List<Utxo> _userSelectedUtxos({
    required List<Utxo> userSelectedUtxos,
    required BigInt spendAmountRaw,
  }) {
    final selectedUtxos = List.of(userSelectedUtxos);
    final totalValue = selectedUtxos.fold(
      BigInt.zero,
      (total, utxo) => total + utxo.utxoEntry.amount,
    );

    final baseFeeRaw = feePerInputRaw * BigInt.from(selectedUtxos.length);
    final totalSpendRaw = spendAmountRaw + baseFeeRaw + priorityFee.raw;

    if (totalValue < totalSpendRaw) {
      throw Exception('Not enough funds');
    }

    return selectedUtxos;
  }

  List<Utxo> _selectUtxos({
    required BigInt spendAmount,
  }) {
    final selectedUtxos = <Utxo>[];
    var totalValue = BigInt.zero;

    for (final utxo in utxos) {
      selectedUtxos.add(utxo);
      totalValue += utxo.utxoEntry.amount;

      final baseFeeRaw = feePerInputRaw * BigInt.from(selectedUtxos.length);
      final totalSpend = spendAmount + baseFeeRaw + priorityFee.raw;

      if (totalValue == totalSpend ||
          (totalValue >= totalSpend + kMinChangeTarget &&
              selectedUtxos.length > 1)) {
        break;
      }
    }

    final baseFeeRaw = feePerInputRaw * BigInt.from(selectedUtxos.length);
    final totalSpend = spendAmount + baseFeeRaw + priorityFee.raw;

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

    final baseFeeRaw = feePerInputRaw * BigInt.from(selectedUtxos.length);
    final fee = baseFeeRaw + priorityFee.raw;
    final totalSpend = spendAmount + fee;

    return totalValue - totalSpend;
  }
}
