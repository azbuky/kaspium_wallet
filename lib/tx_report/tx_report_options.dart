import 'package:freezed_annotation/freezed_annotation.dart';

part 'tx_report_options.freezed.dart';

@freezed
sealed class TxReportOptions with _$TxReportOptions {
  const factory TxReportOptions({
    @Default(false) bool ignoreCompoundTxs,
    @Default(false) bool ignoreInternalTxs,
    @Default(false) bool refreshTxs,
  }) = _TxReportOptions;
}

@freezed
sealed class TxReportItem with _$TxReportItem {
  const factory TxReportItem({
    required int timestamp,
    required bool isCompound,
    required bool isSendToSelf,
    required String sendAmount,
    required String receiveAmount,
    required String fee,
    @Default('') String label,
    @Default('') String description,
    required String txHash,
    required String toAddress,
    @Default('') String note,
  }) = _TxReportItem;
}
