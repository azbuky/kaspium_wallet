import 'package:freezed_annotation/freezed_annotation.dart';

import '../kaspa/kaspa.dart';

part 'transaction_types.freezed.dart';
part 'transaction_types.g.dart';

@freezed
sealed class TxIndex with _$TxIndex {
  const factory TxIndex({
    required String txId,
    @Default(0) int blockTime,
  }) = _TxIndex;

  factory TxIndex.fromJson(Map<String, dynamic> json) =>
      _$TxIndexFromJson(json);
}

@freezed
sealed class TxInputData with _$TxInputData {
  const factory TxInputData({
    required String address,
    required int amount,
  }) = _TxInputData;

  factory TxInputData.fromJson(Map<String, dynamic> json) =>
      _$TxInputDataFromJson(json);
}

@freezed
sealed class Tx with _$Tx {
  const Tx._();
  const factory Tx({
    required ApiTransaction apiTx,
    required List<TxInputData?> inputData,
    @Default(0) int lastUpdate,
  }) = _Tx;

  String get id => apiTx.transactionId;

  Amount get amount => Amount.raw(BigInt.from(apiTx.outputs.first.amount));

  ({Amount baseFee, Amount priorityFee}) get fees {
    final baseFee = kFeePerInput * BigInt.from(apiTx.inputs.length);
    final totalInput = inputData.fold(
      BigInt.zero,
      (total, input) => total + BigInt.from(input?.amount ?? 0),
    );
    final totalOutput = apiTx.outputs.fold(
      BigInt.zero,
      (total, output) => total + BigInt.from(output.amount),
    );
    final totalFee = totalInput - totalOutput;

    var priorityFee = totalFee - baseFee;
    if (priorityFee < BigInt.zero) {
      priorityFee = BigInt.zero;
    }

    return (
      baseFee: Amount.raw(baseFee),
      priorityFee: Amount.raw(priorityFee),
    );
  }

  factory Tx.fromJson(Map<String, dynamic> json) => _$TxFromJson(json);
}

enum TxItemType { send, receive, compound, thisWallet }

@Freezed(equal: false)
sealed class TxItem with _$TxItem {
  const TxItem._();
  const factory TxItem({
    required Tx tx,
    required int outputIndex,
    required TxItemType type,
    @Default(false) bool pending,
  }) = _TxItem;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TxItem &&
            (identical(other.tx.id, tx.id) || other.tx.id == tx.id) &&
            (identical(other.outputIndex, outputIndex) ||
                other.outputIndex == outputIndex) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tx, outputIndex, type);
}

@freezed
sealed class TxListItem with _$TxListItem {
  TxListItem._();
  factory TxListItem.pendingTxItem(TxItem tx) = _TxListItemPendingTxItem;
  factory TxListItem.txItem(TxItem tx) = _TxListItemTxItem;
  factory TxListItem.loader(bool hasMore) = _TxListItemLoader;

  late final id = when(
    pendingTxItem: (item) => '${item.tx.id}:${item.outputIndex}:${item.type}',
    txItem: (item) => '${item.tx.id}:${item.outputIndex}:${item.type}',
    loader: (_) => 'loader',
  );
}

@freezed
sealed class TxState with _$TxState {
  const factory TxState.unknown() = _TxStateUnknown;
  const factory TxState.pending() = _TxStatePending;
  const factory TxState.unconfirmed() = _TxStateUnconfirmed;
  const factory TxState.confirming(BigInt confirmations) = _TxStateConfirming;
  const factory TxState.confirmed() = _TxStateConfirmed;
}
