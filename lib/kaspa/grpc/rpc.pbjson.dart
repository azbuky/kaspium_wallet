//
//  Generated code. Do not modify.
//  source: rpc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use rpcNotifyCommandDescriptor instead')
const RpcNotifyCommand$json = {
  '1': 'RpcNotifyCommand',
  '2': [
    {'1': 'NOTIFY_START', '2': 0},
    {'1': 'NOTIFY_STOP', '2': 1},
  ],
};

/// Descriptor for `RpcNotifyCommand`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List rpcNotifyCommandDescriptor = $convert.base64Decode(
    'ChBScGNOb3RpZnlDb21tYW5kEhAKDE5PVElGWV9TVEFSVBAAEg8KC05PVElGWV9TVE9QEAE=');

@$core.Deprecated('Use rPCErrorDescriptor instead')
const RPCError$json = {
  '1': 'RPCError',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `RPCError`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rPCErrorDescriptor = $convert.base64Decode(
    'CghSUENFcnJvchIYCgdtZXNzYWdlGAEgASgJUgdtZXNzYWdl');

@$core.Deprecated('Use rpcBlockDescriptor instead')
const RpcBlock$json = {
  '1': 'RpcBlock',
  '2': [
    {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.protowire.RpcBlockHeader', '10': 'header'},
    {'1': 'transactions', '3': 2, '4': 3, '5': 11, '6': '.protowire.RpcTransaction', '10': 'transactions'},
    {'1': 'verboseData', '3': 3, '4': 1, '5': 11, '6': '.protowire.RpcBlockVerboseData', '10': 'verboseData'},
  ],
};

/// Descriptor for `RpcBlock`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rpcBlockDescriptor = $convert.base64Decode(
    'CghScGNCbG9jaxIxCgZoZWFkZXIYASABKAsyGS5wcm90b3dpcmUuUnBjQmxvY2tIZWFkZXJSBm'
    'hlYWRlchI9Cgx0cmFuc2FjdGlvbnMYAiADKAsyGS5wcm90b3dpcmUuUnBjVHJhbnNhY3Rpb25S'
    'DHRyYW5zYWN0aW9ucxJACgt2ZXJib3NlRGF0YRgDIAEoCzIeLnByb3Rvd2lyZS5ScGNCbG9ja1'
    'ZlcmJvc2VEYXRhUgt2ZXJib3NlRGF0YQ==');

@$core.Deprecated('Use rpcBlockHeaderDescriptor instead')
const RpcBlockHeader$json = {
  '1': 'RpcBlockHeader',
  '2': [
    {'1': 'version', '3': 1, '4': 1, '5': 13, '10': 'version'},
    {'1': 'parents', '3': 12, '4': 3, '5': 11, '6': '.protowire.RpcBlockLevelParents', '10': 'parents'},
    {'1': 'hashMerkleRoot', '3': 3, '4': 1, '5': 9, '10': 'hashMerkleRoot'},
    {'1': 'acceptedIdMerkleRoot', '3': 4, '4': 1, '5': 9, '10': 'acceptedIdMerkleRoot'},
    {'1': 'utxoCommitment', '3': 5, '4': 1, '5': 9, '10': 'utxoCommitment'},
    {'1': 'timestamp', '3': 6, '4': 1, '5': 3, '10': 'timestamp'},
    {'1': 'bits', '3': 7, '4': 1, '5': 13, '10': 'bits'},
    {'1': 'nonce', '3': 8, '4': 1, '5': 4, '10': 'nonce'},
    {'1': 'daaScore', '3': 9, '4': 1, '5': 4, '10': 'daaScore'},
    {'1': 'blueWork', '3': 10, '4': 1, '5': 9, '10': 'blueWork'},
    {'1': 'pruningPoint', '3': 14, '4': 1, '5': 9, '10': 'pruningPoint'},
    {'1': 'blueScore', '3': 13, '4': 1, '5': 4, '10': 'blueScore'},
  ],
};

/// Descriptor for `RpcBlockHeader`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rpcBlockHeaderDescriptor = $convert.base64Decode(
    'Cg5ScGNCbG9ja0hlYWRlchIYCgd2ZXJzaW9uGAEgASgNUgd2ZXJzaW9uEjkKB3BhcmVudHMYDC'
    'ADKAsyHy5wcm90b3dpcmUuUnBjQmxvY2tMZXZlbFBhcmVudHNSB3BhcmVudHMSJgoOaGFzaE1l'
    'cmtsZVJvb3QYAyABKAlSDmhhc2hNZXJrbGVSb290EjIKFGFjY2VwdGVkSWRNZXJrbGVSb290GA'
    'QgASgJUhRhY2NlcHRlZElkTWVya2xlUm9vdBImCg51dHhvQ29tbWl0bWVudBgFIAEoCVIOdXR4'
    'b0NvbW1pdG1lbnQSHAoJdGltZXN0YW1wGAYgASgDUgl0aW1lc3RhbXASEgoEYml0cxgHIAEoDV'
    'IEYml0cxIUCgVub25jZRgIIAEoBFIFbm9uY2USGgoIZGFhU2NvcmUYCSABKARSCGRhYVNjb3Jl'
    'EhoKCGJsdWVXb3JrGAogASgJUghibHVlV29yaxIiCgxwcnVuaW5nUG9pbnQYDiABKAlSDHBydW'
    '5pbmdQb2ludBIcCglibHVlU2NvcmUYDSABKARSCWJsdWVTY29yZQ==');

@$core.Deprecated('Use rpcBlockLevelParentsDescriptor instead')
const RpcBlockLevelParents$json = {
  '1': 'RpcBlockLevelParents',
  '2': [
    {'1': 'parentHashes', '3': 1, '4': 3, '5': 9, '10': 'parentHashes'},
  ],
};

/// Descriptor for `RpcBlockLevelParents`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rpcBlockLevelParentsDescriptor = $convert.base64Decode(
    'ChRScGNCbG9ja0xldmVsUGFyZW50cxIiCgxwYXJlbnRIYXNoZXMYASADKAlSDHBhcmVudEhhc2'
    'hlcw==');

@$core.Deprecated('Use rpcBlockVerboseDataDescriptor instead')
const RpcBlockVerboseData$json = {
  '1': 'RpcBlockVerboseData',
  '2': [
    {'1': 'hash', '3': 1, '4': 1, '5': 9, '10': 'hash'},
    {'1': 'difficulty', '3': 11, '4': 1, '5': 1, '10': 'difficulty'},
    {'1': 'selectedParentHash', '3': 13, '4': 1, '5': 9, '10': 'selectedParentHash'},
    {'1': 'transactionIds', '3': 14, '4': 3, '5': 9, '10': 'transactionIds'},
    {'1': 'isHeaderOnly', '3': 15, '4': 1, '5': 8, '10': 'isHeaderOnly'},
    {'1': 'blueScore', '3': 16, '4': 1, '5': 4, '10': 'blueScore'},
    {'1': 'childrenHashes', '3': 17, '4': 3, '5': 9, '10': 'childrenHashes'},
    {'1': 'mergeSetBluesHashes', '3': 18, '4': 3, '5': 9, '10': 'mergeSetBluesHashes'},
    {'1': 'mergeSetRedsHashes', '3': 19, '4': 3, '5': 9, '10': 'mergeSetRedsHashes'},
    {'1': 'isChainBlock', '3': 20, '4': 1, '5': 8, '10': 'isChainBlock'},
  ],
};

/// Descriptor for `RpcBlockVerboseData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rpcBlockVerboseDataDescriptor = $convert.base64Decode(
    'ChNScGNCbG9ja1ZlcmJvc2VEYXRhEhIKBGhhc2gYASABKAlSBGhhc2gSHgoKZGlmZmljdWx0eR'
    'gLIAEoAVIKZGlmZmljdWx0eRIuChJzZWxlY3RlZFBhcmVudEhhc2gYDSABKAlSEnNlbGVjdGVk'
    'UGFyZW50SGFzaBImCg50cmFuc2FjdGlvbklkcxgOIAMoCVIOdHJhbnNhY3Rpb25JZHMSIgoMaX'
    'NIZWFkZXJPbmx5GA8gASgIUgxpc0hlYWRlck9ubHkSHAoJYmx1ZVNjb3JlGBAgASgEUglibHVl'
    'U2NvcmUSJgoOY2hpbGRyZW5IYXNoZXMYESADKAlSDmNoaWxkcmVuSGFzaGVzEjAKE21lcmdlU2'
    'V0Qmx1ZXNIYXNoZXMYEiADKAlSE21lcmdlU2V0Qmx1ZXNIYXNoZXMSLgoSbWVyZ2VTZXRSZWRz'
    'SGFzaGVzGBMgAygJUhJtZXJnZVNldFJlZHNIYXNoZXMSIgoMaXNDaGFpbkJsb2NrGBQgASgIUg'
    'xpc0NoYWluQmxvY2s=');

@$core.Deprecated('Use rpcTransactionDescriptor instead')
const RpcTransaction$json = {
  '1': 'RpcTransaction',
  '2': [
    {'1': 'version', '3': 1, '4': 1, '5': 13, '10': 'version'},
    {'1': 'inputs', '3': 2, '4': 3, '5': 11, '6': '.protowire.RpcTransactionInput', '10': 'inputs'},
    {'1': 'outputs', '3': 3, '4': 3, '5': 11, '6': '.protowire.RpcTransactionOutput', '10': 'outputs'},
    {'1': 'lockTime', '3': 4, '4': 1, '5': 4, '10': 'lockTime'},
    {'1': 'subnetworkId', '3': 5, '4': 1, '5': 9, '10': 'subnetworkId'},
    {'1': 'gas', '3': 6, '4': 1, '5': 4, '10': 'gas'},
    {'1': 'payload', '3': 8, '4': 1, '5': 9, '10': 'payload'},
    {'1': 'verboseData', '3': 9, '4': 1, '5': 11, '6': '.protowire.RpcTransactionVerboseData', '10': 'verboseData'},
    {'1': 'mass', '3': 10, '4': 1, '5': 4, '10': 'mass'},
  ],
};

/// Descriptor for `RpcTransaction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rpcTransactionDescriptor = $convert.base64Decode(
    'Cg5ScGNUcmFuc2FjdGlvbhIYCgd2ZXJzaW9uGAEgASgNUgd2ZXJzaW9uEjYKBmlucHV0cxgCIA'
    'MoCzIeLnByb3Rvd2lyZS5ScGNUcmFuc2FjdGlvbklucHV0UgZpbnB1dHMSOQoHb3V0cHV0cxgD'
    'IAMoCzIfLnByb3Rvd2lyZS5ScGNUcmFuc2FjdGlvbk91dHB1dFIHb3V0cHV0cxIaCghsb2NrVG'
    'ltZRgEIAEoBFIIbG9ja1RpbWUSIgoMc3VibmV0d29ya0lkGAUgASgJUgxzdWJuZXR3b3JrSWQS'
    'EAoDZ2FzGAYgASgEUgNnYXMSGAoHcGF5bG9hZBgIIAEoCVIHcGF5bG9hZBJGCgt2ZXJib3NlRG'
    'F0YRgJIAEoCzIkLnByb3Rvd2lyZS5ScGNUcmFuc2FjdGlvblZlcmJvc2VEYXRhUgt2ZXJib3Nl'
    'RGF0YRISCgRtYXNzGAogASgEUgRtYXNz');

@$core.Deprecated('Use rpcTransactionInputDescriptor instead')
const RpcTransactionInput$json = {
  '1': 'RpcTransactionInput',
  '2': [
    {'1': 'previousOutpoint', '3': 1, '4': 1, '5': 11, '6': '.protowire.RpcOutpoint', '10': 'previousOutpoint'},
    {'1': 'signatureScript', '3': 2, '4': 1, '5': 9, '10': 'signatureScript'},
    {'1': 'sequence', '3': 3, '4': 1, '5': 4, '10': 'sequence'},
    {'1': 'sigOpCount', '3': 5, '4': 1, '5': 13, '10': 'sigOpCount'},
    {'1': 'verboseData', '3': 4, '4': 1, '5': 11, '6': '.protowire.RpcTransactionInputVerboseData', '10': 'verboseData'},
  ],
};

/// Descriptor for `RpcTransactionInput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rpcTransactionInputDescriptor = $convert.base64Decode(
    'ChNScGNUcmFuc2FjdGlvbklucHV0EkIKEHByZXZpb3VzT3V0cG9pbnQYASABKAsyFi5wcm90b3'
    'dpcmUuUnBjT3V0cG9pbnRSEHByZXZpb3VzT3V0cG9pbnQSKAoPc2lnbmF0dXJlU2NyaXB0GAIg'
    'ASgJUg9zaWduYXR1cmVTY3JpcHQSGgoIc2VxdWVuY2UYAyABKARSCHNlcXVlbmNlEh4KCnNpZ0'
    '9wQ291bnQYBSABKA1SCnNpZ09wQ291bnQSSwoLdmVyYm9zZURhdGEYBCABKAsyKS5wcm90b3dp'
    'cmUuUnBjVHJhbnNhY3Rpb25JbnB1dFZlcmJvc2VEYXRhUgt2ZXJib3NlRGF0YQ==');

@$core.Deprecated('Use rpcScriptPublicKeyDescriptor instead')
const RpcScriptPublicKey$json = {
  '1': 'RpcScriptPublicKey',
  '2': [
    {'1': 'version', '3': 1, '4': 1, '5': 13, '10': 'version'},
    {'1': 'scriptPublicKey', '3': 2, '4': 1, '5': 9, '10': 'scriptPublicKey'},
  ],
};

/// Descriptor for `RpcScriptPublicKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rpcScriptPublicKeyDescriptor = $convert.base64Decode(
    'ChJScGNTY3JpcHRQdWJsaWNLZXkSGAoHdmVyc2lvbhgBIAEoDVIHdmVyc2lvbhIoCg9zY3JpcH'
    'RQdWJsaWNLZXkYAiABKAlSD3NjcmlwdFB1YmxpY0tleQ==');

@$core.Deprecated('Use rpcTransactionOutputDescriptor instead')
const RpcTransactionOutput$json = {
  '1': 'RpcTransactionOutput',
  '2': [
    {'1': 'amount', '3': 1, '4': 1, '5': 4, '10': 'amount'},
    {'1': 'scriptPublicKey', '3': 2, '4': 1, '5': 11, '6': '.protowire.RpcScriptPublicKey', '10': 'scriptPublicKey'},
    {'1': 'verboseData', '3': 3, '4': 1, '5': 11, '6': '.protowire.RpcTransactionOutputVerboseData', '10': 'verboseData'},
  ],
};

/// Descriptor for `RpcTransactionOutput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rpcTransactionOutputDescriptor = $convert.base64Decode(
    'ChRScGNUcmFuc2FjdGlvbk91dHB1dBIWCgZhbW91bnQYASABKARSBmFtb3VudBJHCg9zY3JpcH'
    'RQdWJsaWNLZXkYAiABKAsyHS5wcm90b3dpcmUuUnBjU2NyaXB0UHVibGljS2V5Ug9zY3JpcHRQ'
    'dWJsaWNLZXkSTAoLdmVyYm9zZURhdGEYAyABKAsyKi5wcm90b3dpcmUuUnBjVHJhbnNhY3Rpb2'
    '5PdXRwdXRWZXJib3NlRGF0YVILdmVyYm9zZURhdGE=');

@$core.Deprecated('Use rpcOutpointDescriptor instead')
const RpcOutpoint$json = {
  '1': 'RpcOutpoint',
  '2': [
    {'1': 'transactionId', '3': 1, '4': 1, '5': 9, '10': 'transactionId'},
    {'1': 'index', '3': 2, '4': 1, '5': 13, '10': 'index'},
  ],
};

/// Descriptor for `RpcOutpoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rpcOutpointDescriptor = $convert.base64Decode(
    'CgtScGNPdXRwb2ludBIkCg10cmFuc2FjdGlvbklkGAEgASgJUg10cmFuc2FjdGlvbklkEhQKBW'
    'luZGV4GAIgASgNUgVpbmRleA==');

@$core.Deprecated('Use rpcUtxoEntryDescriptor instead')
const RpcUtxoEntry$json = {
  '1': 'RpcUtxoEntry',
  '2': [
    {'1': 'amount', '3': 1, '4': 1, '5': 4, '10': 'amount'},
    {'1': 'scriptPublicKey', '3': 2, '4': 1, '5': 11, '6': '.protowire.RpcScriptPublicKey', '10': 'scriptPublicKey'},
    {'1': 'blockDaaScore', '3': 3, '4': 1, '5': 4, '10': 'blockDaaScore'},
    {'1': 'isCoinbase', '3': 4, '4': 1, '5': 8, '10': 'isCoinbase'},
  ],
};

/// Descriptor for `RpcUtxoEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rpcUtxoEntryDescriptor = $convert.base64Decode(
    'CgxScGNVdHhvRW50cnkSFgoGYW1vdW50GAEgASgEUgZhbW91bnQSRwoPc2NyaXB0UHVibGljS2'
    'V5GAIgASgLMh0ucHJvdG93aXJlLlJwY1NjcmlwdFB1YmxpY0tleVIPc2NyaXB0UHVibGljS2V5'
    'EiQKDWJsb2NrRGFhU2NvcmUYAyABKARSDWJsb2NrRGFhU2NvcmUSHgoKaXNDb2luYmFzZRgEIA'
    'EoCFIKaXNDb2luYmFzZQ==');

@$core.Deprecated('Use rpcTransactionVerboseDataDescriptor instead')
const RpcTransactionVerboseData$json = {
  '1': 'RpcTransactionVerboseData',
  '2': [
    {'1': 'transactionId', '3': 1, '4': 1, '5': 9, '10': 'transactionId'},
    {'1': 'hash', '3': 2, '4': 1, '5': 9, '10': 'hash'},
    {'1': 'mass', '3': 4, '4': 1, '5': 4, '10': 'mass'},
    {'1': 'blockHash', '3': 12, '4': 1, '5': 9, '10': 'blockHash'},
    {'1': 'blockTime', '3': 14, '4': 1, '5': 4, '10': 'blockTime'},
  ],
};

