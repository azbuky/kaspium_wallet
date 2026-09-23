import 'package:collection/collection.dart';

import '../types.dart';
import '../utils.dart';
import 'grpc/rpc.pb.dart';

AddressBalance decodeAddressBalance(RpcBalancesByAddressesEntry entry) {
  return AddressBalance(
    address: entry.address,
    balance: entry.balance.toUnsignedBigInt(),
  );
}

MempoolEntry decodeMempoolEntry(RpcMempoolEntry entry) {
  return MempoolEntry(
    fee: entry.fee.toInt(),
    transaction: decodeTransaction(entry.transaction),
    isOrphan: entry.isOrphan,
  );
}

MempoolEntryByAddress decodeMempoolEntryByAddress(
  RpcMempoolEntryByAddress entry,
) {
  return MempoolEntryByAddress(
    address: entry.address,
    sending: entry.sending.map(decodeMempoolEntry),
    receiving: entry.receiving.map(decodeMempoolEntry),
  );
}

VirtualChainChanged decodeVirtualChainChanged(
  VirtualChainChangedNotificationMessage notification,
) {
  return VirtualChainChanged(
    removedChainBlockHashes: notification.removedChainBlockHashes,
    addedChainBlockHashes: notification.addedChainBlockHashes,
    acceptedTransactionIds: notification.acceptedTransactionIds.map(
      (e) => AcceptedTransactionIds(
        acceptingBlockHash: e.acceptingBlockHash,
        acceptedTransactionIds: e.acceptedTransactionIds,
      ),
    ),
  );
}

RpcDataVerbosityLevel encodeDataVerbosity(DataVerbosity verbosity) =>
    switch (verbosity) {
      .none => .NONE,
      .low => .LOW,
      .high => .HIGH,
      .full => .FULL,
    };

Transaction decodeOptionalTransaction(
  RpcOptionalTransaction tx, {
  required String acceptingBlockHash,
  required int acceptingBlockBlueScore,
  required int fallbackBlockTime,
}) {
  final txId = tx.verboseData.transactionId;
  final blockTime = tx.verboseData.hasBlockTime()
      ? tx.verboseData.blockTime.toInt()
      : fallbackBlockTime;

  return Transaction(
    subnetworkId: tx.hasSubnetworkId() ? tx.subnetworkId : null,
    transactionId: txId,
    blockTime: blockTime,
    isAccepted: true,
    acceptingBlockHash: acceptingBlockHash,
    acceptingBlockBlueScore: acceptingBlockBlueScore,
    inputs: tx.inputs.mapIndexed((index, e) {
      final verboseData = e.verboseData;
      final utxoEntry = verboseData.hasUtxoEntry()
          ? verboseData.utxoEntry
          : null;
      final address = utxoEntry?.verboseData.scriptPublicKeyAddress;

      return TransactionInput(
        transactionId: txId,
        index: index,
        previousOutpointHash: e.previousOutpoint.transactionId,
        previousOutpointIndex: BigInt.from(e.previousOutpoint.index),
        signatureScript: e.signatureScript,
        sigOpCount: e.sigOpCount,
        previousOutpointAddress: address?.isNotEmpty == true ? address : null,
        previousOutpointAmount: utxoEntry?.amount.toInt(),
      );
    }).toList(),
    outputs: tx.outputs.mapIndexed((index, e) {
      return TransactionOutput(
        transactionId: txId,
        index: index,
        amount: e.value.toInt(),
        scriptPublicKey: e.scriptPublicKey.scriptPublicKey,
        scriptPublicKeyAddress: e.verboseData.scriptPublicKeyAddress,
        scriptPublicKeyType: e.verboseData.scriptPublicKeyType,
      );
    }).toList(),
    payload: tx.payload,
  );
}

