
import 'package:freezed_annotation/freezed_annotation.dart';

import '../kaspa/kaspa.dart';

part 'send_tx.freezed.dart';

@freezed
class SendTx with _$SendTx {
  const SendTx._();

  factory SendTx({
    required Address toAddress,
    Address? changeAddress,
    required BigInt amountRaw,
    @Default([]) List<Utxo> utxos,
    BigInt? fee,
    String? note,
  }) = _SendTx;

  Amount get amount => Amount.raw(amountRaw);
}
