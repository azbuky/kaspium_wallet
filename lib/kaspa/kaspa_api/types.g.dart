// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiAddressBalanceImpl _$$ApiAddressBalanceImplFromJson(Map json) =>
    _$ApiAddressBalanceImpl(
      address: json['address'] as String,
      balance: json['balance'] as int,
    );

Map<String, dynamic> _$$ApiAddressBalanceImplToJson(
        _$ApiAddressBalanceImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'balance': instance.balance,
    };

_$ApiUtxoImpl _$$ApiUtxoImplFromJson(Map json) => _$ApiUtxoImpl(
      address: json['address'] as String,
      outpoint: ApiOutpoint.fromJson(
          Map<String, dynamic>.from(json['outpoint'] as Map)),
      utxoEntry: ApiUtxoEntry.fromJson(
          Map<String, dynamic>.from(json['utxoEntry'] as Map)),
    );

Map<String, dynamic> _$$ApiUtxoImplToJson(_$ApiUtxoImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'outpoint': instance.outpoint.toJson(),
      'utxoEntry': instance.utxoEntry.toJson(),
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

_$ApiUtxoEntryImpl _$$ApiUtxoEntryImplFromJson(Map json) => _$ApiUtxoEntryImpl(
      amount: BigInt.parse(json['amount'] as String),
      scriptPublicKey: ApiScriptPublicKey.fromJson(
          Map<String, dynamic>.from(json['scriptPublicKey'] as Map)),
      blockDaaScore: BigInt.parse(json['blockDaaScore'] as String),
      isCoinbase: json['isCoinbase'] as bool? ?? false,
    );

Map<String, dynamic> _$$ApiUtxoEntryImplToJson(_$ApiUtxoEntryImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount.toString(),
      'scriptPublicKey': instance.scriptPublicKey.toJson(),
      'blockDaaScore': instance.blockDaaScore.toString(),
      'isCoinbase': instance.isCoinbase,
    };

_$ApiScriptPublicKeyImpl _$$ApiScriptPublicKeyImplFromJson(Map json) =>
    _$ApiScriptPublicKeyImpl(
      scriptPublicKey: json['scriptPublicKey'] as String,
      version: json['version'] as int? ?? 0,
    );

Map<String, dynamic> _$$ApiScriptPublicKeyImplToJson(
        _$ApiScriptPublicKeyImpl instance) =>
    <String, dynamic>{
      'scriptPublicKey': instance.scriptPublicKey,
      'version': instance.version,
    };

_$ApiTxLinkImpl _$$ApiTxLinkImplFromJson(Map json) => _$ApiTxLinkImpl(
      txReceived: json['tx_received'] as String?,
      txSpent: json['tx_spent'] as String?,
    );

Map<String, dynamic> _$$ApiTxLinkImplToJson(_$ApiTxLinkImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tx_received', instance.txReceived);
  writeNotNull('tx_spent', instance.txSpent);
  return val;
}

_$ApiTxIdImpl _$$ApiTxIdImplFromJson(Map json) => _$ApiTxIdImpl(
      transactionId: json['transaction_id'] as String,
      blockTime: json['block_time'] as int?,
    );

Map<String, dynamic> _$$ApiTxIdImplToJson(_$ApiTxIdImpl instance) {
  final val = <String, dynamic>{
    'transaction_id': instance.transactionId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('block_time', instance.blockTime);
  return val;
}

_$ApiTxInputImpl _$$ApiTxInputImplFromJson(Map json) => _$ApiTxInputImpl(
      transactionId: json['transaction_id'] as String,
      index: json['index'] as int,
      previousOutpointHash: json['previous_outpoint_hash'] as String,
      previousOutpointIndex:
          BigInt.parse(json['previous_outpoint_index'] as String),
      signatureScript: json['signature_script'] as String,
      sigOpCount: BigInt.parse(json['sig_op_count'] as String),
      previousOutpointAddress: json['previous_outpoint_address'] as String?,
      previousOutpointAmount: json['previous_outpoint_amount'] as int?,
    );

Map<String, dynamic> _$$ApiTxInputImplToJson(_$ApiTxInputImpl instance) {
  final val = <String, dynamic>{
    'transaction_id': instance.transactionId,
    'index': instance.index,
    'previous_outpoint_hash': instance.previousOutpointHash,
    'previous_outpoint_index': instance.previousOutpointIndex.toString(),
    'signature_script': instance.signatureScript,
    'sig_op_count': instance.sigOpCount.toString(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('previous_outpoint_address', instance.previousOutpointAddress);
  writeNotNull('previous_outpoint_amount', instance.previousOutpointAmount);
  return val;
}

_$ApiTxOutputImpl _$$ApiTxOutputImplFromJson(Map json) => _$ApiTxOutputImpl(
      transactionId: json['transaction_id'] as String,
      index: json['index'] as int,
      amount: json['amount'] as int,
      scriptPublicKey: json['script_public_key'] as String,
      scriptPublicKeyAddress: json['script_public_key_address'] as String,
      scriptPublicKeyType: json['script_public_key_type'] as String,
    );

Map<String, dynamic> _$$ApiTxOutputImplToJson(_$ApiTxOutputImpl instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
      'index': instance.index,
      'amount': instance.amount,
      'script_public_key': instance.scriptPublicKey,
      'script_public_key_address': instance.scriptPublicKeyAddress,
      'script_public_key_type': instance.scriptPublicKeyType,
    };

_$TransactionImpl _$$TransactionImplFromJson(Map json) => _$TransactionImpl(
      subnetworkId: json['subnetwork_id'] as String?,
      transactionId: json['transaction_id'] as String,
      blockHash: (json['block_hash'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      blockTime: json['block_time'] as int,
      isAccepted: json['is_accepted'] as bool,
      acceptingBlockHash: json['accepting_block_hash'] as String?,
      acceptingBlockBlueScore: json['accepting_block_blue_score'] as int?,
      inputs: (json['inputs'] as List<dynamic>?)
              ?.map((e) =>
                  ApiTxInput.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      outputs: (json['outputs'] as List<dynamic>?)
              ?.map((e) =>
                  ApiTxOutput.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TransactionImplToJson(_$TransactionImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('subnetwork_id', instance.subnetworkId);
  val['transaction_id'] = instance.transactionId;
  val['block_hash'] = instance.blockHash;
  val['block_time'] = instance.blockTime;
  val['is_accepted'] = instance.isAccepted;
  writeNotNull('accepting_block_hash', instance.acceptingBlockHash);
  writeNotNull('accepting_block_blue_score', instance.acceptingBlockBlueScore);
  val['inputs'] = instance.inputs.map((e) => e.toJson()).toList();
  val['outputs'] = instance.outputs.map((e) => e.toJson()).toList();
  return val;
}
