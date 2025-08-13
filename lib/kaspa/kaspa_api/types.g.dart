// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApiAddressBalance _$ApiAddressBalanceFromJson(Map json) => _ApiAddressBalance(
  address: json['address'] as String,
  balance: (json['balance'] as num).toInt(),
);

Map<String, dynamic> _$ApiAddressBalanceToJson(_ApiAddressBalance instance) =>
    <String, dynamic>{'address': instance.address, 'balance': instance.balance};

_ApiUtxo _$ApiUtxoFromJson(Map json) => _ApiUtxo(
  address: json['address'] as String,
  outpoint: ApiOutpoint.fromJson(
    Map<String, dynamic>.from(json['outpoint'] as Map),
  ),
  utxoEntry: ApiUtxoEntry.fromJson(
    Map<String, dynamic>.from(json['utxoEntry'] as Map),
  ),
);

Map<String, dynamic> _$ApiUtxoToJson(_ApiUtxo instance) => <String, dynamic>{
  'address': instance.address,
  'outpoint': instance.outpoint.toJson(),
  'utxoEntry': instance.utxoEntry.toJson(),
};

_Outpoint _$OutpointFromJson(Map json) => _Outpoint(
  transactionId: json['transactionId'] as String,
  index: (json['index'] as num).toInt(),
);

Map<String, dynamic> _$OutpointToJson(_Outpoint instance) => <String, dynamic>{
  'transactionId': instance.transactionId,
  'index': instance.index,
};

_ApiUtxoEntry _$ApiUtxoEntryFromJson(Map json) => _ApiUtxoEntry(
  amount: BigInt.parse(json['amount'] as String),
  scriptPublicKey: ApiScriptPublicKey.fromJson(
    Map<String, dynamic>.from(json['scriptPublicKey'] as Map),
  ),
  blockDaaScore: BigInt.parse(json['blockDaaScore'] as String),
  isCoinbase: json['isCoinbase'] as bool? ?? false,
);

Map<String, dynamic> _$ApiUtxoEntryToJson(_ApiUtxoEntry instance) =>
    <String, dynamic>{
      'amount': instance.amount.toString(),
      'scriptPublicKey': instance.scriptPublicKey.toJson(),
      'blockDaaScore': instance.blockDaaScore.toString(),
      'isCoinbase': instance.isCoinbase,
    };

_ApiScriptPublicKey _$ApiScriptPublicKeyFromJson(Map json) =>
    _ApiScriptPublicKey(
      scriptPublicKey: json['scriptPublicKey'] as String,
      version: (json['version'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$ApiScriptPublicKeyToJson(_ApiScriptPublicKey instance) =>
    <String, dynamic>{
      'scriptPublicKey': instance.scriptPublicKey,
      'version': instance.version,
    };

_ApiTxLink _$ApiTxLinkFromJson(Map json) => _ApiTxLink(
  txReceived: json['tx_received'] as String?,
  txSpent: json['tx_spent'] as String?,
);

Map<String, dynamic> _$ApiTxLinkToJson(_ApiTxLink instance) =>
    <String, dynamic>{
      'tx_received': ?instance.txReceived,
      'tx_spent': ?instance.txSpent,
    };

_ApiTxId _$ApiTxIdFromJson(Map json) => _ApiTxId(
  transactionId: json['transaction_id'] as String,
  blockTime: (json['block_time'] as num?)?.toInt(),
);

Map<String, dynamic> _$ApiTxIdToJson(_ApiTxId instance) => <String, dynamic>{
  'transaction_id': instance.transactionId,
  'block_time': ?instance.blockTime,
};

_ApiTxInput _$ApiTxInputFromJson(Map json) => _ApiTxInput(
  transactionId: json['transaction_id'] as String,
  index: (json['index'] as num).toInt(),
  previousOutpointHash: json['previous_outpoint_hash'] as String,
  previousOutpointIndex: BigInt.parse(
    json['previous_outpoint_index'] as String,
  ),
  signatureScript: json['signature_script'] as String,
  sigOpCount: _sigOpCountFromJson(json['sig_op_count']),
  previousOutpointAddress: json['previous_outpoint_address'] as String?,
  previousOutpointAmount: (json['previous_outpoint_amount'] as num?)?.toInt(),
);

Map<String, dynamic> _$ApiTxInputToJson(_ApiTxInput instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
      'index': instance.index,
      'previous_outpoint_hash': instance.previousOutpointHash,
      'previous_outpoint_index': instance.previousOutpointIndex.toString(),
      'signature_script': instance.signatureScript,
      'sig_op_count': instance.sigOpCount,
      'previous_outpoint_address': ?instance.previousOutpointAddress,
      'previous_outpoint_amount': ?instance.previousOutpointAmount,
    };

_ApiTxOutput _$ApiTxOutputFromJson(Map json) => _ApiTxOutput(
  transactionId: json['transaction_id'] as String,
  index: (json['index'] as num).toInt(),
  amount: (json['amount'] as num).toInt(),
  scriptPublicKey: json['script_public_key'] as String,
  scriptPublicKeyAddress: json['script_public_key_address'] as String,
  scriptPublicKeyType: json['script_public_key_type'] as String,
);

Map<String, dynamic> _$ApiTxOutputToJson(_ApiTxOutput instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
      'index': instance.index,
      'amount': instance.amount,
      'script_public_key': instance.scriptPublicKey,
      'script_public_key_address': instance.scriptPublicKeyAddress,
      'script_public_key_type': instance.scriptPublicKeyType,
    };

_Transaction _$TransactionFromJson(Map json) => _Transaction(
  subnetworkId: json['subnetwork_id'] as String?,
  transactionId: json['transaction_id'] as String,
  blockHash:
      (json['block_hash'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  blockTime: (json['block_time'] as num).toInt(),
  isAccepted: json['is_accepted'] as bool,
  acceptingBlockHash: json['accepting_block_hash'] as String?,
  acceptingBlockBlueScore: (json['accepting_block_blue_score'] as num?)
      ?.toInt(),
  inputs:
      (json['inputs'] as List<dynamic>?)
          ?.map((e) => ApiTxInput.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList() ??
      const [],
  outputs:
      (json['outputs'] as List<dynamic>?)
          ?.map(
            (e) => ApiTxOutput.fromJson(Map<String, dynamic>.from(e as Map)),
          )
          .toList() ??
      const [],
);

Map<String, dynamic> _$TransactionToJson(_Transaction instance) =>
    <String, dynamic>{
      'subnetwork_id': ?instance.subnetworkId,
      'transaction_id': instance.transactionId,
      'block_hash': instance.blockHash,
      'block_time': instance.blockTime,
      'is_accepted': instance.isAccepted,
      'accepting_block_hash': ?instance.acceptingBlockHash,
      'accepting_block_blue_score': ?instance.acceptingBlockBlueScore,
      'inputs': instance.inputs.map((e) => e.toJson()).toList(),
      'outputs': instance.outputs.map((e) => e.toJson()).toList(),
    };
