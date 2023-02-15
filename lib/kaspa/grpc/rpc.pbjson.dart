///
//  Generated code. Do not modify.
//  source: rpc.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use rPCErrorDescriptor instead')
const RPCError$json = const {
  '1': 'RPCError',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `RPCError`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rPCErrorDescriptor = $convert.base64Decode('CghSUENFcnJvchIYCgdtZXNzYWdlGAEgASgJUgdtZXNzYWdl');
@$core.Deprecated('Use rpcBlockDescriptor instead')
const RpcBlock$json = const {
  '1': 'RpcBlock',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.protowire.RpcBlockHeader', '10': 'header'},
    const {'1': 'transactions', '3': 2, '4': 3, '5': 11, '6': '.protowire.RpcTransaction', '10': 'transactions'},
    const {'1': 'verboseData', '3': 3, '4': 1, '5': 11, '6': '.protowire.RpcBlockVerboseData', '10': 'verboseData'},
  ],
};

/// Descriptor for `RpcBlock`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rpcBlockDescriptor = $convert.base64Decode('CghScGNCbG9jaxIxCgZoZWFkZXIYASABKAsyGS5wcm90b3dpcmUuUnBjQmxvY2tIZWFkZXJSBmhlYWRlchI9Cgx0cmFuc2FjdGlvbnMYAiADKAsyGS5wcm90b3dpcmUuUnBjVHJhbnNhY3Rpb25SDHRyYW5zYWN0aW9ucxJACgt2ZXJib3NlRGF0YRgDIAEoCzIeLnByb3Rvd2lyZS5ScGNCbG9ja1ZlcmJvc2VEYXRhUgt2ZXJib3NlRGF0YQ==');
@$core.Deprecated('Use rpcBlockHeaderDescriptor instead')
const RpcBlockHeader$json = const {
  '1': 'RpcBlockHeader',
  '2': const [
    const {'1': 'version', '3': 1, '4': 1, '5': 13, '10': 'version'},
    const {'1': 'parents', '3': 12, '4': 3, '5': 11, '6': '.protowire.RpcBlockLevelParents', '10': 'parents'},
    const {'1': 'hashMerkleRoot', '3': 3, '4': 1, '5': 9, '10': 'hashMerkleRoot'},
    const {'1': 'acceptedIdMerkleRoot', '3': 4, '4': 1, '5': 9, '10': 'acceptedIdMerkleRoot'},
    const {'1': 'utxoCommitment', '3': 5, '4': 1, '5': 9, '10': 'utxoCommitment'},
    const {'1': 'timestamp', '3': 6, '4': 1, '5': 3, '10': 'timestamp'},
    const {'1': 'bits', '3': 7, '4': 1, '5': 13, '10': 'bits'},
    const {'1': 'nonce', '3': 8, '4': 1, '5': 4, '10': 'nonce'},
    const {'1': 'daaScore', '3': 9, '4': 1, '5': 4, '10': 'daaScore'},
    const {'1': 'blueWork', '3': 10, '4': 1, '5': 9, '10': 'blueWork'},
    const {'1': 'pruningPoint', '3': 14, '4': 1, '5': 9, '10': 'pruningPoint'},
    const {'1': 'blueScore', '3': 13, '4': 1, '5': 4, '10': 'blueScore'},
  ],
};

/// Descriptor for `RpcBlockHeader`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rpcBlockHeaderDescriptor = $convert.base64Decode('Cg5ScGNCbG9ja0hlYWRlchIYCgd2ZXJzaW9uGAEgASgNUgd2ZXJzaW9uEjkKB3BhcmVudHMYDCADKAsyHy5wcm90b3dpcmUuUnBjQmxvY2tMZXZlbFBhcmVudHNSB3BhcmVudHMSJgoOaGFzaE1lcmtsZVJvb3QYAyABKAlSDmhhc2hNZXJrbGVSb290EjIKFGFjY2VwdGVkSWRNZXJrbGVSb290GAQgASgJUhRhY2NlcHRlZElkTWVya2xlUm9vdBImCg51dHhvQ29tbWl0bWVudBgFIAEoCVIOdXR4b0NvbW1pdG1lbnQSHAoJdGltZXN0YW1wGAYgASgDUgl0aW1lc3RhbXASEgoEYml0cxgHIAEoDVIEYml0cxIUCgVub25jZRgIIAEoBFIFbm9uY2USGgoIZGFhU2NvcmUYCSABKARSCGRhYVNjb3JlEhoKCGJsdWVXb3JrGAogASgJUghibHVlV29yaxIiCgxwcnVuaW5nUG9pbnQYDiABKAlSDHBydW5pbmdQb2ludBIcCglibHVlU2NvcmUYDSABKARSCWJsdWVTY29yZQ==');
@$core.Deprecated('Use rpcBlockLevelParentsDescriptor instead')
const RpcBlockLevelParents$json = const {
  '1': 'RpcBlockLevelParents',
  '2': const [
    const {'1': 'parentHashes', '3': 1, '4': 3, '5': 9, '10': 'parentHashes'},
  ],
};

/// Descriptor for `RpcBlockLevelParents`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rpcBlockLevelParentsDescriptor = $convert.base64Decode('ChRScGNCbG9ja0xldmVsUGFyZW50cxIiCgxwYXJlbnRIYXNoZXMYASADKAlSDHBhcmVudEhhc2hlcw==');
@$core.Deprecated('Use rpcBlockVerboseDataDescriptor instead')
const RpcBlockVerboseData$json = const {
  '1': 'RpcBlockVerboseData',
  '2': const [
    const {'1': 'hash', '3': 1, '4': 1, '5': 9, '10': 'hash'},
    const {'1': 'difficulty', '3': 11, '4': 1, '5': 1, '10': 'difficulty'},
    const {'1': 'selectedParentHash', '3': 13, '4': 1, '5': 9, '10': 'selectedParentHash'},
    const {'1': 'transactionIds', '3': 14, '4': 3, '5': 9, '10': 'transactionIds'},
    const {'1': 'isHeaderOnly', '3': 15, '4': 1, '5': 8, '10': 'isHeaderOnly'},
    const {'1': 'blueScore', '3': 16, '4': 1, '5': 4, '10': 'blueScore'},
    const {'1': 'childrenHashes', '3': 17, '4': 3, '5': 9, '10': 'childrenHashes'},
    const {'1': 'mergeSetBluesHashes', '3': 18, '4': 3, '5': 9, '10': 'mergeSetBluesHashes'},
    const {'1': 'mergeSetRedsHashes', '3': 19, '4': 3, '5': 9, '10': 'mergeSetRedsHashes'},
    const {'1': 'isChainBlock', '3': 20, '4': 1, '5': 8, '10': 'isChainBlock'},
  ],
};

/// Descriptor for `RpcBlockVerboseData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rpcBlockVerboseDataDescriptor = $convert.base64Decode('ChNScGNCbG9ja1ZlcmJvc2VEYXRhEhIKBGhhc2gYASABKAlSBGhhc2gSHgoKZGlmZmljdWx0eRgLIAEoAVIKZGlmZmljdWx0eRIuChJzZWxlY3RlZFBhcmVudEhhc2gYDSABKAlSEnNlbGVjdGVkUGFyZW50SGFzaBImCg50cmFuc2FjdGlvbklkcxgOIAMoCVIOdHJhbnNhY3Rpb25JZHMSIgoMaXNIZWFkZXJPbmx5GA8gASgIUgxpc0hlYWRlck9ubHkSHAoJYmx1ZVNjb3JlGBAgASgEUglibHVlU2NvcmUSJgoOY2hpbGRyZW5IYXNoZXMYESADKAlSDmNoaWxkcmVuSGFzaGVzEjAKE21lcmdlU2V0Qmx1ZXNIYXNoZXMYEiADKAlSE21lcmdlU2V0Qmx1ZXNIYXNoZXMSLgoSbWVyZ2VTZXRSZWRzSGFzaGVzGBMgAygJUhJtZXJnZVNldFJlZHNIYXNoZXMSIgoMaXNDaGFpbkJsb2NrGBQgASgIUgxpc0NoYWluQmxvY2s=');
@$core.Deprecated('Use rpcTransactionDescriptor instead')
const RpcTransaction$json = const {
  '1': 'RpcTransaction',
  '2': const [
    const {'1': 'version', '3': 1, '4': 1, '5': 13, '10': 'version'},
    const {'1': 'inputs', '3': 2, '4': 3, '5': 11, '6': '.protowire.RpcTransactionInput', '10': 'inputs'},
    const {'1': 'outputs', '3': 3, '4': 3, '5': 11, '6': '.protowire.RpcTransactionOutput', '10': 'outputs'},
    const {'1': 'lockTime', '3': 4, '4': 1, '5': 4, '10': 'lockTime'},
    const {'1': 'subnetworkId', '3': 5, '4': 1, '5': 9, '10': 'subnetworkId'},
    const {'1': 'gas', '3': 6, '4': 1, '5': 4, '10': 'gas'},
    const {'1': 'payload', '3': 8, '4': 1, '5': 9, '10': 'payload'},
    const {'1': 'verboseData', '3': 9, '4': 1, '5': 11, '6': '.protowire.RpcTransactionVerboseData', '10': 'verboseData'},
  ],
};

/// Descriptor for `RpcTransaction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rpcTransactionDescriptor = $convert.base64Decode('Cg5ScGNUcmFuc2FjdGlvbhIYCgd2ZXJzaW9uGAEgASgNUgd2ZXJzaW9uEjYKBmlucHV0cxgCIAMoCzIeLnByb3Rvd2lyZS5ScGNUcmFuc2FjdGlvbklucHV0UgZpbnB1dHMSOQoHb3V0cHV0cxgDIAMoCzIfLnByb3Rvd2lyZS5ScGNUcmFuc2FjdGlvbk91dHB1dFIHb3V0cHV0cxIaCghsb2NrVGltZRgEIAEoBFIIbG9ja1RpbWUSIgoMc3VibmV0d29ya0lkGAUgASgJUgxzdWJuZXR3b3JrSWQSEAoDZ2FzGAYgASgEUgNnYXMSGAoHcGF5bG9hZBgIIAEoCVIHcGF5bG9hZBJGCgt2ZXJib3NlRGF0YRgJIAEoCzIkLnByb3Rvd2lyZS5ScGNUcmFuc2FjdGlvblZlcmJvc2VEYXRhUgt2ZXJib3NlRGF0YQ==');
@$core.Deprecated('Use rpcTransactionInputDescriptor instead')
const RpcTransactionInput$json = const {
  '1': 'RpcTransactionInput',
  '2': const [
    const {'1': 'previousOutpoint', '3': 1, '4': 1, '5': 11, '6': '.protowire.RpcOutpoint', '10': 'previousOutpoint'},
    const {'1': 'signatureScript', '3': 2, '4': 1, '5': 9, '10': 'signatureScript'},
    const {'1': 'sequence', '3': 3, '4': 1, '5': 4, '10': 'sequence'},
    const {'1': 'sigOpCount', '3': 5, '4': 1, '5': 13, '10': 'sigOpCount'},
    const {'1': 'verboseData', '3': 4, '4': 1, '5': 11, '6': '.protowire.RpcTransactionInputVerboseData', '10': 'verboseData'},
  ],
};

/// Descriptor for `RpcTransactionInput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rpcTransactionInputDescriptor = $convert.base64Decode('ChNScGNUcmFuc2FjdGlvbklucHV0EkIKEHByZXZpb3VzT3V0cG9pbnQYASABKAsyFi5wcm90b3dpcmUuUnBjT3V0cG9pbnRSEHByZXZpb3VzT3V0cG9pbnQSKAoPc2lnbmF0dXJlU2NyaXB0GAIgASgJUg9zaWduYXR1cmVTY3JpcHQSGgoIc2VxdWVuY2UYAyABKARSCHNlcXVlbmNlEh4KCnNpZ09wQ291bnQYBSABKA1SCnNpZ09wQ291bnQSSwoLdmVyYm9zZURhdGEYBCABKAsyKS5wcm90b3dpcmUuUnBjVHJhbnNhY3Rpb25JbnB1dFZlcmJvc2VEYXRhUgt2ZXJib3NlRGF0YQ==');
@$core.Deprecated('Use rpcScriptPublicKeyDescriptor instead')
const RpcScriptPublicKey$json = const {
  '1': 'RpcScriptPublicKey',
  '2': const [
    const {'1': 'version', '3': 1, '4': 1, '5': 13, '10': 'version'},
    const {'1': 'scriptPublicKey', '3': 2, '4': 1, '5': 9, '10': 'scriptPublicKey'},
  ],
};

