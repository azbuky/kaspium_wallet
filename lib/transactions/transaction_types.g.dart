// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TxIndex _$$_TxIndexFromJson(Map json) => _$_TxIndex(
      txId: json['txId'] as String,
    );

Map<String, dynamic> _$$_TxIndexToJson(_$_TxIndex instance) =>
    <String, dynamic>{
      'txId': instance.txId,
    };

_$_TxInputData _$$_TxInputDataFromJson(Map json) => _$_TxInputData(
      address: json['address'] as String,
      amount: json['amount'] as int,
    );

Map<String, dynamic> _$$_TxInputDataToJson(_$_TxInputData instance) =>
    <String, dynamic>{
      'address': instance.address,
      'amount': instance.amount,
    };

_$_Tx _$$_TxFromJson(Map json) => _$_Tx(
      apiTx: ApiTransaction.fromJson(
          Map<String, dynamic>.from(json['apiTx'] as Map)),
      inputData: (json['inputData'] as List<dynamic>)
          .map((e) => e == null
              ? null
              : TxInputData.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$_TxToJson(_$_Tx instance) => <String, dynamic>{
      'apiTx': instance.apiTx.toJson(),
      'inputData': instance.inputData.map((e) => e?.toJson()).toList(),
    };