ChainAcceptedTransactions decodeChainBlockAcceptedTransactions(
  RpcChainBlockAcceptedTransactions rpc,
) {
  final header = rpc.chainBlockHeader;
  final blueScore = header.blueScore.toInt();
  final timestamp = header.timestamp.toInt();

  return ChainAcceptedTransactions(
    chainBlockHash: header.hash,
    blueScore: blueScore,
    daaScore: header.daaScore.toInt(),
    timestamp: timestamp,
    acceptedTransactions: rpc.acceptedTransactions
        .map(
          (tx) => decodeOptionalTransaction(
            tx,
            acceptingBlockHash: header.hash,
            acceptingBlockBlueScore: blueScore,
            fallbackBlockTime: timestamp,
          ),
        )
        .toList(),
  );
}

VirtualChainSegment decodeVirtualChainSegment(
  GetVirtualChainFromBlockV2ResponseMessage message,
) {
  return VirtualChainSegment(
    removedChainBlockHashes: message.removedChainBlockHashes,
    addedChainBlockHashes: message.addedChainBlockHashes,
    chainBlocks: message.chainBlockAcceptedTransactions
        .map(decodeChainBlockAcceptedTransactions)
        .toList(),
  );
}

BlockHeader decodeBlockHeader(RpcBlockHeader header, String hash) {
  return BlockHeader(
    version: header.version,
    timestamp: header.timestamp.toInt(),
    bits: header.bits,
    nonce: header.nonce.toInt(),
    daaScore: header.daaScore.toInt(),
    blueScore: header.blueScore.toInt(),
  );
}

BlockVerboseData? maybeDecodeBlockVerboseData(
  RpcBlockVerboseData? verboseData,
) {
  if (verboseData == null) {
    return null;
  }
  return BlockVerboseData(
    hash: verboseData.hash,
    difficulty: verboseData.difficulty,
    selectedParentHash: verboseData.selectedParentHash,
    transactionIds: verboseData.transactionIds,
    isHeaderOnly: verboseData.isHeaderOnly,
    blueScore: verboseData.blueScore.toInt(),
    isChainBlock: verboseData.isChainBlock,
  );
}

Block decodeBlock(RpcBlock block) {
  return Block(
    header: decodeBlockHeader(block.header, block.verboseData.hash),
    transactions: block.transactions.map(decodeTransaction),
    verboseData: maybeDecodeBlockVerboseData(block.verboseData),
  );
}

// from rpc
ScriptPublicKey decodeScriptPublicKey(RpcScriptPublicKey rpc) {
  return ScriptPublicKey(
    scriptPublicKey: hexToBytes(rpc.scriptPublicKey),
    version: rpc.version,
  );
}

RpcScriptPublicKey encodeScriptPublicKey(ScriptPublicKey scriptPublicKey) {
  return RpcScriptPublicKey(
    scriptPublicKey: bytesToHex(scriptPublicKey.scriptPublicKey),
    version: scriptPublicKey.version,
  );
}

UtxoEntry decodeUtxoEntry(RpcUtxoEntry rpc) {
  return UtxoEntry(
    amount: rpc.amount.toUnsignedBigInt(),
    scriptPublicKey: decodeScriptPublicKey(rpc.scriptPublicKey),
    blockDaaScore: rpc.blockDaaScore.toUnsignedBigInt(),
    isCoinbase: rpc.isCoinbase,
    covenantId: rpc.covenantId.isEmpty ? null : hexToBytes(rpc.covenantId),
  );
}

RpcUtxoEntry encodeUtxoEntry(UtxoEntry utxoEntry) => RpcUtxoEntry(
  amount: utxoEntry.amount.toInt64(),
  scriptPublicKey: encodeScriptPublicKey(utxoEntry.scriptPublicKey),
  blockDaaScore: utxoEntry.blockDaaScore.toInt64(),
  isCoinbase: utxoEntry.isCoinbase,
);

Utxo decodeUtxo(RpcUtxosByAddressesEntry rpc) => Utxo(
  address: rpc.address,
  outpoint: decodeOutpoint(rpc.outpoint),
  utxoEntry: decodeUtxoEntry(rpc.utxoEntry),
);

