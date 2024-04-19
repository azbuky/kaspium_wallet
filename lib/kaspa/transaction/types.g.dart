// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UtxoImpl _$$UtxoImplFromJson(Map json) => _$UtxoImpl(
      address: json['address'] as String,
      outpoint:
          Outpoint.fromJson(Map<String, dynamic>.from(json['outpoint'] as Map)),
      utxoEntry: UtxoEntry.fromJson(
          Map<String, dynamic>.from(json['utxoEntry'] as Map)),
    );

Map<String, dynamic> _$$UtxoImplToJson(_$UtxoImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'outpoint': instance.outpoint.toJson(),
      'utxoEntry': instance.utxoEntry.toJson(),
    };

_$UtxoEntryImpl _$$UtxoEntryImplFromJson(Map json) => _$UtxoEntryImpl(
      amount: BigInt.parse(json['amount'] as String),
      scriptPublicKey: ScriptPublicKey.fromJson(
          Map<String, dynamic>.from(json['scriptPublicKey'] as Map)),
      blockDaaScore: BigInt.parse(json['blockDaaScore'] as String),
      isCoinbase: json['isCoinbase'] as bool,
    );

Map<String, dynamic> _$$UtxoEntryImplToJson(_$UtxoEntryImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount.toString(),
      'scriptPublicKey': instance.scriptPublicKey.toJson(),
      'blockDaaScore': instance.blockDaaScore.toString(),
      'isCoinbase': instance.isCoinbase,
    };

_$ScriptPublicKeyImpl _$$ScriptPublicKeyImplFromJson(Map json) =>
    _$ScriptPublicKeyImpl(
      scriptPublicKey: hexToBytes(json['scriptPublicKey'] as String),
      version: json['version'] as int,
    );

Map<String, dynamic> _$$ScriptPublicKeyImplToJson(
        _$ScriptPublicKeyImpl instance) =>
    <String, dynamic>{
      'scriptPublicKey': bytesToHex(instance.scriptPublicKey),
      'version': instance.version,
    };

_$OutpointImpl _$$OutpointImplFromJson(Map json) => _$OutpointImpl(
      transactionId: json['transactionId'] as String,
      index: json['index'] as int,
    );

Map<String, dynamic> _$$OutpointImplToJson(_$OutpointImpl instance) =>
    <String, dynamic>{
      'transactionId': instance.transactionId,
      'index': instance.index,
    };