/// Descriptor for `RpcTransactionVerboseData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rpcTransactionVerboseDataDescriptor = $convert.base64Decode(
    'ChlScGNUcmFuc2FjdGlvblZlcmJvc2VEYXRhEiQKDXRyYW5zYWN0aW9uSWQYASABKAlSDXRyYW'
    '5zYWN0aW9uSWQSEgoEaGFzaBgCIAEoCVIEaGFzaBISCgRtYXNzGAQgASgEUgRtYXNzEhwKCWJs'
    'b2NrSGFzaBgMIAEoCVIJYmxvY2tIYXNoEhwKCWJsb2NrVGltZRgOIAEoBFIJYmxvY2tUaW1l');

@$core.Deprecated('Use rpcTransactionInputVerboseDataDescriptor instead')
const RpcTransactionInputVerboseData$json = {
  '1': 'RpcTransactionInputVerboseData',
};

/// Descriptor for `RpcTransactionInputVerboseData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rpcTransactionInputVerboseDataDescriptor = $convert.base64Decode(
    'Ch5ScGNUcmFuc2FjdGlvbklucHV0VmVyYm9zZURhdGE=');

@$core.Deprecated('Use rpcTransactionOutputVerboseDataDescriptor instead')
const RpcTransactionOutputVerboseData$json = {
  '1': 'RpcTransactionOutputVerboseData',
  '2': [
    {'1': 'scriptPublicKeyType', '3': 5, '4': 1, '5': 9, '10': 'scriptPublicKeyType'},
    {'1': 'scriptPublicKeyAddress', '3': 6, '4': 1, '5': 9, '10': 'scriptPublicKeyAddress'},
  ],
};

/// Descriptor for `RpcTransactionOutputVerboseData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rpcTransactionOutputVerboseDataDescriptor = $convert.base64Decode(
    'Ch9ScGNUcmFuc2FjdGlvbk91dHB1dFZlcmJvc2VEYXRhEjAKE3NjcmlwdFB1YmxpY0tleVR5cG'
    'UYBSABKAlSE3NjcmlwdFB1YmxpY0tleVR5cGUSNgoWc2NyaXB0UHVibGljS2V5QWRkcmVzcxgG'
    'IAEoCVIWc2NyaXB0UHVibGljS2V5QWRkcmVzcw==');

@$core.Deprecated('Use getCurrentNetworkRequestMessageDescriptor instead')
const GetCurrentNetworkRequestMessage$json = {
  '1': 'GetCurrentNetworkRequestMessage',
};

/// Descriptor for `GetCurrentNetworkRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCurrentNetworkRequestMessageDescriptor = $convert.base64Decode(
    'Ch9HZXRDdXJyZW50TmV0d29ya1JlcXVlc3RNZXNzYWdl');

@$core.Deprecated('Use getCurrentNetworkResponseMessageDescriptor instead')
const GetCurrentNetworkResponseMessage$json = {
  '1': 'GetCurrentNetworkResponseMessage',
  '2': [
    {'1': 'currentNetwork', '3': 1, '4': 1, '5': 9, '10': 'currentNetwork'},
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetCurrentNetworkResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCurrentNetworkResponseMessageDescriptor = $convert.base64Decode(
    'CiBHZXRDdXJyZW50TmV0d29ya1Jlc3BvbnNlTWVzc2FnZRImCg5jdXJyZW50TmV0d29yaxgBIA'
    'EoCVIOY3VycmVudE5ldHdvcmsSKgoFZXJyb3IY6AcgASgLMhMucHJvdG93aXJlLlJQQ0Vycm9y'
    'UgVlcnJvcg==');

@$core.Deprecated('Use submitBlockRequestMessageDescriptor instead')
const SubmitBlockRequestMessage$json = {
  '1': 'SubmitBlockRequestMessage',
  '2': [
    {'1': 'block', '3': 2, '4': 1, '5': 11, '6': '.protowire.RpcBlock', '10': 'block'},
    {'1': 'allowNonDAABlocks', '3': 3, '4': 1, '5': 8, '10': 'allowNonDAABlocks'},
  ],
};

/// Descriptor for `SubmitBlockRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List submitBlockRequestMessageDescriptor = $convert.base64Decode(
    'ChlTdWJtaXRCbG9ja1JlcXVlc3RNZXNzYWdlEikKBWJsb2NrGAIgASgLMhMucHJvdG93aXJlLl'
    'JwY0Jsb2NrUgVibG9jaxIsChFhbGxvd05vbkRBQUJsb2NrcxgDIAEoCFIRYWxsb3dOb25EQUFC'
    'bG9ja3M=');

@$core.Deprecated('Use submitBlockResponseMessageDescriptor instead')
const SubmitBlockResponseMessage$json = {
  '1': 'SubmitBlockResponseMessage',
  '2': [
    {'1': 'rejectReason', '3': 1, '4': 1, '5': 14, '6': '.protowire.SubmitBlockResponseMessage.RejectReason', '10': 'rejectReason'},
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
  '4': [SubmitBlockResponseMessage_RejectReason$json],
};

@$core.Deprecated('Use submitBlockResponseMessageDescriptor instead')
const SubmitBlockResponseMessage_RejectReason$json = {
  '1': 'RejectReason',
  '2': [
    {'1': 'NONE', '2': 0},
    {'1': 'BLOCK_INVALID', '2': 1},
    {'1': 'IS_IN_IBD', '2': 2},
  ],
};

/// Descriptor for `SubmitBlockResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List submitBlockResponseMessageDescriptor = $convert.base64Decode(
    'ChpTdWJtaXRCbG9ja1Jlc3BvbnNlTWVzc2FnZRJWCgxyZWplY3RSZWFzb24YASABKA4yMi5wcm'
    '90b3dpcmUuU3VibWl0QmxvY2tSZXNwb25zZU1lc3NhZ2UuUmVqZWN0UmVhc29uUgxyZWplY3RS'
    'ZWFzb24SKgoFZXJyb3IY6AcgASgLMhMucHJvdG93aXJlLlJQQ0Vycm9yUgVlcnJvciI6CgxSZW'
    'plY3RSZWFzb24SCAoETk9ORRAAEhEKDUJMT0NLX0lOVkFMSUQQARINCglJU19JTl9JQkQQAg==');

@$core.Deprecated('Use getBlockTemplateRequestMessageDescriptor instead')
const GetBlockTemplateRequestMessage$json = {
  '1': 'GetBlockTemplateRequestMessage',
  '2': [
    {'1': 'payAddress', '3': 1, '4': 1, '5': 9, '10': 'payAddress'},
    {'1': 'extraData', '3': 2, '4': 1, '5': 9, '10': 'extraData'},
  ],
};

/// Descriptor for `GetBlockTemplateRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBlockTemplateRequestMessageDescriptor = $convert.base64Decode(
    'Ch5HZXRCbG9ja1RlbXBsYXRlUmVxdWVzdE1lc3NhZ2USHgoKcGF5QWRkcmVzcxgBIAEoCVIKcG'
    'F5QWRkcmVzcxIcCglleHRyYURhdGEYAiABKAlSCWV4dHJhRGF0YQ==');