/// Descriptor for `RpcScriptPublicKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rpcScriptPublicKeyDescriptor = $convert.base64Decode('ChJScGNTY3JpcHRQdWJsaWNLZXkSGAoHdmVyc2lvbhgBIAEoDVIHdmVyc2lvbhIoCg9zY3JpcHRQdWJsaWNLZXkYAiABKAlSD3NjcmlwdFB1YmxpY0tleQ==');
@$core.Deprecated('Use rpcTransactionOutputDescriptor instead')
const RpcTransactionOutput$json = const {
  '1': 'RpcTransactionOutput',
  '2': const [
    const {'1': 'amount', '3': 1, '4': 1, '5': 4, '10': 'amount'},
    const {'1': 'scriptPublicKey', '3': 2, '4': 1, '5': 11, '6': '.protowire.RpcScriptPublicKey', '10': 'scriptPublicKey'},
    const {'1': 'verboseData', '3': 3, '4': 1, '5': 11, '6': '.protowire.RpcTransactionOutputVerboseData', '10': 'verboseData'},
  ],
};

/// Descriptor for `RpcTransactionOutput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rpcTransactionOutputDescriptor = $convert.base64Decode('ChRScGNUcmFuc2FjdGlvbk91dHB1dBIWCgZhbW91bnQYASABKARSBmFtb3VudBJHCg9zY3JpcHRQdWJsaWNLZXkYAiABKAsyHS5wcm90b3dpcmUuUnBjU2NyaXB0UHVibGljS2V5Ug9zY3JpcHRQdWJsaWNLZXkSTAoLdmVyYm9zZURhdGEYAyABKAsyKi5wcm90b3dpcmUuUnBjVHJhbnNhY3Rpb25PdXRwdXRWZXJib3NlRGF0YVILdmVyYm9zZURhdGE=');
@$core.Deprecated('Use rpcOutpointDescriptor instead')
const RpcOutpoint$json = const {
  '1': 'RpcOutpoint',
  '2': const [
    const {'1': 'transactionId', '3': 1, '4': 1, '5': 9, '10': 'transactionId'},
    const {'1': 'index', '3': 2, '4': 1, '5': 13, '10': 'index'},
  ],
};

/// Descriptor for `RpcOutpoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rpcOutpointDescriptor = $convert.base64Decode('CgtScGNPdXRwb2ludBIkCg10cmFuc2FjdGlvbklkGAEgASgJUg10cmFuc2FjdGlvbklkEhQKBWluZGV4GAIgASgNUgVpbmRleA==');
@$core.Deprecated('Use rpcUtxoEntryDescriptor instead')
const RpcUtxoEntry$json = const {
  '1': 'RpcUtxoEntry',
  '2': const [
    const {'1': 'amount', '3': 1, '4': 1, '5': 4, '10': 'amount'},
    const {'1': 'scriptPublicKey', '3': 2, '4': 1, '5': 11, '6': '.protowire.RpcScriptPublicKey', '10': 'scriptPublicKey'},
    const {'1': 'blockDaaScore', '3': 3, '4': 1, '5': 4, '10': 'blockDaaScore'},
    const {'1': 'isCoinbase', '3': 4, '4': 1, '5': 8, '10': 'isCoinbase'},
  ],
};

/// Descriptor for `RpcUtxoEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rpcUtxoEntryDescriptor = $convert.base64Decode('CgxScGNVdHhvRW50cnkSFgoGYW1vdW50GAEgASgEUgZhbW91bnQSRwoPc2NyaXB0UHVibGljS2V5GAIgASgLMh0ucHJvdG93aXJlLlJwY1NjcmlwdFB1YmxpY0tleVIPc2NyaXB0UHVibGljS2V5EiQKDWJsb2NrRGFhU2NvcmUYAyABKARSDWJsb2NrRGFhU2NvcmUSHgoKaXNDb2luYmFzZRgEIAEoCFIKaXNDb2luYmFzZQ==');
@$core.Deprecated('Use rpcTransactionVerboseDataDescriptor instead')
const RpcTransactionVerboseData$json = const {
  '1': 'RpcTransactionVerboseData',
  '2': const [
    const {'1': 'transactionId', '3': 1, '4': 1, '5': 9, '10': 'transactionId'},
    const {'1': 'hash', '3': 2, '4': 1, '5': 9, '10': 'hash'},
    const {'1': 'mass', '3': 4, '4': 1, '5': 4, '10': 'mass'},
    const {'1': 'blockHash', '3': 12, '4': 1, '5': 9, '10': 'blockHash'},
    const {'1': 'blockTime', '3': 14, '4': 1, '5': 4, '10': 'blockTime'},
  ],
};

/// Descriptor for `RpcTransactionVerboseData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rpcTransactionVerboseDataDescriptor = $convert.base64Decode('ChlScGNUcmFuc2FjdGlvblZlcmJvc2VEYXRhEiQKDXRyYW5zYWN0aW9uSWQYASABKAlSDXRyYW5zYWN0aW9uSWQSEgoEaGFzaBgCIAEoCVIEaGFzaBISCgRtYXNzGAQgASgEUgRtYXNzEhwKCWJsb2NrSGFzaBgMIAEoCVIJYmxvY2tIYXNoEhwKCWJsb2NrVGltZRgOIAEoBFIJYmxvY2tUaW1l');
@$core.Deprecated('Use rpcTransactionInputVerboseDataDescriptor instead')
const RpcTransactionInputVerboseData$json = const {
  '1': 'RpcTransactionInputVerboseData',
};

/// Descriptor for `RpcTransactionInputVerboseData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rpcTransactionInputVerboseDataDescriptor = $convert.base64Decode('Ch5ScGNUcmFuc2FjdGlvbklucHV0VmVyYm9zZURhdGE=');
@$core.Deprecated('Use rpcTransactionOutputVerboseDataDescriptor instead')
const RpcTransactionOutputVerboseData$json = const {
  '1': 'RpcTransactionOutputVerboseData',
  '2': const [
    const {'1': 'scriptPublicKeyType', '3': 5, '4': 1, '5': 9, '10': 'scriptPublicKeyType'},
    const {'1': 'scriptPublicKeyAddress', '3': 6, '4': 1, '5': 9, '10': 'scriptPublicKeyAddress'},
  ],
};

/// Descriptor for `RpcTransactionOutputVerboseData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rpcTransactionOutputVerboseDataDescriptor = $convert.base64Decode('Ch9ScGNUcmFuc2FjdGlvbk91dHB1dFZlcmJvc2VEYXRhEjAKE3NjcmlwdFB1YmxpY0tleVR5cGUYBSABKAlSE3NjcmlwdFB1YmxpY0tleVR5cGUSNgoWc2NyaXB0UHVibGljS2V5QWRkcmVzcxgGIAEoCVIWc2NyaXB0UHVibGljS2V5QWRkcmVzcw==');
@$core.Deprecated('Use getCurrentNetworkRequestMessageDescriptor instead')
const GetCurrentNetworkRequestMessage$json = const {
  '1': 'GetCurrentNetworkRequestMessage',
};

