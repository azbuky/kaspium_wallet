import 'package:freezed_annotation/freezed_annotation.dart';

import '../transaction.dart';
import '../types.dart';

part 'send_tx.freezed.dart';

@freezed
sealed class SendTx with _$SendTx {
  const SendTx._();

  factory SendTx({
    required KaspaUri uri,
    required Transaction tx,
    required List<Utxo> utxos,
    @Default(false) bool userSelected,
    required Amount amount,
    required Amount baseFee,
    required Amount priorityFee,
    required Amount change,
    Address? changeAddress,
    String? note,
    required BigInt mass,
  }) = _SendTx;

  Amount get fee => Amount.raw(baseFee.raw + priorityFee.raw);

  Address get toAddress => uri.address;

  List<Utxo>? get userSelectedUtxos => userSelected ? utxos : null;
}