UtxosChanged decodeUtxosChanged(UtxosChangedNotificationMessage notification) {
  return UtxosChanged(
    added: notification.added.map(decodeUtxo),
    removed: notification.removed.map(decodeUtxo),
  );
}

RpcUtxosByAddressesEntry encodeUtxo(Utxo utxo) {
  return RpcUtxosByAddressesEntry(
    address: utxo.address,
    outpoint: encodeOutpoint(utxo.outpoint),
    utxoEntry: encodeUtxoEntry(utxo.utxoEntry),
  );
}

Outpoint decodeOutpoint(RpcOutpoint rpc) {
  return Outpoint(transactionId: rpc.transactionId, index: rpc.index);
}

RpcOutpoint encodeOutpoint(Outpoint outpoint) {
  return RpcOutpoint(
    transactionId: outpoint.transactionId,
    index: outpoint.index,
  );
}

RpcTransactionInput encodeTxInput(RawInput input) {
  return RpcTransactionInput(
    previousOutpoint: encodeOutpoint(input.previousOutpoint),
    signatureScript: bytesToHex(input.signatureScript),
    sequence: input.sequence.toInt64(),
    sigOpCount: input.sigOpCount,
  );
}

RpcTransactionOutput encodeTxOutput(RawOutput output) {
  return RpcTransactionOutput(
    amount: output.value.toInt64(),
    scriptPublicKey: encodeScriptPublicKey(output.scriptPublicKey),
  );
}

RpcTransaction encodeTransaction(RawTransaction tx) => RpcTransaction(
  version: tx.version,
  inputs: tx.inputs.map(encodeTxInput),
  outputs: tx.outputs.map(encodeTxOutput),
  lockTime: tx.lockTime.toInt64(),
  subnetworkId: tx.subnetworkId.hex,
  gas: tx.gas.toInt64(),
  payload: tx.payload?.hex,
);

Transaction decodeTransaction(RpcTransaction tx) {
  return Transaction(
    transactionId: tx.verboseData.transactionId,
    blockTime: tx.verboseData.blockTime.toInt(),
    isAccepted: false,
    inputs: tx.inputs.mapIndexed((index, e) {
      return TransactionInput(
        transactionId: tx.verboseData.transactionId,
        index: index,
        previousOutpointHash: e.previousOutpoint.transactionId,
        previousOutpointIndex: BigInt.from(e.previousOutpoint.index),
        signatureScript: e.signatureScript,
        sigOpCount: e.sigOpCount,
      );
    }).toList(),
    outputs: tx.outputs.mapIndexed((index, e) {
      return TransactionOutput(
        transactionId: tx.verboseData.transactionId,
        index: index,
        amount: e.amount.toInt(),
        scriptPublicKey: e.scriptPublicKey.scriptPublicKey,
        scriptPublicKeyAddress: e.verboseData.scriptPublicKeyAddress,
        scriptPublicKeyType: e.verboseData.scriptPublicKeyType,
      );
    }).toList(),
  );
}

ServerInfo decodeServerInfo(GetServerInfoResponseMessage info) {
  return ServerInfo(
    rpcApiRevision: info.rpcApiRevision,
    rpcApiVersion: info.rpcApiVersion,
    serverVersion: info.serverVersion,
    networkId: info.networkId,
    hasUtxoIndex: info.hasUtxoIndex,
    isSynced: info.isSynced,
    virtualDaaScore: info.virtualDaaScore.toInt(),
  );
}

FeerateBucket decodeFeerateBucket(RpcFeerateBucket rpc) {
  return FeerateBucket(
    feerate: rpc.feerate,
    estimatedSeconds: rpc.estimatedSeconds.toInt(),
  );
}

FeeEstimate decodeFeeEstimate(RpcFeeEstimate feeEstimate) {
  return FeeEstimate(
    priorityBucket: decodeFeerateBucket(feeEstimate.priorityBucket),
    normalBuckets: feeEstimate.normalBuckets.map(decodeFeerateBucket),
    lowBuckets: feeEstimate.lowBuckets.map(decodeFeerateBucket),
  );
}
