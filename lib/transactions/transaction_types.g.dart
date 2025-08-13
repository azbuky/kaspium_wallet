// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TxIndex _$TxIndexFromJson(Map json) => _TxIndex(
  txId: json['txId'] as String,
  blockTime: (json['blockTime'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$TxIndexToJson(_TxIndex instance) => <String, dynamic>{
  'txId': instance.txId,
  'blockTime': instance.blockTime,
};

_TxInputData _$TxInputDataFromJson(Map json) => _TxInputData(
  address: json['address'] as String,
  amount: (json['amount'] as num).toInt(),
);

Map<String, dynamic> _$TxInputDataToJson(_TxInputData instance) =>
    <String, dynamic>{'address': instance.address, 'amount': instance.amount};

_Tx _$TxFromJson(Map json) => _Tx(
  apiTx: ApiTransaction.fromJson(
    Map<String, dynamic>.from(json['apiTx'] as Map),
  ),
  inputData: (json['inputData'] as List<dynamic>)
      .map(
        (e) => e == null
            ? null
            : TxInputData.fromJson(Map<String, dynamic>.from(e as Map)),
      )
      .toList(),
  lastUpdate: (json['lastUpdate'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$TxToJson(_Tx instance) => <String, dynamic>{
  'apiTx': instance.apiTx.toJson(),
  'inputData': instance.inputData.map((e) => e?.toJson()).toList(),
  'lastUpdate': instance.lastUpdate,
};