/// Descriptor for `GetCurrentNetworkRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCurrentNetworkRequestMessageDescriptor = $convert.base64Decode('Ch9HZXRDdXJyZW50TmV0d29ya1JlcXVlc3RNZXNzYWdl');
@$core.Deprecated('Use getCurrentNetworkResponseMessageDescriptor instead')
const GetCurrentNetworkResponseMessage$json = const {
  '1': 'GetCurrentNetworkResponseMessage',
  '2': const [
    const {'1': 'currentNetwork', '3': 1, '4': 1, '5': 9, '10': 'currentNetwork'},
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetCurrentNetworkResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCurrentNetworkResponseMessageDescriptor = $convert.base64Decode('CiBHZXRDdXJyZW50TmV0d29ya1Jlc3BvbnNlTWVzc2FnZRImCg5jdXJyZW50TmV0d29yaxgBIAEoCVIOY3VycmVudE5ldHdvcmsSKgoFZXJyb3IY6AcgASgLMhMucHJvdG93aXJlLlJQQ0Vycm9yUgVlcnJvcg==');
@$core.Deprecated('Use submitBlockRequestMessageDescriptor instead')
const SubmitBlockRequestMessage$json = const {
  '1': 'SubmitBlockRequestMessage',
  '2': const [
    const {'1': 'block', '3': 2, '4': 1, '5': 11, '6': '.protowire.RpcBlock', '10': 'block'},
    const {'1': 'allowNonDAABlocks', '3': 3, '4': 1, '5': 8, '10': 'allowNonDAABlocks'},
  ],
};

/// Descriptor for `SubmitBlockRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List submitBlockRequestMessageDescriptor = $convert.base64Decode('ChlTdWJtaXRCbG9ja1JlcXVlc3RNZXNzYWdlEikKBWJsb2NrGAIgASgLMhMucHJvdG93aXJlLlJwY0Jsb2NrUgVibG9jaxIsChFhbGxvd05vbkRBQUJsb2NrcxgDIAEoCFIRYWxsb3dOb25EQUFCbG9ja3M=');
@$core.Deprecated('Use submitBlockResponseMessageDescriptor instead')
const SubmitBlockResponseMessage$json = const {
  '1': 'SubmitBlockResponseMessage',
  '2': const [
    const {'1': 'rejectReason', '3': 1, '4': 1, '5': 14, '6': '.protowire.SubmitBlockResponseMessage.RejectReason', '10': 'rejectReason'},
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
  '4': const [SubmitBlockResponseMessage_RejectReason$json],
};

@$core.Deprecated('Use submitBlockResponseMessageDescriptor instead')
const SubmitBlockResponseMessage_RejectReason$json = const {
  '1': 'RejectReason',
  '2': const [
    const {'1': 'NONE', '2': 0},
    const {'1': 'BLOCK_INVALID', '2': 1},
    const {'1': 'IS_IN_IBD', '2': 2},
  ],
};

/// Descriptor for `SubmitBlockResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List submitBlockResponseMessageDescriptor = $convert.base64Decode('ChpTdWJtaXRCbG9ja1Jlc3BvbnNlTWVzc2FnZRJWCgxyZWplY3RSZWFzb24YASABKA4yMi5wcm90b3dpcmUuU3VibWl0QmxvY2tSZXNwb25zZU1lc3NhZ2UuUmVqZWN0UmVhc29uUgxyZWplY3RSZWFzb24SKgoFZXJyb3IY6AcgASgLMhMucHJvdG93aXJlLlJQQ0Vycm9yUgVlcnJvciI6CgxSZWplY3RSZWFzb24SCAoETk9ORRAAEhEKDUJMT0NLX0lOVkFMSUQQARINCglJU19JTl9JQkQQAg==');
@$core.Deprecated('Use getBlockTemplateRequestMessageDescriptor instead')
const GetBlockTemplateRequestMessage$json = const {
  '1': 'GetBlockTemplateRequestMessage',
  '2': const [
    const {'1': 'payAddress', '3': 1, '4': 1, '5': 9, '10': 'payAddress'},
    const {'1': 'extraData', '3': 2, '4': 1, '5': 9, '10': 'extraData'},
  ],
};

/// Descriptor for `GetBlockTemplateRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBlockTemplateRequestMessageDescriptor = $convert.base64Decode('Ch5HZXRCbG9ja1RlbXBsYXRlUmVxdWVzdE1lc3NhZ2USHgoKcGF5QWRkcmVzcxgBIAEoCVIKcGF5QWRkcmVzcxIcCglleHRyYURhdGEYAiABKAlSCWV4dHJhRGF0YQ==');
@$core.Deprecated('Use getBlockTemplateResponseMessageDescriptor instead')
const GetBlockTemplateResponseMessage$json = const {
  '1': 'GetBlockTemplateResponseMessage',
  '2': const [
    const {'1': 'block', '3': 3, '4': 1, '5': 11, '6': '.protowire.RpcBlock', '10': 'block'},
    const {'1': 'isSynced', '3': 2, '4': 1, '5': 8, '10': 'isSynced'},
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetBlockTemplateResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBlockTemplateResponseMessageDescriptor = $convert.base64Decode('Ch9HZXRCbG9ja1RlbXBsYXRlUmVzcG9uc2VNZXNzYWdlEikKBWJsb2NrGAMgASgLMhMucHJvdG93aXJlLlJwY0Jsb2NrUgVibG9jaxIaCghpc1N5bmNlZBgCIAEoCFIIaXNTeW5jZWQSKgoFZXJyb3IY6AcgASgLMhMucHJvdG93aXJlLlJQQ0Vycm9yUgVlcnJvcg==');
@$core.Deprecated('Use notifyBlockAddedRequestMessageDescriptor instead')
const NotifyBlockAddedRequestMessage$json = const {
  '1': 'NotifyBlockAddedRequestMessage',
};

/// Descriptor for `NotifyBlockAddedRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notifyBlockAddedRequestMessageDescriptor = $convert.base64Decode('Ch5Ob3RpZnlCbG9ja0FkZGVkUmVxdWVzdE1lc3NhZ2U=');
@$core.Deprecated('Use notifyBlockAddedResponseMessageDescriptor instead')
const NotifyBlockAddedResponseMessage$json = const {
  '1': 'NotifyBlockAddedResponseMessage',
  '2': const [
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `NotifyBlockAddedResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notifyBlockAddedResponseMessageDescriptor = $convert.base64Decode('Ch9Ob3RpZnlCbG9ja0FkZGVkUmVzcG9uc2VNZXNzYWdlEioKBWVycm9yGOgHIAEoCzITLnByb3Rvd2lyZS5SUENFcnJvclIFZXJyb3I=');
@$core.Deprecated('Use blockAddedNotificationMessageDescriptor instead')
const BlockAddedNotificationMessage$json = const {
  '1': 'BlockAddedNotificationMessage',
  '2': const [
    const {'1': 'block', '3': 3, '4': 1, '5': 11, '6': '.protowire.RpcBlock', '10': 'block'},
  ],
};

/// Descriptor for `BlockAddedNotificationMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List blockAddedNotificationMessageDescriptor = $convert.base64Decode('Ch1CbG9ja0FkZGVkTm90aWZpY2F0aW9uTWVzc2FnZRIpCgVibG9jaxgDIAEoCzITLnByb3Rvd2lyZS5ScGNCbG9ja1IFYmxvY2s=');
@$core.Deprecated('Use getPeerAddressesRequestMessageDescriptor instead')
const GetPeerAddressesRequestMessage$json = const {
  '1': 'GetPeerAddressesRequestMessage',
};

/// Descriptor for `GetPeerAddressesRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPeerAddressesRequestMessageDescriptor = $convert.base64Decode('Ch5HZXRQZWVyQWRkcmVzc2VzUmVxdWVzdE1lc3NhZ2U=');
@$core.Deprecated('Use getPeerAddressesResponseMessageDescriptor instead')
const GetPeerAddressesResponseMessage$json = const {
  '1': 'GetPeerAddressesResponseMessage',
  '2': const [
    const {'1': 'addresses', '3': 1, '4': 3, '5': 11, '6': '.protowire.GetPeerAddressesKnownAddressMessage', '10': 'addresses'},
    const {'1': 'bannedAddresses', '3': 2, '4': 3, '5': 11, '6': '.protowire.GetPeerAddressesKnownAddressMessage', '10': 'bannedAddresses'},
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetPeerAddressesResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPeerAddressesResponseMessageDescriptor = $convert.base64Decode('Ch9HZXRQZWVyQWRkcmVzc2VzUmVzcG9uc2VNZXNzYWdlEkwKCWFkZHJlc3NlcxgBIAMoCzIuLnByb3Rvd2lyZS5HZXRQZWVyQWRkcmVzc2VzS25vd25BZGRyZXNzTWVzc2FnZVIJYWRkcmVzc2VzElgKD2Jhbm5lZEFkZHJlc3NlcxgCIAMoCzIuLnByb3Rvd2lyZS5HZXRQZWVyQWRkcmVzc2VzS25vd25BZGRyZXNzTWVzc2FnZVIPYmFubmVkQWRkcmVzc2VzEioKBWVycm9yGOgHIAEoCzITLnByb3Rvd2lyZS5SUENFcnJvclIFZXJyb3I=');
@$core.Deprecated('Use getPeerAddressesKnownAddressMessageDescriptor instead')
const GetPeerAddressesKnownAddressMessage$json = const {
  '1': 'GetPeerAddressesKnownAddressMessage',
  '2': const [
    const {'1': 'Addr', '3': 1, '4': 1, '5': 9, '10': 'Addr'},
  ],
};

/// Descriptor for `GetPeerAddressesKnownAddressMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPeerAddressesKnownAddressMessageDescriptor = $convert.base64Decode('CiNHZXRQZWVyQWRkcmVzc2VzS25vd25BZGRyZXNzTWVzc2FnZRISCgRBZGRyGAEgASgJUgRBZGRy');
@$core.Deprecated('Use getSelectedTipHashRequestMessageDescriptor instead')
const GetSelectedTipHashRequestMessage$json = const {
  '1': 'GetSelectedTipHashRequestMessage',
};

/// Descriptor for `GetSelectedTipHashRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSelectedTipHashRequestMessageDescriptor = $convert.base64Decode('CiBHZXRTZWxlY3RlZFRpcEhhc2hSZXF1ZXN0TWVzc2FnZQ==');
@$core.Deprecated('Use getSelectedTipHashResponseMessageDescriptor instead')
const GetSelectedTipHashResponseMessage$json = const {
  '1': 'GetSelectedTipHashResponseMessage',
  '2': const [
    const {'1': 'selectedTipHash', '3': 1, '4': 1, '5': 9, '10': 'selectedTipHash'},
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetSelectedTipHashResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSelectedTipHashResponseMessageDescriptor = $convert.base64Decode('CiFHZXRTZWxlY3RlZFRpcEhhc2hSZXNwb25zZU1lc3NhZ2USKAoPc2VsZWN0ZWRUaXBIYXNoGAEgASgJUg9zZWxlY3RlZFRpcEhhc2gSKgoFZXJyb3IY6AcgASgLMhMucHJvdG93aXJlLlJQQ0Vycm9yUgVlcnJvcg==');
@$core.Deprecated('Use getMempoolEntryRequestMessageDescriptor instead')
const GetMempoolEntryRequestMessage$json = const {
  '1': 'GetMempoolEntryRequestMessage',
  '2': const [
    const {'1': 'txId', '3': 1, '4': 1, '5': 9, '10': 'txId'},
    const {'1': 'includeOrphanPool', '3': 2, '4': 1, '5': 8, '10': 'includeOrphanPool'},
    const {'1': 'filterTransactionPool', '3': 3, '4': 1, '5': 8, '10': 'filterTransactionPool'},
  ],
};

/// Descriptor for `GetMempoolEntryRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMempoolEntryRequestMessageDescriptor = $convert.base64Decode('Ch1HZXRNZW1wb29sRW50cnlSZXF1ZXN0TWVzc2FnZRISCgR0eElkGAEgASgJUgR0eElkEiwKEWluY2x1ZGVPcnBoYW5Qb29sGAIgASgIUhFpbmNsdWRlT3JwaGFuUG9vbBI0ChVmaWx0ZXJUcmFuc2FjdGlvblBvb2wYAyABKAhSFWZpbHRlclRyYW5zYWN0aW9uUG9vbA==');
@$core.Deprecated('Use getMempoolEntryResponseMessageDescriptor instead')
const GetMempoolEntryResponseMessage$json = const {
  '1': 'GetMempoolEntryResponseMessage',
  '2': const [
    const {'1': 'entry', '3': 1, '4': 1, '5': 11, '6': '.protowire.MempoolEntry', '10': 'entry'},
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetMempoolEntryResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMempoolEntryResponseMessageDescriptor = $convert.base64Decode('Ch5HZXRNZW1wb29sRW50cnlSZXNwb25zZU1lc3NhZ2USLQoFZW50cnkYASABKAsyFy5wcm90b3dpcmUuTWVtcG9vbEVudHJ5UgVlbnRyeRIqCgVlcnJvchjoByABKAsyEy5wcm90b3dpcmUuUlBDRXJyb3JSBWVycm9y');
@$core.Deprecated('Use getMempoolEntriesRequestMessageDescriptor instead')
const GetMempoolEntriesRequestMessage$json = const {
  '1': 'GetMempoolEntriesRequestMessage',
  '2': const [
    const {'1': 'includeOrphanPool', '3': 1, '4': 1, '5': 8, '10': 'includeOrphanPool'},
    const {'1': 'filterTransactionPool', '3': 2, '4': 1, '5': 8, '10': 'filterTransactionPool'},
  ],
};

/// Descriptor for `GetMempoolEntriesRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMempoolEntriesRequestMessageDescriptor = $convert.base64Decode('Ch9HZXRNZW1wb29sRW50cmllc1JlcXVlc3RNZXNzYWdlEiwKEWluY2x1ZGVPcnBoYW5Qb29sGAEgASgIUhFpbmNsdWRlT3JwaGFuUG9vbBI0ChVmaWx0ZXJUcmFuc2FjdGlvblBvb2wYAiABKAhSFWZpbHRlclRyYW5zYWN0aW9uUG9vbA==');
@$core.Deprecated('Use getMempoolEntriesResponseMessageDescriptor instead')
const GetMempoolEntriesResponseMessage$json = const {
  '1': 'GetMempoolEntriesResponseMessage',
  '2': const [
    const {'1': 'entries', '3': 1, '4': 3, '5': 11, '6': '.protowire.MempoolEntry', '10': 'entries'},
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetMempoolEntriesResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMempoolEntriesResponseMessageDescriptor = $convert.base64Decode('CiBHZXRNZW1wb29sRW50cmllc1Jlc3BvbnNlTWVzc2FnZRIxCgdlbnRyaWVzGAEgAygLMhcucHJvdG93aXJlLk1lbXBvb2xFbnRyeVIHZW50cmllcxIqCgVlcnJvchjoByABKAsyEy5wcm90b3dpcmUuUlBDRXJyb3JSBWVycm9y');
@$core.Deprecated('Use mempoolEntryDescriptor instead')
const MempoolEntry$json = const {
  '1': 'MempoolEntry',
  '2': const [
    const {'1': 'fee', '3': 1, '4': 1, '5': 4, '10': 'fee'},
    const {'1': 'transaction', '3': 3, '4': 1, '5': 11, '6': '.protowire.RpcTransaction', '10': 'transaction'},
    const {'1': 'isOrphan', '3': 4, '4': 1, '5': 8, '10': 'isOrphan'},
  ],
};

/// Descriptor for `MempoolEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mempoolEntryDescriptor = $convert.base64Decode('CgxNZW1wb29sRW50cnkSEAoDZmVlGAEgASgEUgNmZWUSOwoLdHJhbnNhY3Rpb24YAyABKAsyGS5wcm90b3dpcmUuUnBjVHJhbnNhY3Rpb25SC3RyYW5zYWN0aW9uEhoKCGlzT3JwaGFuGAQgASgIUghpc09ycGhhbg==');
@$core.Deprecated('Use getConnectedPeerInfoRequestMessageDescriptor instead')
const GetConnectedPeerInfoRequestMessage$json = const {
  '1': 'GetConnectedPeerInfoRequestMessage',
};

/// Descriptor for `GetConnectedPeerInfoRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getConnectedPeerInfoRequestMessageDescriptor = $convert.base64Decode('CiJHZXRDb25uZWN0ZWRQZWVySW5mb1JlcXVlc3RNZXNzYWdl');
@$core.Deprecated('Use getConnectedPeerInfoResponseMessageDescriptor instead')
const GetConnectedPeerInfoResponseMessage$json = const {
  '1': 'GetConnectedPeerInfoResponseMessage',
  '2': const [
    const {'1': 'infos', '3': 1, '4': 3, '5': 11, '6': '.protowire.GetConnectedPeerInfoMessage', '10': 'infos'},
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetConnectedPeerInfoResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getConnectedPeerInfoResponseMessageDescriptor = $convert.base64Decode('CiNHZXRDb25uZWN0ZWRQZWVySW5mb1Jlc3BvbnNlTWVzc2FnZRI8CgVpbmZvcxgBIAMoCzImLnByb3Rvd2lyZS5HZXRDb25uZWN0ZWRQZWVySW5mb01lc3NhZ2VSBWluZm9zEioKBWVycm9yGOgHIAEoCzITLnByb3Rvd2lyZS5SUENFcnJvclIFZXJyb3I=');
@$core.Deprecated('Use getConnectedPeerInfoMessageDescriptor instead')
const GetConnectedPeerInfoMessage$json = const {
  '1': 'GetConnectedPeerInfoMessage',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'address', '3': 2, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'lastPingDuration', '3': 3, '4': 1, '5': 3, '10': 'lastPingDuration'},
    const {'1': 'isOutbound', '3': 6, '4': 1, '5': 8, '10': 'isOutbound'},
    const {'1': 'timeOffset', '3': 7, '4': 1, '5': 3, '10': 'timeOffset'},
    const {'1': 'userAgent', '3': 8, '4': 1, '5': 9, '10': 'userAgent'},
    const {'1': 'advertisedProtocolVersion', '3': 9, '4': 1, '5': 13, '10': 'advertisedProtocolVersion'},
    const {'1': 'timeConnected', '3': 10, '4': 1, '5': 3, '10': 'timeConnected'},
    const {'1': 'isIbdPeer', '3': 11, '4': 1, '5': 8, '10': 'isIbdPeer'},
  ],
};

/// Descriptor for `GetConnectedPeerInfoMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getConnectedPeerInfoMessageDescriptor = $convert.base64Decode('ChtHZXRDb25uZWN0ZWRQZWVySW5mb01lc3NhZ2USDgoCaWQYASABKAlSAmlkEhgKB2FkZHJlc3MYAiABKAlSB2FkZHJlc3MSKgoQbGFzdFBpbmdEdXJhdGlvbhgDIAEoA1IQbGFzdFBpbmdEdXJhdGlvbhIeCgppc091dGJvdW5kGAYgASgIUgppc091dGJvdW5kEh4KCnRpbWVPZmZzZXQYByABKANSCnRpbWVPZmZzZXQSHAoJdXNlckFnZW50GAggASgJUgl1c2VyQWdlbnQSPAoZYWR2ZXJ0aXNlZFByb3RvY29sVmVyc2lvbhgJIAEoDVIZYWR2ZXJ0aXNlZFByb3RvY29sVmVyc2lvbhIkCg10aW1lQ29ubmVjdGVkGAogASgDUg10aW1lQ29ubmVjdGVkEhwKCWlzSWJkUGVlchgLIAEoCFIJaXNJYmRQZWVy');
@$core.Deprecated('Use addPeerRequestMessageDescriptor instead')
const AddPeerRequestMessage$json = const {
  '1': 'AddPeerRequestMessage',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'isPermanent', '3': 2, '4': 1, '5': 8, '10': 'isPermanent'},
  ],
};

/// Descriptor for `AddPeerRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addPeerRequestMessageDescriptor = $convert.base64Decode('ChVBZGRQZWVyUmVxdWVzdE1lc3NhZ2USGAoHYWRkcmVzcxgBIAEoCVIHYWRkcmVzcxIgCgtpc1Blcm1hbmVudBgCIAEoCFILaXNQZXJtYW5lbnQ=');
@$core.Deprecated('Use addPeerResponseMessageDescriptor instead')
const AddPeerResponseMessage$json = const {
  '1': 'AddPeerResponseMessage',
  '2': const [
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `AddPeerResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addPeerResponseMessageDescriptor = $convert.base64Decode('ChZBZGRQZWVyUmVzcG9uc2VNZXNzYWdlEioKBWVycm9yGOgHIAEoCzITLnByb3Rvd2lyZS5SUENFcnJvclIFZXJyb3I=');
@$core.Deprecated('Use submitTransactionRequestMessageDescriptor instead')
const SubmitTransactionRequestMessage$json = const {
  '1': 'SubmitTransactionRequestMessage',
  '2': const [
    const {'1': 'transaction', '3': 1, '4': 1, '5': 11, '6': '.protowire.RpcTransaction', '10': 'transaction'},
    const {'1': 'allowOrphan', '3': 2, '4': 1, '5': 8, '10': 'allowOrphan'},
  ],
};

/// Descriptor for `SubmitTransactionRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List submitTransactionRequestMessageDescriptor = $convert.base64Decode('Ch9TdWJtaXRUcmFuc2FjdGlvblJlcXVlc3RNZXNzYWdlEjsKC3RyYW5zYWN0aW9uGAEgASgLMhkucHJvdG93aXJlLlJwY1RyYW5zYWN0aW9uUgt0cmFuc2FjdGlvbhIgCgthbGxvd09ycGhhbhgCIAEoCFILYWxsb3dPcnBoYW4=');
@$core.Deprecated('Use submitTransactionResponseMessageDescriptor instead')
const SubmitTransactionResponseMessage$json = const {
  '1': 'SubmitTransactionResponseMessage',
  '2': const [
    const {'1': 'transactionId', '3': 1, '4': 1, '5': 9, '10': 'transactionId'},
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `SubmitTransactionResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List submitTransactionResponseMessageDescriptor = $convert.base64Decode('CiBTdWJtaXRUcmFuc2FjdGlvblJlc3BvbnNlTWVzc2FnZRIkCg10cmFuc2FjdGlvbklkGAEgASgJUg10cmFuc2FjdGlvbklkEioKBWVycm9yGOgHIAEoCzITLnByb3Rvd2lyZS5SUENFcnJvclIFZXJyb3I=');
@$core.Deprecated('Use notifyVirtualSelectedParentChainChangedRequestMessageDescriptor instead')
const NotifyVirtualSelectedParentChainChangedRequestMessage$json = const {
  '1': 'NotifyVirtualSelectedParentChainChangedRequestMessage',
  '2': const [
    const {'1': 'includeAcceptedTransactionIds', '3': 1, '4': 1, '5': 8, '10': 'includeAcceptedTransactionIds'},
  ],
};

/// Descriptor for `NotifyVirtualSelectedParentChainChangedRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notifyVirtualSelectedParentChainChangedRequestMessageDescriptor = $convert.base64Decode('CjVOb3RpZnlWaXJ0dWFsU2VsZWN0ZWRQYXJlbnRDaGFpbkNoYW5nZWRSZXF1ZXN0TWVzc2FnZRJECh1pbmNsdWRlQWNjZXB0ZWRUcmFuc2FjdGlvbklkcxgBIAEoCFIdaW5jbHVkZUFjY2VwdGVkVHJhbnNhY3Rpb25JZHM=');
@$core.Deprecated('Use notifyVirtualSelectedParentChainChangedResponseMessageDescriptor instead')
const NotifyVirtualSelectedParentChainChangedResponseMessage$json = const {
  '1': 'NotifyVirtualSelectedParentChainChangedResponseMessage',
  '2': const [
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `NotifyVirtualSelectedParentChainChangedResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notifyVirtualSelectedParentChainChangedResponseMessageDescriptor = $convert.base64Decode('CjZOb3RpZnlWaXJ0dWFsU2VsZWN0ZWRQYXJlbnRDaGFpbkNoYW5nZWRSZXNwb25zZU1lc3NhZ2USKgoFZXJyb3IY6AcgASgLMhMucHJvdG93aXJlLlJQQ0Vycm9yUgVlcnJvcg==');
@$core.Deprecated('Use virtualSelectedParentChainChangedNotificationMessageDescriptor instead')
const VirtualSelectedParentChainChangedNotificationMessage$json = const {
  '1': 'VirtualSelectedParentChainChangedNotificationMessage',
  '2': const [
    const {'1': 'removedChainBlockHashes', '3': 1, '4': 3, '5': 9, '10': 'removedChainBlockHashes'},
    const {'1': 'addedChainBlockHashes', '3': 3, '4': 3, '5': 9, '10': 'addedChainBlockHashes'},
    const {'1': 'acceptedTransactionIds', '3': 2, '4': 3, '5': 11, '6': '.protowire.AcceptedTransactionIds', '10': 'acceptedTransactionIds'},
  ],
};

/// Descriptor for `VirtualSelectedParentChainChangedNotificationMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List virtualSelectedParentChainChangedNotificationMessageDescriptor = $convert.base64Decode('CjRWaXJ0dWFsU2VsZWN0ZWRQYXJlbnRDaGFpbkNoYW5nZWROb3RpZmljYXRpb25NZXNzYWdlEjgKF3JlbW92ZWRDaGFpbkJsb2NrSGFzaGVzGAEgAygJUhdyZW1vdmVkQ2hhaW5CbG9ja0hhc2hlcxI0ChVhZGRlZENoYWluQmxvY2tIYXNoZXMYAyADKAlSFWFkZGVkQ2hhaW5CbG9ja0hhc2hlcxJZChZhY2NlcHRlZFRyYW5zYWN0aW9uSWRzGAIgAygLMiEucHJvdG93aXJlLkFjY2VwdGVkVHJhbnNhY3Rpb25JZHNSFmFjY2VwdGVkVHJhbnNhY3Rpb25JZHM=');
@$core.Deprecated('Use getBlockRequestMessageDescriptor instead')
const GetBlockRequestMessage$json = const {
  '1': 'GetBlockRequestMessage',
  '2': const [
    const {'1': 'hash', '3': 1, '4': 1, '5': 9, '10': 'hash'},
    const {'1': 'includeTransactions', '3': 3, '4': 1, '5': 8, '10': 'includeTransactions'},
  ],
};

/// Descriptor for `GetBlockRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBlockRequestMessageDescriptor = $convert.base64Decode('ChZHZXRCbG9ja1JlcXVlc3RNZXNzYWdlEhIKBGhhc2gYASABKAlSBGhhc2gSMAoTaW5jbHVkZVRyYW5zYWN0aW9ucxgDIAEoCFITaW5jbHVkZVRyYW5zYWN0aW9ucw==');
@$core.Deprecated('Use getBlockResponseMessageDescriptor instead')
const GetBlockResponseMessage$json = const {
  '1': 'GetBlockResponseMessage',
  '2': const [
    const {'1': 'block', '3': 3, '4': 1, '5': 11, '6': '.protowire.RpcBlock', '10': 'block'},
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetBlockResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBlockResponseMessageDescriptor = $convert.base64Decode('ChdHZXRCbG9ja1Jlc3BvbnNlTWVzc2FnZRIpCgVibG9jaxgDIAEoCzITLnByb3Rvd2lyZS5ScGNCbG9ja1IFYmxvY2sSKgoFZXJyb3IY6AcgASgLMhMucHJvdG93aXJlLlJQQ0Vycm9yUgVlcnJvcg==');
@$core.Deprecated('Use getSubnetworkRequestMessageDescriptor instead')
const GetSubnetworkRequestMessage$json = const {
  '1': 'GetSubnetworkRequestMessage',
  '2': const [
    const {'1': 'subnetworkId', '3': 1, '4': 1, '5': 9, '10': 'subnetworkId'},
  ],
};

/// Descriptor for `GetSubnetworkRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSubnetworkRequestMessageDescriptor = $convert.base64Decode('ChtHZXRTdWJuZXR3b3JrUmVxdWVzdE1lc3NhZ2USIgoMc3VibmV0d29ya0lkGAEgASgJUgxzdWJuZXR3b3JrSWQ=');
@$core.Deprecated('Use getSubnetworkResponseMessageDescriptor instead')
const GetSubnetworkResponseMessage$json = const {
  '1': 'GetSubnetworkResponseMessage',
  '2': const [
    const {'1': 'gasLimit', '3': 1, '4': 1, '5': 4, '10': 'gasLimit'},
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetSubnetworkResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSubnetworkResponseMessageDescriptor = $convert.base64Decode('ChxHZXRTdWJuZXR3b3JrUmVzcG9uc2VNZXNzYWdlEhoKCGdhc0xpbWl0GAEgASgEUghnYXNMaW1pdBIqCgVlcnJvchjoByABKAsyEy5wcm90b3dpcmUuUlBDRXJyb3JSBWVycm9y');
@$core.Deprecated('Use getVirtualSelectedParentChainFromBlockRequestMessageDescriptor instead')
const GetVirtualSelectedParentChainFromBlockRequestMessage$json = const {
  '1': 'GetVirtualSelectedParentChainFromBlockRequestMessage',
  '2': const [
    const {'1': 'startHash', '3': 1, '4': 1, '5': 9, '10': 'startHash'},
    const {'1': 'includeAcceptedTransactionIds', '3': 2, '4': 1, '5': 8, '10': 'includeAcceptedTransactionIds'},
  ],
};

/// Descriptor for `GetVirtualSelectedParentChainFromBlockRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getVirtualSelectedParentChainFromBlockRequestMessageDescriptor = $convert.base64Decode('CjRHZXRWaXJ0dWFsU2VsZWN0ZWRQYXJlbnRDaGFpbkZyb21CbG9ja1JlcXVlc3RNZXNzYWdlEhwKCXN0YXJ0SGFzaBgBIAEoCVIJc3RhcnRIYXNoEkQKHWluY2x1ZGVBY2NlcHRlZFRyYW5zYWN0aW9uSWRzGAIgASgIUh1pbmNsdWRlQWNjZXB0ZWRUcmFuc2FjdGlvbklkcw==');
@$core.Deprecated('Use acceptedTransactionIdsDescriptor instead')
const AcceptedTransactionIds$json = const {
  '1': 'AcceptedTransactionIds',
  '2': const [
    const {'1': 'acceptingBlockHash', '3': 1, '4': 1, '5': 9, '10': 'acceptingBlockHash'},
    const {'1': 'acceptedTransactionIds', '3': 2, '4': 3, '5': 9, '10': 'acceptedTransactionIds'},
  ],
};

/// Descriptor for `AcceptedTransactionIds`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List acceptedTransactionIdsDescriptor = $convert.base64Decode('ChZBY2NlcHRlZFRyYW5zYWN0aW9uSWRzEi4KEmFjY2VwdGluZ0Jsb2NrSGFzaBgBIAEoCVISYWNjZXB0aW5nQmxvY2tIYXNoEjYKFmFjY2VwdGVkVHJhbnNhY3Rpb25JZHMYAiADKAlSFmFjY2VwdGVkVHJhbnNhY3Rpb25JZHM=');
@$core.Deprecated('Use getVirtualSelectedParentChainFromBlockResponseMessageDescriptor instead')
const GetVirtualSelectedParentChainFromBlockResponseMessage$json = const {
  '1': 'GetVirtualSelectedParentChainFromBlockResponseMessage',
  '2': const [
    const {'1': 'removedChainBlockHashes', '3': 1, '4': 3, '5': 9, '10': 'removedChainBlockHashes'},
    const {'1': 'addedChainBlockHashes', '3': 3, '4': 3, '5': 9, '10': 'addedChainBlockHashes'},
    const {'1': 'acceptedTransactionIds', '3': 2, '4': 3, '5': 11, '6': '.protowire.AcceptedTransactionIds', '10': 'acceptedTransactionIds'},
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetVirtualSelectedParentChainFromBlockResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getVirtualSelectedParentChainFromBlockResponseMessageDescriptor = $convert.base64Decode('CjVHZXRWaXJ0dWFsU2VsZWN0ZWRQYXJlbnRDaGFpbkZyb21CbG9ja1Jlc3BvbnNlTWVzc2FnZRI4ChdyZW1vdmVkQ2hhaW5CbG9ja0hhc2hlcxgBIAMoCVIXcmVtb3ZlZENoYWluQmxvY2tIYXNoZXMSNAoVYWRkZWRDaGFpbkJsb2NrSGFzaGVzGAMgAygJUhVhZGRlZENoYWluQmxvY2tIYXNoZXMSWQoWYWNjZXB0ZWRUcmFuc2FjdGlvbklkcxgCIAMoCzIhLnByb3Rvd2lyZS5BY2NlcHRlZFRyYW5zYWN0aW9uSWRzUhZhY2NlcHRlZFRyYW5zYWN0aW9uSWRzEioKBWVycm9yGOgHIAEoCzITLnByb3Rvd2lyZS5SUENFcnJvclIFZXJyb3I=');
@$core.Deprecated('Use getBlocksRequestMessageDescriptor instead')
const GetBlocksRequestMessage$json = const {
  '1': 'GetBlocksRequestMessage',
  '2': const [
    const {'1': 'lowHash', '3': 1, '4': 1, '5': 9, '10': 'lowHash'},
    const {'1': 'includeBlocks', '3': 2, '4': 1, '5': 8, '10': 'includeBlocks'},
    const {'1': 'includeTransactions', '3': 3, '4': 1, '5': 8, '10': 'includeTransactions'},
  ],
};

/// Descriptor for `GetBlocksRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBlocksRequestMessageDescriptor = $convert.base64Decode('ChdHZXRCbG9ja3NSZXF1ZXN0TWVzc2FnZRIYCgdsb3dIYXNoGAEgASgJUgdsb3dIYXNoEiQKDWluY2x1ZGVCbG9ja3MYAiABKAhSDWluY2x1ZGVCbG9ja3MSMAoTaW5jbHVkZVRyYW5zYWN0aW9ucxgDIAEoCFITaW5jbHVkZVRyYW5zYWN0aW9ucw==');
@$core.Deprecated('Use getBlocksResponseMessageDescriptor instead')
const GetBlocksResponseMessage$json = const {
  '1': 'GetBlocksResponseMessage',
  '2': const [
    const {'1': 'blockHashes', '3': 4, '4': 3, '5': 9, '10': 'blockHashes'},
    const {'1': 'blocks', '3': 3, '4': 3, '5': 11, '6': '.protowire.RpcBlock', '10': 'blocks'},
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetBlocksResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBlocksResponseMessageDescriptor = $convert.base64Decode('ChhHZXRCbG9ja3NSZXNwb25zZU1lc3NhZ2USIAoLYmxvY2tIYXNoZXMYBCADKAlSC2Jsb2NrSGFzaGVzEisKBmJsb2NrcxgDIAMoCzITLnByb3Rvd2lyZS5ScGNCbG9ja1IGYmxvY2tzEioKBWVycm9yGOgHIAEoCzITLnByb3Rvd2lyZS5SUENFcnJvclIFZXJyb3I=');
@$core.Deprecated('Use getBlockCountRequestMessageDescriptor instead')
const GetBlockCountRequestMessage$json = const {
  '1': 'GetBlockCountRequestMessage',
};

/// Descriptor for `GetBlockCountRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBlockCountRequestMessageDescriptor = $convert.base64Decode('ChtHZXRCbG9ja0NvdW50UmVxdWVzdE1lc3NhZ2U=');
@$core.Deprecated('Use getBlockCountResponseMessageDescriptor instead')
const GetBlockCountResponseMessage$json = const {
  '1': 'GetBlockCountResponseMessage',
  '2': const [
    const {'1': 'blockCount', '3': 1, '4': 1, '5': 4, '10': 'blockCount'},
    const {'1': 'headerCount', '3': 2, '4': 1, '5': 4, '10': 'headerCount'},
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetBlockCountResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBlockCountResponseMessageDescriptor = $convert.base64Decode('ChxHZXRCbG9ja0NvdW50UmVzcG9uc2VNZXNzYWdlEh4KCmJsb2NrQ291bnQYASABKARSCmJsb2NrQ291bnQSIAoLaGVhZGVyQ291bnQYAiABKARSC2hlYWRlckNvdW50EioKBWVycm9yGOgHIAEoCzITLnByb3Rvd2lyZS5SUENFcnJvclIFZXJyb3I=');
@$core.Deprecated('Use getBlockDagInfoRequestMessageDescriptor instead')
const GetBlockDagInfoRequestMessage$json = const {
  '1': 'GetBlockDagInfoRequestMessage',
};

/// Descriptor for `GetBlockDagInfoRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBlockDagInfoRequestMessageDescriptor = $convert.base64Decode('Ch1HZXRCbG9ja0RhZ0luZm9SZXF1ZXN0TWVzc2FnZQ==');
@$core.Deprecated('Use getBlockDagInfoResponseMessageDescriptor instead')
const GetBlockDagInfoResponseMessage$json = const {
  '1': 'GetBlockDagInfoResponseMessage',
  '2': const [
    const {'1': 'networkName', '3': 1, '4': 1, '5': 9, '10': 'networkName'},
    const {'1': 'blockCount', '3': 2, '4': 1, '5': 4, '10': 'blockCount'},
    const {'1': 'headerCount', '3': 3, '4': 1, '5': 4, '10': 'headerCount'},
    const {'1': 'tipHashes', '3': 4, '4': 3, '5': 9, '10': 'tipHashes'},
    const {'1': 'difficulty', '3': 5, '4': 1, '5': 1, '10': 'difficulty'},
    const {'1': 'pastMedianTime', '3': 6, '4': 1, '5': 3, '10': 'pastMedianTime'},
    const {'1': 'virtualParentHashes', '3': 7, '4': 3, '5': 9, '10': 'virtualParentHashes'},
    const {'1': 'pruningPointHash', '3': 8, '4': 1, '5': 9, '10': 'pruningPointHash'},
    const {'1': 'virtualDaaScore', '3': 9, '4': 1, '5': 4, '10': 'virtualDaaScore'},
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetBlockDagInfoResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBlockDagInfoResponseMessageDescriptor = $convert.base64Decode('Ch5HZXRCbG9ja0RhZ0luZm9SZXNwb25zZU1lc3NhZ2USIAoLbmV0d29ya05hbWUYASABKAlSC25ldHdvcmtOYW1lEh4KCmJsb2NrQ291bnQYAiABKARSCmJsb2NrQ291bnQSIAoLaGVhZGVyQ291bnQYAyABKARSC2hlYWRlckNvdW50EhwKCXRpcEhhc2hlcxgEIAMoCVIJdGlwSGFzaGVzEh4KCmRpZmZpY3VsdHkYBSABKAFSCmRpZmZpY3VsdHkSJgoOcGFzdE1lZGlhblRpbWUYBiABKANSDnBhc3RNZWRpYW5UaW1lEjAKE3ZpcnR1YWxQYXJlbnRIYXNoZXMYByADKAlSE3ZpcnR1YWxQYXJlbnRIYXNoZXMSKgoQcHJ1bmluZ1BvaW50SGFzaBgIIAEoCVIQcHJ1bmluZ1BvaW50SGFzaBIoCg92aXJ0dWFsRGFhU2NvcmUYCSABKARSD3ZpcnR1YWxEYWFTY29yZRIqCgVlcnJvchjoByABKAsyEy5wcm90b3dpcmUuUlBDRXJyb3JSBWVycm9y');
@$core.Deprecated('Use resolveFinalityConflictRequestMessageDescriptor instead')
const ResolveFinalityConflictRequestMessage$json = const {
  '1': 'ResolveFinalityConflictRequestMessage',
  '2': const [
    const {'1': 'finalityBlockHash', '3': 1, '4': 1, '5': 9, '10': 'finalityBlockHash'},
  ],
};

/// Descriptor for `ResolveFinalityConflictRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resolveFinalityConflictRequestMessageDescriptor = $convert.base64Decode('CiVSZXNvbHZlRmluYWxpdHlDb25mbGljdFJlcXVlc3RNZXNzYWdlEiwKEWZpbmFsaXR5QmxvY2tIYXNoGAEgASgJUhFmaW5hbGl0eUJsb2NrSGFzaA==');
@$core.Deprecated('Use resolveFinalityConflictResponseMessageDescriptor instead')
const ResolveFinalityConflictResponseMessage$json = const {
  '1': 'ResolveFinalityConflictResponseMessage',
  '2': const [
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `ResolveFinalityConflictResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resolveFinalityConflictResponseMessageDescriptor = $convert.base64Decode('CiZSZXNvbHZlRmluYWxpdHlDb25mbGljdFJlc3BvbnNlTWVzc2FnZRIqCgVlcnJvchjoByABKAsyEy5wcm90b3dpcmUuUlBDRXJyb3JSBWVycm9y');
@$core.Deprecated('Use notifyFinalityConflictsRequestMessageDescriptor instead')
const NotifyFinalityConflictsRequestMessage$json = const {
  '1': 'NotifyFinalityConflictsRequestMessage',
};

/// Descriptor for `NotifyFinalityConflictsRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notifyFinalityConflictsRequestMessageDescriptor = $convert.base64Decode('CiVOb3RpZnlGaW5hbGl0eUNvbmZsaWN0c1JlcXVlc3RNZXNzYWdl');
@$core.Deprecated('Use notifyFinalityConflictsResponseMessageDescriptor instead')
const NotifyFinalityConflictsResponseMessage$json = const {
  '1': 'NotifyFinalityConflictsResponseMessage',
  '2': const [
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `NotifyFinalityConflictsResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notifyFinalityConflictsResponseMessageDescriptor = $convert.base64Decode('CiZOb3RpZnlGaW5hbGl0eUNvbmZsaWN0c1Jlc3BvbnNlTWVzc2FnZRIqCgVlcnJvchjoByABKAsyEy5wcm90b3dpcmUuUlBDRXJyb3JSBWVycm9y');
@$core.Deprecated('Use finalityConflictNotificationMessageDescriptor instead')
const FinalityConflictNotificationMessage$json = const {
  '1': 'FinalityConflictNotificationMessage',
  '2': const [
    const {'1': 'violatingBlockHash', '3': 1, '4': 1, '5': 9, '10': 'violatingBlockHash'},
  ],
};

/// Descriptor for `FinalityConflictNotificationMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List finalityConflictNotificationMessageDescriptor = $convert.base64Decode('CiNGaW5hbGl0eUNvbmZsaWN0Tm90aWZpY2F0aW9uTWVzc2FnZRIuChJ2aW9sYXRpbmdCbG9ja0hhc2gYASABKAlSEnZpb2xhdGluZ0Jsb2NrSGFzaA==');
@$core.Deprecated('Use finalityConflictResolvedNotificationMessageDescriptor instead')
const FinalityConflictResolvedNotificationMessage$json = const {
  '1': 'FinalityConflictResolvedNotificationMessage',
  '2': const [
    const {'1': 'finalityBlockHash', '3': 1, '4': 1, '5': 9, '10': 'finalityBlockHash'},
  ],
};

/// Descriptor for `FinalityConflictResolvedNotificationMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List finalityConflictResolvedNotificationMessageDescriptor = $convert.base64Decode('CitGaW5hbGl0eUNvbmZsaWN0UmVzb2x2ZWROb3RpZmljYXRpb25NZXNzYWdlEiwKEWZpbmFsaXR5QmxvY2tIYXNoGAEgASgJUhFmaW5hbGl0eUJsb2NrSGFzaA==');
@$core.Deprecated('Use shutDownRequestMessageDescriptor instead')
const ShutDownRequestMessage$json = const {
  '1': 'ShutDownRequestMessage',
};

/// Descriptor for `ShutDownRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shutDownRequestMessageDescriptor = $convert.base64Decode('ChZTaHV0RG93blJlcXVlc3RNZXNzYWdl');
@$core.Deprecated('Use shutDownResponseMessageDescriptor instead')
const ShutDownResponseMessage$json = const {
  '1': 'ShutDownResponseMessage',
  '2': const [
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `ShutDownResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shutDownResponseMessageDescriptor = $convert.base64Decode('ChdTaHV0RG93blJlc3BvbnNlTWVzc2FnZRIqCgVlcnJvchjoByABKAsyEy5wcm90b3dpcmUuUlBDRXJyb3JSBWVycm9y');
@$core.Deprecated('Use getHeadersRequestMessageDescriptor instead')
const GetHeadersRequestMessage$json = const {
  '1': 'GetHeadersRequestMessage',
  '2': const [
    const {'1': 'startHash', '3': 1, '4': 1, '5': 9, '10': 'startHash'},
    const {'1': 'limit', '3': 2, '4': 1, '5': 4, '10': 'limit'},
    const {'1': 'isAscending', '3': 3, '4': 1, '5': 8, '10': 'isAscending'},
  ],
};

/// Descriptor for `GetHeadersRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getHeadersRequestMessageDescriptor = $convert.base64Decode('ChhHZXRIZWFkZXJzUmVxdWVzdE1lc3NhZ2USHAoJc3RhcnRIYXNoGAEgASgJUglzdGFydEhhc2gSFAoFbGltaXQYAiABKARSBWxpbWl0EiAKC2lzQXNjZW5kaW5nGAMgASgIUgtpc0FzY2VuZGluZw==');
@$core.Deprecated('Use getHeadersResponseMessageDescriptor instead')
const GetHeadersResponseMessage$json = const {
  '1': 'GetHeadersResponseMessage',
  '2': const [
    const {'1': 'headers', '3': 1, '4': 3, '5': 9, '10': 'headers'},
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetHeadersResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getHeadersResponseMessageDescriptor = $convert.base64Decode('ChlHZXRIZWFkZXJzUmVzcG9uc2VNZXNzYWdlEhgKB2hlYWRlcnMYASADKAlSB2hlYWRlcnMSKgoFZXJyb3IY6AcgASgLMhMucHJvdG93aXJlLlJQQ0Vycm9yUgVlcnJvcg==');
@$core.Deprecated('Use notifyUtxosChangedRequestMessageDescriptor instead')
const NotifyUtxosChangedRequestMessage$json = const {
  '1': 'NotifyUtxosChangedRequestMessage',
  '2': const [
    const {'1': 'addresses', '3': 1, '4': 3, '5': 9, '10': 'addresses'},
  ],
};

/// Descriptor for `NotifyUtxosChangedRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notifyUtxosChangedRequestMessageDescriptor = $convert.base64Decode('CiBOb3RpZnlVdHhvc0NoYW5nZWRSZXF1ZXN0TWVzc2FnZRIcCglhZGRyZXNzZXMYASADKAlSCWFkZHJlc3Nlcw==');
@$core.Deprecated('Use notifyUtxosChangedResponseMessageDescriptor instead')
const NotifyUtxosChangedResponseMessage$json = const {
  '1': 'NotifyUtxosChangedResponseMessage',
  '2': const [
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `NotifyUtxosChangedResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notifyUtxosChangedResponseMessageDescriptor = $convert.base64Decode('CiFOb3RpZnlVdHhvc0NoYW5nZWRSZXNwb25zZU1lc3NhZ2USKgoFZXJyb3IY6AcgASgLMhMucHJvdG93aXJlLlJQQ0Vycm9yUgVlcnJvcg==');
@$core.Deprecated('Use utxosChangedNotificationMessageDescriptor instead')
const UtxosChangedNotificationMessage$json = const {
  '1': 'UtxosChangedNotificationMessage',
  '2': const [
    const {'1': 'added', '3': 1, '4': 3, '5': 11, '6': '.protowire.UtxosByAddressesEntry', '10': 'added'},
    const {'1': 'removed', '3': 2, '4': 3, '5': 11, '6': '.protowire.UtxosByAddressesEntry', '10': 'removed'},
  ],
};

/// Descriptor for `UtxosChangedNotificationMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List utxosChangedNotificationMessageDescriptor = $convert.base64Decode('Ch9VdHhvc0NoYW5nZWROb3RpZmljYXRpb25NZXNzYWdlEjYKBWFkZGVkGAEgAygLMiAucHJvdG93aXJlLlV0eG9zQnlBZGRyZXNzZXNFbnRyeVIFYWRkZWQSOgoHcmVtb3ZlZBgCIAMoCzIgLnByb3Rvd2lyZS5VdHhvc0J5QWRkcmVzc2VzRW50cnlSB3JlbW92ZWQ=');
@$core.Deprecated('Use utxosByAddressesEntryDescriptor instead')
const UtxosByAddressesEntry$json = const {
  '1': 'UtxosByAddressesEntry',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'outpoint', '3': 2, '4': 1, '5': 11, '6': '.protowire.RpcOutpoint', '10': 'outpoint'},
    const {'1': 'utxoEntry', '3': 3, '4': 1, '5': 11, '6': '.protowire.RpcUtxoEntry', '10': 'utxoEntry'},
  ],
};

/// Descriptor for `UtxosByAddressesEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List utxosByAddressesEntryDescriptor = $convert.base64Decode('ChVVdHhvc0J5QWRkcmVzc2VzRW50cnkSGAoHYWRkcmVzcxgBIAEoCVIHYWRkcmVzcxIyCghvdXRwb2ludBgCIAEoCzIWLnByb3Rvd2lyZS5ScGNPdXRwb2ludFIIb3V0cG9pbnQSNQoJdXR4b0VudHJ5GAMgASgLMhcucHJvdG93aXJlLlJwY1V0eG9FbnRyeVIJdXR4b0VudHJ5');
@$core.Deprecated('Use stopNotifyingUtxosChangedRequestMessageDescriptor instead')
const StopNotifyingUtxosChangedRequestMessage$json = const {
  '1': 'StopNotifyingUtxosChangedRequestMessage',
  '2': const [
    const {'1': 'addresses', '3': 1, '4': 3, '5': 9, '10': 'addresses'},
  ],
};

/// Descriptor for `StopNotifyingUtxosChangedRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stopNotifyingUtxosChangedRequestMessageDescriptor = $convert.base64Decode('CidTdG9wTm90aWZ5aW5nVXR4b3NDaGFuZ2VkUmVxdWVzdE1lc3NhZ2USHAoJYWRkcmVzc2VzGAEgAygJUglhZGRyZXNzZXM=');
@$core.Deprecated('Use stopNotifyingUtxosChangedResponseMessageDescriptor instead')
const StopNotifyingUtxosChangedResponseMessage$json = const {
  '1': 'StopNotifyingUtxosChangedResponseMessage',
  '2': const [
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `StopNotifyingUtxosChangedResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stopNotifyingUtxosChangedResponseMessageDescriptor = $convert.base64Decode('CihTdG9wTm90aWZ5aW5nVXR4b3NDaGFuZ2VkUmVzcG9uc2VNZXNzYWdlEioKBWVycm9yGOgHIAEoCzITLnByb3Rvd2lyZS5SUENFcnJvclIFZXJyb3I=');
@$core.Deprecated('Use getUtxosByAddressesRequestMessageDescriptor instead')
const GetUtxosByAddressesRequestMessage$json = const {
  '1': 'GetUtxosByAddressesRequestMessage',
  '2': const [
    const {'1': 'addresses', '3': 1, '4': 3, '5': 9, '10': 'addresses'},
  ],
};

/// Descriptor for `GetUtxosByAddressesRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUtxosByAddressesRequestMessageDescriptor = $convert.base64Decode('CiFHZXRVdHhvc0J5QWRkcmVzc2VzUmVxdWVzdE1lc3NhZ2USHAoJYWRkcmVzc2VzGAEgAygJUglhZGRyZXNzZXM=');
@$core.Deprecated('Use getUtxosByAddressesResponseMessageDescriptor instead')
const GetUtxosByAddressesResponseMessage$json = const {
  '1': 'GetUtxosByAddressesResponseMessage',
  '2': const [
    const {'1': 'entries', '3': 1, '4': 3, '5': 11, '6': '.protowire.UtxosByAddressesEntry', '10': 'entries'},
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetUtxosByAddressesResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUtxosByAddressesResponseMessageDescriptor = $convert.base64Decode('CiJHZXRVdHhvc0J5QWRkcmVzc2VzUmVzcG9uc2VNZXNzYWdlEjoKB2VudHJpZXMYASADKAsyIC5wcm90b3dpcmUuVXR4b3NCeUFkZHJlc3Nlc0VudHJ5UgdlbnRyaWVzEioKBWVycm9yGOgHIAEoCzITLnByb3Rvd2lyZS5SUENFcnJvclIFZXJyb3I=');
@$core.Deprecated('Use getBalanceByAddressRequestMessageDescriptor instead')
const GetBalanceByAddressRequestMessage$json = const {
  '1': 'GetBalanceByAddressRequestMessage',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
  ],
};

/// Descriptor for `GetBalanceByAddressRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBalanceByAddressRequestMessageDescriptor = $convert.base64Decode('CiFHZXRCYWxhbmNlQnlBZGRyZXNzUmVxdWVzdE1lc3NhZ2USGAoHYWRkcmVzcxgBIAEoCVIHYWRkcmVzcw==');
@$core.Deprecated('Use getBalanceByAddressResponseMessageDescriptor instead')
const GetBalanceByAddressResponseMessage$json = const {
  '1': 'GetBalanceByAddressResponseMessage',
  '2': const [
    const {'1': 'balance', '3': 1, '4': 1, '5': 4, '10': 'balance'},
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetBalanceByAddressResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBalanceByAddressResponseMessageDescriptor = $convert.base64Decode('CiJHZXRCYWxhbmNlQnlBZGRyZXNzUmVzcG9uc2VNZXNzYWdlEhgKB2JhbGFuY2UYASABKARSB2JhbGFuY2USKgoFZXJyb3IY6AcgASgLMhMucHJvdG93aXJlLlJQQ0Vycm9yUgVlcnJvcg==');
@$core.Deprecated('Use getBalancesByAddressesRequestMessageDescriptor instead')
const GetBalancesByAddressesRequestMessage$json = const {
  '1': 'GetBalancesByAddressesRequestMessage',
  '2': const [
    const {'1': 'addresses', '3': 1, '4': 3, '5': 9, '10': 'addresses'},
  ],
};

/// Descriptor for `GetBalancesByAddressesRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBalancesByAddressesRequestMessageDescriptor = $convert.base64Decode('CiRHZXRCYWxhbmNlc0J5QWRkcmVzc2VzUmVxdWVzdE1lc3NhZ2USHAoJYWRkcmVzc2VzGAEgAygJUglhZGRyZXNzZXM=');
@$core.Deprecated('Use balancesByAddressEntryDescriptor instead')
const BalancesByAddressEntry$json = const {
  '1': 'BalancesByAddressEntry',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'balance', '3': 2, '4': 1, '5': 4, '10': 'balance'},
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `BalancesByAddressEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List balancesByAddressEntryDescriptor = $convert.base64Decode('ChZCYWxhbmNlc0J5QWRkcmVzc0VudHJ5EhgKB2FkZHJlc3MYASABKAlSB2FkZHJlc3MSGAoHYmFsYW5jZRgCIAEoBFIHYmFsYW5jZRIqCgVlcnJvchjoByABKAsyEy5wcm90b3dpcmUuUlBDRXJyb3JSBWVycm9y');
@$core.Deprecated('Use getBalancesByAddressesResponseMessageDescriptor instead')
const GetBalancesByAddressesResponseMessage$json = const {
  '1': 'GetBalancesByAddressesResponseMessage',
  '2': const [
    const {'1': 'entries', '3': 1, '4': 3, '5': 11, '6': '.protowire.BalancesByAddressEntry', '10': 'entries'},
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetBalancesByAddressesResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBalancesByAddressesResponseMessageDescriptor = $convert.base64Decode('CiVHZXRCYWxhbmNlc0J5QWRkcmVzc2VzUmVzcG9uc2VNZXNzYWdlEjsKB2VudHJpZXMYASADKAsyIS5wcm90b3dpcmUuQmFsYW5jZXNCeUFkZHJlc3NFbnRyeVIHZW50cmllcxIqCgVlcnJvchjoByABKAsyEy5wcm90b3dpcmUuUlBDRXJyb3JSBWVycm9y');
@$core.Deprecated('Use getVirtualSelectedParentBlueScoreRequestMessageDescriptor instead')
const GetVirtualSelectedParentBlueScoreRequestMessage$json = const {
  '1': 'GetVirtualSelectedParentBlueScoreRequestMessage',
};

/// Descriptor for `GetVirtualSelectedParentBlueScoreRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getVirtualSelectedParentBlueScoreRequestMessageDescriptor = $convert.base64Decode('Ci9HZXRWaXJ0dWFsU2VsZWN0ZWRQYXJlbnRCbHVlU2NvcmVSZXF1ZXN0TWVzc2FnZQ==');
@$core.Deprecated('Use getVirtualSelectedParentBlueScoreResponseMessageDescriptor instead')
const GetVirtualSelectedParentBlueScoreResponseMessage$json = const {
  '1': 'GetVirtualSelectedParentBlueScoreResponseMessage',
  '2': const [
    const {'1': 'blueScore', '3': 1, '4': 1, '5': 4, '10': 'blueScore'},
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetVirtualSelectedParentBlueScoreResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getVirtualSelectedParentBlueScoreResponseMessageDescriptor = $convert.base64Decode('CjBHZXRWaXJ0dWFsU2VsZWN0ZWRQYXJlbnRCbHVlU2NvcmVSZXNwb25zZU1lc3NhZ2USHAoJYmx1ZVNjb3JlGAEgASgEUglibHVlU2NvcmUSKgoFZXJyb3IY6AcgASgLMhMucHJvdG93aXJlLlJQQ0Vycm9yUgVlcnJvcg==');
@$core.Deprecated('Use notifyVirtualSelectedParentBlueScoreChangedRequestMessageDescriptor instead')
const NotifyVirtualSelectedParentBlueScoreChangedRequestMessage$json = const {
  '1': 'NotifyVirtualSelectedParentBlueScoreChangedRequestMessage',
};

/// Descriptor for `NotifyVirtualSelectedParentBlueScoreChangedRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notifyVirtualSelectedParentBlueScoreChangedRequestMessageDescriptor = $convert.base64Decode('CjlOb3RpZnlWaXJ0dWFsU2VsZWN0ZWRQYXJlbnRCbHVlU2NvcmVDaGFuZ2VkUmVxdWVzdE1lc3NhZ2U=');
@$core.Deprecated('Use notifyVirtualSelectedParentBlueScoreChangedResponseMessageDescriptor instead')
const NotifyVirtualSelectedParentBlueScoreChangedResponseMessage$json = const {
  '1': 'NotifyVirtualSelectedParentBlueScoreChangedResponseMessage',
  '2': const [
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `NotifyVirtualSelectedParentBlueScoreChangedResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notifyVirtualSelectedParentBlueScoreChangedResponseMessageDescriptor = $convert.base64Decode('CjpOb3RpZnlWaXJ0dWFsU2VsZWN0ZWRQYXJlbnRCbHVlU2NvcmVDaGFuZ2VkUmVzcG9uc2VNZXNzYWdlEioKBWVycm9yGOgHIAEoCzITLnByb3Rvd2lyZS5SUENFcnJvclIFZXJyb3I=');
@$core.Deprecated('Use virtualSelectedParentBlueScoreChangedNotificationMessageDescriptor instead')
const VirtualSelectedParentBlueScoreChangedNotificationMessage$json = const {
  '1': 'VirtualSelectedParentBlueScoreChangedNotificationMessage',
  '2': const [
    const {'1': 'virtualSelectedParentBlueScore', '3': 1, '4': 1, '5': 4, '10': 'virtualSelectedParentBlueScore'},
  ],
};

/// Descriptor for `VirtualSelectedParentBlueScoreChangedNotificationMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List virtualSelectedParentBlueScoreChangedNotificationMessageDescriptor = $convert.base64Decode('CjhWaXJ0dWFsU2VsZWN0ZWRQYXJlbnRCbHVlU2NvcmVDaGFuZ2VkTm90aWZpY2F0aW9uTWVzc2FnZRJGCh52aXJ0dWFsU2VsZWN0ZWRQYXJlbnRCbHVlU2NvcmUYASABKARSHnZpcnR1YWxTZWxlY3RlZFBhcmVudEJsdWVTY29yZQ==');
@$core.Deprecated('Use notifyVirtualDaaScoreChangedRequestMessageDescriptor instead')
const NotifyVirtualDaaScoreChangedRequestMessage$json = const {
  '1': 'NotifyVirtualDaaScoreChangedRequestMessage',
};

/// Descriptor for `NotifyVirtualDaaScoreChangedRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notifyVirtualDaaScoreChangedRequestMessageDescriptor = $convert.base64Decode('CipOb3RpZnlWaXJ0dWFsRGFhU2NvcmVDaGFuZ2VkUmVxdWVzdE1lc3NhZ2U=');
@$core.Deprecated('Use notifyVirtualDaaScoreChangedResponseMessageDescriptor instead')
const NotifyVirtualDaaScoreChangedResponseMessage$json = const {
  '1': 'NotifyVirtualDaaScoreChangedResponseMessage',
  '2': const [
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `NotifyVirtualDaaScoreChangedResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notifyVirtualDaaScoreChangedResponseMessageDescriptor = $convert.base64Decode('CitOb3RpZnlWaXJ0dWFsRGFhU2NvcmVDaGFuZ2VkUmVzcG9uc2VNZXNzYWdlEioKBWVycm9yGOgHIAEoCzITLnByb3Rvd2lyZS5SUENFcnJvclIFZXJyb3I=');
@$core.Deprecated('Use virtualDaaScoreChangedNotificationMessageDescriptor instead')
const VirtualDaaScoreChangedNotificationMessage$json = const {
  '1': 'VirtualDaaScoreChangedNotificationMessage',
  '2': const [
    const {'1': 'virtualDaaScore', '3': 1, '4': 1, '5': 4, '10': 'virtualDaaScore'},
  ],
};

/// Descriptor for `VirtualDaaScoreChangedNotificationMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List virtualDaaScoreChangedNotificationMessageDescriptor = $convert.base64Decode('CilWaXJ0dWFsRGFhU2NvcmVDaGFuZ2VkTm90aWZpY2F0aW9uTWVzc2FnZRIoCg92aXJ0dWFsRGFhU2NvcmUYASABKARSD3ZpcnR1YWxEYWFTY29yZQ==');
@$core.Deprecated('Use notifyPruningPointUTXOSetOverrideRequestMessageDescriptor instead')
const NotifyPruningPointUTXOSetOverrideRequestMessage$json = const {
  '1': 'NotifyPruningPointUTXOSetOverrideRequestMessage',
};

/// Descriptor for `NotifyPruningPointUTXOSetOverrideRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notifyPruningPointUTXOSetOverrideRequestMessageDescriptor = $convert.base64Decode('Ci9Ob3RpZnlQcnVuaW5nUG9pbnRVVFhPU2V0T3ZlcnJpZGVSZXF1ZXN0TWVzc2FnZQ==');
@$core.Deprecated('Use notifyPruningPointUTXOSetOverrideResponseMessageDescriptor instead')
const NotifyPruningPointUTXOSetOverrideResponseMessage$json = const {
  '1': 'NotifyPruningPointUTXOSetOverrideResponseMessage',
  '2': const [
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `NotifyPruningPointUTXOSetOverrideResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notifyPruningPointUTXOSetOverrideResponseMessageDescriptor = $convert.base64Decode('CjBOb3RpZnlQcnVuaW5nUG9pbnRVVFhPU2V0T3ZlcnJpZGVSZXNwb25zZU1lc3NhZ2USKgoFZXJyb3IY6AcgASgLMhMucHJvdG93aXJlLlJQQ0Vycm9yUgVlcnJvcg==');
@$core.Deprecated('Use pruningPointUTXOSetOverrideNotificationMessageDescriptor instead')
const PruningPointUTXOSetOverrideNotificationMessage$json = const {
  '1': 'PruningPointUTXOSetOverrideNotificationMessage',
};

/// Descriptor for `PruningPointUTXOSetOverrideNotificationMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pruningPointUTXOSetOverrideNotificationMessageDescriptor = $convert.base64Decode('Ci5QcnVuaW5nUG9pbnRVVFhPU2V0T3ZlcnJpZGVOb3RpZmljYXRpb25NZXNzYWdl');
@$core.Deprecated('Use stopNotifyingPruningPointUTXOSetOverrideRequestMessageDescriptor instead')
const StopNotifyingPruningPointUTXOSetOverrideRequestMessage$json = const {
  '1': 'StopNotifyingPruningPointUTXOSetOverrideRequestMessage',
};

/// Descriptor for `StopNotifyingPruningPointUTXOSetOverrideRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stopNotifyingPruningPointUTXOSetOverrideRequestMessageDescriptor = $convert.base64Decode('CjZTdG9wTm90aWZ5aW5nUHJ1bmluZ1BvaW50VVRYT1NldE92ZXJyaWRlUmVxdWVzdE1lc3NhZ2U=');
@$core.Deprecated('Use stopNotifyingPruningPointUTXOSetOverrideResponseMessageDescriptor instead')
const StopNotifyingPruningPointUTXOSetOverrideResponseMessage$json = const {
  '1': 'StopNotifyingPruningPointUTXOSetOverrideResponseMessage',
  '2': const [
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `StopNotifyingPruningPointUTXOSetOverrideResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stopNotifyingPruningPointUTXOSetOverrideResponseMessageDescriptor = $convert.base64Decode('CjdTdG9wTm90aWZ5aW5nUHJ1bmluZ1BvaW50VVRYT1NldE92ZXJyaWRlUmVzcG9uc2VNZXNzYWdlEioKBWVycm9yGOgHIAEoCzITLnByb3Rvd2lyZS5SUENFcnJvclIFZXJyb3I=');
@$core.Deprecated('Use banRequestMessageDescriptor instead')
const BanRequestMessage$json = const {
  '1': 'BanRequestMessage',
  '2': const [
    const {'1': 'ip', '3': 1, '4': 1, '5': 9, '10': 'ip'},
  ],
};

/// Descriptor for `BanRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List banRequestMessageDescriptor = $convert.base64Decode('ChFCYW5SZXF1ZXN0TWVzc2FnZRIOCgJpcBgBIAEoCVICaXA=');
@$core.Deprecated('Use banResponseMessageDescriptor instead')
const BanResponseMessage$json = const {
  '1': 'BanResponseMessage',
  '2': const [
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `BanResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List banResponseMessageDescriptor = $convert.base64Decode('ChJCYW5SZXNwb25zZU1lc3NhZ2USKgoFZXJyb3IY6AcgASgLMhMucHJvdG93aXJlLlJQQ0Vycm9yUgVlcnJvcg==');
@$core.Deprecated('Use unbanRequestMessageDescriptor instead')
const UnbanRequestMessage$json = const {
  '1': 'UnbanRequestMessage',
  '2': const [
    const {'1': 'ip', '3': 1, '4': 1, '5': 9, '10': 'ip'},
  ],
};

/// Descriptor for `UnbanRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unbanRequestMessageDescriptor = $convert.base64Decode('ChNVbmJhblJlcXVlc3RNZXNzYWdlEg4KAmlwGAEgASgJUgJpcA==');
@$core.Deprecated('Use unbanResponseMessageDescriptor instead')
const UnbanResponseMessage$json = const {
  '1': 'UnbanResponseMessage',
  '2': const [
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `UnbanResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unbanResponseMessageDescriptor = $convert.base64Decode('ChRVbmJhblJlc3BvbnNlTWVzc2FnZRIqCgVlcnJvchjoByABKAsyEy5wcm90b3dpcmUuUlBDRXJyb3JSBWVycm9y');
@$core.Deprecated('Use getInfoRequestMessageDescriptor instead')
const GetInfoRequestMessage$json = const {
  '1': 'GetInfoRequestMessage',
};

/// Descriptor for `GetInfoRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getInfoRequestMessageDescriptor = $convert.base64Decode('ChVHZXRJbmZvUmVxdWVzdE1lc3NhZ2U=');
@$core.Deprecated('Use getInfoResponseMessageDescriptor instead')
const GetInfoResponseMessage$json = const {
  '1': 'GetInfoResponseMessage',
  '2': const [
    const {'1': 'p2pId', '3': 1, '4': 1, '5': 9, '10': 'p2pId'},
    const {'1': 'mempoolSize', '3': 2, '4': 1, '5': 4, '10': 'mempoolSize'},
    const {'1': 'serverVersion', '3': 3, '4': 1, '5': 9, '10': 'serverVersion'},
    const {'1': 'isUtxoIndexed', '3': 4, '4': 1, '5': 8, '10': 'isUtxoIndexed'},
    const {'1': 'isSynced', '3': 5, '4': 1, '5': 8, '10': 'isSynced'},
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetInfoResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getInfoResponseMessageDescriptor = $convert.base64Decode('ChZHZXRJbmZvUmVzcG9uc2VNZXNzYWdlEhQKBXAycElkGAEgASgJUgVwMnBJZBIgCgttZW1wb29sU2l6ZRgCIAEoBFILbWVtcG9vbFNpemUSJAoNc2VydmVyVmVyc2lvbhgDIAEoCVINc2VydmVyVmVyc2lvbhIkCg1pc1V0eG9JbmRleGVkGAQgASgIUg1pc1V0eG9JbmRleGVkEhoKCGlzU3luY2VkGAUgASgIUghpc1N5bmNlZBIqCgVlcnJvchjoByABKAsyEy5wcm90b3dpcmUuUlBDRXJyb3JSBWVycm9y');
@$core.Deprecated('Use estimateNetworkHashesPerSecondRequestMessageDescriptor instead')
const EstimateNetworkHashesPerSecondRequestMessage$json = const {
  '1': 'EstimateNetworkHashesPerSecondRequestMessage',
  '2': const [
    const {'1': 'windowSize', '3': 1, '4': 1, '5': 13, '10': 'windowSize'},
    const {'1': 'startHash', '3': 2, '4': 1, '5': 9, '10': 'startHash'},
  ],
};

/// Descriptor for `EstimateNetworkHashesPerSecondRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List estimateNetworkHashesPerSecondRequestMessageDescriptor = $convert.base64Decode('CixFc3RpbWF0ZU5ldHdvcmtIYXNoZXNQZXJTZWNvbmRSZXF1ZXN0TWVzc2FnZRIeCgp3aW5kb3dTaXplGAEgASgNUgp3aW5kb3dTaXplEhwKCXN0YXJ0SGFzaBgCIAEoCVIJc3RhcnRIYXNo');
@$core.Deprecated('Use estimateNetworkHashesPerSecondResponseMessageDescriptor instead')
const EstimateNetworkHashesPerSecondResponseMessage$json = const {
  '1': 'EstimateNetworkHashesPerSecondResponseMessage',
  '2': const [
    const {'1': 'networkHashesPerSecond', '3': 1, '4': 1, '5': 4, '10': 'networkHashesPerSecond'},
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `EstimateNetworkHashesPerSecondResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List estimateNetworkHashesPerSecondResponseMessageDescriptor = $convert.base64Decode('Ci1Fc3RpbWF0ZU5ldHdvcmtIYXNoZXNQZXJTZWNvbmRSZXNwb25zZU1lc3NhZ2USNgoWbmV0d29ya0hhc2hlc1BlclNlY29uZBgBIAEoBFIWbmV0d29ya0hhc2hlc1BlclNlY29uZBIqCgVlcnJvchjoByABKAsyEy5wcm90b3dpcmUuUlBDRXJyb3JSBWVycm9y');
@$core.Deprecated('Use notifyNewBlockTemplateRequestMessageDescriptor instead')
const NotifyNewBlockTemplateRequestMessage$json = const {
  '1': 'NotifyNewBlockTemplateRequestMessage',
};

/// Descriptor for `NotifyNewBlockTemplateRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notifyNewBlockTemplateRequestMessageDescriptor = $convert.base64Decode('CiROb3RpZnlOZXdCbG9ja1RlbXBsYXRlUmVxdWVzdE1lc3NhZ2U=');
@$core.Deprecated('Use notifyNewBlockTemplateResponseMessageDescriptor instead')
const NotifyNewBlockTemplateResponseMessage$json = const {
  '1': 'NotifyNewBlockTemplateResponseMessage',
  '2': const [
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `NotifyNewBlockTemplateResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notifyNewBlockTemplateResponseMessageDescriptor = $convert.base64Decode('CiVOb3RpZnlOZXdCbG9ja1RlbXBsYXRlUmVzcG9uc2VNZXNzYWdlEioKBWVycm9yGOgHIAEoCzITLnByb3Rvd2lyZS5SUENFcnJvclIFZXJyb3I=');
@$core.Deprecated('Use newBlockTemplateNotificationMessageDescriptor instead')
const NewBlockTemplateNotificationMessage$json = const {
  '1': 'NewBlockTemplateNotificationMessage',
};

/// Descriptor for `NewBlockTemplateNotificationMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newBlockTemplateNotificationMessageDescriptor = $convert.base64Decode('CiNOZXdCbG9ja1RlbXBsYXRlTm90aWZpY2F0aW9uTWVzc2FnZQ==');
@$core.Deprecated('Use mempoolEntryByAddressDescriptor instead')
const MempoolEntryByAddress$json = const {
  '1': 'MempoolEntryByAddress',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'sending', '3': 2, '4': 3, '5': 11, '6': '.protowire.MempoolEntry', '10': 'sending'},
    const {'1': 'receiving', '3': 3, '4': 3, '5': 11, '6': '.protowire.MempoolEntry', '10': 'receiving'},
  ],
};

/// Descriptor for `MempoolEntryByAddress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mempoolEntryByAddressDescriptor = $convert.base64Decode('ChVNZW1wb29sRW50cnlCeUFkZHJlc3MSGAoHYWRkcmVzcxgBIAEoCVIHYWRkcmVzcxIxCgdzZW5kaW5nGAIgAygLMhcucHJvdG93aXJlLk1lbXBvb2xFbnRyeVIHc2VuZGluZxI1CglyZWNlaXZpbmcYAyADKAsyFy5wcm90b3dpcmUuTWVtcG9vbEVudHJ5UglyZWNlaXZpbmc=');
@$core.Deprecated('Use getMempoolEntriesByAddressesRequestMessageDescriptor instead')
const GetMempoolEntriesByAddressesRequestMessage$json = const {
  '1': 'GetMempoolEntriesByAddressesRequestMessage',
  '2': const [
    const {'1': 'addresses', '3': 1, '4': 3, '5': 9, '10': 'addresses'},
    const {'1': 'includeOrphanPool', '3': 2, '4': 1, '5': 8, '10': 'includeOrphanPool'},
    const {'1': 'filterTransactionPool', '3': 3, '4': 1, '5': 8, '10': 'filterTransactionPool'},
  ],
};

/// Descriptor for `GetMempoolEntriesByAddressesRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMempoolEntriesByAddressesRequestMessageDescriptor = $convert.base64Decode('CipHZXRNZW1wb29sRW50cmllc0J5QWRkcmVzc2VzUmVxdWVzdE1lc3NhZ2USHAoJYWRkcmVzc2VzGAEgAygJUglhZGRyZXNzZXMSLAoRaW5jbHVkZU9ycGhhblBvb2wYAiABKAhSEWluY2x1ZGVPcnBoYW5Qb29sEjQKFWZpbHRlclRyYW5zYWN0aW9uUG9vbBgDIAEoCFIVZmlsdGVyVHJhbnNhY3Rpb25Qb29s');
@$core.Deprecated('Use getMempoolEntriesByAddressesResponseMessageDescriptor instead')
const GetMempoolEntriesByAddressesResponseMessage$json = const {
  '1': 'GetMempoolEntriesByAddressesResponseMessage',
  '2': const [
    const {'1': 'entries', '3': 1, '4': 3, '5': 11, '6': '.protowire.MempoolEntryByAddress', '10': 'entries'},
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetMempoolEntriesByAddressesResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMempoolEntriesByAddressesResponseMessageDescriptor = $convert.base64Decode('CitHZXRNZW1wb29sRW50cmllc0J5QWRkcmVzc2VzUmVzcG9uc2VNZXNzYWdlEjoKB2VudHJpZXMYASADKAsyIC5wcm90b3dpcmUuTWVtcG9vbEVudHJ5QnlBZGRyZXNzUgdlbnRyaWVzEioKBWVycm9yGOgHIAEoCzITLnByb3Rvd2lyZS5SUENFcnJvclIFZXJyb3I=');
@$core.Deprecated('Use getCoinSupplyRequestMessageDescriptor instead')
const GetCoinSupplyRequestMessage$json = const {
  '1': 'GetCoinSupplyRequestMessage',
};

/// Descriptor for `GetCoinSupplyRequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCoinSupplyRequestMessageDescriptor = $convert.base64Decode('ChtHZXRDb2luU3VwcGx5UmVxdWVzdE1lc3NhZ2U=');
@$core.Deprecated('Use getCoinSupplyResponseMessageDescriptor instead')
const GetCoinSupplyResponseMessage$json = const {
  '1': 'GetCoinSupplyResponseMessage',
  '2': const [
    const {'1': 'maxSompi', '3': 1, '4': 1, '5': 4, '10': 'maxSompi'},
    const {'1': 'circulatingSompi', '3': 2, '4': 1, '5': 4, '10': 'circulatingSompi'},
    const {'1': 'error', '3': 1000, '4': 1, '5': 11, '6': '.protowire.RPCError', '10': 'error'},
  ],
};

/// Descriptor for `GetCoinSupplyResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCoinSupplyResponseMessageDescriptor = $convert.base64Decode('ChxHZXRDb2luU3VwcGx5UmVzcG9uc2VNZXNzYWdlEhoKCG1heFNvbXBpGAEgASgEUghtYXhTb21waRIqChBjaXJjdWxhdGluZ1NvbXBpGAIgASgEUhBjaXJjdWxhdGluZ1NvbXBpEioKBWVycm9yGOgHIAEoCzITLnByb3Rvd2lyZS5SUENFcnJvclIFZXJyb3I=');