@$core.Deprecated('Use getBlockTemplateResponseMessageDescriptor instead')
const GetBlockTemplateResponseMessage$json = {
  '1': 'GetBlockTemplateResponseMessage',
  '2': [
    {'1': 'block', '3': 3, '4': 1, '5': 11, '6': '.protowire.RpcBlock', '10': 'block'},
    {'1': 'isSynced', '3': 2, '4': 1, '5': 8, '10': 'isSynced'},
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetBlockTemplateResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBlockTemplateResponseMessageDescriptor = $convert.base64Decode(
    'Ch9HZXRCbG9ja1RlbXBsYXRlUmVzcG9uc2VNZXNzYWdlEikKBWJsb2NrGAMgASgLMhMucHJvdG'
    '93aXJlLlJwY0Jsb2NrUgVibG9jaxIaCghpc1N5bmNlZBgCIAEoCFIIaXNTeW5jZWQSKgoFZXJy'
    'b3IY6AcgASgLMhMucHJvdG93aXJlLlJQQ0Vycm9yUgVlcnJvcg==');

@$core.Deprecated('Use notifyBlockAddedRequestMessageDescriptor instead')
const NotifyBlockAddedRequestMessage$json = {
  '1': 'NotifyBlockAddedRequestMessage',
  '2': [
    {'1': 'command', '3': 101, '4': 1, '5': 14, '6': '.protowire.RpcNotifyCommand', '10': 'command'},
  ],
};

/// Descriptor for `NotifyBlockAddedRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notifyBlockAddedRequestMessageDescriptor = $convert.base64Decode(
    'Ch5Ob3RpZnlCbG9ja0FkZGVkUmVxdWVzdE1lc3NhZ2USNQoHY29tbWFuZBhlIAEoDjIbLnByb3'
    'Rvd2lyZS5ScGNOb3RpZnlDb21tYW5kUgdjb21tYW5k');

@$core.Deprecated('Use notifyBlockAddedResponseMessageDescriptor instead')
const NotifyBlockAddedResponseMessage$json = {
  '1': 'NotifyBlockAddedResponseMessage',
  '2': [
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `NotifyBlockAddedResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notifyBlockAddedResponseMessageDescriptor = $convert.base64Decode(
    'Ch9Ob3RpZnlCbG9ja0FkZGVkUmVzcG9uc2VNZXNzYWdlEioKBWVycm9yGOgHIAEoCzITLnByb3'
    'Rvd2lyZS5SUENFcnJvclIFZXJyb3I=');

@$core.Deprecated('Use blockAddedNotificationMessageDescriptor instead')
const BlockAddedNotificationMessage$json = {
  '1': 'BlockAddedNotificationMessage',
  '2': [
    {'1': 'block', '3': 3, '4': 1, '5': 11, '6': '.protowire.RpcBlock', '10': 'block'},
  ],
};

/// Descriptor for `BlockAddedNotificationMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List blockAddedNotificationMessageDescriptor = $convert.base64Decode(
    'Ch1CbG9ja0FkZGVkTm90aWZpY2F0aW9uTWVzc2FnZRIpCgVibG9jaxgDIAEoCzITLnByb3Rvd2'
    'lyZS5ScGNCbG9ja1IFYmxvY2s=');

@$core.Deprecated('Use getPeerAddressesRequestMessageDescriptor instead')
const GetPeerAddressesRequestMessage$json = {
  '1': 'GetPeerAddressesRequestMessage',
};

/// Descriptor for `GetPeerAddressesRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPeerAddressesRequestMessageDescriptor = $convert.base64Decode(
    'Ch5HZXRQZWVyQWRkcmVzc2VzUmVxdWVzdE1lc3NhZ2U=');

@$core.Deprecated('Use getPeerAddressesResponseMessageDescriptor instead')
const GetPeerAddressesResponseMessage$json = {
  '1': 'GetPeerAddressesResponseMessage',
  '2': [
    {'1': 'addresses', '3': 1, '4': 3, '5': 11, '6': '.protowire.GetPeerAddressesKnownAddressMessage', '10': 'addresses'},
    {'1': 'bannedAddresses', '3': 2, '4': 3, '5': 11, '6': '.protowire.GetPeerAddressesKnownAddressMessage', '10': 'bannedAddresses'},
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetPeerAddressesResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPeerAddressesResponseMessageDescriptor = $convert.base64Decode(
    'Ch9HZXRQZWVyQWRkcmVzc2VzUmVzcG9uc2VNZXNzYWdlEkwKCWFkZHJlc3NlcxgBIAMoCzIuLn'
    'Byb3Rvd2lyZS5HZXRQZWVyQWRkcmVzc2VzS25vd25BZGRyZXNzTWVzc2FnZVIJYWRkcmVzc2Vz'
    'ElgKD2Jhbm5lZEFkZHJlc3NlcxgCIAMoCzIuLnByb3Rvd2lyZS5HZXRQZWVyQWRkcmVzc2VzS2'
    '5vd25BZGRyZXNzTWVzc2FnZVIPYmFubmVkQWRkcmVzc2VzEioKBWVycm9yGOgHIAEoCzITLnBy'
    'b3Rvd2lyZS5SUENFcnJvclIFZXJyb3I=');

@$core.Deprecated('Use getPeerAddressesKnownAddressMessageDescriptor instead')
const GetPeerAddressesKnownAddressMessage$json = {
  '1': 'GetPeerAddressesKnownAddressMessage',
  '2': [
    {'1': 'Addr', '3': 1, '4': 1, '5': 9, '10': 'Addr'},
  ],
};

/// Descriptor for `GetPeerAddressesKnownAddressMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPeerAddressesKnownAddressMessageDescriptor = $convert.base64Decode(
    'CiNHZXRQZWVyQWRkcmVzc2VzS25vd25BZGRyZXNzTWVzc2FnZRISCgRBZGRyGAEgASgJUgRBZG'
    'Ry');

@$core.Deprecated('Use getSinkRequestMessageDescriptor instead')
const GetSinkRequestMessage$json = {
  '1': 'GetSinkRequestMessage',
};

/// Descriptor for `GetSinkRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSinkRequestMessageDescriptor = $convert.base64Decode(
    'ChVHZXRTaW5rUmVxdWVzdE1lc3NhZ2U=');

@$core.Deprecated('Use getSinkResponseMessageDescriptor instead')
const GetSinkResponseMessage$json = {
  '1': 'GetSinkResponseMessage',
  '2': [
    {'1': 'sink', '3': 1, '4': 1, '5': 9, '10': 'sink'},
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetSinkResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSinkResponseMessageDescriptor = $convert.base64Decode(
    'ChZHZXRTaW5rUmVzcG9uc2VNZXNzYWdlEhIKBHNpbmsYASABKAlSBHNpbmsSKgoFZXJyb3IY6A'
    'cgASgLMhMucHJvdG93aXJlLlJQQ0Vycm9yUgVlcnJvcg==');

@$core.Deprecated('Use getMempoolEntryRequestMessageDescriptor instead')
const GetMempoolEntryRequestMessage$json = {
  '1': 'GetMempoolEntryRequestMessage',
  '2': [
    {'1': 'txId', '3': 1, '4': 1, '5': 9, '10': 'txId'},
    {'1': 'includeOrphanPool', '3': 2, '4': 1, '5': 8, '10': 'includeOrphanPool'},
    {'1': 'filterTransactionPool', '3': 3, '4': 1, '5': 8, '10': 'filterTransactionPool'},
  ],
};

/// Descriptor for `GetMempoolEntryRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMempoolEntryRequestMessageDescriptor = $convert.base64Decode(
    'Ch1HZXRNZW1wb29sRW50cnlSZXF1ZXN0TWVzc2FnZRISCgR0eElkGAEgASgJUgR0eElkEiwKEW'
    'luY2x1ZGVPcnBoYW5Qb29sGAIgASgIUhFpbmNsdWRlT3JwaGFuUG9vbBI0ChVmaWx0ZXJUcmFu'
    'c2FjdGlvblBvb2wYAyABKAhSFWZpbHRlclRyYW5zYWN0aW9uUG9vbA==');

@$core.Deprecated('Use getMempoolEntryResponseMessageDescriptor instead')
const GetMempoolEntryResponseMessage$json = {
  '1': 'GetMempoolEntryResponseMessage',
  '2': [
    {'1': 'entry', '3': 1, '4': 1, '5': 11, '6': '.protowire.RpcMempoolEntry', '10': 'entry'},
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetMempoolEntryResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMempoolEntryResponseMessageDescriptor = $convert.base64Decode(
    'Ch5HZXRNZW1wb29sRW50cnlSZXNwb25zZU1lc3NhZ2USMAoFZW50cnkYASABKAsyGi5wcm90b3'
    'dpcmUuUnBjTWVtcG9vbEVudHJ5UgVlbnRyeRIqCgVlcnJvchjoByABKAsyEy5wcm90b3dpcmUu'
    'UlBDRXJyb3JSBWVycm9y');

@$core.Deprecated('Use getMempoolEntriesRequestMessageDescriptor instead')
const GetMempoolEntriesRequestMessage$json = {
  '1': 'GetMempoolEntriesRequestMessage',
  '2': [
    {'1': 'includeOrphanPool', '3': 1, '4': 1, '5': 8, '10': 'includeOrphanPool'},
    {'1': 'filterTransactionPool', '3': 2, '4': 1, '5': 8, '10': 'filterTransactionPool'},
  ],
};

/// Descriptor for `GetMempoolEntriesRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMempoolEntriesRequestMessageDescriptor = $convert.base64Decode(
    'Ch9HZXRNZW1wb29sRW50cmllc1JlcXVlc3RNZXNzYWdlEiwKEWluY2x1ZGVPcnBoYW5Qb29sGA'
    'EgASgIUhFpbmNsdWRlT3JwaGFuUG9vbBI0ChVmaWx0ZXJUcmFuc2FjdGlvblBvb2wYAiABKAhS'
    'FWZpbHRlclRyYW5zYWN0aW9uUG9vbA==');

@$core.Deprecated('Use getMempoolEntriesResponseMessageDescriptor instead')
const GetMempoolEntriesResponseMessage$json = {
  '1': 'GetMempoolEntriesResponseMessage',
  '2': [
    {'1': 'entries', '3': 1, '4': 3, '5': 11, '6': '.protowire.RpcMempoolEntry', '10': 'entries'},
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetMempoolEntriesResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMempoolEntriesResponseMessageDescriptor = $convert.base64Decode(
    'CiBHZXRNZW1wb29sRW50cmllc1Jlc3BvbnNlTWVzc2FnZRI0CgdlbnRyaWVzGAEgAygLMhoucH'
    'JvdG93aXJlLlJwY01lbXBvb2xFbnRyeVIHZW50cmllcxIqCgVlcnJvchjoByABKAsyEy5wcm90'
    'b3dpcmUuUlBDRXJyb3JSBWVycm9y');

@$core.Deprecated('Use rpcMempoolEntryDescriptor instead')
const RpcMempoolEntry$json = {
  '1': 'RpcMempoolEntry',
  '2': [
    {'1': 'fee', '3': 1, '4': 1, '5': 4, '10': 'fee'},
    {'1': 'transaction', '3': 3, '4': 1, '5': 11, '6': '.protowire.RpcTransaction', '10': 'transaction'},
    {'1': 'isOrphan', '3': 4, '4': 1, '5': 8, '10': 'isOrphan'},
  ],
};

/// Descriptor for `RpcMempoolEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rpcMempoolEntryDescriptor = $convert.base64Decode(
    'Cg9ScGNNZW1wb29sRW50cnkSEAoDZmVlGAEgASgEUgNmZWUSOwoLdHJhbnNhY3Rpb24YAyABKA'
    'syGS5wcm90b3dpcmUuUnBjVHJhbnNhY3Rpb25SC3RyYW5zYWN0aW9uEhoKCGlzT3JwaGFuGAQg'
    'ASgIUghpc09ycGhhbg==');

@$core.Deprecated('Use getConnectedPeerInfoRequestMessageDescriptor instead')
const GetConnectedPeerInfoRequestMessage$json = {
  '1': 'GetConnectedPeerInfoRequestMessage',
};

/// Descriptor for `GetConnectedPeerInfoRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getConnectedPeerInfoRequestMessageDescriptor = $convert.base64Decode(
    'CiJHZXRDb25uZWN0ZWRQZWVySW5mb1JlcXVlc3RNZXNzYWdl');

@$core.Deprecated('Use getConnectedPeerInfoResponseMessageDescriptor instead')
const GetConnectedPeerInfoResponseMessage$json = {
  '1': 'GetConnectedPeerInfoResponseMessage',
  '2': [
    {'1': 'infos', '3': 1, '4': 3, '5': 11, '6': '.protowire.GetConnectedPeerInfoMessage', '10': 'infos'},
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetConnectedPeerInfoResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getConnectedPeerInfoResponseMessageDescriptor = $convert.base64Decode(
    'CiNHZXRDb25uZWN0ZWRQZWVySW5mb1Jlc3BvbnNlTWVzc2FnZRI8CgVpbmZvcxgBIAMoCzImLn'
    'Byb3Rvd2lyZS5HZXRDb25uZWN0ZWRQZWVySW5mb01lc3NhZ2VSBWluZm9zEioKBWVycm9yGOgH'
    'IAEoCzITLnByb3Rvd2lyZS5SUENFcnJvclIFZXJyb3I=');

@$core.Deprecated('Use getConnectedPeerInfoMessageDescriptor instead')
const GetConnectedPeerInfoMessage$json = {
  '1': 'GetConnectedPeerInfoMessage',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'address', '3': 2, '4': 1, '5': 9, '10': 'address'},
    {'1': 'lastPingDuration', '3': 3, '4': 1, '5': 3, '10': 'lastPingDuration'},
    {'1': 'isOutbound', '3': 6, '4': 1, '5': 8, '10': 'isOutbound'},
    {'1': 'timeOffset', '3': 7, '4': 1, '5': 3, '10': 'timeOffset'},
    {'1': 'userAgent', '3': 8, '4': 1, '5': 9, '10': 'userAgent'},
    {'1': 'advertisedProtocolVersion', '3': 9, '4': 1, '5': 13, '10': 'advertisedProtocolVersion'},
    {'1': 'timeConnected', '3': 10, '4': 1, '5': 3, '10': 'timeConnected'},
    {'1': 'isIbdPeer', '3': 11, '4': 1, '5': 8, '10': 'isIbdPeer'},
  ],
};

/// Descriptor for `GetConnectedPeerInfoMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getConnectedPeerInfoMessageDescriptor = $convert.base64Decode(
    'ChtHZXRDb25uZWN0ZWRQZWVySW5mb01lc3NhZ2USDgoCaWQYASABKAlSAmlkEhgKB2FkZHJlc3'
    'MYAiABKAlSB2FkZHJlc3MSKgoQbGFzdFBpbmdEdXJhdGlvbhgDIAEoA1IQbGFzdFBpbmdEdXJh'
    'dGlvbhIeCgppc091dGJvdW5kGAYgASgIUgppc091dGJvdW5kEh4KCnRpbWVPZmZzZXQYByABKA'
    'NSCnRpbWVPZmZzZXQSHAoJdXNlckFnZW50GAggASgJUgl1c2VyQWdlbnQSPAoZYWR2ZXJ0aXNl'
    'ZFByb3RvY29sVmVyc2lvbhgJIAEoDVIZYWR2ZXJ0aXNlZFByb3RvY29sVmVyc2lvbhIkCg10aW'
    '1lQ29ubmVjdGVkGAogASgDUg10aW1lQ29ubmVjdGVkEhwKCWlzSWJkUGVlchgLIAEoCFIJaXNJ'
    'YmRQZWVy');

@$core.Deprecated('Use addPeerRequestMessageDescriptor instead')
const AddPeerRequestMessage$json = {
  '1': 'AddPeerRequestMessage',
  '2': [
    {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    {'1': 'isPermanent', '3': 2, '4': 1, '5': 8, '10': 'isPermanent'},
  ],
};

/// Descriptor for `AddPeerRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addPeerRequestMessageDescriptor = $convert.base64Decode(
    'ChVBZGRQZWVyUmVxdWVzdE1lc3NhZ2USGAoHYWRkcmVzcxgBIAEoCVIHYWRkcmVzcxIgCgtpc1'
    'Blcm1hbmVudBgCIAEoCFILaXNQZXJtYW5lbnQ=');

@$core.Deprecated('Use addPeerResponseMessageDescriptor instead')
const AddPeerResponseMessage$json = {
  '1': 'AddPeerResponseMessage',
  '2': [
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `AddPeerResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addPeerResponseMessageDescriptor = $convert.base64Decode(
    'ChZBZGRQZWVyUmVzcG9uc2VNZXNzYWdlEioKBWVycm9yGOgHIAEoCzITLnByb3Rvd2lyZS5SUE'
    'NFcnJvclIFZXJyb3I=');

@$core.Deprecated('Use submitTransactionRequestMessageDescriptor instead')
const SubmitTransactionRequestMessage$json = {
  '1': 'SubmitTransactionRequestMessage',
  '2': [
    {'1': 'transaction', '3': 1, '4': 1, '5': 11, '6': '.protowire.RpcTransaction', '10': 'transaction'},
    {'1': 'allowOrphan', '3': 2, '4': 1, '5': 8, '10': 'allowOrphan'},
  ],
};

/// Descriptor for `SubmitTransactionRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List submitTransactionRequestMessageDescriptor = $convert.base64Decode(
    'Ch9TdWJtaXRUcmFuc2FjdGlvblJlcXVlc3RNZXNzYWdlEjsKC3RyYW5zYWN0aW9uGAEgASgLMh'
    'kucHJvdG93aXJlLlJwY1RyYW5zYWN0aW9uUgt0cmFuc2FjdGlvbhIgCgthbGxvd09ycGhhbhgC'
    'IAEoCFILYWxsb3dPcnBoYW4=');

@$core.Deprecated('Use submitTransactionResponseMessageDescriptor instead')
const SubmitTransactionResponseMessage$json = {
  '1': 'SubmitTransactionResponseMessage',
  '2': [
    {'1': 'transactionId', '3': 1, '4': 1, '5': 9, '10': 'transactionId'},
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `SubmitTransactionResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List submitTransactionResponseMessageDescriptor = $convert.base64Decode(
    'CiBTdWJtaXRUcmFuc2FjdGlvblJlc3BvbnNlTWVzc2FnZRIkCg10cmFuc2FjdGlvbklkGAEgAS'
    'gJUg10cmFuc2FjdGlvbklkEioKBWVycm9yGOgHIAEoCzITLnByb3Rvd2lyZS5SUENFcnJvclIF'
    'ZXJyb3I=');

@$core.Deprecated('Use submitTransactionReplacementRequestMessageDescriptor instead')
const SubmitTransactionReplacementRequestMessage$json = {
  '1': 'SubmitTransactionReplacementRequestMessage',
  '2': [
    {'1': 'transaction', '3': 1, '4': 1, '5': 11, '6': '.protowire.RpcTransaction', '10': 'transaction'},
  ],
};

/// Descriptor for `SubmitTransactionReplacementRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List submitTransactionReplacementRequestMessageDescriptor = $convert.base64Decode(
    'CipTdWJtaXRUcmFuc2FjdGlvblJlcGxhY2VtZW50UmVxdWVzdE1lc3NhZ2USOwoLdHJhbnNhY3'
    'Rpb24YASABKAsyGS5wcm90b3dpcmUuUnBjVHJhbnNhY3Rpb25SC3RyYW5zYWN0aW9u');

@$core.Deprecated('Use submitTransactionReplacementResponseMessageDescriptor instead')
const SubmitTransactionReplacementResponseMessage$json = {
  '1': 'SubmitTransactionReplacementResponseMessage',
  '2': [
    {'1': 'transactionId', '3': 1, '4': 1, '5': 9, '10': 'transactionId'},
    {'1': 'replacedTransaction', '3': 2, '4': 1, '5': 11, '6': '.protowire.RpcTransaction', '10': 'replacedTransaction'},
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `SubmitTransactionReplacementResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List submitTransactionReplacementResponseMessageDescriptor = $convert.base64Decode(
    'CitTdWJtaXRUcmFuc2FjdGlvblJlcGxhY2VtZW50UmVzcG9uc2VNZXNzYWdlEiQKDXRyYW5zYW'
    'N0aW9uSWQYASABKAlSDXRyYW5zYWN0aW9uSWQSSwoTcmVwbGFjZWRUcmFuc2FjdGlvbhgCIAEo'
    'CzIZLnByb3Rvd2lyZS5ScGNUcmFuc2FjdGlvblITcmVwbGFjZWRUcmFuc2FjdGlvbhIqCgVlcn'
    'JvchjoByABKAsyEy5wcm90b3dpcmUuUlBDRXJyb3JSBWVycm9y');

@$core.Deprecated('Use notifyVirtualChainChangedRequestMessageDescriptor instead')
const NotifyVirtualChainChangedRequestMessage$json = {
  '1': 'NotifyVirtualChainChangedRequestMessage',
  '2': [
    {'1': 'includeAcceptedTransactionIds', '3': 1, '4': 1, '5': 8, '10': 'includeAcceptedTransactionIds'},
    {'1': 'command', '3': 101, '4': 1, '5': 14, '6': '.protowire.RpcNotifyCommand', '10': 'command'},
  ],
};

/// Descriptor for `NotifyVirtualChainChangedRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notifyVirtualChainChangedRequestMessageDescriptor = $convert.base64Decode(
    'CidOb3RpZnlWaXJ0dWFsQ2hhaW5DaGFuZ2VkUmVxdWVzdE1lc3NhZ2USRAodaW5jbHVkZUFjY2'
    'VwdGVkVHJhbnNhY3Rpb25JZHMYASABKAhSHWluY2x1ZGVBY2NlcHRlZFRyYW5zYWN0aW9uSWRz'
    'EjUKB2NvbW1hbmQYZSABKA4yGy5wcm90b3dpcmUuUnBjTm90aWZ5Q29tbWFuZFIHY29tbWFuZA'
    '==');

@$core.Deprecated('Use notifyVirtualChainChangedResponseMessageDescriptor instead')
const NotifyVirtualChainChangedResponseMessage$json = {
  '1': 'NotifyVirtualChainChangedResponseMessage',
  '2': [
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `NotifyVirtualChainChangedResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notifyVirtualChainChangedResponseMessageDescriptor = $convert.base64Decode(
    'CihOb3RpZnlWaXJ0dWFsQ2hhaW5DaGFuZ2VkUmVzcG9uc2VNZXNzYWdlEioKBWVycm9yGOgHIA'
    'EoCzITLnByb3Rvd2lyZS5SUENFcnJvclIFZXJyb3I=');

@$core.Deprecated('Use virtualChainChangedNotificationMessageDescriptor instead')
const VirtualChainChangedNotificationMessage$json = {
  '1': 'VirtualChainChangedNotificationMessage',
  '2': [
    {'1': 'removedChainBlockHashes', '3': 1, '4': 3, '5': 9, '10': 'removedChainBlockHashes'},
    {'1': 'addedChainBlockHashes', '3': 3, '4': 3, '5': 9, '10': 'addedChainBlockHashes'},
    {'1': 'acceptedTransactionIds', '3': 2, '4': 3, '5': 11, '6': '.protowire.RpcAcceptedTransactionIds', '10': 'acceptedTransactionIds'},
  ],
};

/// Descriptor for `VirtualChainChangedNotificationMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List virtualChainChangedNotificationMessageDescriptor = $convert.base64Decode(
    'CiZWaXJ0dWFsQ2hhaW5DaGFuZ2VkTm90aWZpY2F0aW9uTWVzc2FnZRI4ChdyZW1vdmVkQ2hhaW'
    '5CbG9ja0hhc2hlcxgBIAMoCVIXcmVtb3ZlZENoYWluQmxvY2tIYXNoZXMSNAoVYWRkZWRDaGFp'
    'bkJsb2NrSGFzaGVzGAMgAygJUhVhZGRlZENoYWluQmxvY2tIYXNoZXMSXAoWYWNjZXB0ZWRUcm'
    'Fuc2FjdGlvbklkcxgCIAMoCzIkLnByb3Rvd2lyZS5ScGNBY2NlcHRlZFRyYW5zYWN0aW9uSWRz'
    'UhZhY2NlcHRlZFRyYW5zYWN0aW9uSWRz');

@$core.Deprecated('Use getBlockRequestMessageDescriptor instead')
const GetBlockRequestMessage$json = {
  '1': 'GetBlockRequestMessage',
  '2': [
    {'1': 'hash', '3': 1, '4': 1, '5': 9, '10': 'hash'},
    {'1': 'includeTransactions', '3': 3, '4': 1, '5': 8, '10': 'includeTransactions'},
  ],
};

/// Descriptor for `GetBlockRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBlockRequestMessageDescriptor = $convert.base64Decode(
    'ChZHZXRCbG9ja1JlcXVlc3RNZXNzYWdlEhIKBGhhc2gYASABKAlSBGhhc2gSMAoTaW5jbHVkZV'
    'RyYW5zYWN0aW9ucxgDIAEoCFITaW5jbHVkZVRyYW5zYWN0aW9ucw==');

@$core.Deprecated('Use getBlockResponseMessageDescriptor instead')
const GetBlockResponseMessage$json = {
  '1': 'GetBlockResponseMessage',
  '2': [
    {'1': 'block', '3': 3, '4': 1, '5': 11, '6': '.protowire.RpcBlock', '10': 'block'},
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetBlockResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBlockResponseMessageDescriptor = $convert.base64Decode(
    'ChdHZXRCbG9ja1Jlc3BvbnNlTWVzc2FnZRIpCgVibG9jaxgDIAEoCzITLnByb3Rvd2lyZS5ScG'
    'NCbG9ja1IFYmxvY2sSKgoFZXJyb3IY6AcgASgLMhMucHJvdG93aXJlLlJQQ0Vycm9yUgVlcnJv'
    'cg==');

@$core.Deprecated('Use getSubnetworkRequestMessageDescriptor instead')
const GetSubnetworkRequestMessage$json = {
  '1': 'GetSubnetworkRequestMessage',
  '2': [
    {'1': 'subnetworkId', '3': 1, '4': 1, '5': 9, '10': 'subnetworkId'},
  ],
};

/// Descriptor for `GetSubnetworkRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSubnetworkRequestMessageDescriptor = $convert.base64Decode(
    'ChtHZXRTdWJuZXR3b3JrUmVxdWVzdE1lc3NhZ2USIgoMc3VibmV0d29ya0lkGAEgASgJUgxzdW'
    'JuZXR3b3JrSWQ=');

@$core.Deprecated('Use getSubnetworkResponseMessageDescriptor instead')
const GetSubnetworkResponseMessage$json = {
  '1': 'GetSubnetworkResponseMessage',
  '2': [
    {'1': 'gasLimit', '3': 1, '4': 1, '5': 4, '10': 'gasLimit'},
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetSubnetworkResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSubnetworkResponseMessageDescriptor = $convert.base64Decode(
    'ChxHZXRTdWJuZXR3b3JrUmVzcG9uc2VNZXNzYWdlEhoKCGdhc0xpbWl0GAEgASgEUghnYXNMaW'
    '1pdBIqCgVlcnJvchjoByABKAsyEy5wcm90b3dpcmUuUlBDRXJyb3JSBWVycm9y');

@$core.Deprecated('Use getVirtualChainFromBlockRequestMessageDescriptor instead')
const GetVirtualChainFromBlockRequestMessage$json = {
  '1': 'GetVirtualChainFromBlockRequestMessage',
  '2': [
    {'1': 'startHash', '3': 1, '4': 1, '5': 9, '10': 'startHash'},
    {'1': 'includeAcceptedTransactionIds', '3': 2, '4': 1, '5': 8, '10': 'includeAcceptedTransactionIds'},
  ],
};

/// Descriptor for `GetVirtualChainFromBlockRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getVirtualChainFromBlockRequestMessageDescriptor = $convert.base64Decode(
    'CiZHZXRWaXJ0dWFsQ2hhaW5Gcm9tQmxvY2tSZXF1ZXN0TWVzc2FnZRIcCglzdGFydEhhc2gYAS'
    'ABKAlSCXN0YXJ0SGFzaBJECh1pbmNsdWRlQWNjZXB0ZWRUcmFuc2FjdGlvbklkcxgCIAEoCFId'
    'aW5jbHVkZUFjY2VwdGVkVHJhbnNhY3Rpb25JZHM=');

@$core.Deprecated('Use rpcAcceptedTransactionIdsDescriptor instead')
const RpcAcceptedTransactionIds$json = {
  '1': 'RpcAcceptedTransactionIds',
  '2': [
    {'1': 'acceptingBlockHash', '3': 1, '4': 1, '5': 9, '10': 'acceptingBlockHash'},
    {'1': 'acceptedTransactionIds', '3': 2, '4': 3, '5': 9, '10': 'acceptedTransactionIds'},
  ],
};

/// Descriptor for `RpcAcceptedTransactionIds`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rpcAcceptedTransactionIdsDescriptor = $convert.base64Decode(
    'ChlScGNBY2NlcHRlZFRyYW5zYWN0aW9uSWRzEi4KEmFjY2VwdGluZ0Jsb2NrSGFzaBgBIAEoCV'
    'ISYWNjZXB0aW5nQmxvY2tIYXNoEjYKFmFjY2VwdGVkVHJhbnNhY3Rpb25JZHMYAiADKAlSFmFj'
    'Y2VwdGVkVHJhbnNhY3Rpb25JZHM=');

@$core.Deprecated('Use getVirtualChainFromBlockResponseMessageDescriptor instead')
const GetVirtualChainFromBlockResponseMessage$json = {
  '1': 'GetVirtualChainFromBlockResponseMessage',
  '2': [
    {'1': 'removedChainBlockHashes', '3': 1, '4': 3, '5': 9, '10': 'removedChainBlockHashes'},
    {'1': 'addedChainBlockHashes', '3': 3, '4': 3, '5': 9, '10': 'addedChainBlockHashes'},
    {'1': 'acceptedTransactionIds', '3': 2, '4': 3, '5': 11, '6': '.protowire.RpcAcceptedTransactionIds', '10': 'acceptedTransactionIds'},
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetVirtualChainFromBlockResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getVirtualChainFromBlockResponseMessageDescriptor = $convert.base64Decode(
    'CidHZXRWaXJ0dWFsQ2hhaW5Gcm9tQmxvY2tSZXNwb25zZU1lc3NhZ2USOAoXcmVtb3ZlZENoYW'
    'luQmxvY2tIYXNoZXMYASADKAlSF3JlbW92ZWRDaGFpbkJsb2NrSGFzaGVzEjQKFWFkZGVkQ2hh'
    'aW5CbG9ja0hhc2hlcxgDIAMoCVIVYWRkZWRDaGFpbkJsb2NrSGFzaGVzElwKFmFjY2VwdGVkVH'
    'JhbnNhY3Rpb25JZHMYAiADKAsyJC5wcm90b3dpcmUuUnBjQWNjZXB0ZWRUcmFuc2FjdGlvbklk'
    'c1IWYWNjZXB0ZWRUcmFuc2FjdGlvbklkcxIqCgVlcnJvchjoByABKAsyEy5wcm90b3dpcmUuUl'
    'BDRXJyb3JSBWVycm9y');

@$core.Deprecated('Use getBlocksRequestMessageDescriptor instead')
const GetBlocksRequestMessage$json = {
  '1': 'GetBlocksRequestMessage',
  '2': [
    {'1': 'lowHash', '3': 1, '4': 1, '5': 9, '10': 'lowHash'},
    {'1': 'includeBlocks', '3': 2, '4': 1, '5': 8, '10': 'includeBlocks'},
    {'1': 'includeTransactions', '3': 3, '4': 1, '5': 8, '10': 'includeTransactions'},
  ],
};

/// Descriptor for `GetBlocksRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBlocksRequestMessageDescriptor = $convert.base64Decode(
    'ChdHZXRCbG9ja3NSZXF1ZXN0TWVzc2FnZRIYCgdsb3dIYXNoGAEgASgJUgdsb3dIYXNoEiQKDW'
    'luY2x1ZGVCbG9ja3MYAiABKAhSDWluY2x1ZGVCbG9ja3MSMAoTaW5jbHVkZVRyYW5zYWN0aW9u'
    'cxgDIAEoCFITaW5jbHVkZVRyYW5zYWN0aW9ucw==');

@$core.Deprecated('Use getBlocksResponseMessageDescriptor instead')
const GetBlocksResponseMessage$json = {
  '1': 'GetBlocksResponseMessage',
  '2': [
    {'1': 'blockHashes', '3': 4, '4': 3, '5': 9, '10': 'blockHashes'},
    {'1': 'blocks', '3': 3, '4': 3, '5': 11, '6': '.protowire.RpcBlock', '10': 'blocks'},
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetBlocksResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBlocksResponseMessageDescriptor = $convert.base64Decode(
    'ChhHZXRCbG9ja3NSZXNwb25zZU1lc3NhZ2USIAoLYmxvY2tIYXNoZXMYBCADKAlSC2Jsb2NrSG'
    'FzaGVzEisKBmJsb2NrcxgDIAMoCzITLnByb3Rvd2lyZS5ScGNCbG9ja1IGYmxvY2tzEioKBWVy'
    'cm9yGOgHIAEoCzITLnByb3Rvd2lyZS5SUENFcnJvclIFZXJyb3I=');

@$core.Deprecated('Use getBlockCountRequestMessageDescriptor instead')
const GetBlockCountRequestMessage$json = {
  '1': 'GetBlockCountRequestMessage',
};

/// Descriptor for `GetBlockCountRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBlockCountRequestMessageDescriptor = $convert.base64Decode(
    'ChtHZXRCbG9ja0NvdW50UmVxdWVzdE1lc3NhZ2U=');

@$core.Deprecated('Use getBlockCountResponseMessageDescriptor instead')
const GetBlockCountResponseMessage$json = {
  '1': 'GetBlockCountResponseMessage',
  '2': [
    {'1': 'blockCount', '3': 1, '4': 1, '5': 4, '10': 'blockCount'},
    {'1': 'headerCount', '3': 2, '4': 1, '5': 4, '10': 'headerCount'},
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetBlockCountResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBlockCountResponseMessageDescriptor = $convert.base64Decode(
    'ChxHZXRCbG9ja0NvdW50UmVzcG9uc2VNZXNzYWdlEh4KCmJsb2NrQ291bnQYASABKARSCmJsb2'
    'NrQ291bnQSIAoLaGVhZGVyQ291bnQYAiABKARSC2hlYWRlckNvdW50EioKBWVycm9yGOgHIAEo'
    'CzITLnByb3Rvd2lyZS5SUENFcnJvclIFZXJyb3I=');

@$core.Deprecated('Use getBlockDagInfoRequestMessageDescriptor instead')
const GetBlockDagInfoRequestMessage$json = {
  '1': 'GetBlockDagInfoRequestMessage',
};

/// Descriptor for `GetBlockDagInfoRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBlockDagInfoRequestMessageDescriptor = $convert.base64Decode(
    'Ch1HZXRCbG9ja0RhZ0luZm9SZXF1ZXN0TWVzc2FnZQ==');

@$core.Deprecated('Use getBlockDagInfoResponseMessageDescriptor instead')
const GetBlockDagInfoResponseMessage$json = {
  '1': 'GetBlockDagInfoResponseMessage',
  '2': [
    {'1': 'networkName', '3': 1, '4': 1, '5': 9, '10': 'networkName'},
    {'1': 'blockCount', '3': 2, '4': 1, '5': 4, '10': 'blockCount'},
    {'1': 'headerCount', '3': 3, '4': 1, '5': 4, '10': 'headerCount'},
    {'1': 'tipHashes', '3': 4, '4': 3, '5': 9, '10': 'tipHashes'},
    {'1': 'difficulty', '3': 5, '4': 1, '5': 1, '10': 'difficulty'},
    {'1': 'pastMedianTime', '3': 6, '4': 1, '5': 3, '10': 'pastMedianTime'},
    {'1': 'virtualParentHashes', '3': 7, '4': 3, '5': 9, '10': 'virtualParentHashes'},
    {'1': 'pruningPointHash', '3': 8, '4': 1, '5': 9, '10': 'pruningPointHash'},
    {'1': 'virtualDaaScore', '3': 9, '4': 1, '5': 4, '10': 'virtualDaaScore'},
    {'1': 'sink', '3': 10, '4': 1, '5': 9, '10': 'sink'},
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetBlockDagInfoResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBlockDagInfoResponseMessageDescriptor = $convert.base64Decode(
    'Ch5HZXRCbG9ja0RhZ0luZm9SZXNwb25zZU1lc3NhZ2USIAoLbmV0d29ya05hbWUYASABKAlSC2'
    '5ldHdvcmtOYW1lEh4KCmJsb2NrQ291bnQYAiABKARSCmJsb2NrQ291bnQSIAoLaGVhZGVyQ291'
    'bnQYAyABKARSC2hlYWRlckNvdW50EhwKCXRpcEhhc2hlcxgEIAMoCVIJdGlwSGFzaGVzEh4KCm'
    'RpZmZpY3VsdHkYBSABKAFSCmRpZmZpY3VsdHkSJgoOcGFzdE1lZGlhblRpbWUYBiABKANSDnBh'
    'c3RNZWRpYW5UaW1lEjAKE3ZpcnR1YWxQYXJlbnRIYXNoZXMYByADKAlSE3ZpcnR1YWxQYXJlbn'
    'RIYXNoZXMSKgoQcHJ1bmluZ1BvaW50SGFzaBgIIAEoCVIQcHJ1bmluZ1BvaW50SGFzaBIoCg92'
    'aXJ0dWFsRGFhU2NvcmUYCSABKARSD3ZpcnR1YWxEYWFTY29yZRISCgRzaW5rGAogASgJUgRzaW'
    '5rEioKBWVycm9yGOgHIAEoCzITLnByb3Rvd2lyZS5SUENFcnJvclIFZXJyb3I=');

@$core.Deprecated('Use resolveFinalityConflictRequestMessageDescriptor instead')
const ResolveFinalityConflictRequestMessage$json = {
  '1': 'ResolveFinalityConflictRequestMessage',
  '2': [
    {'1': 'finalityBlockHash', '3': 1, '4': 1, '5': 9, '10': 'finalityBlockHash'},
  ],
};

/// Descriptor for `ResolveFinalityConflictRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resolveFinalityConflictRequestMessageDescriptor = $convert.base64Decode(
    'CiVSZXNvbHZlRmluYWxpdHlDb25mbGljdFJlcXVlc3RNZXNzYWdlEiwKEWZpbmFsaXR5QmxvY2'
    'tIYXNoGAEgASgJUhFmaW5hbGl0eUJsb2NrSGFzaA==');

@$core.Deprecated('Use resolveFinalityConflictResponseMessageDescriptor instead')
const ResolveFinalityConflictResponseMessage$json = {
  '1': 'ResolveFinalityConflictResponseMessage',
  '2': [
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `ResolveFinalityConflictResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resolveFinalityConflictResponseMessageDescriptor = $convert.base64Decode(
    'CiZSZXNvbHZlRmluYWxpdHlDb25mbGljdFJlc3BvbnNlTWVzc2FnZRIqCgVlcnJvchjoByABKA'
    'syEy5wcm90b3dpcmUuUlBDRXJyb3JSBWVycm9y');

@$core.Deprecated('Use notifyFinalityConflictRequestMessageDescriptor instead')
const NotifyFinalityConflictRequestMessage$json = {
  '1': 'NotifyFinalityConflictRequestMessage',
  '2': [
    {'1': 'command', '3': 101, '4': 1, '5': 14, '6': '.protowire.RpcNotifyCommand', '10': 'command'},
  ],
};

/// Descriptor for `NotifyFinalityConflictRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notifyFinalityConflictRequestMessageDescriptor = $convert.base64Decode(
    'CiROb3RpZnlGaW5hbGl0eUNvbmZsaWN0UmVxdWVzdE1lc3NhZ2USNQoHY29tbWFuZBhlIAEoDj'
    'IbLnByb3Rvd2lyZS5ScGNOb3RpZnlDb21tYW5kUgdjb21tYW5k');

@$core.Deprecated('Use notifyFinalityConflictResponseMessageDescriptor instead')
const NotifyFinalityConflictResponseMessage$json = {
  '1': 'NotifyFinalityConflictResponseMessage',
  '2': [
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `NotifyFinalityConflictResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notifyFinalityConflictResponseMessageDescriptor = $convert.base64Decode(
    'CiVOb3RpZnlGaW5hbGl0eUNvbmZsaWN0UmVzcG9uc2VNZXNzYWdlEioKBWVycm9yGOgHIAEoCz'
    'ITLnByb3Rvd2lyZS5SUENFcnJvclIFZXJyb3I=');

@$core.Deprecated('Use finalityConflictNotificationMessageDescriptor instead')
const FinalityConflictNotificationMessage$json = {
  '1': 'FinalityConflictNotificationMessage',
  '2': [
    {'1': 'violatingBlockHash', '3': 1, '4': 1, '5': 9, '10': 'violatingBlockHash'},
  ],
};

/// Descriptor for `FinalityConflictNotificationMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List finalityConflictNotificationMessageDescriptor = $convert.base64Decode(
    'CiNGaW5hbGl0eUNvbmZsaWN0Tm90aWZpY2F0aW9uTWVzc2FnZRIuChJ2aW9sYXRpbmdCbG9ja0'
    'hhc2gYASABKAlSEnZpb2xhdGluZ0Jsb2NrSGFzaA==');

@$core.Deprecated('Use finalityConflictResolvedNotificationMessageDescriptor instead')
const FinalityConflictResolvedNotificationMessage$json = {
  '1': 'FinalityConflictResolvedNotificationMessage',
  '2': [
    {'1': 'finalityBlockHash', '3': 1, '4': 1, '5': 9, '10': 'finalityBlockHash'},
  ],
};

/// Descriptor for `FinalityConflictResolvedNotificationMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List finalityConflictResolvedNotificationMessageDescriptor = $convert.base64Decode(
    'CitGaW5hbGl0eUNvbmZsaWN0UmVzb2x2ZWROb3RpZmljYXRpb25NZXNzYWdlEiwKEWZpbmFsaX'
    'R5QmxvY2tIYXNoGAEgASgJUhFmaW5hbGl0eUJsb2NrSGFzaA==');

@$core.Deprecated('Use shutdownRequestMessageDescriptor instead')
const ShutdownRequestMessage$json = {
  '1': 'ShutdownRequestMessage',
};

/// Descriptor for `ShutdownRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shutdownRequestMessageDescriptor = $convert.base64Decode(
    'ChZTaHV0ZG93blJlcXVlc3RNZXNzYWdl');

@$core.Deprecated('Use shutdownResponseMessageDescriptor instead')
const ShutdownResponseMessage$json = {
  '1': 'ShutdownResponseMessage',
  '2': [
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `ShutdownResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shutdownResponseMessageDescriptor = $convert.base64Decode(
    'ChdTaHV0ZG93blJlc3BvbnNlTWVzc2FnZRIqCgVlcnJvchjoByABKAsyEy5wcm90b3dpcmUuUl'
    'BDRXJyb3JSBWVycm9y');

@$core.Deprecated('Use getHeadersRequestMessageDescriptor instead')
const GetHeadersRequestMessage$json = {
  '1': 'GetHeadersRequestMessage',
  '2': [
    {'1': 'startHash', '3': 1, '4': 1, '5': 9, '10': 'startHash'},
    {'1': 'limit', '3': 2, '4': 1, '5': 4, '10': 'limit'},
    {'1': 'isAscending', '3': 3, '4': 1, '5': 8, '10': 'isAscending'},
  ],
};

/// Descriptor for `GetHeadersRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getHeadersRequestMessageDescriptor = $convert.base64Decode(
    'ChhHZXRIZWFkZXJzUmVxdWVzdE1lc3NhZ2USHAoJc3RhcnRIYXNoGAEgASgJUglzdGFydEhhc2'
    'gSFAoFbGltaXQYAiABKARSBWxpbWl0EiAKC2lzQXNjZW5kaW5nGAMgASgIUgtpc0FzY2VuZGlu'
    'Zw==');

@$core.Deprecated('Use getHeadersResponseMessageDescriptor instead')
const GetHeadersResponseMessage$json = {
  '1': 'GetHeadersResponseMessage',
  '2': [
    {'1': 'headers', '3': 1, '4': 3, '5': 9, '10': 'headers'},
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetHeadersResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getHeadersResponseMessageDescriptor = $convert.base64Decode(
    'ChlHZXRIZWFkZXJzUmVzcG9uc2VNZXNzYWdlEhgKB2hlYWRlcnMYASADKAlSB2hlYWRlcnMSKg'
    'oFZXJyb3IY6AcgASgLMhMucHJvdG93aXJlLlJQQ0Vycm9yUgVlcnJvcg==');

@$core.Deprecated('Use notifyUtxosChangedRequestMessageDescriptor instead')
const NotifyUtxosChangedRequestMessage$json = {
  '1': 'NotifyUtxosChangedRequestMessage',
  '2': [
    {'1': 'addresses', '3': 1, '4': 3, '5': 9, '10': 'addresses'},
    {'1': 'command', '3': 101, '4': 1, '5': 14, '6': '.protowire.RpcNotifyCommand', '10': 'command'},
  ],
};

/// Descriptor for `NotifyUtxosChangedRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notifyUtxosChangedRequestMessageDescriptor = $convert.base64Decode(
    'CiBOb3RpZnlVdHhvc0NoYW5nZWRSZXF1ZXN0TWVzc2FnZRIcCglhZGRyZXNzZXMYASADKAlSCW'
    'FkZHJlc3NlcxI1Cgdjb21tYW5kGGUgASgOMhsucHJvdG93aXJlLlJwY05vdGlmeUNvbW1hbmRS'
    'B2NvbW1hbmQ=');

@$core.Deprecated('Use notifyUtxosChangedResponseMessageDescriptor instead')
const NotifyUtxosChangedResponseMessage$json = {
  '1': 'NotifyUtxosChangedResponseMessage',
  '2': [
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `NotifyUtxosChangedResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notifyUtxosChangedResponseMessageDescriptor = $convert.base64Decode(
    'CiFOb3RpZnlVdHhvc0NoYW5nZWRSZXNwb25zZU1lc3NhZ2USKgoFZXJyb3IY6AcgASgLMhMucH'
    'JvdG93aXJlLlJQQ0Vycm9yUgVlcnJvcg==');

@$core.Deprecated('Use utxosChangedNotificationMessageDescriptor instead')
const UtxosChangedNotificationMessage$json = {
  '1': 'UtxosChangedNotificationMessage',
  '2': [
    {'1': 'added', '3': 1, '4': 3, '5': 11, '6': '.protowire.RpcUtxosByAddressesEntry', '10': 'added'},
    {'1': 'removed', '3': 2, '4': 3, '5': 11, '6': '.protowire.RpcUtxosByAddressesEntry', '10': 'removed'},
  ],
};

/// Descriptor for `UtxosChangedNotificationMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List utxosChangedNotificationMessageDescriptor = $convert.base64Decode(
    'Ch9VdHhvc0NoYW5nZWROb3RpZmljYXRpb25NZXNzYWdlEjkKBWFkZGVkGAEgAygLMiMucHJvdG'
    '93aXJlLlJwY1V0eG9zQnlBZGRyZXNzZXNFbnRyeVIFYWRkZWQSPQoHcmVtb3ZlZBgCIAMoCzIj'
    'LnByb3Rvd2lyZS5ScGNVdHhvc0J5QWRkcmVzc2VzRW50cnlSB3JlbW92ZWQ=');

@$core.Deprecated('Use rpcUtxosByAddressesEntryDescriptor instead')
const RpcUtxosByAddressesEntry$json = {
  '1': 'RpcUtxosByAddressesEntry',
  '2': [
    {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    {'1': 'outpoint', '3': 2, '4': 1, '5': 11, '6': '.protowire.RpcOutpoint', '10': 'outpoint'},
    {'1': 'utxoEntry', '3': 3, '4': 1, '5': 11, '6': '.protowire.RpcUtxoEntry', '10': 'utxoEntry'},
  ],
};

/// Descriptor for `RpcUtxosByAddressesEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rpcUtxosByAddressesEntryDescriptor = $convert.base64Decode(
    'ChhScGNVdHhvc0J5QWRkcmVzc2VzRW50cnkSGAoHYWRkcmVzcxgBIAEoCVIHYWRkcmVzcxIyCg'
    'hvdXRwb2ludBgCIAEoCzIWLnByb3Rvd2lyZS5ScGNPdXRwb2ludFIIb3V0cG9pbnQSNQoJdXR4'
    'b0VudHJ5GAMgASgLMhcucHJvdG93aXJlLlJwY1V0eG9FbnRyeVIJdXR4b0VudHJ5');

@$core.Deprecated('Use stopNotifyingUtxosChangedRequestMessageDescriptor instead')
const StopNotifyingUtxosChangedRequestMessage$json = {
  '1': 'StopNotifyingUtxosChangedRequestMessage',
  '2': [
    {'1': 'addresses', '3': 1, '4': 3, '5': 9, '10': 'addresses'},
  ],
};

/// Descriptor for `StopNotifyingUtxosChangedRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stopNotifyingUtxosChangedRequestMessageDescriptor = $convert.base64Decode(
    'CidTdG9wTm90aWZ5aW5nVXR4b3NDaGFuZ2VkUmVxdWVzdE1lc3NhZ2USHAoJYWRkcmVzc2VzGA'
    'EgAygJUglhZGRyZXNzZXM=');

@$core.Deprecated('Use stopNotifyingUtxosChangedResponseMessageDescriptor instead')
const StopNotifyingUtxosChangedResponseMessage$json = {
  '1': 'StopNotifyingUtxosChangedResponseMessage',
  '2': [
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `StopNotifyingUtxosChangedResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stopNotifyingUtxosChangedResponseMessageDescriptor = $convert.base64Decode(
    'CihTdG9wTm90aWZ5aW5nVXR4b3NDaGFuZ2VkUmVzcG9uc2VNZXNzYWdlEioKBWVycm9yGOgHIA'
    'EoCzITLnByb3Rvd2lyZS5SUENFcnJvclIFZXJyb3I=');

@$core.Deprecated('Use getUtxosByAddressesRequestMessageDescriptor instead')
const GetUtxosByAddressesRequestMessage$json = {
  '1': 'GetUtxosByAddressesRequestMessage',
  '2': [
    {'1': 'addresses', '3': 1, '4': 3, '5': 9, '10': 'addresses'},
  ],
};

/// Descriptor for `GetUtxosByAddressesRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUtxosByAddressesRequestMessageDescriptor = $convert.base64Decode(
    'CiFHZXRVdHhvc0J5QWRkcmVzc2VzUmVxdWVzdE1lc3NhZ2USHAoJYWRkcmVzc2VzGAEgAygJUg'
    'lhZGRyZXNzZXM=');

@$core.Deprecated('Use getUtxosByAddressesResponseMessageDescriptor instead')
const GetUtxosByAddressesResponseMessage$json = {
  '1': 'GetUtxosByAddressesResponseMessage',
  '2': [
    {'1': 'entries', '3': 1, '4': 3, '5': 11, '6': '.protowire.RpcUtxosByAddressesEntry', '10': 'entries'},
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetUtxosByAddressesResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUtxosByAddressesResponseMessageDescriptor = $convert.base64Decode(
    'CiJHZXRVdHhvc0J5QWRkcmVzc2VzUmVzcG9uc2VNZXNzYWdlEj0KB2VudHJpZXMYASADKAsyIy'
    '5wcm90b3dpcmUuUnBjVXR4b3NCeUFkZHJlc3Nlc0VudHJ5UgdlbnRyaWVzEioKBWVycm9yGOgH'
    'IAEoCzITLnByb3Rvd2lyZS5SUENFcnJvclIFZXJyb3I=');

@$core.Deprecated('Use getBalanceByAddressRequestMessageDescriptor instead')
const GetBalanceByAddressRequestMessage$json = {
  '1': 'GetBalanceByAddressRequestMessage',
  '2': [
    {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
  ],
};

/// Descriptor for `GetBalanceByAddressRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBalanceByAddressRequestMessageDescriptor = $convert.base64Decode(
    'CiFHZXRCYWxhbmNlQnlBZGRyZXNzUmVxdWVzdE1lc3NhZ2USGAoHYWRkcmVzcxgBIAEoCVIHYW'
    'RkcmVzcw==');

@$core.Deprecated('Use getBalanceByAddressResponseMessageDescriptor instead')
const GetBalanceByAddressResponseMessage$json = {
  '1': 'GetBalanceByAddressResponseMessage',
  '2': [
    {'1': 'balance', '3': 1, '4': 1, '5': 4, '10': 'balance'},
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetBalanceByAddressResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBalanceByAddressResponseMessageDescriptor = $convert.base64Decode(
    'CiJHZXRCYWxhbmNlQnlBZGRyZXNzUmVzcG9uc2VNZXNzYWdlEhgKB2JhbGFuY2UYASABKARSB2'
    'JhbGFuY2USKgoFZXJyb3IY6AcgASgLMhMucHJvdG93aXJlLlJQQ0Vycm9yUgVlcnJvcg==');

@$core.Deprecated('Use getBalancesByAddressesRequestMessageDescriptor instead')
const GetBalancesByAddressesRequestMessage$json = {
  '1': 'GetBalancesByAddressesRequestMessage',
  '2': [
    {'1': 'addresses', '3': 1, '4': 3, '5': 9, '10': 'addresses'},
  ],
};

/// Descriptor for `GetBalancesByAddressesRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBalancesByAddressesRequestMessageDescriptor = $convert.base64Decode(
    'CiRHZXRCYWxhbmNlc0J5QWRkcmVzc2VzUmVxdWVzdE1lc3NhZ2USHAoJYWRkcmVzc2VzGAEgAy'
    'gJUglhZGRyZXNzZXM=');

@$core.Deprecated('Use rpcBalancesByAddressesEntryDescriptor instead')
const RpcBalancesByAddressesEntry$json = {
  '1': 'RpcBalancesByAddressesEntry',
  '2': [
    {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    {'1': 'balance', '3': 2, '4': 1, '5': 4, '10': 'balance'},
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `RpcBalancesByAddressesEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rpcBalancesByAddressesEntryDescriptor = $convert.base64Decode(
    'ChtScGNCYWxhbmNlc0J5QWRkcmVzc2VzRW50cnkSGAoHYWRkcmVzcxgBIAEoCVIHYWRkcmVzcx'
    'IYCgdiYWxhbmNlGAIgASgEUgdiYWxhbmNlEioKBWVycm9yGOgHIAEoCzITLnByb3Rvd2lyZS5S'
    'UENFcnJvclIFZXJyb3I=');

@$core.Deprecated('Use getBalancesByAddressesResponseMessageDescriptor instead')
const GetBalancesByAddressesResponseMessage$json = {
  '1': 'GetBalancesByAddressesResponseMessage',
  '2': [
    {'1': 'entries', '3': 1, '4': 3, '5': 11, '6': '.protowire.RpcBalancesByAddressesEntry', '10': 'entries'},
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetBalancesByAddressesResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBalancesByAddressesResponseMessageDescriptor = $convert.base64Decode(
    'CiVHZXRCYWxhbmNlc0J5QWRkcmVzc2VzUmVzcG9uc2VNZXNzYWdlEkAKB2VudHJpZXMYASADKA'
    'syJi5wcm90b3dpcmUuUnBjQmFsYW5jZXNCeUFkZHJlc3Nlc0VudHJ5UgdlbnRyaWVzEioKBWVy'
    'cm9yGOgHIAEoCzITLnByb3Rvd2lyZS5SUENFcnJvclIFZXJyb3I=');

@$core.Deprecated('Use getSinkBlueScoreRequestMessageDescriptor instead')
const GetSinkBlueScoreRequestMessage$json = {
  '1': 'GetSinkBlueScoreRequestMessage',
};

/// Descriptor for `GetSinkBlueScoreRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSinkBlueScoreRequestMessageDescriptor = $convert.base64Decode(
    'Ch5HZXRTaW5rQmx1ZVNjb3JlUmVxdWVzdE1lc3NhZ2U=');

@$core.Deprecated('Use getSinkBlueScoreResponseMessageDescriptor instead')
const GetSinkBlueScoreResponseMessage$json = {
  '1': 'GetSinkBlueScoreResponseMessage',
  '2': [
    {'1': 'blueScore', '3': 1, '4': 1, '5': 4, '10': 'blueScore'},
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetSinkBlueScoreResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSinkBlueScoreResponseMessageDescriptor = $convert.base64Decode(
    'Ch9HZXRTaW5rQmx1ZVNjb3JlUmVzcG9uc2VNZXNzYWdlEhwKCWJsdWVTY29yZRgBIAEoBFIJYm'
    'x1ZVNjb3JlEioKBWVycm9yGOgHIAEoCzITLnByb3Rvd2lyZS5SUENFcnJvclIFZXJyb3I=');

@$core.Deprecated('Use notifySinkBlueScoreChangedRequestMessageDescriptor instead')
const NotifySinkBlueScoreChangedRequestMessage$json = {
  '1': 'NotifySinkBlueScoreChangedRequestMessage',
  '2': [
    {'1': 'command', '3': 101, '4': 1, '5': 14, '6': '.protowire.RpcNotifyCommand', '10': 'command'},
  ],
};

/// Descriptor for `NotifySinkBlueScoreChangedRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notifySinkBlueScoreChangedRequestMessageDescriptor = $convert.base64Decode(
    'CihOb3RpZnlTaW5rQmx1ZVNjb3JlQ2hhbmdlZFJlcXVlc3RNZXNzYWdlEjUKB2NvbW1hbmQYZS'
    'ABKA4yGy5wcm90b3dpcmUuUnBjTm90aWZ5Q29tbWFuZFIHY29tbWFuZA==');

@$core.Deprecated('Use notifySinkBlueScoreChangedResponseMessageDescriptor instead')
const NotifySinkBlueScoreChangedResponseMessage$json = {
  '1': 'NotifySinkBlueScoreChangedResponseMessage',
  '2': [
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `NotifySinkBlueScoreChangedResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notifySinkBlueScoreChangedResponseMessageDescriptor = $convert.base64Decode(
    'CilOb3RpZnlTaW5rQmx1ZVNjb3JlQ2hhbmdlZFJlc3BvbnNlTWVzc2FnZRIqCgVlcnJvchjoBy'
    'ABKAsyEy5wcm90b3dpcmUuUlBDRXJyb3JSBWVycm9y');

@$core.Deprecated('Use sinkBlueScoreChangedNotificationMessageDescriptor instead')
const SinkBlueScoreChangedNotificationMessage$json = {
  '1': 'SinkBlueScoreChangedNotificationMessage',
  '2': [
    {'1': 'sinkBlueScore', '3': 1, '4': 1, '5': 4, '10': 'sinkBlueScore'},
  ],
};

/// Descriptor for `SinkBlueScoreChangedNotificationMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sinkBlueScoreChangedNotificationMessageDescriptor = $convert.base64Decode(
    'CidTaW5rQmx1ZVNjb3JlQ2hhbmdlZE5vdGlmaWNhdGlvbk1lc3NhZ2USJAoNc2lua0JsdWVTY2'
    '9yZRgBIAEoBFINc2lua0JsdWVTY29yZQ==');

@$core.Deprecated('Use notifyVirtualDaaScoreChangedRequestMessageDescriptor instead')
const NotifyVirtualDaaScoreChangedRequestMessage$json = {
  '1': 'NotifyVirtualDaaScoreChangedRequestMessage',
  '2': [
    {'1': 'command', '3': 101, '4': 1, '5': 14, '6': '.protowire.RpcNotifyCommand', '10': 'command'},
  ],
};

/// Descriptor for `NotifyVirtualDaaScoreChangedRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notifyVirtualDaaScoreChangedRequestMessageDescriptor = $convert.base64Decode(
    'CipOb3RpZnlWaXJ0dWFsRGFhU2NvcmVDaGFuZ2VkUmVxdWVzdE1lc3NhZ2USNQoHY29tbWFuZB'
    'hlIAEoDjIbLnByb3Rvd2lyZS5ScGNOb3RpZnlDb21tYW5kUgdjb21tYW5k');

@$core.Deprecated('Use notifyVirtualDaaScoreChangedResponseMessageDescriptor instead')
const NotifyVirtualDaaScoreChangedResponseMessage$json = {
  '1': 'NotifyVirtualDaaScoreChangedResponseMessage',
  '2': [
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `NotifyVirtualDaaScoreChangedResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notifyVirtualDaaScoreChangedResponseMessageDescriptor = $convert.base64Decode(
    'CitOb3RpZnlWaXJ0dWFsRGFhU2NvcmVDaGFuZ2VkUmVzcG9uc2VNZXNzYWdlEioKBWVycm9yGO'
    'gHIAEoCzITLnByb3Rvd2lyZS5SUENFcnJvclIFZXJyb3I=');

@$core.Deprecated('Use virtualDaaScoreChangedNotificationMessageDescriptor instead')
const VirtualDaaScoreChangedNotificationMessage$json = {
  '1': 'VirtualDaaScoreChangedNotificationMessage',
  '2': [
    {'1': 'virtualDaaScore', '3': 1, '4': 1, '5': 4, '10': 'virtualDaaScore'},
  ],
};

/// Descriptor for `VirtualDaaScoreChangedNotificationMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List virtualDaaScoreChangedNotificationMessageDescriptor = $convert.base64Decode(
    'CilWaXJ0dWFsRGFhU2NvcmVDaGFuZ2VkTm90aWZpY2F0aW9uTWVzc2FnZRIoCg92aXJ0dWFsRG'
    'FhU2NvcmUYASABKARSD3ZpcnR1YWxEYWFTY29yZQ==');

@$core.Deprecated('Use notifyPruningPointUtxoSetOverrideRequestMessageDescriptor instead')
const NotifyPruningPointUtxoSetOverrideRequestMessage$json = {
  '1': 'NotifyPruningPointUtxoSetOverrideRequestMessage',
  '2': [
    {'1': 'command', '3': 101, '4': 1, '5': 14, '6': '.protowire.RpcNotifyCommand', '10': 'command'},
  ],
};

/// Descriptor for `NotifyPruningPointUtxoSetOverrideRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notifyPruningPointUtxoSetOverrideRequestMessageDescriptor = $convert.base64Decode(
    'Ci9Ob3RpZnlQcnVuaW5nUG9pbnRVdHhvU2V0T3ZlcnJpZGVSZXF1ZXN0TWVzc2FnZRI1Cgdjb2'
    '1tYW5kGGUgASgOMhsucHJvdG93aXJlLlJwY05vdGlmeUNvbW1hbmRSB2NvbW1hbmQ=');

@$core.Deprecated('Use notifyPruningPointUtxoSetOverrideResponseMessageDescriptor instead')
const NotifyPruningPointUtxoSetOverrideResponseMessage$json = {
  '1': 'NotifyPruningPointUtxoSetOverrideResponseMessage',
  '2': [
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `NotifyPruningPointUtxoSetOverrideResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notifyPruningPointUtxoSetOverrideResponseMessageDescriptor = $convert.base64Decode(
    'CjBOb3RpZnlQcnVuaW5nUG9pbnRVdHhvU2V0T3ZlcnJpZGVSZXNwb25zZU1lc3NhZ2USKgoFZX'
    'Jyb3IY6AcgASgLMhMucHJvdG93aXJlLlJQQ0Vycm9yUgVlcnJvcg==');

@$core.Deprecated('Use pruningPointUtxoSetOverrideNotificationMessageDescriptor instead')
const PruningPointUtxoSetOverrideNotificationMessage$json = {
  '1': 'PruningPointUtxoSetOverrideNotificationMessage',
};

/// Descriptor for `PruningPointUtxoSetOverrideNotificationMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pruningPointUtxoSetOverrideNotificationMessageDescriptor = $convert.base64Decode(
    'Ci5QcnVuaW5nUG9pbnRVdHhvU2V0T3ZlcnJpZGVOb3RpZmljYXRpb25NZXNzYWdl');

@$core.Deprecated('Use stopNotifyingPruningPointUtxoSetOverrideRequestMessageDescriptor instead')
const StopNotifyingPruningPointUtxoSetOverrideRequestMessage$json = {
  '1': 'StopNotifyingPruningPointUtxoSetOverrideRequestMessage',
};

/// Descriptor for `StopNotifyingPruningPointUtxoSetOverrideRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stopNotifyingPruningPointUtxoSetOverrideRequestMessageDescriptor = $convert.base64Decode(
    'CjZTdG9wTm90aWZ5aW5nUHJ1bmluZ1BvaW50VXR4b1NldE92ZXJyaWRlUmVxdWVzdE1lc3NhZ2'
    'U=');

@$core.Deprecated('Use stopNotifyingPruningPointUtxoSetOverrideResponseMessageDescriptor instead')
const StopNotifyingPruningPointUtxoSetOverrideResponseMessage$json = {
  '1': 'StopNotifyingPruningPointUtxoSetOverrideResponseMessage',
  '2': [
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `StopNotifyingPruningPointUtxoSetOverrideResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stopNotifyingPruningPointUtxoSetOverrideResponseMessageDescriptor = $convert.base64Decode(
    'CjdTdG9wTm90aWZ5aW5nUHJ1bmluZ1BvaW50VXR4b1NldE92ZXJyaWRlUmVzcG9uc2VNZXNzYW'
    'dlEioKBWVycm9yGOgHIAEoCzITLnByb3Rvd2lyZS5SUENFcnJvclIFZXJyb3I=');

@$core.Deprecated('Use banRequestMessageDescriptor instead')
const BanRequestMessage$json = {
  '1': 'BanRequestMessage',
  '2': [
    {'1': 'ip', '3': 1, '4': 1, '5': 9, '10': 'ip'},
  ],
};

/// Descriptor for `BanRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List banRequestMessageDescriptor = $convert.base64Decode(
    'ChFCYW5SZXF1ZXN0TWVzc2FnZRIOCgJpcBgBIAEoCVICaXA=');

@$core.Deprecated('Use banResponseMessageDescriptor instead')
const BanResponseMessage$json = {
  '1': 'BanResponseMessage',
  '2': [
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `BanResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List banResponseMessageDescriptor = $convert.base64Decode(
    'ChJCYW5SZXNwb25zZU1lc3NhZ2USKgoFZXJyb3IY6AcgASgLMhMucHJvdG93aXJlLlJQQ0Vycm'
    '9yUgVlcnJvcg==');

@$core.Deprecated('Use unbanRequestMessageDescriptor instead')
const UnbanRequestMessage$json = {
  '1': 'UnbanRequestMessage',
  '2': [
    {'1': 'ip', '3': 1, '4': 1, '5': 9, '10': 'ip'},
  ],
};

/// Descriptor for `UnbanRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unbanRequestMessageDescriptor = $convert.base64Decode(
    'ChNVbmJhblJlcXVlc3RNZXNzYWdlEg4KAmlwGAEgASgJUgJpcA==');

@$core.Deprecated('Use unbanResponseMessageDescriptor instead')
const UnbanResponseMessage$json = {
  '1': 'UnbanResponseMessage',
  '2': [
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `UnbanResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unbanResponseMessageDescriptor = $convert.base64Decode(
    'ChRVbmJhblJlc3BvbnNlTWVzc2FnZRIqCgVlcnJvchjoByABKAsyEy5wcm90b3dpcmUuUlBDRX'
    'Jyb3JSBWVycm9y');

@$core.Deprecated('Use getInfoRequestMessageDescriptor instead')
const GetInfoRequestMessage$json = {
  '1': 'GetInfoRequestMessage',
};

/// Descriptor for `GetInfoRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getInfoRequestMessageDescriptor = $convert.base64Decode(
    'ChVHZXRJbmZvUmVxdWVzdE1lc3NhZ2U=');

@$core.Deprecated('Use getInfoResponseMessageDescriptor instead')
const GetInfoResponseMessage$json = {
  '1': 'GetInfoResponseMessage',
  '2': [
    {'1': 'p2pId', '3': 1, '4': 1, '5': 9, '10': 'p2pId'},
    {'1': 'mempoolSize', '3': 2, '4': 1, '5': 4, '10': 'mempoolSize'},
    {'1': 'serverVersion', '3': 3, '4': 1, '5': 9, '10': 'serverVersion'},
    {'1': 'isUtxoIndexed', '3': 4, '4': 1, '5': 8, '10': 'isUtxoIndexed'},
    {'1': 'isSynced', '3': 5, '4': 1, '5': 8, '10': 'isSynced'},
    {'1': 'hasNotifyCommand', '3': 11, '4': 1, '5': 8, '10': 'hasNotifyCommand'},
    {'1': 'hasMessageId', '3': 12, '4': 1, '5': 8, '10': 'hasMessageId'},
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetInfoResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getInfoResponseMessageDescriptor = $convert.base64Decode(
    'ChZHZXRJbmZvUmVzcG9uc2VNZXNzYWdlEhQKBXAycElkGAEgASgJUgVwMnBJZBIgCgttZW1wb2'
    '9sU2l6ZRgCIAEoBFILbWVtcG9vbFNpemUSJAoNc2VydmVyVmVyc2lvbhgDIAEoCVINc2VydmVy'
    'VmVyc2lvbhIkCg1pc1V0eG9JbmRleGVkGAQgASgIUg1pc1V0eG9JbmRleGVkEhoKCGlzU3luY2'
    'VkGAUgASgIUghpc1N5bmNlZBIqChBoYXNOb3RpZnlDb21tYW5kGAsgASgIUhBoYXNOb3RpZnlD'
    'b21tYW5kEiIKDGhhc01lc3NhZ2VJZBgMIAEoCFIMaGFzTWVzc2FnZUlkEioKBWVycm9yGOgHIA'
    'EoCzITLnByb3Rvd2lyZS5SUENFcnJvclIFZXJyb3I=');

@$core.Deprecated('Use estimateNetworkHashesPerSecondRequestMessageDescriptor instead')
const EstimateNetworkHashesPerSecondRequestMessage$json = {
  '1': 'EstimateNetworkHashesPerSecondRequestMessage',
  '2': [
    {'1': 'windowSize', '3': 1, '4': 1, '5': 13, '10': 'windowSize'},
    {'1': 'startHash', '3': 2, '4': 1, '5': 9, '10': 'startHash'},
  ],
};

/// Descriptor for `EstimateNetworkHashesPerSecondRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List estimateNetworkHashesPerSecondRequestMessageDescriptor = $convert.base64Decode(
    'CixFc3RpbWF0ZU5ldHdvcmtIYXNoZXNQZXJTZWNvbmRSZXF1ZXN0TWVzc2FnZRIeCgp3aW5kb3'
    'dTaXplGAEgASgNUgp3aW5kb3dTaXplEhwKCXN0YXJ0SGFzaBgCIAEoCVIJc3RhcnRIYXNo');

@$core.Deprecated('Use estimateNetworkHashesPerSecondResponseMessageDescriptor instead')
const EstimateNetworkHashesPerSecondResponseMessage$json = {
  '1': 'EstimateNetworkHashesPerSecondResponseMessage',
  '2': [
    {'1': 'networkHashesPerSecond', '3': 1, '4': 1, '5': 4, '10': 'networkHashesPerSecond'},
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `EstimateNetworkHashesPerSecondResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List estimateNetworkHashesPerSecondResponseMessageDescriptor = $convert.base64Decode(
    'Ci1Fc3RpbWF0ZU5ldHdvcmtIYXNoZXNQZXJTZWNvbmRSZXNwb25zZU1lc3NhZ2USNgoWbmV0d2'
    '9ya0hhc2hlc1BlclNlY29uZBgBIAEoBFIWbmV0d29ya0hhc2hlc1BlclNlY29uZBIqCgVlcnJv'
    'chjoByABKAsyEy5wcm90b3dpcmUuUlBDRXJyb3JSBWVycm9y');

@$core.Deprecated('Use notifyNewBlockTemplateRequestMessageDescriptor instead')
const NotifyNewBlockTemplateRequestMessage$json = {
  '1': 'NotifyNewBlockTemplateRequestMessage',
  '2': [
    {'1': 'command', '3': 101, '4': 1, '5': 14, '6': '.protowire.RpcNotifyCommand', '10': 'command'},
  ],
};

/// Descriptor for `NotifyNewBlockTemplateRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notifyNewBlockTemplateRequestMessageDescriptor = $convert.base64Decode(
    'CiROb3RpZnlOZXdCbG9ja1RlbXBsYXRlUmVxdWVzdE1lc3NhZ2USNQoHY29tbWFuZBhlIAEoDj'
    'IbLnByb3Rvd2lyZS5ScGNOb3RpZnlDb21tYW5kUgdjb21tYW5k');

@$core.Deprecated('Use notifyNewBlockTemplateResponseMessageDescriptor instead')
const NotifyNewBlockTemplateResponseMessage$json = {
  '1': 'NotifyNewBlockTemplateResponseMessage',
  '2': [
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `NotifyNewBlockTemplateResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notifyNewBlockTemplateResponseMessageDescriptor = $convert.base64Decode(
    'CiVOb3RpZnlOZXdCbG9ja1RlbXBsYXRlUmVzcG9uc2VNZXNzYWdlEioKBWVycm9yGOgHIAEoCz'
    'ITLnByb3Rvd2lyZS5SUENFcnJvclIFZXJyb3I=');

@$core.Deprecated('Use newBlockTemplateNotificationMessageDescriptor instead')
const NewBlockTemplateNotificationMessage$json = {
  '1': 'NewBlockTemplateNotificationMessage',
};

/// Descriptor for `NewBlockTemplateNotificationMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newBlockTemplateNotificationMessageDescriptor = $convert.base64Decode(
    'CiNOZXdCbG9ja1RlbXBsYXRlTm90aWZpY2F0aW9uTWVzc2FnZQ==');

@$core.Deprecated('Use rpcMempoolEntryByAddressDescriptor instead')
const RpcMempoolEntryByAddress$json = {
  '1': 'RpcMempoolEntryByAddress',
  '2': [
    {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    {'1': 'sending', '3': 2, '4': 3, '5': 11, '6': '.protowire.RpcMempoolEntry', '10': 'sending'},
    {'1': 'receiving', '3': 3, '4': 3, '5': 11, '6': '.protowire.RpcMempoolEntry', '10': 'receiving'},
  ],
};

/// Descriptor for `RpcMempoolEntryByAddress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rpcMempoolEntryByAddressDescriptor = $convert.base64Decode(
    'ChhScGNNZW1wb29sRW50cnlCeUFkZHJlc3MSGAoHYWRkcmVzcxgBIAEoCVIHYWRkcmVzcxI0Cg'
    'dzZW5kaW5nGAIgAygLMhoucHJvdG93aXJlLlJwY01lbXBvb2xFbnRyeVIHc2VuZGluZxI4Cgly'
    'ZWNlaXZpbmcYAyADKAsyGi5wcm90b3dpcmUuUnBjTWVtcG9vbEVudHJ5UglyZWNlaXZpbmc=');

@$core.Deprecated('Use getMempoolEntriesByAddressesRequestMessageDescriptor instead')
const GetMempoolEntriesByAddressesRequestMessage$json = {
  '1': 'GetMempoolEntriesByAddressesRequestMessage',
  '2': [
    {'1': 'addresses', '3': 1, '4': 3, '5': 9, '10': 'addresses'},
    {'1': 'includeOrphanPool', '3': 2, '4': 1, '5': 8, '10': 'includeOrphanPool'},
    {'1': 'filterTransactionPool', '3': 3, '4': 1, '5': 8, '10': 'filterTransactionPool'},
  ],
};

/// Descriptor for `GetMempoolEntriesByAddressesRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMempoolEntriesByAddressesRequestMessageDescriptor = $convert.base64Decode(
    'CipHZXRNZW1wb29sRW50cmllc0J5QWRkcmVzc2VzUmVxdWVzdE1lc3NhZ2USHAoJYWRkcmVzc2'
    'VzGAEgAygJUglhZGRyZXNzZXMSLAoRaW5jbHVkZU9ycGhhblBvb2wYAiABKAhSEWluY2x1ZGVP'
    'cnBoYW5Qb29sEjQKFWZpbHRlclRyYW5zYWN0aW9uUG9vbBgDIAEoCFIVZmlsdGVyVHJhbnNhY3'
    'Rpb25Qb29s');

@$core.Deprecated('Use getMempoolEntriesByAddressesResponseMessageDescriptor instead')
const GetMempoolEntriesByAddressesResponseMessage$json = {
  '1': 'GetMempoolEntriesByAddressesResponseMessage',
  '2': [
    {'1': 'entries', '3': 1, '4': 3, '5': 11, '6': '.protowire.RpcMempoolEntryByAddress', '10': 'entries'},
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetMempoolEntriesByAddressesResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMempoolEntriesByAddressesResponseMessageDescriptor = $convert.base64Decode(
    'CitHZXRNZW1wb29sRW50cmllc0J5QWRkcmVzc2VzUmVzcG9uc2VNZXNzYWdlEj0KB2VudHJpZX'
    'MYASADKAsyIy5wcm90b3dpcmUuUnBjTWVtcG9vbEVudHJ5QnlBZGRyZXNzUgdlbnRyaWVzEioK'
    'BWVycm9yGOgHIAEoCzITLnByb3Rvd2lyZS5SUENFcnJvclIFZXJyb3I=');

@$core.Deprecated('Use getCoinSupplyRequestMessageDescriptor instead')
const GetCoinSupplyRequestMessage$json = {
  '1': 'GetCoinSupplyRequestMessage',
};

/// Descriptor for `GetCoinSupplyRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCoinSupplyRequestMessageDescriptor = $convert.base64Decode(
    'ChtHZXRDb2luU3VwcGx5UmVxdWVzdE1lc3NhZ2U=');

@$core.Deprecated('Use getCoinSupplyResponseMessageDescriptor instead')
const GetCoinSupplyResponseMessage$json = {
  '1': 'GetCoinSupplyResponseMessage',
  '2': [
    {'1': 'maxSompi', '3': 1, '4': 1, '5': 4, '10': 'maxSompi'},
    {'1': 'circulatingSompi', '3': 2, '4': 1, '5': 4, '10': 'circulatingSompi'},
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetCoinSupplyResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCoinSupplyResponseMessageDescriptor = $convert.base64Decode(
    'ChxHZXRDb2luU3VwcGx5UmVzcG9uc2VNZXNzYWdlEhoKCG1heFNvbXBpGAEgASgEUghtYXhTb2'
    '1waRIqChBjaXJjdWxhdGluZ1NvbXBpGAIgASgEUhBjaXJjdWxhdGluZ1NvbXBpEioKBWVycm9y'
    'GOgHIAEoCzITLnByb3Rvd2lyZS5SUENFcnJvclIFZXJyb3I=');

@$core.Deprecated('Use pingRequestMessageDescriptor instead')
const PingRequestMessage$json = {
  '1': 'PingRequestMessage',
};

/// Descriptor for `PingRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingRequestMessageDescriptor = $convert.base64Decode(
    'ChJQaW5nUmVxdWVzdE1lc3NhZ2U=');

@$core.Deprecated('Use pingResponseMessageDescriptor instead')
const PingResponseMessage$json = {
  '1': 'PingResponseMessage',
  '2': [
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `PingResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingResponseMessageDescriptor = $convert.base64Decode(
    'ChNQaW5nUmVzcG9uc2VNZXNzYWdlEioKBWVycm9yGOgHIAEoCzITLnByb3Rvd2lyZS5SUENFcn'
    'JvclIFZXJyb3I=');

@$core.Deprecated('Use processMetricsDescriptor instead')
const ProcessMetrics$json = {
  '1': 'ProcessMetrics',
  '2': [
    {'1': 'residentSetSize', '3': 1, '4': 1, '5': 4, '10': 'residentSetSize'},
    {'1': 'virtualMemorySize', '3': 2, '4': 1, '5': 4, '10': 'virtualMemorySize'},
    {'1': 'coreNum', '3': 3, '4': 1, '5': 13, '10': 'coreNum'},
    {'1': 'cpuUsage', '3': 4, '4': 1, '5': 2, '10': 'cpuUsage'},
    {'1': 'fdNum', '3': 5, '4': 1, '5': 13, '10': 'fdNum'},
    {'1': 'diskIoReadBytes', '3': 6, '4': 1, '5': 4, '10': 'diskIoReadBytes'},
    {'1': 'diskIoWriteBytes', '3': 7, '4': 1, '5': 4, '10': 'diskIoWriteBytes'},
    {'1': 'diskIoReadPerSec', '3': 8, '4': 1, '5': 2, '10': 'diskIoReadPerSec'},
    {'1': 'diskIoWritePerSec', '3': 9, '4': 1, '5': 2, '10': 'diskIoWritePerSec'},
  ],
};

/// Descriptor for `ProcessMetrics`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List processMetricsDescriptor = $convert.base64Decode(
    'Cg5Qcm9jZXNzTWV0cmljcxIoCg9yZXNpZGVudFNldFNpemUYASABKARSD3Jlc2lkZW50U2V0U2'
    'l6ZRIsChF2aXJ0dWFsTWVtb3J5U2l6ZRgCIAEoBFIRdmlydHVhbE1lbW9yeVNpemUSGAoHY29y'
    'ZU51bRgDIAEoDVIHY29yZU51bRIaCghjcHVVc2FnZRgEIAEoAlIIY3B1VXNhZ2USFAoFZmROdW'
    '0YBSABKA1SBWZkTnVtEigKD2Rpc2tJb1JlYWRCeXRlcxgGIAEoBFIPZGlza0lvUmVhZEJ5dGVz'
    'EioKEGRpc2tJb1dyaXRlQnl0ZXMYByABKARSEGRpc2tJb1dyaXRlQnl0ZXMSKgoQZGlza0lvUm'
    'VhZFBlclNlYxgIIAEoAlIQZGlza0lvUmVhZFBlclNlYxIsChFkaXNrSW9Xcml0ZVBlclNlYxgJ'
    'IAEoAlIRZGlza0lvV3JpdGVQZXJTZWM=');

@$core.Deprecated('Use connectionMetricsDescriptor instead')
const ConnectionMetrics$json = {
  '1': 'ConnectionMetrics',
  '2': [
    {'1': 'borshLiveConnections', '3': 31, '4': 1, '5': 13, '10': 'borshLiveConnections'},
    {'1': 'borshConnectionAttempts', '3': 32, '4': 1, '5': 4, '10': 'borshConnectionAttempts'},
    {'1': 'borshHandshakeFailures', '3': 33, '4': 1, '5': 4, '10': 'borshHandshakeFailures'},
    {'1': 'jsonLiveConnections', '3': 41, '4': 1, '5': 13, '10': 'jsonLiveConnections'},
    {'1': 'jsonConnectionAttempts', '3': 42, '4': 1, '5': 4, '10': 'jsonConnectionAttempts'},
    {'1': 'jsonHandshakeFailures', '3': 43, '4': 1, '5': 4, '10': 'jsonHandshakeFailures'},
    {'1': 'activePeers', '3': 51, '4': 1, '5': 13, '10': 'activePeers'},
  ],
};

/// Descriptor for `ConnectionMetrics`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectionMetricsDescriptor = $convert.base64Decode(
    'ChFDb25uZWN0aW9uTWV0cmljcxIyChRib3JzaExpdmVDb25uZWN0aW9ucxgfIAEoDVIUYm9yc2'
    'hMaXZlQ29ubmVjdGlvbnMSOAoXYm9yc2hDb25uZWN0aW9uQXR0ZW1wdHMYICABKARSF2JvcnNo'
    'Q29ubmVjdGlvbkF0dGVtcHRzEjYKFmJvcnNoSGFuZHNoYWtlRmFpbHVyZXMYISABKARSFmJvcn'
    'NoSGFuZHNoYWtlRmFpbHVyZXMSMAoTanNvbkxpdmVDb25uZWN0aW9ucxgpIAEoDVITanNvbkxp'
    'dmVDb25uZWN0aW9ucxI2ChZqc29uQ29ubmVjdGlvbkF0dGVtcHRzGCogASgEUhZqc29uQ29ubm'
    'VjdGlvbkF0dGVtcHRzEjQKFWpzb25IYW5kc2hha2VGYWlsdXJlcxgrIAEoBFIVanNvbkhhbmRz'
    'aGFrZUZhaWx1cmVzEiAKC2FjdGl2ZVBlZXJzGDMgASgNUgthY3RpdmVQZWVycw==');

@$core.Deprecated('Use bandwidthMetricsDescriptor instead')
const BandwidthMetrics$json = {
  '1': 'BandwidthMetrics',
  '2': [
    {'1': 'borshBytesTx', '3': 61, '4': 1, '5': 4, '10': 'borshBytesTx'},
    {'1': 'borshBytesRx', '3': 62, '4': 1, '5': 4, '10': 'borshBytesRx'},
    {'1': 'jsonBytesTx', '3': 63, '4': 1, '5': 4, '10': 'jsonBytesTx'},
    {'1': 'jsonBytesRx', '3': 64, '4': 1, '5': 4, '10': 'jsonBytesRx'},
    {'1': 'grpcP2pBytesTx', '3': 65, '4': 1, '5': 4, '10': 'grpcP2pBytesTx'},
    {'1': 'grpcP2pBytesRx', '3': 66, '4': 1, '5': 4, '10': 'grpcP2pBytesRx'},
    {'1': 'grpcUserBytesTx', '3': 67, '4': 1, '5': 4, '10': 'grpcUserBytesTx'},
    {'1': 'grpcUserBytesRx', '3': 68, '4': 1, '5': 4, '10': 'grpcUserBytesRx'},
  ],
};

/// Descriptor for `BandwidthMetrics`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bandwidthMetricsDescriptor = $convert.base64Decode(
    'ChBCYW5kd2lkdGhNZXRyaWNzEiIKDGJvcnNoQnl0ZXNUeBg9IAEoBFIMYm9yc2hCeXRlc1R4Ei'
    'IKDGJvcnNoQnl0ZXNSeBg+IAEoBFIMYm9yc2hCeXRlc1J4EiAKC2pzb25CeXRlc1R4GD8gASgE'
    'Ugtqc29uQnl0ZXNUeBIgCgtqc29uQnl0ZXNSeBhAIAEoBFILanNvbkJ5dGVzUngSJgoOZ3JwY1'
    'AycEJ5dGVzVHgYQSABKARSDmdycGNQMnBCeXRlc1R4EiYKDmdycGNQMnBCeXRlc1J4GEIgASgE'
    'Ug5ncnBjUDJwQnl0ZXNSeBIoCg9ncnBjVXNlckJ5dGVzVHgYQyABKARSD2dycGNVc2VyQnl0ZX'
    'NUeBIoCg9ncnBjVXNlckJ5dGVzUngYRCABKARSD2dycGNVc2VyQnl0ZXNSeA==');

@$core.Deprecated('Use consensusMetricsDescriptor instead')
const ConsensusMetrics$json = {
  '1': 'ConsensusMetrics',
  '2': [
    {'1': 'blocksSubmitted', '3': 1, '4': 1, '5': 4, '10': 'blocksSubmitted'},
    {'1': 'headerCounts', '3': 2, '4': 1, '5': 4, '10': 'headerCounts'},
    {'1': 'depCounts', '3': 3, '4': 1, '5': 4, '10': 'depCounts'},
    {'1': 'bodyCounts', '3': 4, '4': 1, '5': 4, '10': 'bodyCounts'},
    {'1': 'txsCounts', '3': 5, '4': 1, '5': 4, '10': 'txsCounts'},
    {'1': 'chainBlockCounts', '3': 6, '4': 1, '5': 4, '10': 'chainBlockCounts'},
    {'1': 'massCounts', '3': 7, '4': 1, '5': 4, '10': 'massCounts'},
    {'1': 'blockCount', '3': 11, '4': 1, '5': 4, '10': 'blockCount'},
    {'1': 'headerCount', '3': 12, '4': 1, '5': 4, '10': 'headerCount'},
    {'1': 'mempoolSize', '3': 13, '4': 1, '5': 4, '10': 'mempoolSize'},
    {'1': 'tipHashesCount', '3': 14, '4': 1, '5': 13, '10': 'tipHashesCount'},
    {'1': 'difficulty', '3': 15, '4': 1, '5': 1, '10': 'difficulty'},
    {'1': 'pastMedianTime', '3': 16, '4': 1, '5': 4, '10': 'pastMedianTime'},
    {'1': 'virtualParentHashesCount', '3': 17, '4': 1, '5': 13, '10': 'virtualParentHashesCount'},
    {'1': 'virtualDaaScore', '3': 18, '4': 1, '5': 4, '10': 'virtualDaaScore'},
  ],
};

/// Descriptor for `ConsensusMetrics`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List consensusMetricsDescriptor = $convert.base64Decode(
    'ChBDb25zZW5zdXNNZXRyaWNzEigKD2Jsb2Nrc1N1Ym1pdHRlZBgBIAEoBFIPYmxvY2tzU3VibW'
    'l0dGVkEiIKDGhlYWRlckNvdW50cxgCIAEoBFIMaGVhZGVyQ291bnRzEhwKCWRlcENvdW50cxgD'
    'IAEoBFIJZGVwQ291bnRzEh4KCmJvZHlDb3VudHMYBCABKARSCmJvZHlDb3VudHMSHAoJdHhzQ2'
    '91bnRzGAUgASgEUgl0eHNDb3VudHMSKgoQY2hhaW5CbG9ja0NvdW50cxgGIAEoBFIQY2hhaW5C'
    'bG9ja0NvdW50cxIeCgptYXNzQ291bnRzGAcgASgEUgptYXNzQ291bnRzEh4KCmJsb2NrQ291bn'
    'QYCyABKARSCmJsb2NrQ291bnQSIAoLaGVhZGVyQ291bnQYDCABKARSC2hlYWRlckNvdW50EiAK'
    'C21lbXBvb2xTaXplGA0gASgEUgttZW1wb29sU2l6ZRImCg50aXBIYXNoZXNDb3VudBgOIAEoDV'
    'IOdGlwSGFzaGVzQ291bnQSHgoKZGlmZmljdWx0eRgPIAEoAVIKZGlmZmljdWx0eRImCg5wYXN0'
    'TWVkaWFuVGltZRgQIAEoBFIOcGFzdE1lZGlhblRpbWUSOgoYdmlydHVhbFBhcmVudEhhc2hlc0'
    'NvdW50GBEgASgNUhh2aXJ0dWFsUGFyZW50SGFzaGVzQ291bnQSKAoPdmlydHVhbERhYVNjb3Jl'
    'GBIgASgEUg92aXJ0dWFsRGFhU2NvcmU=');

@$core.Deprecated('Use storageMetricsDescriptor instead')
const StorageMetrics$json = {
  '1': 'StorageMetrics',
  '2': [
    {'1': 'storageSizeBytes', '3': 1, '4': 1, '5': 4, '10': 'storageSizeBytes'},
  ],
};

/// Descriptor for `StorageMetrics`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storageMetricsDescriptor = $convert.base64Decode(
    'Cg5TdG9yYWdlTWV0cmljcxIqChBzdG9yYWdlU2l6ZUJ5dGVzGAEgASgEUhBzdG9yYWdlU2l6ZU'
    'J5dGVz');

@$core.Deprecated('Use getConnectionsRequestMessageDescriptor instead')
const GetConnectionsRequestMessage$json = {
  '1': 'GetConnectionsRequestMessage',
  '2': [
    {'1': 'includeProfileData', '3': 1, '4': 1, '5': 8, '10': 'includeProfileData'},
  ],
};

/// Descriptor for `GetConnectionsRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getConnectionsRequestMessageDescriptor = $convert.base64Decode(
    'ChxHZXRDb25uZWN0aW9uc1JlcXVlc3RNZXNzYWdlEi4KEmluY2x1ZGVQcm9maWxlRGF0YRgBIA'
    'EoCFISaW5jbHVkZVByb2ZpbGVEYXRh');

@$core.Deprecated('Use connectionsProfileDataDescriptor instead')
const ConnectionsProfileData$json = {
  '1': 'ConnectionsProfileData',
  '2': [
    {'1': 'cpuUsage', '3': 1, '4': 1, '5': 1, '10': 'cpuUsage'},
    {'1': 'memoryUsage', '3': 2, '4': 1, '5': 4, '10': 'memoryUsage'},
  ],
};

/// Descriptor for `ConnectionsProfileData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectionsProfileDataDescriptor = $convert.base64Decode(
    'ChZDb25uZWN0aW9uc1Byb2ZpbGVEYXRhEhoKCGNwdVVzYWdlGAEgASgBUghjcHVVc2FnZRIgCg'
    'ttZW1vcnlVc2FnZRgCIAEoBFILbWVtb3J5VXNhZ2U=');

@$core.Deprecated('Use getConnectionsResponseMessageDescriptor instead')
const GetConnectionsResponseMessage$json = {
  '1': 'GetConnectionsResponseMessage',
  '2': [
    {'1': 'clients', '3': 1, '4': 1, '5': 13, '10': 'clients'},
    {'1': 'peers', '3': 2, '4': 1, '5': 13, '10': 'peers'},
    {'1': 'profileData', '3': 3, '4': 1, '5': 11, '6': '.protowire.ConnectionsProfileData', '10': 'profileData'},
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetConnectionsResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getConnectionsResponseMessageDescriptor = $convert.base64Decode(
    'Ch1HZXRDb25uZWN0aW9uc1Jlc3BvbnNlTWVzc2FnZRIYCgdjbGllbnRzGAEgASgNUgdjbGllbn'
    'RzEhQKBXBlZXJzGAIgASgNUgVwZWVycxJDCgtwcm9maWxlRGF0YRgDIAEoCzIhLnByb3Rvd2ly'
    'ZS5Db25uZWN0aW9uc1Byb2ZpbGVEYXRhUgtwcm9maWxlRGF0YRIqCgVlcnJvchjoByABKAsyEy'
    '5wcm90b3dpcmUuUlBDRXJyb3JSBWVycm9y');

@$core.Deprecated('Use getSystemInfoRequestMessageDescriptor instead')
const GetSystemInfoRequestMessage$json = {
  '1': 'GetSystemInfoRequestMessage',
};

/// Descriptor for `GetSystemInfoRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSystemInfoRequestMessageDescriptor = $convert.base64Decode(
    'ChtHZXRTeXN0ZW1JbmZvUmVxdWVzdE1lc3NhZ2U=');

@$core.Deprecated('Use getSystemInfoResponseMessageDescriptor instead')
const GetSystemInfoResponseMessage$json = {
  '1': 'GetSystemInfoResponseMessage',
  '2': [
    {'1': 'version', '3': 1, '4': 1, '5': 9, '10': 'version'},
    {'1': 'systemId', '3': 2, '4': 1, '5': 9, '10': 'systemId'},
    {'1': 'gitHash', '3': 3, '4': 1, '5': 9, '10': 'gitHash'},
    {'1': 'coreNum', '3': 4, '4': 1, '5': 13, '10': 'coreNum'},
    {'1': 'totalMemory', '3': 5, '4': 1, '5': 4, '10': 'totalMemory'},
    {'1': 'fdLimit', '3': 6, '4': 1, '5': 13, '10': 'fdLimit'},
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetSystemInfoResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSystemInfoResponseMessageDescriptor = $convert.base64Decode(
    'ChxHZXRTeXN0ZW1JbmZvUmVzcG9uc2VNZXNzYWdlEhgKB3ZlcnNpb24YASABKAlSB3ZlcnNpb2'
    '4SGgoIc3lzdGVtSWQYAiABKAlSCHN5c3RlbUlkEhgKB2dpdEhhc2gYAyABKAlSB2dpdEhhc2gS'
    'GAoHY29yZU51bRgEIAEoDVIHY29yZU51bRIgCgt0b3RhbE1lbW9yeRgFIAEoBFILdG90YWxNZW'
    '1vcnkSGAoHZmRMaW1pdBgGIAEoDVIHZmRMaW1pdBIqCgVlcnJvchjoByABKAsyEy5wcm90b3dp'
    'cmUuUlBDRXJyb3JSBWVycm9y');

@$core.Deprecated('Use getMetricsRequestMessageDescriptor instead')
const GetMetricsRequestMessage$json = {
  '1': 'GetMetricsRequestMessage',
  '2': [
    {'1': 'processMetrics', '3': 1, '4': 1, '5': 8, '10': 'processMetrics'},
    {'1': 'connectionMetrics', '3': 2, '4': 1, '5': 8, '10': 'connectionMetrics'},
    {'1': 'bandwidthMetrics', '3': 3, '4': 1, '5': 8, '10': 'bandwidthMetrics'},
    {'1': 'consensusMetrics', '3': 4, '4': 1, '5': 8, '10': 'consensusMetrics'},
    {'1': 'storageMetrics', '3': 5, '4': 1, '5': 8, '10': 'storageMetrics'},
    {'1': 'customMetrics', '3': 6, '4': 1, '5': 8, '10': 'customMetrics'},
  ],
};

/// Descriptor for `GetMetricsRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMetricsRequestMessageDescriptor = $convert.base64Decode(
    'ChhHZXRNZXRyaWNzUmVxdWVzdE1lc3NhZ2USJgoOcHJvY2Vzc01ldHJpY3MYASABKAhSDnByb2'
    'Nlc3NNZXRyaWNzEiwKEWNvbm5lY3Rpb25NZXRyaWNzGAIgASgIUhFjb25uZWN0aW9uTWV0cmlj'
    'cxIqChBiYW5kd2lkdGhNZXRyaWNzGAMgASgIUhBiYW5kd2lkdGhNZXRyaWNzEioKEGNvbnNlbn'
    'N1c01ldHJpY3MYBCABKAhSEGNvbnNlbnN1c01ldHJpY3MSJgoOc3RvcmFnZU1ldHJpY3MYBSAB'
    'KAhSDnN0b3JhZ2VNZXRyaWNzEiQKDWN1c3RvbU1ldHJpY3MYBiABKAhSDWN1c3RvbU1ldHJpY3'
    'M=');

@$core.Deprecated('Use getMetricsResponseMessageDescriptor instead')
const GetMetricsResponseMessage$json = {
  '1': 'GetMetricsResponseMessage',
  '2': [
    {'1': 'serverTime', '3': 1, '4': 1, '5': 4, '10': 'serverTime'},
    {'1': 'processMetrics', '3': 11, '4': 1, '5': 11, '6': '.protowire.ProcessMetrics', '10': 'processMetrics'},
    {'1': 'connectionMetrics', '3': 12, '4': 1, '5': 11, '6': '.protowire.ConnectionMetrics', '10': 'connectionMetrics'},
    {'1': 'bandwidthMetrics', '3': 13, '4': 1, '5': 11, '6': '.protowire.BandwidthMetrics', '10': 'bandwidthMetrics'},
    {'1': 'consensusMetrics', '3': 14, '4': 1, '5': 11, '6': '.protowire.ConsensusMetrics', '10': 'consensusMetrics'},
    {'1': 'storageMetrics', '3': 15, '4': 1, '5': 11, '6': '.protowire.StorageMetrics', '10': 'storageMetrics'},
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetMetricsResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMetricsResponseMessageDescriptor = $convert.base64Decode(
    'ChlHZXRNZXRyaWNzUmVzcG9uc2VNZXNzYWdlEh4KCnNlcnZlclRpbWUYASABKARSCnNlcnZlcl'
    'RpbWUSQQoOcHJvY2Vzc01ldHJpY3MYCyABKAsyGS5wcm90b3dpcmUuUHJvY2Vzc01ldHJpY3NS'
    'DnByb2Nlc3NNZXRyaWNzEkoKEWNvbm5lY3Rpb25NZXRyaWNzGAwgASgLMhwucHJvdG93aXJlLk'
    'Nvbm5lY3Rpb25NZXRyaWNzUhFjb25uZWN0aW9uTWV0cmljcxJHChBiYW5kd2lkdGhNZXRyaWNz'
    'GA0gASgLMhsucHJvdG93aXJlLkJhbmR3aWR0aE1ldHJpY3NSEGJhbmR3aWR0aE1ldHJpY3MSRw'
    'oQY29uc2Vuc3VzTWV0cmljcxgOIAEoCzIbLnByb3Rvd2lyZS5Db25zZW5zdXNNZXRyaWNzUhBj'
    'b25zZW5zdXNNZXRyaWNzEkEKDnN0b3JhZ2VNZXRyaWNzGA8gASgLMhkucHJvdG93aXJlLlN0b3'
    'JhZ2VNZXRyaWNzUg5zdG9yYWdlTWV0cmljcxIqCgVlcnJvchjoByABKAsyEy5wcm90b3dpcmUu'
    'UlBDRXJyb3JSBWVycm9y');

@$core.Deprecated('Use getServerInfoRequestMessageDescriptor instead')
const GetServerInfoRequestMessage$json = {
  '1': 'GetServerInfoRequestMessage',
};

/// Descriptor for `GetServerInfoRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getServerInfoRequestMessageDescriptor = $convert.base64Decode(
    'ChtHZXRTZXJ2ZXJJbmZvUmVxdWVzdE1lc3NhZ2U=');

@$core.Deprecated('Use getServerInfoResponseMessageDescriptor instead')
const GetServerInfoResponseMessage$json = {
  '1': 'GetServerInfoResponseMessage',
  '2': [
    {'1': 'rpcApiVersion', '3': 1, '4': 1, '5': 13, '10': 'rpcApiVersion'},
    {'1': 'rpcApiRevision', '3': 2, '4': 1, '5': 13, '10': 'rpcApiRevision'},
    {'1': 'serverVersion', '3': 3, '4': 1, '5': 9, '10': 'serverVersion'},
    {'1': 'networkId', '3': 4, '4': 1, '5': 9, '10': 'networkId'},
    {'1': 'hasUtxoIndex', '3': 5, '4': 1, '5': 8, '10': 'hasUtxoIndex'},
    {'1': 'isSynced', '3': 6, '4': 1, '5': 8, '10': 'isSynced'},
    {'1': 'virtualDaaScore', '3': 7, '4': 1, '5': 4, '10': 'virtualDaaScore'},
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetServerInfoResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getServerInfoResponseMessageDescriptor = $convert.base64Decode(
    'ChxHZXRTZXJ2ZXJJbmZvUmVzcG9uc2VNZXNzYWdlEiQKDXJwY0FwaVZlcnNpb24YASABKA1SDX'
    'JwY0FwaVZlcnNpb24SJgoOcnBjQXBpUmV2aXNpb24YAiABKA1SDnJwY0FwaVJldmlzaW9uEiQK'
    'DXNlcnZlclZlcnNpb24YAyABKAlSDXNlcnZlclZlcnNpb24SHAoJbmV0d29ya0lkGAQgASgJUg'
    'luZXR3b3JrSWQSIgoMaGFzVXR4b0luZGV4GAUgASgIUgxoYXNVdHhvSW5kZXgSGgoIaXNTeW5j'
    'ZWQYBiABKAhSCGlzU3luY2VkEigKD3ZpcnR1YWxEYWFTY29yZRgHIAEoBFIPdmlydHVhbERhYV'
    'Njb3JlEioKBWVycm9yGOgHIAEoCzITLnByb3Rvd2lyZS5SUENFcnJvclIFZXJyb3I=');

@$core.Deprecated('Use getSyncStatusRequestMessageDescriptor instead')
const GetSyncStatusRequestMessage$json = {
  '1': 'GetSyncStatusRequestMessage',
};

/// Descriptor for `GetSyncStatusRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSyncStatusRequestMessageDescriptor = $convert.base64Decode(
    'ChtHZXRTeW5jU3RhdHVzUmVxdWVzdE1lc3NhZ2U=');

@$core.Deprecated('Use getSyncStatusResponseMessageDescriptor instead')
const GetSyncStatusResponseMessage$json = {
  '1': 'GetSyncStatusResponseMessage',
  '2': [
    {'1': 'isSynced', '3': 1, '4': 1, '5': 8, '10': 'isSynced'},
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetSyncStatusResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSyncStatusResponseMessageDescriptor = $convert.base64Decode(
    'ChxHZXRTeW5jU3RhdHVzUmVzcG9uc2VNZXNzYWdlEhoKCGlzU3luY2VkGAEgASgIUghpc1N5bm'
    'NlZBIqCgVlcnJvchjoByABKAsyEy5wcm90b3dpcmUuUlBDRXJyb3JSBWVycm9y');

@$core.Deprecated('Use getDaaScoreTimestampEstimateRequestMessageDescriptor instead')
const GetDaaScoreTimestampEstimateRequestMessage$json = {
  '1': 'GetDaaScoreTimestampEstimateRequestMessage',
  '2': [
    {'1': 'daa_scores', '3': 1, '4': 3, '5': 4, '10': 'daaScores'},
  ],
};

/// Descriptor for `GetDaaScoreTimestampEstimateRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDaaScoreTimestampEstimateRequestMessageDescriptor = $convert.base64Decode(
    'CipHZXREYWFTY29yZVRpbWVzdGFtcEVzdGltYXRlUmVxdWVzdE1lc3NhZ2USHQoKZGFhX3Njb3'
    'JlcxgBIAMoBFIJZGFhU2NvcmVz');

@$core.Deprecated('Use getDaaScoreTimestampEstimateResponseMessageDescriptor instead')
const GetDaaScoreTimestampEstimateResponseMessage$json = {
  '1': 'GetDaaScoreTimestampEstimateResponseMessage',
  '2': [
    {'1': 'timestamps', '3': 1, '4': 3, '5': 4, '10': 'timestamps'},
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetDaaScoreTimestampEstimateResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDaaScoreTimestampEstimateResponseMessageDescriptor = $convert.base64Decode(
    'CitHZXREYWFTY29yZVRpbWVzdGFtcEVzdGltYXRlUmVzcG9uc2VNZXNzYWdlEh4KCnRpbWVzdG'
    'FtcHMYASADKARSCnRpbWVzdGFtcHMSKgoFZXJyb3IY6AcgASgLMhMucHJvdG93aXJlLlJQQ0Vy'
    'cm9yUgVlcnJvcg==');

@$core.Deprecated('Use rpcFeerateBucketDescriptor instead')
const RpcFeerateBucket$json = {
  '1': 'RpcFeerateBucket',
  '2': [
    {'1': 'feerate', '3': 1, '4': 1, '5': 1, '10': 'feerate'},
    {'1': 'estimated_seconds', '3': 2, '4': 1, '5': 1, '10': 'estimatedSeconds'},
  ],
};

/// Descriptor for `RpcFeerateBucket`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rpcFeerateBucketDescriptor = $convert.base64Decode(
    'ChBScGNGZWVyYXRlQnVja2V0EhgKB2ZlZXJhdGUYASABKAFSB2ZlZXJhdGUSKwoRZXN0aW1hdG'
    'VkX3NlY29uZHMYAiABKAFSEGVzdGltYXRlZFNlY29uZHM=');

@$core.Deprecated('Use rpcFeeEstimateDescriptor instead')
const RpcFeeEstimate$json = {
  '1': 'RpcFeeEstimate',
  '2': [
    {'1': 'priority_bucket', '3': 1, '4': 1, '5': 11, '6': '.protowire.RpcFeerateBucket', '10': 'priorityBucket'},
    {'1': 'normal_buckets', '3': 2, '4': 3, '5': 11, '6': '.protowire.RpcFeerateBucket', '10': 'normalBuckets'},
    {'1': 'low_buckets', '3': 3, '4': 3, '5': 11, '6': '.protowire.RpcFeerateBucket', '10': 'lowBuckets'},
  ],
};

/// Descriptor for `RpcFeeEstimate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rpcFeeEstimateDescriptor = $convert.base64Decode(
    'Cg5ScGNGZWVFc3RpbWF0ZRJECg9wcmlvcml0eV9idWNrZXQYASABKAsyGy5wcm90b3dpcmUuUn'
    'BjRmVlcmF0ZUJ1Y2tldFIOcHJpb3JpdHlCdWNrZXQSQgoObm9ybWFsX2J1Y2tldHMYAiADKAsy'
    'Gy5wcm90b3dpcmUuUnBjRmVlcmF0ZUJ1Y2tldFINbm9ybWFsQnVja2V0cxI8Cgtsb3dfYnVja2'
    'V0cxgDIAMoCzIbLnByb3Rvd2lyZS5ScGNGZWVyYXRlQnVja2V0Ugpsb3dCdWNrZXRz');

@$core.Deprecated('Use rpcFeeEstimateVerboseExperimentalDataDescriptor instead')
const RpcFeeEstimateVerboseExperimentalData$json = {
  '1': 'RpcFeeEstimateVerboseExperimentalData',
  '2': [
    {'1': 'mempool_ready_transactions_count', '3': 1, '4': 1, '5': 4, '10': 'mempoolReadyTransactionsCount'},
    {'1': 'mempool_ready_transactions_total_mass', '3': 2, '4': 1, '5': 4, '10': 'mempoolReadyTransactionsTotalMass'},
    {'1': 'network_mass_per_second', '3': 3, '4': 1, '5': 4, '10': 'networkMassPerSecond'},
    {'1': 'next_block_template_feerate_min', '3': 11, '4': 1, '5': 1, '10': 'nextBlockTemplateFeerateMin'},
    {'1': 'next_block_template_feerate_median', '3': 12, '4': 1, '5': 1, '10': 'nextBlockTemplateFeerateMedian'},
    {'1': 'next_block_template_feerate_max', '3': 13, '4': 1, '5': 1, '10': 'nextBlockTemplateFeerateMax'},
  ],
};

/// Descriptor for `RpcFeeEstimateVerboseExperimentalData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rpcFeeEstimateVerboseExperimentalDataDescriptor = $convert.base64Decode(
    'CiVScGNGZWVFc3RpbWF0ZVZlcmJvc2VFeHBlcmltZW50YWxEYXRhEkcKIG1lbXBvb2xfcmVhZH'
    'lfdHJhbnNhY3Rpb25zX2NvdW50GAEgASgEUh1tZW1wb29sUmVhZHlUcmFuc2FjdGlvbnNDb3Vu'
    'dBJQCiVtZW1wb29sX3JlYWR5X3RyYW5zYWN0aW9uc190b3RhbF9tYXNzGAIgASgEUiFtZW1wb2'
    '9sUmVhZHlUcmFuc2FjdGlvbnNUb3RhbE1hc3MSNQoXbmV0d29ya19tYXNzX3Blcl9zZWNvbmQY'
    'AyABKARSFG5ldHdvcmtNYXNzUGVyU2Vjb25kEkQKH25leHRfYmxvY2tfdGVtcGxhdGVfZmVlcm'
    'F0ZV9taW4YCyABKAFSG25leHRCbG9ja1RlbXBsYXRlRmVlcmF0ZU1pbhJKCiJuZXh0X2Jsb2Nr'
    'X3RlbXBsYXRlX2ZlZXJhdGVfbWVkaWFuGAwgASgBUh5uZXh0QmxvY2tUZW1wbGF0ZUZlZXJhdG'
    'VNZWRpYW4SRAofbmV4dF9ibG9ja190ZW1wbGF0ZV9mZWVyYXRlX21heBgNIAEoAVIbbmV4dEJs'
    'b2NrVGVtcGxhdGVGZWVyYXRlTWF4');

@$core.Deprecated('Use getFeeEstimateRequestMessageDescriptor instead')
const GetFeeEstimateRequestMessage$json = {
  '1': 'GetFeeEstimateRequestMessage',
};

/// Descriptor for `GetFeeEstimateRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFeeEstimateRequestMessageDescriptor = $convert.base64Decode(
    'ChxHZXRGZWVFc3RpbWF0ZVJlcXVlc3RNZXNzYWdl');

@$core.Deprecated('Use getFeeEstimateResponseMessageDescriptor instead')
const GetFeeEstimateResponseMessage$json = {
  '1': 'GetFeeEstimateResponseMessage',
  '2': [
    {'1': 'estimate', '3': 1, '4': 1, '5': 11, '6': '.protowire.RpcFeeEstimate', '10': 'estimate'},
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetFeeEstimateResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFeeEstimateResponseMessageDescriptor = $convert.base64Decode(
    'Ch1HZXRGZWVFc3RpbWF0ZVJlc3BvbnNlTWVzc2FnZRI1Cghlc3RpbWF0ZRgBIAEoCzIZLnByb3'
    'Rvd2lyZS5ScGNGZWVFc3RpbWF0ZVIIZXN0aW1hdGUSKgoFZXJyb3IY6AcgASgLMhMucHJvdG93'
    'aXJlLlJQQ0Vycm9yUgVlcnJvcg==');

@$core.Deprecated('Use getFeeEstimateExperimentalRequestMessageDescriptor instead')
const GetFeeEstimateExperimentalRequestMessage$json = {
  '1': 'GetFeeEstimateExperimentalRequestMessage',
  '2': [
    {'1': 'verbose', '3': 1, '4': 1, '5': 8, '10': 'verbose'},
  ],
};

/// Descriptor for `GetFeeEstimateExperimentalRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFeeEstimateExperimentalRequestMessageDescriptor = $convert.base64Decode(
    'CihHZXRGZWVFc3RpbWF0ZUV4cGVyaW1lbnRhbFJlcXVlc3RNZXNzYWdlEhgKB3ZlcmJvc2UYAS'
    'ABKAhSB3ZlcmJvc2U=');

@$core.Deprecated('Use getFeeEstimateExperimentalResponseMessageDescriptor instead')
const GetFeeEstimateExperimentalResponseMessage$json = {
  '1': 'GetFeeEstimateExperimentalResponseMessage',
  '2': [
    {'1': 'estimate', '3': 1, '4': 1, '5': 11, '6': '.protowire.RpcFeeEstimate', '10': 'estimate'},
    {'1': 'verbose', '3': 2, '4': 1, '5': 11, '6': '.protowire.RpcFeeEstimateVerboseExperimentalData', '10': 'verbose'},
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetFeeEstimateExperimentalResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFeeEstimateExperimentalResponseMessageDescriptor = $convert.base64Decode(
    'CilHZXRGZWVFc3RpbWF0ZUV4cGVyaW1lbnRhbFJlc3BvbnNlTWVzc2FnZRI1Cghlc3RpbWF0ZR'
    'gBIAEoCzIZLnByb3Rvd2lyZS5ScGNGZWVFc3RpbWF0ZVIIZXN0aW1hdGUSSgoHdmVyYm9zZRgC'
    'IAEoCzIwLnByb3Rvd2lyZS5ScGNGZWVFc3RpbWF0ZVZlcmJvc2VFeHBlcmltZW50YWxEYXRhUg'
    'd2ZXJib3NlEioKBWVycm9yGOgHIAEoCzITLnByb3Rvd2lyZS5SUENFcnJvclIFZXJyb3I=');

@$core.Deprecated('Use getCurrentBlockColorRequestMessageDescriptor instead')
const GetCurrentBlockColorRequestMessage$json = {
  '1': 'GetCurrentBlockColorRequestMessage',
  '2': [
    {'1': 'hash', '3': 1, '4': 1, '5': 9, '10': 'hash'},
  ],
};

/// Descriptor for `GetCurrentBlockColorRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCurrentBlockColorRequestMessageDescriptor = $convert.base64Decode(
    'CiJHZXRDdXJyZW50QmxvY2tDb2xvclJlcXVlc3RNZXNzYWdlEhIKBGhhc2gYASABKAlSBGhhc2'
    'g=');

@$core.Deprecated('Use getCurrentBlockColorResponseMessageDescriptor instead')
const GetCurrentBlockColorResponseMessage$json = {
  '1': 'GetCurrentBlockColorResponseMessage',
  '2': [
    {'1': 'blue', '3': 1, '4': 1, '5': 8, '10': 'blue'},
    {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetCurrentBlockColorResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCurrentBlockColorResponseMessageDescriptor = $convert.base64Decode(
    'CiNHZXRDdXJyZW50QmxvY2tDb2xvclJlc3BvbnNlTWVzc2FnZRISCgRibHVlGAEgASgIUgRibH'
    'VlEioKBWVycm9yGOgHIAEoCzITLnByb3Rvd2lyZS5SUENFcnJvclIFZXJyb3I=');

