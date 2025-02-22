import 'package:collection/collection.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:intl/intl.dart';

import '../kaspa/kaspa.dart';
import '../l10n/l10n.dart';
import '../transactions/transaction_types.dart';
import '../txnotes/txnotes_notifier.dart';
import '../wallet_address/wallet_address_notifier.dart';
import 'tx_report_options.dart';

String getCsvHeader(AppLocalizations l10n) {
  final header = [
    l10n.txReportDate,
    l10n.txReportSentAmount,
    l10n.txReportSentCurrency,
    l10n.txReportReceivedAmount,
    l10n.txReportReceivedCurrency,
    l10n.txReportFeeAmount,
    l10n.txReportFeeCurrency,
    l10n.txReportLabel,
    l10n.txReportDescription,
    l10n.txReportTxHash,
    l10n.txReportNote,
  ].join(',');

  return header;
}

String getCsvForItem(TxReportItem item, String kasSymbol) {
  final txDate = DateTime.fromMillisecondsSinceEpoch(item.timestamp);
  final formater = DateFormat('yyyy-MM-dd HH:mm:ss');
  final date = formater.format(txDate);

  final line = [
    date,
    item.sendAmount,
    kasSymbol,
    item.receiveAmount,
    kasSymbol,
    item.fee,
    kasSymbol,
    item.label,
    item.description,
    item.txHash,
    item.note,
  ].join(',');

  return line;
}

TxReportItem convertTx(
  Tx tx, {
  required WalletAddressNotifier addresses,
  required TxNotesNotifier txNotes,
  required AppLocalizations l10n,
}) {
  BigInt sumRaw(BigInt sum, int amount) => sum + BigInt.from(amount);
  final txInputs = tx.inputData.nonNulls.toIList();
  final txOutputs = tx.apiTx.outputs;

  final sendRaw = txInputs
      .where((input) => addresses.containsAddress(input.address))
      .map((input) => input.amount)
      .fold(BigInt.zero, sumRaw);

  final receiveRaw = txOutputs
      .where(
          (output) => addresses.containsAddress(output.scriptPublicKeyAddress))
      .map((output) => output.amount)
      .fold(BigInt.zero, sumRaw);

  final feeRaw = txInputs.map((e) => e.amount).fold(BigInt.zero, sumRaw) -
      txOutputs.map((e) => e.amount).fold(BigInt.zero, sumRaw);

  final isAllMyOutput = txOutputs.isNotEmpty &&
      !txOutputs.any((output) =>
          !addresses.containsAddress(output.scriptPublicKeyAddress));
  final isAllMyInput = txInputs.isNotEmpty &&
      !txInputs.any((input) => !addresses.containsAddress(input.address));

  final isAnyMyInput =
      txInputs.any((input) => addresses.containsAddress(input.address));

  final isCompound = isAllMyInput && isAllMyOutput && txOutputs.length == 1;
  final isSendToSelf = isAllMyInput && isAllMyOutput && txOutputs.isNotEmpty;

  final toAddress = txOutputs.firstOrNull?.scriptPublicKeyAddress ?? '';
  final note = txNotes.getNoteForTxId(tx.id)?.note ?? '';

  String formatAmount(Amount amount) {
    return amount.value.toStringAsFixed(TokenInfo.kaspa.decimals);
  }

  if (isSendToSelf) {
    final description =
        isCompound ? l10n.txReportFeeForCompound : l10n.txReportFeeForSelfSend;

    return TxReportItem(
      timestamp: tx.apiTx.blockTime,
      txHash: tx.id,
      isCompound: isCompound,
      isSendToSelf: isSendToSelf,
      sendAmount: formatAmount(Amount.raw(feeRaw)),
      receiveAmount: '',
      fee: '',
      label: 'cost',
      description: description,
      toAddress: toAddress,
      note: note,
    );
  } else {
    return TxReportItem(
      timestamp: tx.apiTx.blockTime,
      txHash: tx.id,
      isCompound: isCompound,
      isSendToSelf: isSendToSelf,
      sendAmount: isAllMyInput && !isAllMyOutput
          ? formatAmount(Amount.raw(sendRaw - receiveRaw - feeRaw))
          : '',
      receiveAmount: !isSendToSelf && receiveRaw > sendRaw
          ? formatAmount(Amount.raw(receiveRaw - sendRaw))
          : '',
      fee: isAnyMyInput ? formatAmount(Amount.raw(feeRaw)) : '',
      label: '',
      description: '',
      toAddress: toAddress,
      note: note,
    );
  }
}
