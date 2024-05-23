import 'package:freezed_annotation/freezed_annotation.dart';

import '../kaspa/kaspa.dart';

part 'transaction_types.freezed.dart';
part 'transaction_types.g.dart';

@freezed
class TxIndex with _$TxIndex {
  const factory TxIndex({
    required String txId,
    @Default(0) int blockTime,
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
    @Default(0) int lastUpdate,
  }) = _Tx;

  String get id => apiTx.transactionId;

  factory Tx.fromJson(Map<String, dynamic> json) => _$TxFromJson(json);
}

enum TxItemType { send, receive, compound }

@Freezed(equal: false)
class TxItem with _$TxItem {
  const TxItem._();
  const factory TxItem({
    required Tx tx,
    required int outputIndex,
    required TxItemType type,
  }) = _TxItem;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TxItemImpl &&
            (identical(other.tx.id, tx.id) || other.tx.id == tx.id) &&
            (identical(other.outputIndex, outputIndex) ||
                other.outputIndex == outputIndex) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tx, outputIndex, type);
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
