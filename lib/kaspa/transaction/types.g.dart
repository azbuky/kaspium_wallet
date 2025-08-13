// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Utxo _$UtxoFromJson(Map json) => _Utxo(
  address: json['address'] as String,
  outpoint: Outpoint.fromJson(
    Map<String, dynamic>.from(json['outpoint'] as Map),
  ),
  utxoEntry: UtxoEntry.fromJson(
    Map<String, dynamic>.from(json['utxoEntry'] as Map),
  ),
);

Map<String, dynamic> _$UtxoToJson(_Utxo instance) => <String, dynamic>{
  'address': instance.address,
  'outpoint': instance.outpoint.toJson(),
  'utxoEntry': instance.utxoEntry.toJson(),
};

_UtxoEntry _$UtxoEntryFromJson(Map json) => _UtxoEntry(
  amount: BigInt.parse(json['amount'] as String),
  scriptPublicKey: ScriptPublicKey.fromJson(
    Map<String, dynamic>.from(json['scriptPublicKey'] as Map),
  ),
  blockDaaScore: BigInt.parse(json['blockDaaScore'] as String),
  isCoinbase: json['isCoinbase'] as bool,
);

Map<String, dynamic> _$UtxoEntryToJson(_UtxoEntry instance) =>
    <String, dynamic>{
      'amount': instance.amount.toString(),
      'scriptPublicKey': instance.scriptPublicKey.toJson(),
      'blockDaaScore': instance.blockDaaScore.toString(),
      'isCoinbase': instance.isCoinbase,
    };

_ScriptPublicKey _$ScriptPublicKeyFromJson(Map json) => _ScriptPublicKey(
  scriptPublicKey: hexToBytes(json['scriptPublicKey'] as String),
  version: (json['version'] as num).toInt(),
);

Map<String, dynamic> _$ScriptPublicKeyToJson(_ScriptPublicKey instance) =>
    <String, dynamic>{
      'scriptPublicKey': bytesToHex(instance.scriptPublicKey),
      'version': instance.version,
    };

_Outpoint _$OutpointFromJson(Map json) => _Outpoint(
  transactionId: json['transactionId'] as String,
  index: (json['index'] as num).toInt(),
);

Map<String, dynamic> _$OutpointToJson(_Outpoint instance) => <String, dynamic>{
  'transactionId': instance.transactionId,
  'index': instance.index,
};
