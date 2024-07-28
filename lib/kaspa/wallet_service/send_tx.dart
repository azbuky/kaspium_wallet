import 'package:freezed_annotation/freezed_annotation.dart';

import '../transaction.dart';
import '../types.dart';

part 'send_tx.freezed.dart';

@freezed
class SendTx with _$SendTx {
  const SendTx._();

  factory SendTx({
    required KaspaUri uri,
    required BigInt amountRaw,
    required BigInt fee,
    required Transaction tx,
    Address? changeAddress,
    String? note,
  }) = _SendTx;

  Amount get amount => Amount.raw(amountRaw);

  Address get toAddress => uri.address;
}
