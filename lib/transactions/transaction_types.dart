import 'package:freezed_annotation/freezed_annotation.dart';

import '../kaspa/types.dart';

part 'transaction_types.freezed.dart';
part 'transaction_types.g.dart';

@freezed
class TxIndex with _$TxIndex {
  const factory TxIndex({
    required String txId,
  }) = _TxIndex;

  factory TxIndex.fromJson(Map<String, dynamic> json) =>
      _$TxIndexFromJson(json);
}

@freezed
class TxInputData with _$TxInputData {
  const factory TxInputData({
    required String address,
    required int amount,
  }) = _TxInputData;

  factory TxInputData.fromJson(Map<String, dynamic> json) =>
      _$TxInputDataFromJson(json);
}

@freezed
class Tx with _$Tx {
  const Tx._();
  const factory Tx({
    required ApiTransaction apiTx,
    required List<TxInputData?> inputData,
  }) = _Tx;

  String get id => apiTx.transactionId;

  factory Tx.fromJson(Map<String, dynamic> json) => _$TxFromJson(json);
}

enum TxItemType { send, receive, compound }

@freezed
class TxItem with _$TxItem {
  const factory TxItem({
    required Tx tx,
    required int outputIndex,
    required TxItemType type,
  }) = _TxItem;
}

@freezed
class TxListItem with _$TxListItem {
  TxListItem._();
  factory TxListItem.txItem(TxItem tx) = _TxListItemTxItem;
  factory TxListItem.loader(bool hasMore) = _TxListItemLoader;

  late final id = when(
    txItem: (item) => '${item.tx.id}:${item.outputIndex}:${item.type}',
    loader: (_) => 'loader',
  );
}

@freezed
class TxState with _$TxState {
  const factory TxState.unknown() = _TxStateUnknown;
  const factory TxState.unconfirmed() = _TxStateUnconfirmed;
  const factory TxState.confirming(BigInt confirmations) = _TxStateConfirming;
  const factory TxState.confirmed() = _TxStateConfirmed;
}
