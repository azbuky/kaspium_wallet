// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TxIndexImpl _$$TxIndexImplFromJson(Map json) => _$TxIndexImpl(
      txId: json['txId'] as String,
      blockTime: json['blockTime'] as int? ?? 0,
    );

Map<String, dynamic> _$$TxIndexImplToJson(_$TxIndexImpl instance) =>
    <String, dynamic>{
      'txId': instance.txId,
      'blockTime': instance.blockTime,
    };

_$TxInputDataImpl _$$TxInputDataImplFromJson(Map json) => _$TxInputDataImpl(
      address: json['address'] as String,
      amount: json['amount'] as int,
    );

Map<String, dynamic> _$$TxInputDataImplToJson(_$TxInputDataImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'amount': instance.amount,
    };

_$TxImpl _$$TxImplFromJson(Map json) => _$TxImpl(
      apiTx: ApiTransaction.fromJson(
          Map<String, dynamic>.from(json['apiTx'] as Map)),
      inputData: (json['inputData'] as List<dynamic>)
          .map((e) => e == null
              ? null
              : TxInputData.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      lastUpdate: json['lastUpdate'] as int? ?? 0,
    );

Map<String, dynamic> _$$TxImplToJson(_$TxImpl instance) => <String, dynamic>{
      'apiTx': instance.apiTx.toJson(),
      'inputData': instance.inputData.map((e) => e?.toJson()).toList(),
      'lastUpdate': instance.lastUpdate,
    };
