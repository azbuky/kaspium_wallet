import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kaspium_wallet/kaspa/kaspa.dart';
import 'package:kaspium_wallet/kaspa/transaction/mass_calculator.dart';

void main() {
  Transaction generateTxFromAmounts(
      Iterable<BigInt> ins, Iterable<BigInt> outs) {
    final scriptPublicKey = ScriptPublicKey(
      scriptPublicKey: Uint8List(0),
      version: 0,
    );
    final prevTxId =
        '880eb9819a31821d9d2399e2f35e2433b72637e393d71ecc9b8d0250f49153c3';
    final address = Address.publicKey(
      prefix: AddressPrefix.kaspa,
      publicKey: Uint8List(32),
    );
    final tx = Transaction(
      version: 0,
      inputs: ins.indexed
          .map(
            (indexed) => TxInput(
              previousOutpoint:
                  Outpoint(transactionId: prevTxId, index: indexed.$1),
              sequence: Int64(0),
              sigOpCount: 0,
              signatureScript: Uint8List(0),
              address: address,
              utxoEntry: UtxoEntry(
                amount: indexed.$2,
                isCoinbase: false,
                blockDaaScore: BigInt.zero,
                scriptPublicKey: scriptPublicKey,
              ),
            ),
          )
          .toList(),
      outputs: outs
          .map(
            (out) => TxOutput(
              value: out.toInt64(),
              scriptPublicKey: scriptPublicKey,
            ),
          )
          .toList(),
      lockTime: Int64(1615462089000),
      subnetworkId: Uint8List.fromList(
        [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      ),
      gas: Int64(0),
    );

    return tx;
  }

  group('Test Kip9 Alpha', () {
    final testVersion = Kip9Version.alpha;

    test('Test mass storage', () {
      final tx = generateTxFromAmounts(
        [100, 200, 300].map(BigInt.from),
        [300, 300].map(BigInt.from),
      );

      final storageMassParameter = BigInt.from(10).pow(12);

      // Assert the formula: max( 0 , C·( |O|/H(O) - |I|/A(I) ) )

      final calculator = MassCalculator(
        massPerTxByte: 0,
        massPerScriptPubKeyByte: 0,
        massPerSigOp: 0,
        storageMassParameter: storageMassParameter,
      );

      final storageMass = calculator.calcTxStorageMass(
        tx: tx,
        version: testVersion,
      );
      // Compounds from 3 to 2, with symmetric outputs and no fee, should be zero
      expect(storageMass, BigInt.zero);
    });
    test('Test mass storage asymmetry', () {
      // Create asymmetry
      final tx = generateTxFromAmounts(
        [100, 200, 300].map(BigInt.from),
        [50, 550].map(BigInt.from),
      );
      final storageMassParameter = BigInt.from(10).pow(12);

      final calculator = MassCalculator(
        massPerTxByte: 0,
        massPerScriptPubKeyByte: 0,
        massPerSigOp: 0,
        storageMassParameter: storageMassParameter,
      );

      final storageMass =
          calculator.calcTxStorageMass(tx: tx, version: testVersion);
      expect(
        storageMass,
        storageMassParameter ~/ BigInt.from(50) +
            storageMassParameter ~/ BigInt.from(550) -
            BigInt.from(3) * (storageMassParameter ~/ BigInt.from(200)),
      );
    });

    test('Test mass storage more outs than ins', () {
      // Create a tx with more outs than ins
      final baseValue = BigInt.from(10000) * kSompiPerKaspa;
      final tx = generateTxFromAmounts(
          [baseValue, baseValue, baseValue * BigInt.two],
          List.filled(4, baseValue));
      final storageMassParameter = kStorageMassParameter;
      final calculator = MassCalculator(
        massPerTxByte: 0,
        massPerScriptPubKeyByte: 0,
        massPerSigOp: 0,
        storageMassParameter: storageMassParameter,
      );
      final storageMass =
          calculator.calcTxStorageMass(tx: tx, version: testVersion);

      // Inputs are above C so they don't contribute negative mass, 4 outputs exactly equal C each charge 1
      expect(storageMass, BigInt.from(4));
    });
    test('Test mass storage less outs than ins 2', () {
      final baseValue = BigInt.from(10000) * kSompiPerKaspa;
      final tx = generateTxFromAmounts(
          [baseValue, baseValue, baseValue * BigInt.two],
          [BigInt.from(10) * kSompiPerKaspa, ...List.filled(3, baseValue)]);
      final storageMassParameter = kStorageMassParameter;
      final calculator = MassCalculator(
        massPerTxByte: 0,
        massPerScriptPubKeyByte: 0,
        massPerSigOp: 0,
        storageMassParameter: storageMassParameter,
      );
      final storageMass = calculator.calcTxStorageMass(
        tx: tx,
        version: testVersion,
      );
      expect(storageMass, BigInt.from(1003));
    });

    test('Test mass storage increase values over the limit', () {
      // Increase values over the lim
      final baseValue = BigInt.from(10000) * kSompiPerKaspa;
      final tx = generateTxFromAmounts(
          [baseValue, baseValue, baseValue * BigInt.two],
          List.filled(4, baseValue + BigInt.one));
      final storageMassParameter = kStorageMassParameter;
      final calculator = MassCalculator(
        massPerTxByte: 0,
        massPerScriptPubKeyByte: 0,
        massPerSigOp: 0,
        storageMassParameter: storageMassParameter,
      );
      final storageMass = calculator.calcTxStorageMass(
        tx: tx,
        version: testVersion,
      );
      expect(storageMass, BigInt.zero);
    });
  });

  group('Test Kip9 Beta', () {
    final testVersion = Kip9Version.beta;

    test('Test 2:2 transaction', () {
      final tx = generateTxFromAmounts(
        [100, 200].map(BigInt.from),
        [50, 250].map(BigInt.from),
      );
      final storageMassParameter = BigInt.from(10).pow(12);
      // Assert the formula: max( 0 , C·( |O|/H(O) - |I|/O(I) ) )

      final calculator = MassCalculator(
        massPerTxByte: 0,
        massPerScriptPubKeyByte: 0,
        massPerSigOp: 0,
        storageMassParameter: storageMassParameter,
      );
      final storageMass = calculator.calcTxStorageMass(
        tx: tx,
        version: testVersion,
      );
      expect(storageMass, BigInt.from(9000000000));
    });
    test('Test outputs equal to inputs', () {
      final tx = generateTxFromAmounts(
        [100, 200].map(BigInt.from),
        [100, 200].map(BigInt.from),
      );
      final storageMassParameter = BigInt.from(10).pow(12);
      // Assert the formula: max( 0 , C·( |O|/H(O) - |I|/O(I) ) )

      final calculator = MassCalculator(
        massPerTxByte: 0,
        massPerScriptPubKeyByte: 0,
        massPerSigOp: 0,
        storageMassParameter: storageMassParameter,
      );
      final storageMass = calculator.calcTxStorageMass(
        tx: tx,
        version: testVersion,
      );
      expect(storageMass, BigInt.zero);
    });

    test('Test mass storage one small output', () {
      final tx = generateTxFromAmounts(
        [100, 200].map(BigInt.from),
        [50].map(BigInt.from),
      );
      final storageMassParameter = BigInt.from(10).pow(12);
      // Assert the formula: max( 0 , C·( |O|/H(O) - |I|/O(I) ) )

      final calculator = MassCalculator(
        massPerTxByte: 0,
        massPerScriptPubKeyByte: 0,
        massPerSigOp: 0,
        storageMassParameter: storageMassParameter,
      );
      final storageMass = calculator.calcTxStorageMass(
        tx: tx,
        version: testVersion,
      );
      expect(storageMass, BigInt.from(5000000000));
    });
  });
}
