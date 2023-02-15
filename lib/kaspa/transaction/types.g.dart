// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Utxo _$$_UtxoFromJson(Map json) => _$_Utxo(
      address: json['address'] as String,
      outpoint:
          Outpoint.fromJson(Map<String, dynamic>.from(json['outpoint'] as Map)),
      utxoEntry: UtxoEntry.fromJson(
          Map<String, dynamic>.from(json['utxoEntry'] as Map)),
    );

Map<String, dynamic> _$$_UtxoToJson(_$_Utxo instance) => <String, dynamic>{
      'address': instance.address,
      'outpoint': instance.outpoint.toJson(),
      'utxoEntry': instance.utxoEntry.toJson(),
    };

_$_UtxoEntry _$$_UtxoEntryFromJson(Map json) => _$_UtxoEntry(
      amount: BigInt.parse(json['amount'] as String),
      scriptPublicKey: ScriptPublicKey.fromJson(
          Map<String, dynamic>.from(json['scriptPublicKey'] as Map)),
      blockDaaScore: BigInt.parse(json['blockDaaScore'] as String),
      isCoinbase: json['isCoinbase'] as bool,
    );

Map<String, dynamic> _$$_UtxoEntryToJson(_$_UtxoEntry instance) =>
    <String, dynamic>{
      'amount': instance.amount.toString(),
      'scriptPublicKey': instance.scriptPublicKey.toJson(),
      'blockDaaScore': instance.blockDaaScore.toString(),
      'isCoinbase': instance.isCoinbase,
    };

_$_ScriptPublicKey _$$_ScriptPublicKeyFromJson(Map json) => _$_ScriptPublicKey(
      scriptPublicKey: hexToBytes(json['scriptPublicKey'] as String),
      version: json['version'] as int,
    );

Map<String, dynamic> _$$_ScriptPublicKeyToJson(_$_ScriptPublicKey instance) =>
    <String, dynamic>{
      'scriptPublicKey': bytesToHex(instance.scriptPublicKey),
      'version': instance.version,
    };

_$_Outpoint _$$_OutpointFromJson(Map json) => _$_Outpoint(
      transactionId: json['transactionId'] as String,
      index: json['index'] as int,
    );

Map<String, dynamic> _$$_OutpointToJson(_$_Outpoint instance) =>
    <String, dynamic>{
      'transactionId': instance.transactionId,
      'index': instance.index,
    };
