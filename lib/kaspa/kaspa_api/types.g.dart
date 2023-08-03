// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiAddressBalance _$$_ApiAddressBalanceFromJson(Map json) =>
    _$_ApiAddressBalance(
      address: json['address'] as String,
      balance: json['balance'] as int,
    );

Map<String, dynamic> _$$_ApiAddressBalanceToJson(
        _$_ApiAddressBalance instance) =>
    <String, dynamic>{
      'address': instance.address,
      'balance': instance.balance,
    };

_$_ApiUtxo _$$_ApiUtxoFromJson(Map json) => _$_ApiUtxo(
      address: json['address'] as String,
      outpoint: ApiOutpoint.fromJson(
          Map<String, dynamic>.from(json['outpoint'] as Map)),
      utxoEntry: ApiUtxoEntry.fromJson(
          Map<String, dynamic>.from(json['utxoEntry'] as Map)),
    );

Map<String, dynamic> _$$_ApiUtxoToJson(_$_ApiUtxo instance) =>
    <String, dynamic>{
      'address': instance.address,
      'outpoint': instance.outpoint.toJson(),
      'utxoEntry': instance.utxoEntry.toJson(),
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

_$_ApiUtxoEntry _$$_ApiUtxoEntryFromJson(Map json) => _$_ApiUtxoEntry(
      amount: BigInt.parse(json['amount'] as String),
      scriptPublicKey: ApiScriptPublicKey.fromJson(
          Map<String, dynamic>.from(json['scriptPublicKey'] as Map)),
      blockDaaScore: BigInt.parse(json['blockDaaScore'] as String),
      isCoinbase: json['isCoinbase'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ApiUtxoEntryToJson(_$_ApiUtxoEntry instance) =>
    <String, dynamic>{
      'amount': instance.amount.toString(),
      'scriptPublicKey': instance.scriptPublicKey.toJson(),
      'blockDaaScore': instance.blockDaaScore.toString(),
      'isCoinbase': instance.isCoinbase,
    };

_$_ApiScriptPublicKey _$$_ApiScriptPublicKeyFromJson(Map json) =>
    _$_ApiScriptPublicKey(
      scriptPublicKey: json['scriptPublicKey'] as String,
      version: json['version'] as int? ?? 0,
    );

Map<String, dynamic> _$$_ApiScriptPublicKeyToJson(
        _$_ApiScriptPublicKey instance) =>
    <String, dynamic>{
      'scriptPublicKey': instance.scriptPublicKey,
      'version': instance.version,
    };

_$_ApiTxLink _$$_ApiTxLinkFromJson(Map json) => _$_ApiTxLink(
      txReceived: json['tx_received'] as String?,
      txSpent: json['tx_spent'] as String?,
    );

Map<String, dynamic> _$$_ApiTxLinkToJson(_$_ApiTxLink instance) {
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

_$_ApiTxId _$$_ApiTxIdFromJson(Map json) => _$_ApiTxId(
      transactionId: json['transaction_id'] as String,
      blockTime: json['block_time'] as int?,
    );

Map<String, dynamic> _$$_ApiTxIdToJson(_$_ApiTxId instance) {
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

_$_ApiTxInput _$$_ApiTxInputFromJson(Map json) => _$_ApiTxInput(
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

Map<String, dynamic> _$$_ApiTxInputToJson(_$_ApiTxInput instance) {
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

_$_ApiTxOutput _$$_ApiTxOutputFromJson(Map json) => _$_ApiTxOutput(
      transactionId: json['transaction_id'] as String,
      index: json['index'] as int,
      amount: json['amount'] as int,
      scriptPublicKey: json['script_public_key'] as String,
      scriptPublicKeyAddress: json['script_public_key_address'] as String,
      scriptPublicKeyType: json['script_public_key_type'] as String,
    );

Map<String, dynamic> _$$_ApiTxOutputToJson(_$_ApiTxOutput instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
      'index': instance.index,
      'amount': instance.amount,
      'script_public_key': instance.scriptPublicKey,
      'script_public_key_address': instance.scriptPublicKeyAddress,
      'script_public_key_type': instance.scriptPublicKeyType,
    };

_$_Transaction _$$_TransactionFromJson(Map json) => _$_Transaction(
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

Map<String, dynamic> _$$_TransactionToJson(_$_Transaction instance) {
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
