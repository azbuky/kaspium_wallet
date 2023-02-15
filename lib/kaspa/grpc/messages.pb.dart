///
//  Generated code. Do not modify.
//  source: messages.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'p2p.pb.dart' as $1;
import 'rpc.pb.dart' as $2;

enum KaspadMessage_Payload {
  addresses, 
  block, 
  transaction, 
  blockLocator, 
  requestAddresses, 
  requestRelayBlocks, 
  requestTransactions, 
  ibdBlock, 
  invRelayBlock, 
  invTransactions, 
  ping, 
  pong, 
  verack, 
  version, 
  transactionNotFound, 
  reject, 
  pruningPointUtxoSetChunk, 
  requestIBDBlocks, 
  unexpectedPruningPoint, 
  ibdBlockLocator, 
  ibdBlockLocatorHighestHash, 
  requestNextPruningPointUtxoSetChunk, 
  donePruningPointUtxoSetChunks, 
  ibdBlockLocatorHighestHashNotFound, 
  blockWithTrustedData, 
  doneBlocksWithTrustedData, 
  requestPruningPointAndItsAnticone, 
  blockHeaders, 
  requestNextHeaders, 
  doneHeaders, 
  requestPruningPointUTXOSet, 
  requestHeaders, 
  requestBlockLocator, 
  pruningPoints, 
  requestPruningPointProof, 
  pruningPointProof, 
  ready, 
  blockWithTrustedDataV4, 
  trustedData, 
  requestIBDChainBlockLocator, 
  ibdChainBlockLocator, 
  requestAnticone, 
  requestNextPruningPointAndItsAnticoneBlocks, 
  getCurrentNetworkRequest, 
  getCurrentNetworkResponse, 
  submitBlockRequest, 
  submitBlockResponse, 
  getBlockTemplateRequest, 
  getBlockTemplateResponse, 
  notifyBlockAddedRequest, 
  notifyBlockAddedResponse, 
  blockAddedNotification, 
  getPeerAddressesRequest, 
  getPeerAddressesResponse, 
  getSelectedTipHashRequest, 
  getSelectedTipHashResponse, 
  getMempoolEntryRequest, 
  getMempoolEntryResponse, 
  getConnectedPeerInfoRequest, 
  getConnectedPeerInfoResponse, 
  addPeerRequest, 
  addPeerResponse, 
  submitTransactionRequest, 
  submitTransactionResponse, 
  notifyVirtualSelectedParentChainChangedRequest, 
  notifyVirtualSelectedParentChainChangedResponse, 
  virtualSelectedParentChainChangedNotification, 
  getBlockRequest, 
  getBlockResponse, 
  getSubnetworkRequest, 
  getSubnetworkResponse, 
  getVirtualSelectedParentChainFromBlockRequest, 
  getVirtualSelectedParentChainFromBlockResponse, 
  getBlocksRequest, 
  getBlocksResponse, 
  getBlockCountRequest, 
  getBlockCountResponse, 
  getBlockDagInfoRequest, 
  getBlockDagInfoResponse, 
  resolveFinalityConflictRequest, 
  resolveFinalityConflictResponse, 
  notifyFinalityConflictsRequest, 
  notifyFinalityConflictsResponse, 
  finalityConflictNotification, 
  finalityConflictResolvedNotification, 
  getMempoolEntriesRequest, 
  getMempoolEntriesResponse, 
  shutDownRequest, 
  shutDownResponse, 
  getHeadersRequest, 
  getHeadersResponse, 
  notifyUtxosChangedRequest, 
  notifyUtxosChangedResponse, 
  utxosChangedNotification, 
  getUtxosByAddressesRequest, 
  getUtxosByAddressesResponse, 
  getVirtualSelectedParentBlueScoreRequest, 
  getVirtualSelectedParentBlueScoreResponse, 
  notifyVirtualSelectedParentBlueScoreChangedRequest, 
  notifyVirtualSelectedParentBlueScoreChangedResponse, 
  virtualSelectedParentBlueScoreChangedNotification, 
  banRequest, 
  banResponse, 
  unbanRequest, 
  unbanResponse, 
  getInfoRequest, 
  getInfoResponse, 
  stopNotifyingUtxosChangedRequest, 
  stopNotifyingUtxosChangedResponse, 
  notifyPruningPointUTXOSetOverrideRequest, 
  notifyPruningPointUTXOSetOverrideResponse, 
  pruningPointUTXOSetOverrideNotification, 
  stopNotifyingPruningPointUTXOSetOverrideRequest, 
  stopNotifyingPruningPointUTXOSetOverrideResponse, 
  estimateNetworkHashesPerSecondRequest, 
  estimateNetworkHashesPerSecondResponse, 
  notifyVirtualDaaScoreChangedRequest, 
  notifyVirtualDaaScoreChangedResponse, 
  virtualDaaScoreChangedNotification, 
  getBalanceByAddressRequest, 
  getBalanceByAddressResponse, 
  getBalancesByAddressesRequest, 
  getBalancesByAddressesResponse, 
  notifyNewBlockTemplateRequest, 
  notifyNewBlockTemplateResponse, 
  newBlockTemplateNotification, 
  getMempoolEntriesByAddressesRequest, 
  getMempoolEntriesByAddressesResponse, 
  getCoinSupplyRequest, 
  getCoinSupplyResponse, 
  notSet
}

class KaspadMessage extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, KaspadMessage_Payload> _KaspadMessage_PayloadByTag = {
    1 : KaspadMessage_Payload.addresses,
    2 : KaspadMessage_Payload.block,
    3 : KaspadMessage_Payload.transaction,
    5 : KaspadMessage_Payload.blockLocator,
    6 : KaspadMessage_Payload.requestAddresses,
    10 : KaspadMessage_Payload.requestRelayBlocks,
    12 : KaspadMessage_Payload.requestTransactions,
    13 : KaspadMessage_Payload.ibdBlock,
    14 : KaspadMessage_Payload.invRelayBlock,
    15 : KaspadMessage_Payload.invTransactions,
    16 : KaspadMessage_Payload.ping,
    17 : KaspadMessage_Payload.pong,
    19 : KaspadMessage_Payload.verack,
    20 : KaspadMessage_Payload.version,
    21 : KaspadMessage_Payload.transactionNotFound,
    22 : KaspadMessage_Payload.reject,
    25 : KaspadMessage_Payload.pruningPointUtxoSetChunk,
    26 : KaspadMessage_Payload.requestIBDBlocks,
    27 : KaspadMessage_Payload.unexpectedPruningPoint,
    30 : KaspadMessage_Payload.ibdBlockLocator,
    31 : KaspadMessage_Payload.ibdBlockLocatorHighestHash,
    33 : KaspadMessage_Payload.requestNextPruningPointUtxoSetChunk,
    34 : KaspadMessage_Payload.donePruningPointUtxoSetChunks,
    35 : KaspadMessage_Payload.ibdBlockLocatorHighestHashNotFound,
    36 : KaspadMessage_Payload.blockWithTrustedData,
    37 : KaspadMessage_Payload.doneBlocksWithTrustedData,
    40 : KaspadMessage_Payload.requestPruningPointAndItsAnticone,
    41 : KaspadMessage_Payload.blockHeaders,
    42 : KaspadMessage_Payload.requestNextHeaders,
    43 : KaspadMessage_Payload.doneHeaders,
    44 : KaspadMessage_Payload.requestPruningPointUTXOSet,
    45 : KaspadMessage_Payload.requestHeaders,
    46 : KaspadMessage_Payload.requestBlockLocator,
    47 : KaspadMessage_Payload.pruningPoints,
    48 : KaspadMessage_Payload.requestPruningPointProof,
    49 : KaspadMessage_Payload.pruningPointProof,
    50 : KaspadMessage_Payload.ready,
    51 : KaspadMessage_Payload.blockWithTrustedDataV4,
    52 : KaspadMessage_Payload.trustedData,
    53 : KaspadMessage_Payload.requestIBDChainBlockLocator,
    54 : KaspadMessage_Payload.ibdChainBlockLocator,
    55 : KaspadMessage_Payload.requestAnticone,
    56 : KaspadMessage_Payload.requestNextPruningPointAndItsAnticoneBlocks,
    1001 : KaspadMessage_Payload.getCurrentNetworkRequest,
    1002 : KaspadMessage_Payload.getCurrentNetworkResponse,
    1003 : KaspadMessage_Payload.submitBlockRequest,
    1004 : KaspadMessage_Payload.submitBlockResponse,
    1005 : KaspadMessage_Payload.getBlockTemplateRequest,
    1006 : KaspadMessage_Payload.getBlockTemplateResponse,
    1007 : KaspadMessage_Payload.notifyBlockAddedRequest,
    1008 : KaspadMessage_Payload.notifyBlockAddedResponse,
    1009 : KaspadMessage_Payload.blockAddedNotification,
    1010 : KaspadMessage_Payload.getPeerAddressesRequest,
    1011 : KaspadMessage_Payload.getPeerAddressesResponse,
    1012 : KaspadMessage_Payload.getSelectedTipHashRequest,
    1013 : KaspadMessage_Payload.getSelectedTipHashResponse,
    1014 : KaspadMessage_Payload.getMempoolEntryRequest,
    1015 : KaspadMessage_Payload.getMempoolEntryResponse,
    1016 : KaspadMessage_Payload.getConnectedPeerInfoRequest,
    1017 : KaspadMessage_Payload.getConnectedPeerInfoResponse,
    1018 : KaspadMessage_Payload.addPeerRequest,
    1019 : KaspadMessage_Payload.addPeerResponse,
    1020 : KaspadMessage_Payload.submitTransactionRequest,
    1021 : KaspadMessage_Payload.submitTransactionResponse,
    1022 : KaspadMessage_Payload.notifyVirtualSelectedParentChainChangedRequest,
    1023 : KaspadMessage_Payload.notifyVirtualSelectedParentChainChangedResponse,
    1024 : KaspadMessage_Payload.virtualSelectedParentChainChangedNotification,
    1025 : KaspadMessage_Payload.getBlockRequest,
    1026 : KaspadMessage_Payload.getBlockResponse,
    1027 : KaspadMessage_Payload.getSubnetworkRequest,
    1028 : KaspadMessage_Payload.getSubnetworkResponse,
    1029 : KaspadMessage_Payload.getVirtualSelectedParentChainFromBlockRequest,
    1030 : KaspadMessage_Payload.getVirtualSelectedParentChainFromBlockResponse,
    1031 : KaspadMessage_Payload.getBlocksRequest,
    1032 : KaspadMessage_Payload.getBlocksResponse,
    1033 : KaspadMessage_Payload.getBlockCountRequest,
    1034 : KaspadMessage_Payload.getBlockCountResponse,
    1035 : KaspadMessage_Payload.getBlockDagInfoRequest,
    1036 : KaspadMessage_Payload.getBlockDagInfoResponse,
    1037 : KaspadMessage_Payload.resolveFinalityConflictRequest,
    1038 : KaspadMessage_Payload.resolveFinalityConflictResponse,
    1039 : KaspadMessage_Payload.notifyFinalityConflictsRequest,
    1040 : KaspadMessage_Payload.notifyFinalityConflictsResponse,
    1041 : KaspadMessage_Payload.finalityConflictNotification,
    1042 : KaspadMessage_Payload.finalityConflictResolvedNotification,
    1043 : KaspadMessage_Payload.getMempoolEntriesRequest,
    1044 : KaspadMessage_Payload.getMempoolEntriesResponse,
    1045 : KaspadMessage_Payload.shutDownRequest,
    1046 : KaspadMessage_Payload.shutDownResponse,
    1047 : KaspadMessage_Payload.getHeadersRequest,
    1048 : KaspadMessage_Payload.getHeadersResponse,
    1049 : KaspadMessage_Payload.notifyUtxosChangedRequest,
    1050 : KaspadMessage_Payload.notifyUtxosChangedResponse,
    1051 : KaspadMessage_Payload.utxosChangedNotification,
    1052 : KaspadMessage_Payload.getUtxosByAddressesRequest,
    1053 : KaspadMessage_Payload.getUtxosByAddressesResponse,
    1054 : KaspadMessage_Payload.getVirtualSelectedParentBlueScoreRequest,
    1055 : KaspadMessage_Payload.getVirtualSelectedParentBlueScoreResponse,
    1056 : KaspadMessage_Payload.notifyVirtualSelectedParentBlueScoreChangedRequest,
    1057 : KaspadMessage_Payload.notifyVirtualSelectedParentBlueScoreChangedResponse,
    1058 : KaspadMessage_Payload.virtualSelectedParentBlueScoreChangedNotification,
    1059 : KaspadMessage_Payload.banRequest,
    1060 : KaspadMessage_Payload.banResponse,
    1061 : KaspadMessage_Payload.unbanRequest,
    1062 : KaspadMessage_Payload.unbanResponse,
    1063 : KaspadMessage_Payload.getInfoRequest,
    1064 : KaspadMessage_Payload.getInfoResponse,
    1065 : KaspadMessage_Payload.stopNotifyingUtxosChangedRequest,
    1066 : KaspadMessage_Payload.stopNotifyingUtxosChangedResponse,
    1067 : KaspadMessage_Payload.notifyPruningPointUTXOSetOverrideRequest,
    1068 : KaspadMessage_Payload.notifyPruningPointUTXOSetOverrideResponse,
    1069 : KaspadMessage_Payload.pruningPointUTXOSetOverrideNotification,
    1070 : KaspadMessage_Payload.stopNotifyingPruningPointUTXOSetOverrideRequest,
    1071 : KaspadMessage_Payload.stopNotifyingPruningPointUTXOSetOverrideResponse,
    1072 : KaspadMessage_Payload.estimateNetworkHashesPerSecondRequest,
    1073 : KaspadMessage_Payload.estimateNetworkHashesPerSecondResponse,
    1074 : KaspadMessage_Payload.notifyVirtualDaaScoreChangedRequest,
    1075 : KaspadMessage_Payload.notifyVirtualDaaScoreChangedResponse,
    1076 : KaspadMessage_Payload.virtualDaaScoreChangedNotification,
    1077 : KaspadMessage_Payload.getBalanceByAddressRequest,
    1078 : KaspadMessage_Payload.getBalanceByAddressResponse,
    1079 : KaspadMessage_Payload.getBalancesByAddressesRequest,
    1080 : KaspadMessage_Payload.getBalancesByAddressesResponse,
    1081 : KaspadMessage_Payload.notifyNewBlockTemplateRequest,
    1082 : KaspadMessage_Payload.notifyNewBlockTemplateResponse,
    1083 : KaspadMessage_Payload.newBlockTemplateNotification,
    1084 : KaspadMessage_Payload.getMempoolEntriesByAddressesRequest,
    1085 : KaspadMessage_Payload.getMempoolEntriesByAddressesResponse,
    1086 : KaspadMessage_Payload.getCoinSupplyRequest,
    1087 : KaspadMessage_Payload.getCoinSupplyResponse,
    0 : KaspadMessage_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KaspadMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protowire'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 5, 6, 10, 12, 13, 14, 15, 16, 17, 19, 20, 21, 22, 25, 26, 27, 30, 31, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017, 1018, 1019, 1020, 1021, 1022, 1023, 1024, 1025, 1026, 1027, 1028, 1029, 1030, 1031, 1032, 1033, 1034, 1035, 1036, 1037, 1038, 1039, 1040, 1041, 1042, 1043, 1044, 1045, 1046, 1047, 1048, 1049, 1050, 1051, 1052, 1053, 1054, 1055, 1056, 1057, 1058, 1059, 1060, 1061, 1062, 1063, 1064, 1065, 1066, 1067, 1068, 1069, 1070, 1071, 1072, 1073, 1074, 1075, 1076, 1077, 1078, 1079, 1080, 1081, 1082, 1083, 1084, 1085, 1086, 1087])
    ..aOM<$1.AddressesMessage>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addresses', subBuilder: $1.AddressesMessage.create)
    ..aOM<$1.BlockMessage>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'block', subBuilder: $1.BlockMessage.create)
    ..aOM<$1.TransactionMessage>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transaction', subBuilder: $1.TransactionMessage.create)
    ..aOM<$1.BlockLocatorMessage>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockLocator', protoName: 'blockLocator', subBuilder: $1.BlockLocatorMessage.create)
    ..aOM<$1.RequestAddressesMessage>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestAddresses', protoName: 'requestAddresses', subBuilder: $1.RequestAddressesMessage.create)
    ..aOM<$1.RequestRelayBlocksMessage>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestRelayBlocks', protoName: 'requestRelayBlocks', subBuilder: $1.RequestRelayBlocksMessage.create)
    ..aOM<$1.RequestTransactionsMessage>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestTransactions', protoName: 'requestTransactions', subBuilder: $1.RequestTransactionsMessage.create)
    ..aOM<$1.BlockMessage>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ibdBlock', protoName: 'ibdBlock', subBuilder: $1.BlockMessage.create)
    ..aOM<$1.InvRelayBlockMessage>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'invRelayBlock', protoName: 'invRelayBlock', subBuilder: $1.InvRelayBlockMessage.create)
    ..aOM<$1.InvTransactionsMessage>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'invTransactions', protoName: 'invTransactions', subBuilder: $1.InvTransactionsMessage.create)
    ..aOM<$1.PingMessage>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ping', subBuilder: $1.PingMessage.create)
    ..aOM<$1.PongMessage>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pong', subBuilder: $1.PongMessage.create)
    ..aOM<$1.VerackMessage>(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'verack', subBuilder: $1.VerackMessage.create)
    ..aOM<$1.VersionMessage>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version', subBuilder: $1.VersionMessage.create)
    ..aOM<$1.TransactionNotFoundMessage>(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transactionNotFound', protoName: 'transactionNotFound', subBuilder: $1.TransactionNotFoundMessage.create)
    ..aOM<$1.RejectMessage>(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reject', subBuilder: $1.RejectMessage.create)
    ..aOM<$1.PruningPointUtxoSetChunkMessage>(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pruningPointUtxoSetChunk', protoName: 'pruningPointUtxoSetChunk', subBuilder: $1.PruningPointUtxoSetChunkMessage.create)
    ..aOM<$1.RequestIBDBlocksMessage>(26, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestIBDBlocks', protoName: 'requestIBDBlocks', subBuilder: $1.RequestIBDBlocksMessage.create)
    ..aOM<$1.UnexpectedPruningPointMessage>(27, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unexpectedPruningPoint', protoName: 'unexpectedPruningPoint', subBuilder: $1.UnexpectedPruningPointMessage.create)
    ..aOM<$1.IbdBlockLocatorMessage>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ibdBlockLocator', protoName: 'ibdBlockLocator', subBuilder: $1.IbdBlockLocatorMessage.create)
    ..aOM<$1.IbdBlockLocatorHighestHashMessage>(31, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ibdBlockLocatorHighestHash', protoName: 'ibdBlockLocatorHighestHash', subBuilder: $1.IbdBlockLocatorHighestHashMessage.create)
    ..aOM<$1.RequestNextPruningPointUtxoSetChunkMessage>(33, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestNextPruningPointUtxoSetChunk', protoName: 'requestNextPruningPointUtxoSetChunk', subBuilder: $1.RequestNextPruningPointUtxoSetChunkMessage.create)
    ..aOM<$1.DonePruningPointUtxoSetChunksMessage>(34, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'donePruningPointUtxoSetChunks', protoName: 'donePruningPointUtxoSetChunks', subBuilder: $1.DonePruningPointUtxoSetChunksMessage.create)
    ..aOM<$1.IbdBlockLocatorHighestHashNotFoundMessage>(35, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ibdBlockLocatorHighestHashNotFound', protoName: 'ibdBlockLocatorHighestHashNotFound', subBuilder: $1.IbdBlockLocatorHighestHashNotFoundMessage.create)
    ..aOM<$1.BlockWithTrustedDataMessage>(36, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockWithTrustedData', protoName: 'blockWithTrustedData', subBuilder: $1.BlockWithTrustedDataMessage.create)
    ..aOM<$1.DoneBlocksWithTrustedDataMessage>(37, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'doneBlocksWithTrustedData', protoName: 'doneBlocksWithTrustedData', subBuilder: $1.DoneBlocksWithTrustedDataMessage.create)
    ..aOM<$1.RequestPruningPointAndItsAnticoneMessage>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestPruningPointAndItsAnticone', protoName: 'requestPruningPointAndItsAnticone', subBuilder: $1.RequestPruningPointAndItsAnticoneMessage.create)
    ..aOM<$1.BlockHeadersMessage>(41, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockHeaders', protoName: 'blockHeaders', subBuilder: $1.BlockHeadersMessage.create)
    ..aOM<$1.RequestNextHeadersMessage>(42, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestNextHeaders', protoName: 'requestNextHeaders', subBuilder: $1.RequestNextHeadersMessage.create)
    ..aOM<$1.DoneHeadersMessage>(43, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DoneHeaders', protoName: 'DoneHeaders', subBuilder: $1.DoneHeadersMessage.create)
    ..aOM<$1.RequestPruningPointUTXOSetMessage>(44, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestPruningPointUTXOSet', protoName: 'requestPruningPointUTXOSet', subBuilder: $1.RequestPruningPointUTXOSetMessage.create)
    ..aOM<$1.RequestHeadersMessage>(45, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestHeaders', protoName: 'requestHeaders', subBuilder: $1.RequestHeadersMessage.create)
    ..aOM<$1.RequestBlockLocatorMessage>(46, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestBlockLocator', protoName: 'requestBlockLocator', subBuilder: $1.RequestBlockLocatorMessage.create)
    ..aOM<$1.PruningPointsMessage>(47, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pruningPoints', protoName: 'pruningPoints', subBuilder: $1.PruningPointsMessage.create)
    ..aOM<$1.RequestPruningPointProofMessage>(48, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestPruningPointProof', protoName: 'requestPruningPointProof', subBuilder: $1.RequestPruningPointProofMessage.create)
    ..aOM<$1.PruningPointProofMessage>(49, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pruningPointProof', protoName: 'pruningPointProof', subBuilder: $1.PruningPointProofMessage.create)
    ..aOM<$1.ReadyMessage>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ready', subBuilder: $1.ReadyMessage.create)
    ..aOM<$1.BlockWithTrustedDataV4Message>(51, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockWithTrustedDataV4', protoName: 'blockWithTrustedDataV4', subBuilder: $1.BlockWithTrustedDataV4Message.create)
    ..aOM<$1.TrustedDataMessage>(52, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trustedData', protoName: 'trustedData', subBuilder: $1.TrustedDataMessage.create)
    ..aOM<$1.RequestIBDChainBlockLocatorMessage>(53, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestIBDChainBlockLocator', protoName: 'requestIBDChainBlockLocator', subBuilder: $1.RequestIBDChainBlockLocatorMessage.create)
    ..aOM<$1.IbdChainBlockLocatorMessage>(54, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ibdChainBlockLocator', protoName: 'ibdChainBlockLocator', subBuilder: $1.IbdChainBlockLocatorMessage.create)
    ..aOM<$1.RequestAnticoneMessage>(55, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestAnticone', protoName: 'requestAnticone', subBuilder: $1.RequestAnticoneMessage.create)
    ..aOM<$1.RequestNextPruningPointAndItsAnticoneBlocksMessage>(56, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestNextPruningPointAndItsAnticoneBlocks', protoName: 'requestNextPruningPointAndItsAnticoneBlocks', subBuilder: $1.RequestNextPruningPointAndItsAnticoneBlocksMessage.create)
    ..aOM<$2.GetCurrentNetworkRequestMessage>(1001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getCurrentNetworkRequest', protoName: 'getCurrentNetworkRequest', subBuilder: $2.GetCurrentNetworkRequestMessage.create)
    ..aOM<$2.GetCurrentNetworkResponseMessage>(1002, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getCurrentNetworkResponse', protoName: 'getCurrentNetworkResponse', subBuilder: $2.GetCurrentNetworkResponseMessage.create)
    ..aOM<$2.SubmitBlockRequestMessage>(1003, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'submitBlockRequest', protoName: 'submitBlockRequest', subBuilder: $2.SubmitBlockRequestMessage.create)
    ..aOM<$2.SubmitBlockResponseMessage>(1004, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'submitBlockResponse', protoName: 'submitBlockResponse', subBuilder: $2.SubmitBlockResponseMessage.create)
    ..aOM<$2.GetBlockTemplateRequestMessage>(1005, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getBlockTemplateRequest', protoName: 'getBlockTemplateRequest', subBuilder: $2.GetBlockTemplateRequestMessage.create)
    ..aOM<$2.GetBlockTemplateResponseMessage>(1006, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getBlockTemplateResponse', protoName: 'getBlockTemplateResponse', subBuilder: $2.GetBlockTemplateResponseMessage.create)
    ..aOM<$2.NotifyBlockAddedRequestMessage>(1007, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notifyBlockAddedRequest', protoName: 'notifyBlockAddedRequest', subBuilder: $2.NotifyBlockAddedRequestMessage.create)
    ..aOM<$2.NotifyBlockAddedResponseMessage>(1008, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notifyBlockAddedResponse', protoName: 'notifyBlockAddedResponse', subBuilder: $2.NotifyBlockAddedResponseMessage.create)
    ..aOM<$2.BlockAddedNotificationMessage>(1009, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockAddedNotification', protoName: 'blockAddedNotification', subBuilder: $2.BlockAddedNotificationMessage.create)
    ..aOM<$2.GetPeerAddressesRequestMessage>(1010, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getPeerAddressesRequest', protoName: 'getPeerAddressesRequest', subBuilder: $2.GetPeerAddressesRequestMessage.create)
    ..aOM<$2.GetPeerAddressesResponseMessage>(1011, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getPeerAddressesResponse', protoName: 'getPeerAddressesResponse', subBuilder: $2.GetPeerAddressesResponseMessage.create)
    ..aOM<$2.GetSelectedTipHashRequestMessage>(1012, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getSelectedTipHashRequest', protoName: 'getSelectedTipHashRequest', subBuilder: $2.GetSelectedTipHashRequestMessage.create)
    ..aOM<$2.GetSelectedTipHashResponseMessage>(1013, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getSelectedTipHashResponse', protoName: 'getSelectedTipHashResponse', subBuilder: $2.GetSelectedTipHashResponseMessage.create)
    ..aOM<$2.GetMempoolEntryRequestMessage>(1014, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getMempoolEntryRequest', protoName: 'getMempoolEntryRequest', subBuilder: $2.GetMempoolEntryRequestMessage.create)
    ..aOM<$2.GetMempoolEntryResponseMessage>(1015, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getMempoolEntryResponse', protoName: 'getMempoolEntryResponse', subBuilder: $2.GetMempoolEntryResponseMessage.create)
    ..aOM<$2.GetConnectedPeerInfoRequestMessage>(1016, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getConnectedPeerInfoRequest', protoName: 'getConnectedPeerInfoRequest', subBuilder: $2.GetConnectedPeerInfoRequestMessage.create)
    ..aOM<$2.GetConnectedPeerInfoResponseMessage>(1017, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getConnectedPeerInfoResponse', protoName: 'getConnectedPeerInfoResponse', subBuilder: $2.GetConnectedPeerInfoResponseMessage.create)
    ..aOM<$2.AddPeerRequestMessage>(1018, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addPeerRequest', protoName: 'addPeerRequest', subBuilder: $2.AddPeerRequestMessage.create)
    ..aOM<$2.AddPeerResponseMessage>(1019, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addPeerResponse', protoName: 'addPeerResponse', subBuilder: $2.AddPeerResponseMessage.create)
    ..aOM<$2.SubmitTransactionRequestMessage>(1020, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'submitTransactionRequest', protoName: 'submitTransactionRequest', subBuilder: $2.SubmitTransactionRequestMessage.create)
    ..aOM<$2.SubmitTransactionResponseMessage>(1021, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'submitTransactionResponse', protoName: 'submitTransactionResponse', subBuilder: $2.SubmitTransactionResponseMessage.create)
    ..aOM<$2.NotifyVirtualSelectedParentChainChangedRequestMessage>(1022, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notifyVirtualSelectedParentChainChangedRequest', protoName: 'notifyVirtualSelectedParentChainChangedRequest', subBuilder: $2.NotifyVirtualSelectedParentChainChangedRequestMessage.create)
    ..aOM<$2.NotifyVirtualSelectedParentChainChangedResponseMessage>(1023, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notifyVirtualSelectedParentChainChangedResponse', protoName: 'notifyVirtualSelectedParentChainChangedResponse', subBuilder: $2.NotifyVirtualSelectedParentChainChangedResponseMessage.create)
    ..aOM<$2.VirtualSelectedParentChainChangedNotificationMessage>(1024, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'virtualSelectedParentChainChangedNotification', protoName: 'virtualSelectedParentChainChangedNotification', subBuilder: $2.VirtualSelectedParentChainChangedNotificationMessage.create)
    ..aOM<$2.GetBlockRequestMessage>(1025, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getBlockRequest', protoName: 'getBlockRequest', subBuilder: $2.GetBlockRequestMessage.create)
    ..aOM<$2.GetBlockResponseMessage>(1026, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getBlockResponse', protoName: 'getBlockResponse', subBuilder: $2.GetBlockResponseMessage.create)
    ..aOM<$2.GetSubnetworkRequestMessage>(1027, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getSubnetworkRequest', protoName: 'getSubnetworkRequest', subBuilder: $2.GetSubnetworkRequestMessage.create)
    ..aOM<$2.GetSubnetworkResponseMessage>(1028, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getSubnetworkResponse', protoName: 'getSubnetworkResponse', subBuilder: $2.GetSubnetworkResponseMessage.create)
    ..aOM<$2.GetVirtualSelectedParentChainFromBlockRequestMessage>(1029, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getVirtualSelectedParentChainFromBlockRequest', protoName: 'getVirtualSelectedParentChainFromBlockRequest', subBuilder: $2.GetVirtualSelectedParentChainFromBlockRequestMessage.create)
    ..aOM<$2.GetVirtualSelectedParentChainFromBlockResponseMessage>(1030, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getVirtualSelectedParentChainFromBlockResponse', protoName: 'getVirtualSelectedParentChainFromBlockResponse', subBuilder: $2.GetVirtualSelectedParentChainFromBlockResponseMessage.create)
    ..aOM<$2.GetBlocksRequestMessage>(1031, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getBlocksRequest', protoName: 'getBlocksRequest', subBuilder: $2.GetBlocksRequestMessage.create)
    ..aOM<$2.GetBlocksResponseMessage>(1032, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getBlocksResponse', protoName: 'getBlocksResponse', subBuilder: $2.GetBlocksResponseMessage.create)
    ..aOM<$2.GetBlockCountRequestMessage>(1033, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getBlockCountRequest', protoName: 'getBlockCountRequest', subBuilder: $2.GetBlockCountRequestMessage.create)
    ..aOM<$2.GetBlockCountResponseMessage>(1034, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getBlockCountResponse', protoName: 'getBlockCountResponse', subBuilder: $2.GetBlockCountResponseMessage.create)
    ..aOM<$2.GetBlockDagInfoRequestMessage>(1035, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getBlockDagInfoRequest', protoName: 'getBlockDagInfoRequest', subBuilder: $2.GetBlockDagInfoRequestMessage.create)
    ..aOM<$2.GetBlockDagInfoResponseMessage>(1036, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getBlockDagInfoResponse', protoName: 'getBlockDagInfoResponse', subBuilder: $2.GetBlockDagInfoResponseMessage.create)
    ..aOM<$2.ResolveFinalityConflictRequestMessage>(1037, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resolveFinalityConflictRequest', protoName: 'resolveFinalityConflictRequest', subBuilder: $2.ResolveFinalityConflictRequestMessage.create)
    ..aOM<$2.ResolveFinalityConflictResponseMessage>(1038, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resolveFinalityConflictResponse', protoName: 'resolveFinalityConflictResponse', subBuilder: $2.ResolveFinalityConflictResponseMessage.create)
    ..aOM<$2.NotifyFinalityConflictsRequestMessage>(1039, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notifyFinalityConflictsRequest', protoName: 'notifyFinalityConflictsRequest', subBuilder: $2.NotifyFinalityConflictsRequestMessage.create)
    ..aOM<$2.NotifyFinalityConflictsResponseMessage>(1040, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notifyFinalityConflictsResponse', protoName: 'notifyFinalityConflictsResponse', subBuilder: $2.NotifyFinalityConflictsResponseMessage.create)
    ..aOM<$2.FinalityConflictNotificationMessage>(1041, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'finalityConflictNotification', protoName: 'finalityConflictNotification', subBuilder: $2.FinalityConflictNotificationMessage.create)
    ..aOM<$2.FinalityConflictResolvedNotificationMessage>(1042, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'finalityConflictResolvedNotification', protoName: 'finalityConflictResolvedNotification', subBuilder: $2.FinalityConflictResolvedNotificationMessage.create)
    ..aOM<$2.GetMempoolEntriesRequestMessage>(1043, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getMempoolEntriesRequest', protoName: 'getMempoolEntriesRequest', subBuilder: $2.GetMempoolEntriesRequestMessage.create)
    ..aOM<$2.GetMempoolEntriesResponseMessage>(1044, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getMempoolEntriesResponse', protoName: 'getMempoolEntriesResponse', subBuilder: $2.GetMempoolEntriesResponseMessage.create)
    ..aOM<$2.ShutDownRequestMessage>(1045, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'shutDownRequest', protoName: 'shutDownRequest', subBuilder: $2.ShutDownRequestMessage.create)
    ..aOM<$2.ShutDownResponseMessage>(1046, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'shutDownResponse', protoName: 'shutDownResponse', subBuilder: $2.ShutDownResponseMessage.create)
    ..aOM<$2.GetHeadersRequestMessage>(1047, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getHeadersRequest', protoName: 'getHeadersRequest', subBuilder: $2.GetHeadersRequestMessage.create)
    ..aOM<$2.GetHeadersResponseMessage>(1048, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getHeadersResponse', protoName: 'getHeadersResponse', subBuilder: $2.GetHeadersResponseMessage.create)
    ..aOM<$2.NotifyUtxosChangedRequestMessage>(1049, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notifyUtxosChangedRequest', protoName: 'notifyUtxosChangedRequest', subBuilder: $2.NotifyUtxosChangedRequestMessage.create)
    ..aOM<$2.NotifyUtxosChangedResponseMessage>(1050, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notifyUtxosChangedResponse', protoName: 'notifyUtxosChangedResponse', subBuilder: $2.NotifyUtxosChangedResponseMessage.create)
    ..aOM<$2.UtxosChangedNotificationMessage>(1051, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'utxosChangedNotification', protoName: 'utxosChangedNotification', subBuilder: $2.UtxosChangedNotificationMessage.create)
    ..aOM<$2.GetUtxosByAddressesRequestMessage>(1052, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getUtxosByAddressesRequest', protoName: 'getUtxosByAddressesRequest', subBuilder: $2.GetUtxosByAddressesRequestMessage.create)
    ..aOM<$2.GetUtxosByAddressesResponseMessage>(1053, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getUtxosByAddressesResponse', protoName: 'getUtxosByAddressesResponse', subBuilder: $2.GetUtxosByAddressesResponseMessage.create)
    ..aOM<$2.GetVirtualSelectedParentBlueScoreRequestMessage>(1054, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getVirtualSelectedParentBlueScoreRequest', protoName: 'getVirtualSelectedParentBlueScoreRequest', subBuilder: $2.GetVirtualSelectedParentBlueScoreRequestMessage.create)
    ..aOM<$2.GetVirtualSelectedParentBlueScoreResponseMessage>(1055, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getVirtualSelectedParentBlueScoreResponse', protoName: 'getVirtualSelectedParentBlueScoreResponse', subBuilder: $2.GetVirtualSelectedParentBlueScoreResponseMessage.create)
    ..aOM<$2.NotifyVirtualSelectedParentBlueScoreChangedRequestMessage>(1056, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notifyVirtualSelectedParentBlueScoreChangedRequest', protoName: 'notifyVirtualSelectedParentBlueScoreChangedRequest', subBuilder: $2.NotifyVirtualSelectedParentBlueScoreChangedRequestMessage.create)
    ..aOM<$2.NotifyVirtualSelectedParentBlueScoreChangedResponseMessage>(1057, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notifyVirtualSelectedParentBlueScoreChangedResponse', protoName: 'notifyVirtualSelectedParentBlueScoreChangedResponse', subBuilder: $2.NotifyVirtualSelectedParentBlueScoreChangedResponseMessage.create)
    ..aOM<$2.VirtualSelectedParentBlueScoreChangedNotificationMessage>(1058, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'virtualSelectedParentBlueScoreChangedNotification', protoName: 'virtualSelectedParentBlueScoreChangedNotification', subBuilder: $2.VirtualSelectedParentBlueScoreChangedNotificationMessage.create)
    ..aOM<$2.BanRequestMessage>(1059, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'banRequest', protoName: 'banRequest', subBuilder: $2.BanRequestMessage.create)
    ..aOM<$2.BanResponseMessage>(1060, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'banResponse', protoName: 'banResponse', subBuilder: $2.BanResponseMessage.create)
    ..aOM<$2.UnbanRequestMessage>(1061, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unbanRequest', protoName: 'unbanRequest', subBuilder: $2.UnbanRequestMessage.create)
    ..aOM<$2.UnbanResponseMessage>(1062, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unbanResponse', protoName: 'unbanResponse', subBuilder: $2.UnbanResponseMessage.create)
    ..aOM<$2.GetInfoRequestMessage>(1063, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getInfoRequest', protoName: 'getInfoRequest', subBuilder: $2.GetInfoRequestMessage.create)
    ..aOM<$2.GetInfoResponseMessage>(1064, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getInfoResponse', protoName: 'getInfoResponse', subBuilder: $2.GetInfoResponseMessage.create)
    ..aOM<$2.StopNotifyingUtxosChangedRequestMessage>(1065, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stopNotifyingUtxosChangedRequest', protoName: 'stopNotifyingUtxosChangedRequest', subBuilder: $2.StopNotifyingUtxosChangedRequestMessage.create)
    ..aOM<$2.StopNotifyingUtxosChangedResponseMessage>(1066, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stopNotifyingUtxosChangedResponse', protoName: 'stopNotifyingUtxosChangedResponse', subBuilder: $2.StopNotifyingUtxosChangedResponseMessage.create)
    ..aOM<$2.NotifyPruningPointUTXOSetOverrideRequestMessage>(1067, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notifyPruningPointUTXOSetOverrideRequest', protoName: 'notifyPruningPointUTXOSetOverrideRequest', subBuilder: $2.NotifyPruningPointUTXOSetOverrideRequestMessage.create)
    ..aOM<$2.NotifyPruningPointUTXOSetOverrideResponseMessage>(1068, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notifyPruningPointUTXOSetOverrideResponse', protoName: 'notifyPruningPointUTXOSetOverrideResponse', subBuilder: $2.NotifyPruningPointUTXOSetOverrideResponseMessage.create)
    ..aOM<$2.PruningPointUTXOSetOverrideNotificationMessage>(1069, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pruningPointUTXOSetOverrideNotification', protoName: 'pruningPointUTXOSetOverrideNotification', subBuilder: $2.PruningPointUTXOSetOverrideNotificationMessage.create)
    ..aOM<$2.StopNotifyingPruningPointUTXOSetOverrideRequestMessage>(1070, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stopNotifyingPruningPointUTXOSetOverrideRequest', protoName: 'stopNotifyingPruningPointUTXOSetOverrideRequest', subBuilder: $2.StopNotifyingPruningPointUTXOSetOverrideRequestMessage.create)
    ..aOM<$2.StopNotifyingPruningPointUTXOSetOverrideResponseMessage>(1071, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stopNotifyingPruningPointUTXOSetOverrideResponse', protoName: 'stopNotifyingPruningPointUTXOSetOverrideResponse', subBuilder: $2.StopNotifyingPruningPointUTXOSetOverrideResponseMessage.create)
    ..aOM<$2.EstimateNetworkHashesPerSecondRequestMessage>(1072, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'estimateNetworkHashesPerSecondRequest', protoName: 'estimateNetworkHashesPerSecondRequest', subBuilder: $2.EstimateNetworkHashesPerSecondRequestMessage.create)
    ..aOM<$2.EstimateNetworkHashesPerSecondResponseMessage>(1073, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'estimateNetworkHashesPerSecondResponse', protoName: 'estimateNetworkHashesPerSecondResponse', subBuilder: $2.EstimateNetworkHashesPerSecondResponseMessage.create)
    ..aOM<$2.NotifyVirtualDaaScoreChangedRequestMessage>(1074, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notifyVirtualDaaScoreChangedRequest', protoName: 'notifyVirtualDaaScoreChangedRequest', subBuilder: $2.NotifyVirtualDaaScoreChangedRequestMessage.create)
    ..aOM<$2.NotifyVirtualDaaScoreChangedResponseMessage>(1075, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notifyVirtualDaaScoreChangedResponse', protoName: 'notifyVirtualDaaScoreChangedResponse', subBuilder: $2.NotifyVirtualDaaScoreChangedResponseMessage.create)
    ..aOM<$2.VirtualDaaScoreChangedNotificationMessage>(1076, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'virtualDaaScoreChangedNotification', protoName: 'virtualDaaScoreChangedNotification', subBuilder: $2.VirtualDaaScoreChangedNotificationMessage.create)
    ..aOM<$2.GetBalanceByAddressRequestMessage>(1077, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getBalanceByAddressRequest', protoName: 'getBalanceByAddressRequest', subBuilder: $2.GetBalanceByAddressRequestMessage.create)
    ..aOM<$2.GetBalanceByAddressResponseMessage>(1078, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getBalanceByAddressResponse', protoName: 'getBalanceByAddressResponse', subBuilder: $2.GetBalanceByAddressResponseMessage.create)
    ..aOM<$2.GetBalancesByAddressesRequestMessage>(1079, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getBalancesByAddressesRequest', protoName: 'getBalancesByAddressesRequest', subBuilder: $2.GetBalancesByAddressesRequestMessage.create)
    ..aOM<$2.GetBalancesByAddressesResponseMessage>(1080, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getBalancesByAddressesResponse', protoName: 'getBalancesByAddressesResponse', subBuilder: $2.GetBalancesByAddressesResponseMessage.create)
    ..aOM<$2.NotifyNewBlockTemplateRequestMessage>(1081, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notifyNewBlockTemplateRequest', protoName: 'notifyNewBlockTemplateRequest', subBuilder: $2.NotifyNewBlockTemplateRequestMessage.create)
    ..aOM<$2.NotifyNewBlockTemplateResponseMessage>(1082, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notifyNewBlockTemplateResponse', protoName: 'notifyNewBlockTemplateResponse', subBuilder: $2.NotifyNewBlockTemplateResponseMessage.create)
    ..aOM<$2.NewBlockTemplateNotificationMessage>(1083, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'newBlockTemplateNotification', protoName: 'newBlockTemplateNotification', subBuilder: $2.NewBlockTemplateNotificationMessage.create)
    ..aOM<$2.GetMempoolEntriesByAddressesRequestMessage>(1084, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getMempoolEntriesByAddressesRequest', protoName: 'getMempoolEntriesByAddressesRequest', subBuilder: $2.GetMempoolEntriesByAddressesRequestMessage.create)
    ..aOM<$2.GetMempoolEntriesByAddressesResponseMessage>(1085, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getMempoolEntriesByAddressesResponse', protoName: 'getMempoolEntriesByAddressesResponse', subBuilder: $2.GetMempoolEntriesByAddressesResponseMessage.create)
    ..aOM<$2.GetCoinSupplyRequestMessage>(1086, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getCoinSupplyRequest', protoName: 'getCoinSupplyRequest', subBuilder: $2.GetCoinSupplyRequestMessage.create)
    ..aOM<$2.GetCoinSupplyResponseMessage>(1087, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getCoinSupplyResponse', protoName: 'getCoinSupplyResponse', subBuilder: $2.GetCoinSupplyResponseMessage.create)
    ..hasRequiredFields = false
  ;

  KaspadMessage._() : super();
  factory KaspadMessage({
    $1.AddressesMessage? addresses,
    $1.BlockMessage? block,
    $1.TransactionMessage? transaction,
    $1.BlockLocatorMessage? blockLocator,
    $1.RequestAddressesMessage? requestAddresses,
    $1.RequestRelayBlocksMessage? requestRelayBlocks,
    $1.RequestTransactionsMessage? requestTransactions,
    $1.BlockMessage? ibdBlock,
    $1.InvRelayBlockMessage? invRelayBlock,
    $1.InvTransactionsMessage? invTransactions,
    $1.PingMessage? ping,
    $1.PongMessage? pong,
    $1.VerackMessage? verack,
    $1.VersionMessage? version,
    $1.TransactionNotFoundMessage? transactionNotFound,
    $1.RejectMessage? reject,
    $1.PruningPointUtxoSetChunkMessage? pruningPointUtxoSetChunk,
    $1.RequestIBDBlocksMessage? requestIBDBlocks,
    $1.UnexpectedPruningPointMessage? unexpectedPruningPoint,
    $1.IbdBlockLocatorMessage? ibdBlockLocator,
    $1.IbdBlockLocatorHighestHashMessage? ibdBlockLocatorHighestHash,
    $1.RequestNextPruningPointUtxoSetChunkMessage? requestNextPruningPointUtxoSetChunk,
    $1.DonePruningPointUtxoSetChunksMessage? donePruningPointUtxoSetChunks,
    $1.IbdBlockLocatorHighestHashNotFoundMessage? ibdBlockLocatorHighestHashNotFound,
    $1.BlockWithTrustedDataMessage? blockWithTrustedData,
    $1.DoneBlocksWithTrustedDataMessage? doneBlocksWithTrustedData,
    $1.RequestPruningPointAndItsAnticoneMessage? requestPruningPointAndItsAnticone,
    $1.BlockHeadersMessage? blockHeaders,
    $1.RequestNextHeadersMessage? requestNextHeaders,
    $1.DoneHeadersMessage? doneHeaders,
    $1.RequestPruningPointUTXOSetMessage? requestPruningPointUTXOSet,
    $1.RequestHeadersMessage? requestHeaders,
    $1.RequestBlockLocatorMessage? requestBlockLocator,
    $1.PruningPointsMessage? pruningPoints,
    $1.RequestPruningPointProofMessage? requestPruningPointProof,
    $1.PruningPointProofMessage? pruningPointProof,
    $1.ReadyMessage? ready,
    $1.BlockWithTrustedDataV4Message? blockWithTrustedDataV4,
    $1.TrustedDataMessage? trustedData,
    $1.RequestIBDChainBlockLocatorMessage? requestIBDChainBlockLocator,
    $1.IbdChainBlockLocatorMessage? ibdChainBlockLocator,
    $1.RequestAnticoneMessage? requestAnticone,
    $1.RequestNextPruningPointAndItsAnticoneBlocksMessage? requestNextPruningPointAndItsAnticoneBlocks,
    $2.GetCurrentNetworkRequestMessage? getCurrentNetworkRequest,
    $2.GetCurrentNetworkResponseMessage? getCurrentNetworkResponse,
    $2.SubmitBlockRequestMessage? submitBlockRequest,
    $2.SubmitBlockResponseMessage? submitBlockResponse,
    $2.GetBlockTemplateRequestMessage? getBlockTemplateRequest,
    $2.GetBlockTemplateResponseMessage? getBlockTemplateResponse,
    $2.NotifyBlockAddedRequestMessage? notifyBlockAddedRequest,
    $2.NotifyBlockAddedResponseMessage? notifyBlockAddedResponse,
    $2.BlockAddedNotificationMessage? blockAddedNotification,
    $2.GetPeerAddressesRequestMessage? getPeerAddressesRequest,
    $2.GetPeerAddressesResponseMessage? getPeerAddressesResponse,
    $2.GetSelectedTipHashRequestMessage? getSelectedTipHashRequest,
    $2.GetSelectedTipHashResponseMessage? getSelectedTipHashResponse,
    $2.GetMempoolEntryRequestMessage? getMempoolEntryRequest,
    $2.GetMempoolEntryResponseMessage? getMempoolEntryResponse,
    $2.GetConnectedPeerInfoRequestMessage? getConnectedPeerInfoRequest,
    $2.GetConnectedPeerInfoResponseMessage? getConnectedPeerInfoResponse,
    $2.AddPeerRequestMessage? addPeerRequest,
    $2.AddPeerResponseMessage? addPeerResponse,
    $2.SubmitTransactionRequestMessage? submitTransactionRequest,
    $2.SubmitTransactionResponseMessage? submitTransactionResponse,
    $2.NotifyVirtualSelectedParentChainChangedRequestMessage? notifyVirtualSelectedParentChainChangedRequest,
    $2.NotifyVirtualSelectedParentChainChangedResponseMessage? notifyVirtualSelectedParentChainChangedResponse,
    $2.VirtualSelectedParentChainChangedNotificationMessage? virtualSelectedParentChainChangedNotification,
    $2.GetBlockRequestMessage? getBlockRequest,
    $2.GetBlockResponseMessage? getBlockResponse,
    $2.GetSubnetworkRequestMessage? getSubnetworkRequest,
    $2.GetSubnetworkResponseMessage? getSubnetworkResponse,
    $2.GetVirtualSelectedParentChainFromBlockRequestMessage? getVirtualSelectedParentChainFromBlockRequest,
    $2.GetVirtualSelectedParentChainFromBlockResponseMessage? getVirtualSelectedParentChainFromBlockResponse,
    $2.GetBlocksRequestMessage? getBlocksRequest,
    $2.GetBlocksResponseMessage? getBlocksResponse,
    $2.GetBlockCountRequestMessage? getBlockCountRequest,
    $2.GetBlockCountResponseMessage? getBlockCountResponse,
    $2.GetBlockDagInfoRequestMessage? getBlockDagInfoRequest,
    $2.GetBlockDagInfoResponseMessage? getBlockDagInfoResponse,
    $2.ResolveFinalityConflictRequestMessage? resolveFinalityConflictRequest,
    $2.ResolveFinalityConflictResponseMessage? resolveFinalityConflictResponse,
    $2.NotifyFinalityConflictsRequestMessage? notifyFinalityConflictsRequest,
    $2.NotifyFinalityConflictsResponseMessage? notifyFinalityConflictsResponse,
    $2.FinalityConflictNotificationMessage? finalityConflictNotification,
    $2.FinalityConflictResolvedNotificationMessage? finalityConflictResolvedNotification,
    $2.GetMempoolEntriesRequestMessage? getMempoolEntriesRequest,
    $2.GetMempoolEntriesResponseMessage? getMempoolEntriesResponse,
    $2.ShutDownRequestMessage? shutDownRequest,
    $2.ShutDownResponseMessage? shutDownResponse,
    $2.GetHeadersRequestMessage? getHeadersRequest,
    $2.GetHeadersResponseMessage? getHeadersResponse,
    $2.NotifyUtxosChangedRequestMessage? notifyUtxosChangedRequest,
    $2.NotifyUtxosChangedResponseMessage? notifyUtxosChangedResponse,
    $2.UtxosChangedNotificationMessage? utxosChangedNotification,
    $2.GetUtxosByAddressesRequestMessage? getUtxosByAddressesRequest,
    $2.GetUtxosByAddressesResponseMessage? getUtxosByAddressesResponse,
    $2.GetVirtualSelectedParentBlueScoreRequestMessage? getVirtualSelectedParentBlueScoreRequest,
    $2.GetVirtualSelectedParentBlueScoreResponseMessage? getVirtualSelectedParentBlueScoreResponse,
    $2.NotifyVirtualSelectedParentBlueScoreChangedRequestMessage? notifyVirtualSelectedParentBlueScoreChangedRequest,
    $2.NotifyVirtualSelectedParentBlueScoreChangedResponseMessage? notifyVirtualSelectedParentBlueScoreChangedResponse,
    $2.VirtualSelectedParentBlueScoreChangedNotificationMessage? virtualSelectedParentBlueScoreChangedNotification,
    $2.BanRequestMessage? banRequest,
    $2.BanResponseMessage? banResponse,
    $2.UnbanRequestMessage? unbanRequest,
    $2.UnbanResponseMessage? unbanResponse,
    $2.GetInfoRequestMessage? getInfoRequest,
    $2.GetInfoResponseMessage? getInfoResponse,
    $2.StopNotifyingUtxosChangedRequestMessage? stopNotifyingUtxosChangedRequest,
    $2.StopNotifyingUtxosChangedResponseMessage? stopNotifyingUtxosChangedResponse,
    $2.NotifyPruningPointUTXOSetOverrideRequestMessage? notifyPruningPointUTXOSetOverrideRequest,
    $2.NotifyPruningPointUTXOSetOverrideResponseMessage? notifyPruningPointUTXOSetOverrideResponse,
    $2.PruningPointUTXOSetOverrideNotificationMessage? pruningPointUTXOSetOverrideNotification,
    $2.StopNotifyingPruningPointUTXOSetOverrideRequestMessage? stopNotifyingPruningPointUTXOSetOverrideRequest,
    $2.StopNotifyingPruningPointUTXOSetOverrideResponseMessage? stopNotifyingPruningPointUTXOSetOverrideResponse,
    $2.EstimateNetworkHashesPerSecondRequestMessage? estimateNetworkHashesPerSecondRequest,
    $2.EstimateNetworkHashesPerSecondResponseMessage? estimateNetworkHashesPerSecondResponse,
    $2.NotifyVirtualDaaScoreChangedRequestMessage? notifyVirtualDaaScoreChangedRequest,
    $2.NotifyVirtualDaaScoreChangedResponseMessage? notifyVirtualDaaScoreChangedResponse,
    $2.VirtualDaaScoreChangedNotificationMessage? virtualDaaScoreChangedNotification,
    $2.GetBalanceByAddressRequestMessage? getBalanceByAddressRequest,
    $2.GetBalanceByAddressResponseMessage? getBalanceByAddressResponse,
    $2.GetBalancesByAddressesRequestMessage? getBalancesByAddressesRequest,
    $2.GetBalancesByAddressesResponseMessage? getBalancesByAddressesResponse,
    $2.NotifyNewBlockTemplateRequestMessage? notifyNewBlockTemplateRequest,
    $2.NotifyNewBlockTemplateResponseMessage? notifyNewBlockTemplateResponse,
    $2.NewBlockTemplateNotificationMessage? newBlockTemplateNotification,
    $2.GetMempoolEntriesByAddressesRequestMessage? getMempoolEntriesByAddressesRequest,
    $2.GetMempoolEntriesByAddressesResponseMessage? getMempoolEntriesByAddressesResponse,
    $2.GetCoinSupplyRequestMessage? getCoinSupplyRequest,
    $2.GetCoinSupplyResponseMessage? getCoinSupplyResponse,
  }) {
    final _result = create();
    if (addresses != null) {
      _result.addresses = addresses;
    }
    if (block != null) {
      _result.block = block;
    }
    if (transaction != null) {
      _result.transaction = transaction;
    }
    if (blockLocator != null) {
      _result.blockLocator = blockLocator;
    }
    if (requestAddresses != null) {
      _result.requestAddresses = requestAddresses;
    }
    if (requestRelayBlocks != null) {
      _result.requestRelayBlocks = requestRelayBlocks;
    }
    if (requestTransactions != null) {
      _result.requestTransactions = requestTransactions;
    }
    if (ibdBlock != null) {
      _result.ibdBlock = ibdBlock;
    }
    if (invRelayBlock != null) {
      _result.invRelayBlock = invRelayBlock;
    }
    if (invTransactions != null) {
      _result.invTransactions = invTransactions;
    }
    if (ping != null) {
      _result.ping = ping;
    }
    if (pong != null) {
      _result.pong = pong;
    }
    if (verack != null) {
      _result.verack = verack;
    }
    if (version != null) {
      _result.version = version;
    }
    if (transactionNotFound != null) {
      _result.transactionNotFound = transactionNotFound;
    }
    if (reject != null) {
      _result.reject = reject;
    }
    if (pruningPointUtxoSetChunk != null) {
      _result.pruningPointUtxoSetChunk = pruningPointUtxoSetChunk;
    }
    if (requestIBDBlocks != null) {
      _result.requestIBDBlocks = requestIBDBlocks;
    }
    if (unexpectedPruningPoint != null) {
      _result.unexpectedPruningPoint = unexpectedPruningPoint;
    }
    if (ibdBlockLocator != null) {
      _result.ibdBlockLocator = ibdBlockLocator;
    }
    if (ibdBlockLocatorHighestHash != null) {
      _result.ibdBlockLocatorHighestHash = ibdBlockLocatorHighestHash;
    }
    if (requestNextPruningPointUtxoSetChunk != null) {
      _result.requestNextPruningPointUtxoSetChunk = requestNextPruningPointUtxoSetChunk;
    }
    if (donePruningPointUtxoSetChunks != null) {
      _result.donePruningPointUtxoSetChunks = donePruningPointUtxoSetChunks;
    }
    if (ibdBlockLocatorHighestHashNotFound != null) {
      _result.ibdBlockLocatorHighestHashNotFound = ibdBlockLocatorHighestHashNotFound;
    }
    if (blockWithTrustedData != null) {
      _result.blockWithTrustedData = blockWithTrustedData;
    }
    if (doneBlocksWithTrustedData != null) {
      _result.doneBlocksWithTrustedData = doneBlocksWithTrustedData;
    }
    if (requestPruningPointAndItsAnticone != null) {
      _result.requestPruningPointAndItsAnticone = requestPruningPointAndItsAnticone;
    }
    if (blockHeaders != null) {
      _result.blockHeaders = blockHeaders;
    }
    if (requestNextHeaders != null) {
      _result.requestNextHeaders = requestNextHeaders;
    }
    if (doneHeaders != null) {
      _result.doneHeaders = doneHeaders;
    }
    if (requestPruningPointUTXOSet != null) {
      _result.requestPruningPointUTXOSet = requestPruningPointUTXOSet;
    }
    if (requestHeaders != null) {
      _result.requestHeaders = requestHeaders;
    }
    if (requestBlockLocator != null) {
      _result.requestBlockLocator = requestBlockLocator;
    }
    if (pruningPoints != null) {
      _result.pruningPoints = pruningPoints;
    }
    if (requestPruningPointProof != null) {
      _result.requestPruningPointProof = requestPruningPointProof;
    }
    if (pruningPointProof != null) {
      _result.pruningPointProof = pruningPointProof;
    }
    if (ready != null) {
      _result.ready = ready;
    }
    if (blockWithTrustedDataV4 != null) {
      _result.blockWithTrustedDataV4 = blockWithTrustedDataV4;
    }
    if (trustedData != null) {
      _result.trustedData = trustedData;
    }
    if (requestIBDChainBlockLocator != null) {
      _result.requestIBDChainBlockLocator = requestIBDChainBlockLocator;
    }
    if (ibdChainBlockLocator != null) {
      _result.ibdChainBlockLocator = ibdChainBlockLocator;
    }
    if (requestAnticone != null) {
      _result.requestAnticone = requestAnticone;
    }
    if (requestNextPruningPointAndItsAnticoneBlocks != null) {
      _result.requestNextPruningPointAndItsAnticoneBlocks = requestNextPruningPointAndItsAnticoneBlocks;
    }
    if (getCurrentNetworkRequest != null) {
      _result.getCurrentNetworkRequest = getCurrentNetworkRequest;
    }
    if (getCurrentNetworkResponse != null) {
      _result.getCurrentNetworkResponse = getCurrentNetworkResponse;
    }
    if (submitBlockRequest != null) {
      _result.submitBlockRequest = submitBlockRequest;
    }
    if (submitBlockResponse != null) {
      _result.submitBlockResponse = submitBlockResponse;
    }
    if (getBlockTemplateRequest != null) {
      _result.getBlockTemplateRequest = getBlockTemplateRequest;
    }
    if (getBlockTemplateResponse != null) {
      _result.getBlockTemplateResponse = getBlockTemplateResponse;
    }
    if (notifyBlockAddedRequest != null) {
      _result.notifyBlockAddedRequest = notifyBlockAddedRequest;
    }
    if (notifyBlockAddedResponse != null) {
      _result.notifyBlockAddedResponse = notifyBlockAddedResponse;
    }
    if (blockAddedNotification != null) {
      _result.blockAddedNotification = blockAddedNotification;
    }
    if (getPeerAddressesRequest != null) {
      _result.getPeerAddressesRequest = getPeerAddressesRequest;
    }
    if (getPeerAddressesResponse != null) {
      _result.getPeerAddressesResponse = getPeerAddressesResponse;
    }
    if (getSelectedTipHashRequest != null) {
      _result.getSelectedTipHashRequest = getSelectedTipHashRequest;
    }
    if (getSelectedTipHashResponse != null) {
      _result.getSelectedTipHashResponse = getSelectedTipHashResponse;
    }
    if (getMempoolEntryRequest != null) {
      _result.getMempoolEntryRequest = getMempoolEntryRequest;
    }
    if (getMempoolEntryResponse != null) {
      _result.getMempoolEntryResponse = getMempoolEntryResponse;
    }
    if (getConnectedPeerInfoRequest != null) {
      _result.getConnectedPeerInfoRequest = getConnectedPeerInfoRequest;
    }
    if (getConnectedPeerInfoResponse != null) {
      _result.getConnectedPeerInfoResponse = getConnectedPeerInfoResponse;
    }
    if (addPeerRequest != null) {
      _result.addPeerRequest = addPeerRequest;
    }
    if (addPeerResponse != null) {
      _result.addPeerResponse = addPeerResponse;
    }
    if (submitTransactionRequest != null) {
      _result.submitTransactionRequest = submitTransactionRequest;
    }
    if (submitTransactionResponse != null) {
      _result.submitTransactionResponse = submitTransactionResponse;
    }
    if (notifyVirtualSelectedParentChainChangedRequest != null) {
      _result.notifyVirtualSelectedParentChainChangedRequest = notifyVirtualSelectedParentChainChangedRequest;
    }
    if (notifyVirtualSelectedParentChainChangedResponse != null) {
      _result.notifyVirtualSelectedParentChainChangedResponse = notifyVirtualSelectedParentChainChangedResponse;
    }
    if (virtualSelectedParentChainChangedNotification != null) {
      _result.virtualSelectedParentChainChangedNotification = virtualSelectedParentChainChangedNotification;
    }
    if (getBlockRequest != null) {
      _result.getBlockRequest = getBlockRequest;
    }
    if (getBlockResponse != null) {
      _result.getBlockResponse = getBlockResponse;
    }
    if (getSubnetworkRequest != null) {
      _result.getSubnetworkRequest = getSubnetworkRequest;
    }
    if (getSubnetworkResponse != null) {
      _result.getSubnetworkResponse = getSubnetworkResponse;
    }
    if (getVirtualSelectedParentChainFromBlockRequest != null) {
      _result.getVirtualSelectedParentChainFromBlockRequest = getVirtualSelectedParentChainFromBlockRequest;
    }
    if (getVirtualSelectedParentChainFromBlockResponse != null) {
      _result.getVirtualSelectedParentChainFromBlockResponse = getVirtualSelectedParentChainFromBlockResponse;
    }
    if (getBlocksRequest != null) {
      _result.getBlocksRequest = getBlocksRequest;
    }
    if (getBlocksResponse != null) {
      _result.getBlocksResponse = getBlocksResponse;
    }
    if (getBlockCountRequest != null) {
      _result.getBlockCountRequest = getBlockCountRequest;
    }
    if (getBlockCountResponse != null) {
      _result.getBlockCountResponse = getBlockCountResponse;
    }
    if (getBlockDagInfoRequest != null) {
      _result.getBlockDagInfoRequest = getBlockDagInfoRequest;
    }
    if (getBlockDagInfoResponse != null) {
      _result.getBlockDagInfoResponse = getBlockDagInfoResponse;
    }
    if (resolveFinalityConflictRequest != null) {
      _result.resolveFinalityConflictRequest = resolveFinalityConflictRequest;
    }
    if (resolveFinalityConflictResponse != null) {
      _result.resolveFinalityConflictResponse = resolveFinalityConflictResponse;
    }
    if (notifyFinalityConflictsRequest != null) {
      _result.notifyFinalityConflictsRequest = notifyFinalityConflictsRequest;
    }
    if (notifyFinalityConflictsResponse != null) {
      _result.notifyFinalityConflictsResponse = notifyFinalityConflictsResponse;
    }
    if (finalityConflictNotification != null) {
      _result.finalityConflictNotification = finalityConflictNotification;
    }
    if (finalityConflictResolvedNotification != null) {
      _result.finalityConflictResolvedNotification = finalityConflictResolvedNotification;
    }
    if (getMempoolEntriesRequest != null) {
      _result.getMempoolEntriesRequest = getMempoolEntriesRequest;
    }
    if (getMempoolEntriesResponse != null) {
      _result.getMempoolEntriesResponse = getMempoolEntriesResponse;
    }
    if (shutDownRequest != null) {
      _result.shutDownRequest = shutDownRequest;
    }
    if (shutDownResponse != null) {
      _result.shutDownResponse = shutDownResponse;
    }
    if (getHeadersRequest != null) {
      _result.getHeadersRequest = getHeadersRequest;
    }
    if (getHeadersResponse != null) {
      _result.getHeadersResponse = getHeadersResponse;
    }
    if (notifyUtxosChangedRequest != null) {
      _result.notifyUtxosChangedRequest = notifyUtxosChangedRequest;
    }
    if (notifyUtxosChangedResponse != null) {
      _result.notifyUtxosChangedResponse = notifyUtxosChangedResponse;
    }
    if (utxosChangedNotification != null) {
      _result.utxosChangedNotification = utxosChangedNotification;
    }
    if (getUtxosByAddressesRequest != null) {
      _result.getUtxosByAddressesRequest = getUtxosByAddressesRequest;
    }
    if (getUtxosByAddressesResponse != null) {
      _result.getUtxosByAddressesResponse = getUtxosByAddressesResponse;
    }
    if (getVirtualSelectedParentBlueScoreRequest != null) {
      _result.getVirtualSelectedParentBlueScoreRequest = getVirtualSelectedParentBlueScoreRequest;
    }
    if (getVirtualSelectedParentBlueScoreResponse != null) {
      _result.getVirtualSelectedParentBlueScoreResponse = getVirtualSelectedParentBlueScoreResponse;
    }
    if (notifyVirtualSelectedParentBlueScoreChangedRequest != null) {
      _result.notifyVirtualSelectedParentBlueScoreChangedRequest = notifyVirtualSelectedParentBlueScoreChangedRequest;
    }
    if (notifyVirtualSelectedParentBlueScoreChangedResponse != null) {
      _result.notifyVirtualSelectedParentBlueScoreChangedResponse = notifyVirtualSelectedParentBlueScoreChangedResponse;
    }
    if (virtualSelectedParentBlueScoreChangedNotification != null) {
      _result.virtualSelectedParentBlueScoreChangedNotification = virtualSelectedParentBlueScoreChangedNotification;
    }
    if (banRequest != null) {
      _result.banRequest = banRequest;
    }
    if (banResponse != null) {
      _result.banResponse = banResponse;
    }
    if (unbanRequest != null) {
      _result.unbanRequest = unbanRequest;
    }
    if (unbanResponse != null) {
      _result.unbanResponse = unbanResponse;
    }
    if (getInfoRequest != null) {
      _result.getInfoRequest = getInfoRequest;
    }
    if (getInfoResponse != null) {
      _result.getInfoResponse = getInfoResponse;
    }
    if (stopNotifyingUtxosChangedRequest != null) {
      _result.stopNotifyingUtxosChangedRequest = stopNotifyingUtxosChangedRequest;
    }
    if (stopNotifyingUtxosChangedResponse != null) {
      _result.stopNotifyingUtxosChangedResponse = stopNotifyingUtxosChangedResponse;
    }
    if (notifyPruningPointUTXOSetOverrideRequest != null) {
      _result.notifyPruningPointUTXOSetOverrideRequest = notifyPruningPointUTXOSetOverrideRequest;
    }
    if (notifyPruningPointUTXOSetOverrideResponse != null) {
      _result.notifyPruningPointUTXOSetOverrideResponse = notifyPruningPointUTXOSetOverrideResponse;
    }
    if (pruningPointUTXOSetOverrideNotification != null) {
      _result.pruningPointUTXOSetOverrideNotification = pruningPointUTXOSetOverrideNotification;
    }
    if (stopNotifyingPruningPointUTXOSetOverrideRequest != null) {
      _result.stopNotifyingPruningPointUTXOSetOverrideRequest = stopNotifyingPruningPointUTXOSetOverrideRequest;
    }
    if (stopNotifyingPruningPointUTXOSetOverrideResponse != null) {
      _result.stopNotifyingPruningPointUTXOSetOverrideResponse = stopNotifyingPruningPointUTXOSetOverrideResponse;
    }
    if (estimateNetworkHashesPerSecondRequest != null) {
      _result.estimateNetworkHashesPerSecondRequest = estimateNetworkHashesPerSecondRequest;
    }
    if (estimateNetworkHashesPerSecondResponse != null) {
      _result.estimateNetworkHashesPerSecondResponse = estimateNetworkHashesPerSecondResponse;
    }
    if (notifyVirtualDaaScoreChangedRequest != null) {
      _result.notifyVirtualDaaScoreChangedRequest = notifyVirtualDaaScoreChangedRequest;
    }
    if (notifyVirtualDaaScoreChangedResponse != null) {
      _result.notifyVirtualDaaScoreChangedResponse = notifyVirtualDaaScoreChangedResponse;
    }
    if (virtualDaaScoreChangedNotification != null) {
      _result.virtualDaaScoreChangedNotification = virtualDaaScoreChangedNotification;
    }
    if (getBalanceByAddressRequest != null) {
      _result.getBalanceByAddressRequest = getBalanceByAddressRequest;
    }
    if (getBalanceByAddressResponse != null) {
      _result.getBalanceByAddressResponse = getBalanceByAddressResponse;
    }
    if (getBalancesByAddressesRequest != null) {
      _result.getBalancesByAddressesRequest = getBalancesByAddressesRequest;
    }
    if (getBalancesByAddressesResponse != null) {
      _result.getBalancesByAddressesResponse = getBalancesByAddressesResponse;
    }
    if (notifyNewBlockTemplateRequest != null) {
      _result.notifyNewBlockTemplateRequest = notifyNewBlockTemplateRequest;
    }
    if (notifyNewBlockTemplateResponse != null) {
      _result.notifyNewBlockTemplateResponse = notifyNewBlockTemplateResponse;
    }
    if (newBlockTemplateNotification != null) {
      _result.newBlockTemplateNotification = newBlockTemplateNotification;
    }
    if (getMempoolEntriesByAddressesRequest != null) {
      _result.getMempoolEntriesByAddressesRequest = getMempoolEntriesByAddressesRequest;
    }
    if (getMempoolEntriesByAddressesResponse != null) {
      _result.getMempoolEntriesByAddressesResponse = getMempoolEntriesByAddressesResponse;
    }
    if (getCoinSupplyRequest != null) {
      _result.getCoinSupplyRequest = getCoinSupplyRequest;
    }
    if (getCoinSupplyResponse != null) {
      _result.getCoinSupplyResponse = getCoinSupplyResponse;
    }
    return _result;
  }
  factory KaspadMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KaspadMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KaspadMessage clone() => KaspadMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KaspadMessage copyWith(void Function(KaspadMessage) updates) => super.copyWith((message) => updates(message as KaspadMessage)) as KaspadMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KaspadMessage create() => KaspadMessage._();
  KaspadMessage createEmptyInstance() => create();
  static $pb.PbList<KaspadMessage> createRepeated() => $pb.PbList<KaspadMessage>();
  @$core.pragma('dart2js:noInline')
  static KaspadMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KaspadMessage>(create);
  static KaspadMessage? _defaultInstance;

  KaspadMessage_Payload whichPayload() => _KaspadMessage_PayloadByTag[$_whichOneof(0)]!;
  void clearPayload() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $1.AddressesMessage get addresses => $_getN(0);
  @$pb.TagNumber(1)
  set addresses($1.AddressesMessage v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddresses() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddresses() => clearField(1);
  @$pb.TagNumber(1)
  $1.AddressesMessage ensureAddresses() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.BlockMessage get block => $_getN(1);
  @$pb.TagNumber(2)
  set block($1.BlockMessage v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasBlock() => $_has(1);
  @$pb.TagNumber(2)
  void clearBlock() => clearField(2);
  @$pb.TagNumber(2)
  $1.BlockMessage ensureBlock() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.TransactionMessage get transaction => $_getN(2);
  @$pb.TagNumber(3)
  set transaction($1.TransactionMessage v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTransaction() => $_has(2);
  @$pb.TagNumber(3)
  void clearTransaction() => clearField(3);
  @$pb.TagNumber(3)
  $1.TransactionMessage ensureTransaction() => $_ensure(2);

  @$pb.TagNumber(5)
  $1.BlockLocatorMessage get blockLocator => $_getN(3);
  @$pb.TagNumber(5)
  set blockLocator($1.BlockLocatorMessage v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasBlockLocator() => $_has(3);
  @$pb.TagNumber(5)
  void clearBlockLocator() => clearField(5);
  @$pb.TagNumber(5)
  $1.BlockLocatorMessage ensureBlockLocator() => $_ensure(3);

  @$pb.TagNumber(6)
  $1.RequestAddressesMessage get requestAddresses => $_getN(4);
  @$pb.TagNumber(6)
  set requestAddresses($1.RequestAddressesMessage v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasRequestAddresses() => $_has(4);
  @$pb.TagNumber(6)
  void clearRequestAddresses() => clearField(6);
  @$pb.TagNumber(6)
  $1.RequestAddressesMessage ensureRequestAddresses() => $_ensure(4);

  @$pb.TagNumber(10)
  $1.RequestRelayBlocksMessage get requestRelayBlocks => $_getN(5);
  @$pb.TagNumber(10)
  set requestRelayBlocks($1.RequestRelayBlocksMessage v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasRequestRelayBlocks() => $_has(5);
  @$pb.TagNumber(10)
  void clearRequestRelayBlocks() => clearField(10);
  @$pb.TagNumber(10)
  $1.RequestRelayBlocksMessage ensureRequestRelayBlocks() => $_ensure(5);

  @$pb.TagNumber(12)
  $1.RequestTransactionsMessage get requestTransactions => $_getN(6);
  @$pb.TagNumber(12)
  set requestTransactions($1.RequestTransactionsMessage v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasRequestTransactions() => $_has(6);
  @$pb.TagNumber(12)
  void clearRequestTransactions() => clearField(12);
  @$pb.TagNumber(12)
  $1.RequestTransactionsMessage ensureRequestTransactions() => $_ensure(6);

  @$pb.TagNumber(13)
  $1.BlockMessage get ibdBlock => $_getN(7);
  @$pb.TagNumber(13)
  set ibdBlock($1.BlockMessage v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasIbdBlock() => $_has(7);
  @$pb.TagNumber(13)
  void clearIbdBlock() => clearField(13);
  @$pb.TagNumber(13)
  $1.BlockMessage ensureIbdBlock() => $_ensure(7);

  @$pb.TagNumber(14)
  $1.InvRelayBlockMessage get invRelayBlock => $_getN(8);
  @$pb.TagNumber(14)
  set invRelayBlock($1.InvRelayBlockMessage v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasInvRelayBlock() => $_has(8);
  @$pb.TagNumber(14)
  void clearInvRelayBlock() => clearField(14);
  @$pb.TagNumber(14)
  $1.InvRelayBlockMessage ensureInvRelayBlock() => $_ensure(8);

  @$pb.TagNumber(15)
  $1.InvTransactionsMessage get invTransactions => $_getN(9);
  @$pb.TagNumber(15)
  set invTransactions($1.InvTransactionsMessage v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasInvTransactions() => $_has(9);
  @$pb.TagNumber(15)
  void clearInvTransactions() => clearField(15);
  @$pb.TagNumber(15)
  $1.InvTransactionsMessage ensureInvTransactions() => $_ensure(9);

  @$pb.TagNumber(16)
  $1.PingMessage get ping => $_getN(10);
  @$pb.TagNumber(16)
  set ping($1.PingMessage v) { setField(16, v); }
  @$pb.TagNumber(16)
  $core.bool hasPing() => $_has(10);
  @$pb.TagNumber(16)
  void clearPing() => clearField(16);
  @$pb.TagNumber(16)
  $1.PingMessage ensurePing() => $_ensure(10);

  @$pb.TagNumber(17)
  $1.PongMessage get pong => $_getN(11);
  @$pb.TagNumber(17)
  set pong($1.PongMessage v) { setField(17, v); }
  @$pb.TagNumber(17)
  $core.bool hasPong() => $_has(11);
  @$pb.TagNumber(17)
  void clearPong() => clearField(17);
  @$pb.TagNumber(17)
  $1.PongMessage ensurePong() => $_ensure(11);

  @$pb.TagNumber(19)
  $1.VerackMessage get verack => $_getN(12);
  @$pb.TagNumber(19)
  set verack($1.VerackMessage v) { setField(19, v); }
  @$pb.TagNumber(19)
  $core.bool hasVerack() => $_has(12);
  @$pb.TagNumber(19)
  void clearVerack() => clearField(19);
  @$pb.TagNumber(19)
  $1.VerackMessage ensureVerack() => $_ensure(12);

  @$pb.TagNumber(20)
  $1.VersionMessage get version => $_getN(13);
  @$pb.TagNumber(20)
  set version($1.VersionMessage v) { setField(20, v); }
  @$pb.TagNumber(20)
  $core.bool hasVersion() => $_has(13);
  @$pb.TagNumber(20)
  void clearVersion() => clearField(20);
  @$pb.TagNumber(20)
  $1.VersionMessage ensureVersion() => $_ensure(13);

  @$pb.TagNumber(21)
  $1.TransactionNotFoundMessage get transactionNotFound => $_getN(14);
  @$pb.TagNumber(21)
  set transactionNotFound($1.TransactionNotFoundMessage v) { setField(21, v); }
  @$pb.TagNumber(21)
  $core.bool hasTransactionNotFound() => $_has(14);
  @$pb.TagNumber(21)
  void clearTransactionNotFound() => clearField(21);
  @$pb.TagNumber(21)
  $1.TransactionNotFoundMessage ensureTransactionNotFound() => $_ensure(14);

  @$pb.TagNumber(22)
  $1.RejectMessage get reject => $_getN(15);
  @$pb.TagNumber(22)
  set reject($1.RejectMessage v) { setField(22, v); }
  @$pb.TagNumber(22)
  $core.bool hasReject() => $_has(15);
  @$pb.TagNumber(22)
  void clearReject() => clearField(22);
  @$pb.TagNumber(22)
  $1.RejectMessage ensureReject() => $_ensure(15);

  @$pb.TagNumber(25)
  $1.PruningPointUtxoSetChunkMessage get pruningPointUtxoSetChunk => $_getN(16);
  @$pb.TagNumber(25)
  set pruningPointUtxoSetChunk($1.PruningPointUtxoSetChunkMessage v) { setField(25, v); }
  @$pb.TagNumber(25)
  $core.bool hasPruningPointUtxoSetChunk() => $_has(16);
  @$pb.TagNumber(25)
  void clearPruningPointUtxoSetChunk() => clearField(25);
  @$pb.TagNumber(25)
  $1.PruningPointUtxoSetChunkMessage ensurePruningPointUtxoSetChunk() => $_ensure(16);

  @$pb.TagNumber(26)
  $1.RequestIBDBlocksMessage get requestIBDBlocks => $_getN(17);
  @$pb.TagNumber(26)
  set requestIBDBlocks($1.RequestIBDBlocksMessage v) { setField(26, v); }
  @$pb.TagNumber(26)
  $core.bool hasRequestIBDBlocks() => $_has(17);
  @$pb.TagNumber(26)
  void clearRequestIBDBlocks() => clearField(26);
  @$pb.TagNumber(26)
  $1.RequestIBDBlocksMessage ensureRequestIBDBlocks() => $_ensure(17);

  @$pb.TagNumber(27)
  $1.UnexpectedPruningPointMessage get unexpectedPruningPoint => $_getN(18);
  @$pb.TagNumber(27)
  set unexpectedPruningPoint($1.UnexpectedPruningPointMessage v) { setField(27, v); }
  @$pb.TagNumber(27)
  $core.bool hasUnexpectedPruningPoint() => $_has(18);
  @$pb.TagNumber(27)
  void clearUnexpectedPruningPoint() => clearField(27);
  @$pb.TagNumber(27)
  $1.UnexpectedPruningPointMessage ensureUnexpectedPruningPoint() => $_ensure(18);

  @$pb.TagNumber(30)
  $1.IbdBlockLocatorMessage get ibdBlockLocator => $_getN(19);
  @$pb.TagNumber(30)
  set ibdBlockLocator($1.IbdBlockLocatorMessage v) { setField(30, v); }
  @$pb.TagNumber(30)
  $core.bool hasIbdBlockLocator() => $_has(19);
  @$pb.TagNumber(30)
  void clearIbdBlockLocator() => clearField(30);
  @$pb.TagNumber(30)
  $1.IbdBlockLocatorMessage ensureIbdBlockLocator() => $_ensure(19);

  @$pb.TagNumber(31)
  $1.IbdBlockLocatorHighestHashMessage get ibdBlockLocatorHighestHash => $_getN(20);
  @$pb.TagNumber(31)
  set ibdBlockLocatorHighestHash($1.IbdBlockLocatorHighestHashMessage v) { setField(31, v); }
  @$pb.TagNumber(31)
  $core.bool hasIbdBlockLocatorHighestHash() => $_has(20);
  @$pb.TagNumber(31)
  void clearIbdBlockLocatorHighestHash() => clearField(31);
  @$pb.TagNumber(31)
  $1.IbdBlockLocatorHighestHashMessage ensureIbdBlockLocatorHighestHash() => $_ensure(20);

  @$pb.TagNumber(33)
  $1.RequestNextPruningPointUtxoSetChunkMessage get requestNextPruningPointUtxoSetChunk => $_getN(21);
  @$pb.TagNumber(33)
  set requestNextPruningPointUtxoSetChunk($1.RequestNextPruningPointUtxoSetChunkMessage v) { setField(33, v); }
  @$pb.TagNumber(33)
  $core.bool hasRequestNextPruningPointUtxoSetChunk() => $_has(21);
  @$pb.TagNumber(33)
  void clearRequestNextPruningPointUtxoSetChunk() => clearField(33);
  @$pb.TagNumber(33)
  $1.RequestNextPruningPointUtxoSetChunkMessage ensureRequestNextPruningPointUtxoSetChunk() => $_ensure(21);

  @$pb.TagNumber(34)
  $1.DonePruningPointUtxoSetChunksMessage get donePruningPointUtxoSetChunks => $_getN(22);
  @$pb.TagNumber(34)
  set donePruningPointUtxoSetChunks($1.DonePruningPointUtxoSetChunksMessage v) { setField(34, v); }
  @$pb.TagNumber(34)
  $core.bool hasDonePruningPointUtxoSetChunks() => $_has(22);
  @$pb.TagNumber(34)
  void clearDonePruningPointUtxoSetChunks() => clearField(34);
  @$pb.TagNumber(34)
  $1.DonePruningPointUtxoSetChunksMessage ensureDonePruningPointUtxoSetChunks() => $_ensure(22);

  @$pb.TagNumber(35)
  $1.IbdBlockLocatorHighestHashNotFoundMessage get ibdBlockLocatorHighestHashNotFound => $_getN(23);
  @$pb.TagNumber(35)
  set ibdBlockLocatorHighestHashNotFound($1.IbdBlockLocatorHighestHashNotFoundMessage v) { setField(35, v); }
  @$pb.TagNumber(35)
  $core.bool hasIbdBlockLocatorHighestHashNotFound() => $_has(23);
  @$pb.TagNumber(35)
  void clearIbdBlockLocatorHighestHashNotFound() => clearField(35);
  @$pb.TagNumber(35)
  $1.IbdBlockLocatorHighestHashNotFoundMessage ensureIbdBlockLocatorHighestHashNotFound() => $_ensure(23);

  @$pb.TagNumber(36)
  $1.BlockWithTrustedDataMessage get blockWithTrustedData => $_getN(24);
  @$pb.TagNumber(36)
  set blockWithTrustedData($1.BlockWithTrustedDataMessage v) { setField(36, v); }
  @$pb.TagNumber(36)
  $core.bool hasBlockWithTrustedData() => $_has(24);
  @$pb.TagNumber(36)
  void clearBlockWithTrustedData() => clearField(36);
  @$pb.TagNumber(36)
  $1.BlockWithTrustedDataMessage ensureBlockWithTrustedData() => $_ensure(24);

  @$pb.TagNumber(37)
  $1.DoneBlocksWithTrustedDataMessage get doneBlocksWithTrustedData => $_getN(25);
  @$pb.TagNumber(37)
  set doneBlocksWithTrustedData($1.DoneBlocksWithTrustedDataMessage v) { setField(37, v); }
  @$pb.TagNumber(37)
  $core.bool hasDoneBlocksWithTrustedData() => $_has(25);
  @$pb.TagNumber(37)
  void clearDoneBlocksWithTrustedData() => clearField(37);
  @$pb.TagNumber(37)
  $1.DoneBlocksWithTrustedDataMessage ensureDoneBlocksWithTrustedData() => $_ensure(25);

  @$pb.TagNumber(40)
  $1.RequestPruningPointAndItsAnticoneMessage get requestPruningPointAndItsAnticone => $_getN(26);
  @$pb.TagNumber(40)
  set requestPruningPointAndItsAnticone($1.RequestPruningPointAndItsAnticoneMessage v) { setField(40, v); }
  @$pb.TagNumber(40)
  $core.bool hasRequestPruningPointAndItsAnticone() => $_has(26);
  @$pb.TagNumber(40)
  void clearRequestPruningPointAndItsAnticone() => clearField(40);
  @$pb.TagNumber(40)
  $1.RequestPruningPointAndItsAnticoneMessage ensureRequestPruningPointAndItsAnticone() => $_ensure(26);

  @$pb.TagNumber(41)
  $1.BlockHeadersMessage get blockHeaders => $_getN(27);
  @$pb.TagNumber(41)
  set blockHeaders($1.BlockHeadersMessage v) { setField(41, v); }
  @$pb.TagNumber(41)
  $core.bool hasBlockHeaders() => $_has(27);
  @$pb.TagNumber(41)
  void clearBlockHeaders() => clearField(41);
  @$pb.TagNumber(41)
  $1.BlockHeadersMessage ensureBlockHeaders() => $_ensure(27);

  @$pb.TagNumber(42)
  $1.RequestNextHeadersMessage get requestNextHeaders => $_getN(28);
  @$pb.TagNumber(42)
  set requestNextHeaders($1.RequestNextHeadersMessage v) { setField(42, v); }
  @$pb.TagNumber(42)
  $core.bool hasRequestNextHeaders() => $_has(28);
  @$pb.TagNumber(42)
  void clearRequestNextHeaders() => clearField(42);
  @$pb.TagNumber(42)
  $1.RequestNextHeadersMessage ensureRequestNextHeaders() => $_ensure(28);

  @$pb.TagNumber(43)
  $1.DoneHeadersMessage get doneHeaders => $_getN(29);
  @$pb.TagNumber(43)
  set doneHeaders($1.DoneHeadersMessage v) { setField(43, v); }
  @$pb.TagNumber(43)
  $core.bool hasDoneHeaders() => $_has(29);
  @$pb.TagNumber(43)
  void clearDoneHeaders() => clearField(43);
  @$pb.TagNumber(43)
  $1.DoneHeadersMessage ensureDoneHeaders() => $_ensure(29);

  @$pb.TagNumber(44)
  $1.RequestPruningPointUTXOSetMessage get requestPruningPointUTXOSet => $_getN(30);
  @$pb.TagNumber(44)
  set requestPruningPointUTXOSet($1.RequestPruningPointUTXOSetMessage v) { setField(44, v); }
  @$pb.TagNumber(44)
  $core.bool hasRequestPruningPointUTXOSet() => $_has(30);
  @$pb.TagNumber(44)
  void clearRequestPruningPointUTXOSet() => clearField(44);
  @$pb.TagNumber(44)
  $1.RequestPruningPointUTXOSetMessage ensureRequestPruningPointUTXOSet() => $_ensure(30);

  @$pb.TagNumber(45)
  $1.RequestHeadersMessage get requestHeaders => $_getN(31);
  @$pb.TagNumber(45)
  set requestHeaders($1.RequestHeadersMessage v) { setField(45, v); }
  @$pb.TagNumber(45)
  $core.bool hasRequestHeaders() => $_has(31);
  @$pb.TagNumber(45)
  void clearRequestHeaders() => clearField(45);
  @$pb.TagNumber(45)
  $1.RequestHeadersMessage ensureRequestHeaders() => $_ensure(31);

  @$pb.TagNumber(46)
  $1.RequestBlockLocatorMessage get requestBlockLocator => $_getN(32);
  @$pb.TagNumber(46)
  set requestBlockLocator($1.RequestBlockLocatorMessage v) { setField(46, v); }
  @$pb.TagNumber(46)
  $core.bool hasRequestBlockLocator() => $_has(32);
  @$pb.TagNumber(46)
  void clearRequestBlockLocator() => clearField(46);
  @$pb.TagNumber(46)
  $1.RequestBlockLocatorMessage ensureRequestBlockLocator() => $_ensure(32);

  @$pb.TagNumber(47)
  $1.PruningPointsMessage get pruningPoints => $_getN(33);
  @$pb.TagNumber(47)
  set pruningPoints($1.PruningPointsMessage v) { setField(47, v); }
  @$pb.TagNumber(47)
  $core.bool hasPruningPoints() => $_has(33);
  @$pb.TagNumber(47)
  void clearPruningPoints() => clearField(47);
  @$pb.TagNumber(47)
  $1.PruningPointsMessage ensurePruningPoints() => $_ensure(33);

  @$pb.TagNumber(48)
  $1.RequestPruningPointProofMessage get requestPruningPointProof => $_getN(34);
  @$pb.TagNumber(48)
  set requestPruningPointProof($1.RequestPruningPointProofMessage v) { setField(48, v); }
  @$pb.TagNumber(48)
  $core.bool hasRequestPruningPointProof() => $_has(34);
  @$pb.TagNumber(48)
  void clearRequestPruningPointProof() => clearField(48);
  @$pb.TagNumber(48)
  $1.RequestPruningPointProofMessage ensureRequestPruningPointProof() => $_ensure(34);

  @$pb.TagNumber(49)
  $1.PruningPointProofMessage get pruningPointProof => $_getN(35);
  @$pb.TagNumber(49)
  set pruningPointProof($1.PruningPointProofMessage v) { setField(49, v); }
  @$pb.TagNumber(49)
  $core.bool hasPruningPointProof() => $_has(35);
  @$pb.TagNumber(49)
  void clearPruningPointProof() => clearField(49);
  @$pb.TagNumber(49)
  $1.PruningPointProofMessage ensurePruningPointProof() => $_ensure(35);

  @$pb.TagNumber(50)
  $1.ReadyMessage get ready => $_getN(36);
  @$pb.TagNumber(50)
  set ready($1.ReadyMessage v) { setField(50, v); }
  @$pb.TagNumber(50)
  $core.bool hasReady() => $_has(36);
  @$pb.TagNumber(50)
  void clearReady() => clearField(50);
  @$pb.TagNumber(50)
  $1.ReadyMessage ensureReady() => $_ensure(36);

  @$pb.TagNumber(51)
  $1.BlockWithTrustedDataV4Message get blockWithTrustedDataV4 => $_getN(37);
  @$pb.TagNumber(51)
  set blockWithTrustedDataV4($1.BlockWithTrustedDataV4Message v) { setField(51, v); }
  @$pb.TagNumber(51)
  $core.bool hasBlockWithTrustedDataV4() => $_has(37);
  @$pb.TagNumber(51)
  void clearBlockWithTrustedDataV4() => clearField(51);
  @$pb.TagNumber(51)
  $1.BlockWithTrustedDataV4Message ensureBlockWithTrustedDataV4() => $_ensure(37);

  @$pb.TagNumber(52)
  $1.TrustedDataMessage get trustedData => $_getN(38);
  @$pb.TagNumber(52)
  set trustedData($1.TrustedDataMessage v) { setField(52, v); }
  @$pb.TagNumber(52)
  $core.bool hasTrustedData() => $_has(38);
  @$pb.TagNumber(52)
  void clearTrustedData() => clearField(52);
  @$pb.TagNumber(52)
  $1.TrustedDataMessage ensureTrustedData() => $_ensure(38);

  @$pb.TagNumber(53)
  $1.RequestIBDChainBlockLocatorMessage get requestIBDChainBlockLocator => $_getN(39);
  @$pb.TagNumber(53)
  set requestIBDChainBlockLocator($1.RequestIBDChainBlockLocatorMessage v) { setField(53, v); }
  @$pb.TagNumber(53)
  $core.bool hasRequestIBDChainBlockLocator() => $_has(39);
  @$pb.TagNumber(53)
  void clearRequestIBDChainBlockLocator() => clearField(53);
  @$pb.TagNumber(53)
  $1.RequestIBDChainBlockLocatorMessage ensureRequestIBDChainBlockLocator() => $_ensure(39);

  @$pb.TagNumber(54)
  $1.IbdChainBlockLocatorMessage get ibdChainBlockLocator => $_getN(40);
  @$pb.TagNumber(54)
  set ibdChainBlockLocator($1.IbdChainBlockLocatorMessage v) { setField(54, v); }
  @$pb.TagNumber(54)
  $core.bool hasIbdChainBlockLocator() => $_has(40);
  @$pb.TagNumber(54)
  void clearIbdChainBlockLocator() => clearField(54);
  @$pb.TagNumber(54)
  $1.IbdChainBlockLocatorMessage ensureIbdChainBlockLocator() => $_ensure(40);

  @$pb.TagNumber(55)
  $1.RequestAnticoneMessage get requestAnticone => $_getN(41);
  @$pb.TagNumber(55)
  set requestAnticone($1.RequestAnticoneMessage v) { setField(55, v); }
  @$pb.TagNumber(55)
  $core.bool hasRequestAnticone() => $_has(41);
  @$pb.TagNumber(55)
  void clearRequestAnticone() => clearField(55);
  @$pb.TagNumber(55)
  $1.RequestAnticoneMessage ensureRequestAnticone() => $_ensure(41);

  @$pb.TagNumber(56)
  $1.RequestNextPruningPointAndItsAnticoneBlocksMessage get requestNextPruningPointAndItsAnticoneBlocks => $_getN(42);
  @$pb.TagNumber(56)
  set requestNextPruningPointAndItsAnticoneBlocks($1.RequestNextPruningPointAndItsAnticoneBlocksMessage v) { setField(56, v); }
  @$pb.TagNumber(56)
  $core.bool hasRequestNextPruningPointAndItsAnticoneBlocks() => $_has(42);
  @$pb.TagNumber(56)
  void clearRequestNextPruningPointAndItsAnticoneBlocks() => clearField(56);
  @$pb.TagNumber(56)
  $1.RequestNextPruningPointAndItsAnticoneBlocksMessage ensureRequestNextPruningPointAndItsAnticoneBlocks() => $_ensure(42);

  @$pb.TagNumber(1001)
  $2.GetCurrentNetworkRequestMessage get getCurrentNetworkRequest => $_getN(43);
  @$pb.TagNumber(1001)
  set getCurrentNetworkRequest($2.GetCurrentNetworkRequestMessage v) { setField(1001, v); }
  @$pb.TagNumber(1001)
  $core.bool hasGetCurrentNetworkRequest() => $_has(43);
  @$pb.TagNumber(1001)
  void clearGetCurrentNetworkRequest() => clearField(1001);
  @$pb.TagNumber(1001)
  $2.GetCurrentNetworkRequestMessage ensureGetCurrentNetworkRequest() => $_ensure(43);

  @$pb.TagNumber(1002)
  $2.GetCurrentNetworkResponseMessage get getCurrentNetworkResponse => $_getN(44);
  @$pb.TagNumber(1002)
  set getCurrentNetworkResponse($2.GetCurrentNetworkResponseMessage v) { setField(1002, v); }
  @$pb.TagNumber(1002)
  $core.bool hasGetCurrentNetworkResponse() => $_has(44);
  @$pb.TagNumber(1002)
  void clearGetCurrentNetworkResponse() => clearField(1002);
  @$pb.TagNumber(1002)
  $2.GetCurrentNetworkResponseMessage ensureGetCurrentNetworkResponse() => $_ensure(44);

  @$pb.TagNumber(1003)
  $2.SubmitBlockRequestMessage get submitBlockRequest => $_getN(45);
  @$pb.TagNumber(1003)
  set submitBlockRequest($2.SubmitBlockRequestMessage v) { setField(1003, v); }
  @$pb.TagNumber(1003)
  $core.bool hasSubmitBlockRequest() => $_has(45);
  @$pb.TagNumber(1003)
  void clearSubmitBlockRequest() => clearField(1003);
  @$pb.TagNumber(1003)
  $2.SubmitBlockRequestMessage ensureSubmitBlockRequest() => $_ensure(45);

  @$pb.TagNumber(1004)
  $2.SubmitBlockResponseMessage get submitBlockResponse => $_getN(46);
  @$pb.TagNumber(1004)
  set submitBlockResponse($2.SubmitBlockResponseMessage v) { setField(1004, v); }
  @$pb.TagNumber(1004)
  $core.bool hasSubmitBlockResponse() => $_has(46);
  @$pb.TagNumber(1004)
  void clearSubmitBlockResponse() => clearField(1004);
  @$pb.TagNumber(1004)
  $2.SubmitBlockResponseMessage ensureSubmitBlockResponse() => $_ensure(46);

  @$pb.TagNumber(1005)
  $2.GetBlockTemplateRequestMessage get getBlockTemplateRequest => $_getN(47);
  @$pb.TagNumber(1005)
  set getBlockTemplateRequest($2.GetBlockTemplateRequestMessage v) { setField(1005, v); }
  @$pb.TagNumber(1005)
  $core.bool hasGetBlockTemplateRequest() => $_has(47);
  @$pb.TagNumber(1005)
  void clearGetBlockTemplateRequest() => clearField(1005);
  @$pb.TagNumber(1005)
  $2.GetBlockTemplateRequestMessage ensureGetBlockTemplateRequest() => $_ensure(47);

  @$pb.TagNumber(1006)
  $2.GetBlockTemplateResponseMessage get getBlockTemplateResponse => $_getN(48);
  @$pb.TagNumber(1006)
  set getBlockTemplateResponse($2.GetBlockTemplateResponseMessage v) { setField(1006, v); }
  @$pb.TagNumber(1006)
  $core.bool hasGetBlockTemplateResponse() => $_has(48);
  @$pb.TagNumber(1006)
  void clearGetBlockTemplateResponse() => clearField(1006);
  @$pb.TagNumber(1006)
  $2.GetBlockTemplateResponseMessage ensureGetBlockTemplateResponse() => $_ensure(48);

  @$pb.TagNumber(1007)
  $2.NotifyBlockAddedRequestMessage get notifyBlockAddedRequest => $_getN(49);
  @$pb.TagNumber(1007)
  set notifyBlockAddedRequest($2.NotifyBlockAddedRequestMessage v) { setField(1007, v); }
  @$pb.TagNumber(1007)
  $core.bool hasNotifyBlockAddedRequest() => $_has(49);
  @$pb.TagNumber(1007)
  void clearNotifyBlockAddedRequest() => clearField(1007);
  @$pb.TagNumber(1007)
  $2.NotifyBlockAddedRequestMessage ensureNotifyBlockAddedRequest() => $_ensure(49);

  @$pb.TagNumber(1008)
  $2.NotifyBlockAddedResponseMessage get notifyBlockAddedResponse => $_getN(50);
  @$pb.TagNumber(1008)
  set notifyBlockAddedResponse($2.NotifyBlockAddedResponseMessage v) { setField(1008, v); }
  @$pb.TagNumber(1008)
  $core.bool hasNotifyBlockAddedResponse() => $_has(50);
  @$pb.TagNumber(1008)
  void clearNotifyBlockAddedResponse() => clearField(1008);
  @$pb.TagNumber(1008)
  $2.NotifyBlockAddedResponseMessage ensureNotifyBlockAddedResponse() => $_ensure(50);

  @$pb.TagNumber(1009)
  $2.BlockAddedNotificationMessage get blockAddedNotification => $_getN(51);
  @$pb.TagNumber(1009)
  set blockAddedNotification($2.BlockAddedNotificationMessage v) { setField(1009, v); }
  @$pb.TagNumber(1009)
  $core.bool hasBlockAddedNotification() => $_has(51);
  @$pb.TagNumber(1009)
  void clearBlockAddedNotification() => clearField(1009);
  @$pb.TagNumber(1009)
  $2.BlockAddedNotificationMessage ensureBlockAddedNotification() => $_ensure(51);

  @$pb.TagNumber(1010)
  $2.GetPeerAddressesRequestMessage get getPeerAddressesRequest => $_getN(52);
  @$pb.TagNumber(1010)
  set getPeerAddressesRequest($2.GetPeerAddressesRequestMessage v) { setField(1010, v); }
  @$pb.TagNumber(1010)
  $core.bool hasGetPeerAddressesRequest() => $_has(52);
  @$pb.TagNumber(1010)
  void clearGetPeerAddressesRequest() => clearField(1010);
  @$pb.TagNumber(1010)
  $2.GetPeerAddressesRequestMessage ensureGetPeerAddressesRequest() => $_ensure(52);

  @$pb.TagNumber(1011)
  $2.GetPeerAddressesResponseMessage get getPeerAddressesResponse => $_getN(53);
  @$pb.TagNumber(1011)
  set getPeerAddressesResponse($2.GetPeerAddressesResponseMessage v) { setField(1011, v); }
  @$pb.TagNumber(1011)
  $core.bool hasGetPeerAddressesResponse() => $_has(53);
  @$pb.TagNumber(1011)
  void clearGetPeerAddressesResponse() => clearField(1011);
  @$pb.TagNumber(1011)
  $2.GetPeerAddressesResponseMessage ensureGetPeerAddressesResponse() => $_ensure(53);

  @$pb.TagNumber(1012)
  $2.GetSelectedTipHashRequestMessage get getSelectedTipHashRequest => $_getN(54);
  @$pb.TagNumber(1012)
  set getSelectedTipHashRequest($2.GetSelectedTipHashRequestMessage v) { setField(1012, v); }
  @$pb.TagNumber(1012)
  $core.bool hasGetSelectedTipHashRequest() => $_has(54);
  @$pb.TagNumber(1012)
  void clearGetSelectedTipHashRequest() => clearField(1012);
  @$pb.TagNumber(1012)
  $2.GetSelectedTipHashRequestMessage ensureGetSelectedTipHashRequest() => $_ensure(54);

  @$pb.TagNumber(1013)
  $2.GetSelectedTipHashResponseMessage get getSelectedTipHashResponse => $_getN(55);
  @$pb.TagNumber(1013)
  set getSelectedTipHashResponse($2.GetSelectedTipHashResponseMessage v) { setField(1013, v); }
  @$pb.TagNumber(1013)
  $core.bool hasGetSelectedTipHashResponse() => $_has(55);
  @$pb.TagNumber(1013)
  void clearGetSelectedTipHashResponse() => clearField(1013);
  @$pb.TagNumber(1013)
  $2.GetSelectedTipHashResponseMessage ensureGetSelectedTipHashResponse() => $_ensure(55);

  @$pb.TagNumber(1014)
  $2.GetMempoolEntryRequestMessage get getMempoolEntryRequest => $_getN(56);
  @$pb.TagNumber(1014)
  set getMempoolEntryRequest($2.GetMempoolEntryRequestMessage v) { setField(1014, v); }
  @$pb.TagNumber(1014)
  $core.bool hasGetMempoolEntryRequest() => $_has(56);
  @$pb.TagNumber(1014)
  void clearGetMempoolEntryRequest() => clearField(1014);
  @$pb.TagNumber(1014)
  $2.GetMempoolEntryRequestMessage ensureGetMempoolEntryRequest() => $_ensure(56);

  @$pb.TagNumber(1015)
  $2.GetMempoolEntryResponseMessage get getMempoolEntryResponse => $_getN(57);
  @$pb.TagNumber(1015)
  set getMempoolEntryResponse($2.GetMempoolEntryResponseMessage v) { setField(1015, v); }
  @$pb.TagNumber(1015)
  $core.bool hasGetMempoolEntryResponse() => $_has(57);
  @$pb.TagNumber(1015)
  void clearGetMempoolEntryResponse() => clearField(1015);
  @$pb.TagNumber(1015)
  $2.GetMempoolEntryResponseMessage ensureGetMempoolEntryResponse() => $_ensure(57);

  @$pb.TagNumber(1016)
  $2.GetConnectedPeerInfoRequestMessage get getConnectedPeerInfoRequest => $_getN(58);
  @$pb.TagNumber(1016)
  set getConnectedPeerInfoRequest($2.GetConnectedPeerInfoRequestMessage v) { setField(1016, v); }
  @$pb.TagNumber(1016)
  $core.bool hasGetConnectedPeerInfoRequest() => $_has(58);
  @$pb.TagNumber(1016)
  void clearGetConnectedPeerInfoRequest() => clearField(1016);
  @$pb.TagNumber(1016)
  $2.GetConnectedPeerInfoRequestMessage ensureGetConnectedPeerInfoRequest() => $_ensure(58);

  @$pb.TagNumber(1017)
  $2.GetConnectedPeerInfoResponseMessage get getConnectedPeerInfoResponse => $_getN(59);
  @$pb.TagNumber(1017)
  set getConnectedPeerInfoResponse($2.GetConnectedPeerInfoResponseMessage v) { setField(1017, v); }
  @$pb.TagNumber(1017)
  $core.bool hasGetConnectedPeerInfoResponse() => $_has(59);
  @$pb.TagNumber(1017)
  void clearGetConnectedPeerInfoResponse() => clearField(1017);
  @$pb.TagNumber(1017)
  $2.GetConnectedPeerInfoResponseMessage ensureGetConnectedPeerInfoResponse() => $_ensure(59);

  @$pb.TagNumber(1018)
  $2.AddPeerRequestMessage get addPeerRequest => $_getN(60);
  @$pb.TagNumber(1018)
  set addPeerRequest($2.AddPeerRequestMessage v) { setField(1018, v); }
  @$pb.TagNumber(1018)
  $core.bool hasAddPeerRequest() => $_has(60);
  @$pb.TagNumber(1018)
  void clearAddPeerRequest() => clearField(1018);
  @$pb.TagNumber(1018)
  $2.AddPeerRequestMessage ensureAddPeerRequest() => $_ensure(60);

  @$pb.TagNumber(1019)
  $2.AddPeerResponseMessage get addPeerResponse => $_getN(61);
  @$pb.TagNumber(1019)
  set addPeerResponse($2.AddPeerResponseMessage v) { setField(1019, v); }
  @$pb.TagNumber(1019)
  $core.bool hasAddPeerResponse() => $_has(61);
  @$pb.TagNumber(1019)
  void clearAddPeerResponse() => clearField(1019);
  @$pb.TagNumber(1019)
  $2.AddPeerResponseMessage ensureAddPeerResponse() => $_ensure(61);

  @$pb.TagNumber(1020)
  $2.SubmitTransactionRequestMessage get submitTransactionRequest => $_getN(62);
  @$pb.TagNumber(1020)
  set submitTransactionRequest($2.SubmitTransactionRequestMessage v) { setField(1020, v); }
  @$pb.TagNumber(1020)
  $core.bool hasSubmitTransactionRequest() => $_has(62);
  @$pb.TagNumber(1020)
  void clearSubmitTransactionRequest() => clearField(1020);
  @$pb.TagNumber(1020)
  $2.SubmitTransactionRequestMessage ensureSubmitTransactionRequest() => $_ensure(62);

  @$pb.TagNumber(1021)
  $2.SubmitTransactionResponseMessage get submitTransactionResponse => $_getN(63);
  @$pb.TagNumber(1021)
  set submitTransactionResponse($2.SubmitTransactionResponseMessage v) { setField(1021, v); }
  @$pb.TagNumber(1021)
  $core.bool hasSubmitTransactionResponse() => $_has(63);
  @$pb.TagNumber(1021)
  void clearSubmitTransactionResponse() => clearField(1021);
  @$pb.TagNumber(1021)
  $2.SubmitTransactionResponseMessage ensureSubmitTransactionResponse() => $_ensure(63);

  @$pb.TagNumber(1022)
  $2.NotifyVirtualSelectedParentChainChangedRequestMessage get notifyVirtualSelectedParentChainChangedRequest => $_getN(64);
  @$pb.TagNumber(1022)
  set notifyVirtualSelectedParentChainChangedRequest($2.NotifyVirtualSelectedParentChainChangedRequestMessage v) { setField(1022, v); }
  @$pb.TagNumber(1022)
  $core.bool hasNotifyVirtualSelectedParentChainChangedRequest() => $_has(64);
  @$pb.TagNumber(1022)
  void clearNotifyVirtualSelectedParentChainChangedRequest() => clearField(1022);
  @$pb.TagNumber(1022)
  $2.NotifyVirtualSelectedParentChainChangedRequestMessage ensureNotifyVirtualSelectedParentChainChangedRequest() => $_ensure(64);

  @$pb.TagNumber(1023)
  $2.NotifyVirtualSelectedParentChainChangedResponseMessage get notifyVirtualSelectedParentChainChangedResponse => $_getN(65);
  @$pb.TagNumber(1023)
  set notifyVirtualSelectedParentChainChangedResponse($2.NotifyVirtualSelectedParentChainChangedResponseMessage v) { setField(1023, v); }
  @$pb.TagNumber(1023)
  $core.bool hasNotifyVirtualSelectedParentChainChangedResponse() => $_has(65);
  @$pb.TagNumber(1023)
  void clearNotifyVirtualSelectedParentChainChangedResponse() => clearField(1023);
  @$pb.TagNumber(1023)
  $2.NotifyVirtualSelectedParentChainChangedResponseMessage ensureNotifyVirtualSelectedParentChainChangedResponse() => $_ensure(65);

  @$pb.TagNumber(1024)
  $2.VirtualSelectedParentChainChangedNotificationMessage get virtualSelectedParentChainChangedNotification => $_getN(66);
  @$pb.TagNumber(1024)
  set virtualSelectedParentChainChangedNotification($2.VirtualSelectedParentChainChangedNotificationMessage v) { setField(1024, v); }
  @$pb.TagNumber(1024)
  $core.bool hasVirtualSelectedParentChainChangedNotification() => $_has(66);
  @$pb.TagNumber(1024)
  void clearVirtualSelectedParentChainChangedNotification() => clearField(1024);
  @$pb.TagNumber(1024)
  $2.VirtualSelectedParentChainChangedNotificationMessage ensureVirtualSelectedParentChainChangedNotification() => $_ensure(66);

  @$pb.TagNumber(1025)
  $2.GetBlockRequestMessage get getBlockRequest => $_getN(67);
  @$pb.TagNumber(1025)
  set getBlockRequest($2.GetBlockRequestMessage v) { setField(1025, v); }
  @$pb.TagNumber(1025)
  $core.bool hasGetBlockRequest() => $_has(67);
  @$pb.TagNumber(1025)
  void clearGetBlockRequest() => clearField(1025);
  @$pb.TagNumber(1025)
  $2.GetBlockRequestMessage ensureGetBlockRequest() => $_ensure(67);

  @$pb.TagNumber(1026)
  $2.GetBlockResponseMessage get getBlockResponse => $_getN(68);
  @$pb.TagNumber(1026)
  set getBlockResponse($2.GetBlockResponseMessage v) { setField(1026, v); }
  @$pb.TagNumber(1026)
  $core.bool hasGetBlockResponse() => $_has(68);
  @$pb.TagNumber(1026)
  void clearGetBlockResponse() => clearField(1026);
  @$pb.TagNumber(1026)
  $2.GetBlockResponseMessage ensureGetBlockResponse() => $_ensure(68);

  @$pb.TagNumber(1027)
  $2.GetSubnetworkRequestMessage get getSubnetworkRequest => $_getN(69);
  @$pb.TagNumber(1027)
  set getSubnetworkRequest($2.GetSubnetworkRequestMessage v) { setField(1027, v); }
  @$pb.TagNumber(1027)
  $core.bool hasGetSubnetworkRequest() => $_has(69);
  @$pb.TagNumber(1027)
  void clearGetSubnetworkRequest() => clearField(1027);
  @$pb.TagNumber(1027)
  $2.GetSubnetworkRequestMessage ensureGetSubnetworkRequest() => $_ensure(69);

  @$pb.TagNumber(1028)
  $2.GetSubnetworkResponseMessage get getSubnetworkResponse => $_getN(70);
  @$pb.TagNumber(1028)
  set getSubnetworkResponse($2.GetSubnetworkResponseMessage v) { setField(1028, v); }
  @$pb.TagNumber(1028)
  $core.bool hasGetSubnetworkResponse() => $_has(70);
  @$pb.TagNumber(1028)
  void clearGetSubnetworkResponse() => clearField(1028);
  @$pb.TagNumber(1028)
  $2.GetSubnetworkResponseMessage ensureGetSubnetworkResponse() => $_ensure(70);

  @$pb.TagNumber(1029)
  $2.GetVirtualSelectedParentChainFromBlockRequestMessage get getVirtualSelectedParentChainFromBlockRequest => $_getN(71);
  @$pb.TagNumber(1029)
  set getVirtualSelectedParentChainFromBlockRequest($2.GetVirtualSelectedParentChainFromBlockRequestMessage v) { setField(1029, v); }
  @$pb.TagNumber(1029)
  $core.bool hasGetVirtualSelectedParentChainFromBlockRequest() => $_has(71);
  @$pb.TagNumber(1029)
  void clearGetVirtualSelectedParentChainFromBlockRequest() => clearField(1029);
  @$pb.TagNumber(1029)
  $2.GetVirtualSelectedParentChainFromBlockRequestMessage ensureGetVirtualSelectedParentChainFromBlockRequest() => $_ensure(71);

  @$pb.TagNumber(1030)
  $2.GetVirtualSelectedParentChainFromBlockResponseMessage get getVirtualSelectedParentChainFromBlockResponse => $_getN(72);
  @$pb.TagNumber(1030)
  set getVirtualSelectedParentChainFromBlockResponse($2.GetVirtualSelectedParentChainFromBlockResponseMessage v) { setField(1030, v); }
  @$pb.TagNumber(1030)
  $core.bool hasGetVirtualSelectedParentChainFromBlockResponse() => $_has(72);
  @$pb.TagNumber(1030)
  void clearGetVirtualSelectedParentChainFromBlockResponse() => clearField(1030);
  @$pb.TagNumber(1030)
  $2.GetVirtualSelectedParentChainFromBlockResponseMessage ensureGetVirtualSelectedParentChainFromBlockResponse() => $_ensure(72);

  @$pb.TagNumber(1031)
  $2.GetBlocksRequestMessage get getBlocksRequest => $_getN(73);
  @$pb.TagNumber(1031)
  set getBlocksRequest($2.GetBlocksRequestMessage v) { setField(1031, v); }
  @$pb.TagNumber(1031)
  $core.bool hasGetBlocksRequest() => $_has(73);
  @$pb.TagNumber(1031)
  void clearGetBlocksRequest() => clearField(1031);
  @$pb.TagNumber(1031)
  $2.GetBlocksRequestMessage ensureGetBlocksRequest() => $_ensure(73);

  @$pb.TagNumber(1032)
  $2.GetBlocksResponseMessage get getBlocksResponse => $_getN(74);
  @$pb.TagNumber(1032)
  set getBlocksResponse($2.GetBlocksResponseMessage v) { setField(1032, v); }
  @$pb.TagNumber(1032)
  $core.bool hasGetBlocksResponse() => $_has(74);
  @$pb.TagNumber(1032)
  void clearGetBlocksResponse() => clearField(1032);
  @$pb.TagNumber(1032)
  $2.GetBlocksResponseMessage ensureGetBlocksResponse() => $_ensure(74);

  @$pb.TagNumber(1033)
  $2.GetBlockCountRequestMessage get getBlockCountRequest => $_getN(75);
  @$pb.TagNumber(1033)
  set getBlockCountRequest($2.GetBlockCountRequestMessage v) { setField(1033, v); }
  @$pb.TagNumber(1033)
  $core.bool hasGetBlockCountRequest() => $_has(75);
  @$pb.TagNumber(1033)
  void clearGetBlockCountRequest() => clearField(1033);
  @$pb.TagNumber(1033)
  $2.GetBlockCountRequestMessage ensureGetBlockCountRequest() => $_ensure(75);

  @$pb.TagNumber(1034)
  $2.GetBlockCountResponseMessage get getBlockCountResponse => $_getN(76);
  @$pb.TagNumber(1034)
  set getBlockCountResponse($2.GetBlockCountResponseMessage v) { setField(1034, v); }
  @$pb.TagNumber(1034)
  $core.bool hasGetBlockCountResponse() => $_has(76);
  @$pb.TagNumber(1034)
  void clearGetBlockCountResponse() => clearField(1034);
  @$pb.TagNumber(1034)
  $2.GetBlockCountResponseMessage ensureGetBlockCountResponse() => $_ensure(76);

  @$pb.TagNumber(1035)
  $2.GetBlockDagInfoRequestMessage get getBlockDagInfoRequest => $_getN(77);
  @$pb.TagNumber(1035)
  set getBlockDagInfoRequest($2.GetBlockDagInfoRequestMessage v) { setField(1035, v); }
  @$pb.TagNumber(1035)
  $core.bool hasGetBlockDagInfoRequest() => $_has(77);
  @$pb.TagNumber(1035)
  void clearGetBlockDagInfoRequest() => clearField(1035);
  @$pb.TagNumber(1035)
  $2.GetBlockDagInfoRequestMessage ensureGetBlockDagInfoRequest() => $_ensure(77);

  @$pb.TagNumber(1036)
  $2.GetBlockDagInfoResponseMessage get getBlockDagInfoResponse => $_getN(78);
  @$pb.TagNumber(1036)
  set getBlockDagInfoResponse($2.GetBlockDagInfoResponseMessage v) { setField(1036, v); }
  @$pb.TagNumber(1036)
  $core.bool hasGetBlockDagInfoResponse() => $_has(78);
  @$pb.TagNumber(1036)
  void clearGetBlockDagInfoResponse() => clearField(1036);
  @$pb.TagNumber(1036)
  $2.GetBlockDagInfoResponseMessage ensureGetBlockDagInfoResponse() => $_ensure(78);

  @$pb.TagNumber(1037)
  $2.ResolveFinalityConflictRequestMessage get resolveFinalityConflictRequest => $_getN(79);
  @$pb.TagNumber(1037)
  set resolveFinalityConflictRequest($2.ResolveFinalityConflictRequestMessage v) { setField(1037, v); }
  @$pb.TagNumber(1037)
  $core.bool hasResolveFinalityConflictRequest() => $_has(79);
  @$pb.TagNumber(1037)
  void clearResolveFinalityConflictRequest() => clearField(1037);
  @$pb.TagNumber(1037)
  $2.ResolveFinalityConflictRequestMessage ensureResolveFinalityConflictRequest() => $_ensure(79);

  @$pb.TagNumber(1038)
  $2.ResolveFinalityConflictResponseMessage get resolveFinalityConflictResponse => $_getN(80);
  @$pb.TagNumber(1038)
  set resolveFinalityConflictResponse($2.ResolveFinalityConflictResponseMessage v) { setField(1038, v); }
  @$pb.TagNumber(1038)
  $core.bool hasResolveFinalityConflictResponse() => $_has(80);
  @$pb.TagNumber(1038)
  void clearResolveFinalityConflictResponse() => clearField(1038);
  @$pb.TagNumber(1038)
  $2.ResolveFinalityConflictResponseMessage ensureResolveFinalityConflictResponse() => $_ensure(80);

  @$pb.TagNumber(1039)
  $2.NotifyFinalityConflictsRequestMessage get notifyFinalityConflictsRequest => $_getN(81);
  @$pb.TagNumber(1039)
  set notifyFinalityConflictsRequest($2.NotifyFinalityConflictsRequestMessage v) { setField(1039, v); }
  @$pb.TagNumber(1039)
  $core.bool hasNotifyFinalityConflictsRequest() => $_has(81);
  @$pb.TagNumber(1039)
  void clearNotifyFinalityConflictsRequest() => clearField(1039);
  @$pb.TagNumber(1039)
  $2.NotifyFinalityConflictsRequestMessage ensureNotifyFinalityConflictsRequest() => $_ensure(81);

  @$pb.TagNumber(1040)
  $2.NotifyFinalityConflictsResponseMessage get notifyFinalityConflictsResponse => $_getN(82);
  @$pb.TagNumber(1040)
  set notifyFinalityConflictsResponse($2.NotifyFinalityConflictsResponseMessage v) { setField(1040, v); }
  @$pb.TagNumber(1040)
  $core.bool hasNotifyFinalityConflictsResponse() => $_has(82);
  @$pb.TagNumber(1040)
  void clearNotifyFinalityConflictsResponse() => clearField(1040);
  @$pb.TagNumber(1040)
  $2.NotifyFinalityConflictsResponseMessage ensureNotifyFinalityConflictsResponse() => $_ensure(82);

  @$pb.TagNumber(1041)
  $2.FinalityConflictNotificationMessage get finalityConflictNotification => $_getN(83);
  @$pb.TagNumber(1041)
  set finalityConflictNotification($2.FinalityConflictNotificationMessage v) { setField(1041, v); }
  @$pb.TagNumber(1041)
  $core.bool hasFinalityConflictNotification() => $_has(83);
  @$pb.TagNumber(1041)
  void clearFinalityConflictNotification() => clearField(1041);
  @$pb.TagNumber(1041)
  $2.FinalityConflictNotificationMessage ensureFinalityConflictNotification() => $_ensure(83);

  @$pb.TagNumber(1042)
  $2.FinalityConflictResolvedNotificationMessage get finalityConflictResolvedNotification => $_getN(84);
  @$pb.TagNumber(1042)
  set finalityConflictResolvedNotification($2.FinalityConflictResolvedNotificationMessage v) { setField(1042, v); }
  @$pb.TagNumber(1042)
  $core.bool hasFinalityConflictResolvedNotification() => $_has(84);
  @$pb.TagNumber(1042)
  void clearFinalityConflictResolvedNotification() => clearField(1042);
  @$pb.TagNumber(1042)
  $2.FinalityConflictResolvedNotificationMessage ensureFinalityConflictResolvedNotification() => $_ensure(84);

  @$pb.TagNumber(1043)
  $2.GetMempoolEntriesRequestMessage get getMempoolEntriesRequest => $_getN(85);
  @$pb.TagNumber(1043)
  set getMempoolEntriesRequest($2.GetMempoolEntriesRequestMessage v) { setField(1043, v); }
  @$pb.TagNumber(1043)
  $core.bool hasGetMempoolEntriesRequest() => $_has(85);
  @$pb.TagNumber(1043)
  void clearGetMempoolEntriesRequest() => clearField(1043);
  @$pb.TagNumber(1043)
  $2.GetMempoolEntriesRequestMessage ensureGetMempoolEntriesRequest() => $_ensure(85);

  @$pb.TagNumber(1044)
  $2.GetMempoolEntriesResponseMessage get getMempoolEntriesResponse => $_getN(86);
  @$pb.TagNumber(1044)
  set getMempoolEntriesResponse($2.GetMempoolEntriesResponseMessage v) { setField(1044, v); }
  @$pb.TagNumber(1044)
  $core.bool hasGetMempoolEntriesResponse() => $_has(86);
  @$pb.TagNumber(1044)
  void clearGetMempoolEntriesResponse() => clearField(1044);
  @$pb.TagNumber(1044)
  $2.GetMempoolEntriesResponseMessage ensureGetMempoolEntriesResponse() => $_ensure(86);

  @$pb.TagNumber(1045)
  $2.ShutDownRequestMessage get shutDownRequest => $_getN(87);
  @$pb.TagNumber(1045)
  set shutDownRequest($2.ShutDownRequestMessage v) { setField(1045, v); }
  @$pb.TagNumber(1045)
  $core.bool hasShutDownRequest() => $_has(87);
  @$pb.TagNumber(1045)
  void clearShutDownRequest() => clearField(1045);
  @$pb.TagNumber(1045)
  $2.ShutDownRequestMessage ensureShutDownRequest() => $_ensure(87);

  @$pb.TagNumber(1046)
  $2.ShutDownResponseMessage get shutDownResponse => $_getN(88);
  @$pb.TagNumber(1046)
  set shutDownResponse($2.ShutDownResponseMessage v) { setField(1046, v); }
  @$pb.TagNumber(1046)
  $core.bool hasShutDownResponse() => $_has(88);
  @$pb.TagNumber(1046)
  void clearShutDownResponse() => clearField(1046);
  @$pb.TagNumber(1046)
  $2.ShutDownResponseMessage ensureShutDownResponse() => $_ensure(88);

  @$pb.TagNumber(1047)
  $2.GetHeadersRequestMessage get getHeadersRequest => $_getN(89);
  @$pb.TagNumber(1047)
  set getHeadersRequest($2.GetHeadersRequestMessage v) { setField(1047, v); }
  @$pb.TagNumber(1047)
  $core.bool hasGetHeadersRequest() => $_has(89);
  @$pb.TagNumber(1047)
  void clearGetHeadersRequest() => clearField(1047);
  @$pb.TagNumber(1047)
  $2.GetHeadersRequestMessage ensureGetHeadersRequest() => $_ensure(89);

  @$pb.TagNumber(1048)
  $2.GetHeadersResponseMessage get getHeadersResponse => $_getN(90);
  @$pb.TagNumber(1048)
  set getHeadersResponse($2.GetHeadersResponseMessage v) { setField(1048, v); }
  @$pb.TagNumber(1048)
  $core.bool hasGetHeadersResponse() => $_has(90);
  @$pb.TagNumber(1048)
  void clearGetHeadersResponse() => clearField(1048);
  @$pb.TagNumber(1048)
  $2.GetHeadersResponseMessage ensureGetHeadersResponse() => $_ensure(90);

  @$pb.TagNumber(1049)
  $2.NotifyUtxosChangedRequestMessage get notifyUtxosChangedRequest => $_getN(91);
  @$pb.TagNumber(1049)
  set notifyUtxosChangedRequest($2.NotifyUtxosChangedRequestMessage v) { setField(1049, v); }
  @$pb.TagNumber(1049)
  $core.bool hasNotifyUtxosChangedRequest() => $_has(91);
  @$pb.TagNumber(1049)
  void clearNotifyUtxosChangedRequest() => clearField(1049);
  @$pb.TagNumber(1049)
  $2.NotifyUtxosChangedRequestMessage ensureNotifyUtxosChangedRequest() => $_ensure(91);

  @$pb.TagNumber(1050)
  $2.NotifyUtxosChangedResponseMessage get notifyUtxosChangedResponse => $_getN(92);
  @$pb.TagNumber(1050)
  set notifyUtxosChangedResponse($2.NotifyUtxosChangedResponseMessage v) { setField(1050, v); }
  @$pb.TagNumber(1050)
  $core.bool hasNotifyUtxosChangedResponse() => $_has(92);
  @$pb.TagNumber(1050)
  void clearNotifyUtxosChangedResponse() => clearField(1050);
  @$pb.TagNumber(1050)
  $2.NotifyUtxosChangedResponseMessage ensureNotifyUtxosChangedResponse() => $_ensure(92);

  @$pb.TagNumber(1051)
  $2.UtxosChangedNotificationMessage get utxosChangedNotification => $_getN(93);
  @$pb.TagNumber(1051)
  set utxosChangedNotification($2.UtxosChangedNotificationMessage v) { setField(1051, v); }
  @$pb.TagNumber(1051)
  $core.bool hasUtxosChangedNotification() => $_has(93);
  @$pb.TagNumber(1051)
  void clearUtxosChangedNotification() => clearField(1051);
  @$pb.TagNumber(1051)
  $2.UtxosChangedNotificationMessage ensureUtxosChangedNotification() => $_ensure(93);

  @$pb.TagNumber(1052)
  $2.GetUtxosByAddressesRequestMessage get getUtxosByAddressesRequest => $_getN(94);
  @$pb.TagNumber(1052)
  set getUtxosByAddressesRequest($2.GetUtxosByAddressesRequestMessage v) { setField(1052, v); }
  @$pb.TagNumber(1052)
  $core.bool hasGetUtxosByAddressesRequest() => $_has(94);
  @$pb.TagNumber(1052)
  void clearGetUtxosByAddressesRequest() => clearField(1052);
  @$pb.TagNumber(1052)
  $2.GetUtxosByAddressesRequestMessage ensureGetUtxosByAddressesRequest() => $_ensure(94);

  @$pb.TagNumber(1053)
  $2.GetUtxosByAddressesResponseMessage get getUtxosByAddressesResponse => $_getN(95);
  @$pb.TagNumber(1053)
  set getUtxosByAddressesResponse($2.GetUtxosByAddressesResponseMessage v) { setField(1053, v); }
  @$pb.TagNumber(1053)
  $core.bool hasGetUtxosByAddressesResponse() => $_has(95);
  @$pb.TagNumber(1053)
  void clearGetUtxosByAddressesResponse() => clearField(1053);
  @$pb.TagNumber(1053)
  $2.GetUtxosByAddressesResponseMessage ensureGetUtxosByAddressesResponse() => $_ensure(95);

  @$pb.TagNumber(1054)
  $2.GetVirtualSelectedParentBlueScoreRequestMessage get getVirtualSelectedParentBlueScoreRequest => $_getN(96);
  @$pb.TagNumber(1054)
  set getVirtualSelectedParentBlueScoreRequest($2.GetVirtualSelectedParentBlueScoreRequestMessage v) { setField(1054, v); }
  @$pb.TagNumber(1054)
  $core.bool hasGetVirtualSelectedParentBlueScoreRequest() => $_has(96);
  @$pb.TagNumber(1054)
  void clearGetVirtualSelectedParentBlueScoreRequest() => clearField(1054);
  @$pb.TagNumber(1054)
  $2.GetVirtualSelectedParentBlueScoreRequestMessage ensureGetVirtualSelectedParentBlueScoreRequest() => $_ensure(96);

  @$pb.TagNumber(1055)
  $2.GetVirtualSelectedParentBlueScoreResponseMessage get getVirtualSelectedParentBlueScoreResponse => $_getN(97);
  @$pb.TagNumber(1055)
  set getVirtualSelectedParentBlueScoreResponse($2.GetVirtualSelectedParentBlueScoreResponseMessage v) { setField(1055, v); }
  @$pb.TagNumber(1055)
  $core.bool hasGetVirtualSelectedParentBlueScoreResponse() => $_has(97);
  @$pb.TagNumber(1055)
  void clearGetVirtualSelectedParentBlueScoreResponse() => clearField(1055);
  @$pb.TagNumber(1055)
  $2.GetVirtualSelectedParentBlueScoreResponseMessage ensureGetVirtualSelectedParentBlueScoreResponse() => $_ensure(97);

  @$pb.TagNumber(1056)
  $2.NotifyVirtualSelectedParentBlueScoreChangedRequestMessage get notifyVirtualSelectedParentBlueScoreChangedRequest => $_getN(98);
  @$pb.TagNumber(1056)
  set notifyVirtualSelectedParentBlueScoreChangedRequest($2.NotifyVirtualSelectedParentBlueScoreChangedRequestMessage v) { setField(1056, v); }
  @$pb.TagNumber(1056)
  $core.bool hasNotifyVirtualSelectedParentBlueScoreChangedRequest() => $_has(98);
  @$pb.TagNumber(1056)
  void clearNotifyVirtualSelectedParentBlueScoreChangedRequest() => clearField(1056);
  @$pb.TagNumber(1056)
  $2.NotifyVirtualSelectedParentBlueScoreChangedRequestMessage ensureNotifyVirtualSelectedParentBlueScoreChangedRequest() => $_ensure(98);

  @$pb.TagNumber(1057)
  $2.NotifyVirtualSelectedParentBlueScoreChangedResponseMessage get notifyVirtualSelectedParentBlueScoreChangedResponse => $_getN(99);
  @$pb.TagNumber(1057)
  set notifyVirtualSelectedParentBlueScoreChangedResponse($2.NotifyVirtualSelectedParentBlueScoreChangedResponseMessage v) { setField(1057, v); }
  @$pb.TagNumber(1057)
  $core.bool hasNotifyVirtualSelectedParentBlueScoreChangedResponse() => $_has(99);
  @$pb.TagNumber(1057)
  void clearNotifyVirtualSelectedParentBlueScoreChangedResponse() => clearField(1057);
  @$pb.TagNumber(1057)
  $2.NotifyVirtualSelectedParentBlueScoreChangedResponseMessage ensureNotifyVirtualSelectedParentBlueScoreChangedResponse() => $_ensure(99);

  @$pb.TagNumber(1058)
  $2.VirtualSelectedParentBlueScoreChangedNotificationMessage get virtualSelectedParentBlueScoreChangedNotification => $_getN(100);
  @$pb.TagNumber(1058)
  set virtualSelectedParentBlueScoreChangedNotification($2.VirtualSelectedParentBlueScoreChangedNotificationMessage v) { setField(1058, v); }
  @$pb.TagNumber(1058)
  $core.bool hasVirtualSelectedParentBlueScoreChangedNotification() => $_has(100);
  @$pb.TagNumber(1058)
  void clearVirtualSelectedParentBlueScoreChangedNotification() => clearField(1058);
  @$pb.TagNumber(1058)
  $2.VirtualSelectedParentBlueScoreChangedNotificationMessage ensureVirtualSelectedParentBlueScoreChangedNotification() => $_ensure(100);

  @$pb.TagNumber(1059)
  $2.BanRequestMessage get banRequest => $_getN(101);
  @$pb.TagNumber(1059)
  set banRequest($2.BanRequestMessage v) { setField(1059, v); }
  @$pb.TagNumber(1059)
  $core.bool hasBanRequest() => $_has(101);
  @$pb.TagNumber(1059)
  void clearBanRequest() => clearField(1059);
  @$pb.TagNumber(1059)
  $2.BanRequestMessage ensureBanRequest() => $_ensure(101);

  @$pb.TagNumber(1060)
  $2.BanResponseMessage get banResponse => $_getN(102);
  @$pb.TagNumber(1060)
  set banResponse($2.BanResponseMessage v) { setField(1060, v); }
  @$pb.TagNumber(1060)
  $core.bool hasBanResponse() => $_has(102);
  @$pb.TagNumber(1060)
  void clearBanResponse() => clearField(1060);
  @$pb.TagNumber(1060)
  $2.BanResponseMessage ensureBanResponse() => $_ensure(102);

  @$pb.TagNumber(1061)
  $2.UnbanRequestMessage get unbanRequest => $_getN(103);
  @$pb.TagNumber(1061)
  set unbanRequest($2.UnbanRequestMessage v) { setField(1061, v); }
  @$pb.TagNumber(1061)
  $core.bool hasUnbanRequest() => $_has(103);
  @$pb.TagNumber(1061)
  void clearUnbanRequest() => clearField(1061);
  @$pb.TagNumber(1061)
  $2.UnbanRequestMessage ensureUnbanRequest() => $_ensure(103);

  @$pb.TagNumber(1062)
  $2.UnbanResponseMessage get unbanResponse => $_getN(104);
  @$pb.TagNumber(1062)
  set unbanResponse($2.UnbanResponseMessage v) { setField(1062, v); }
  @$pb.TagNumber(1062)
  $core.bool hasUnbanResponse() => $_has(104);
  @$pb.TagNumber(1062)
  void clearUnbanResponse() => clearField(1062);
  @$pb.TagNumber(1062)
  $2.UnbanResponseMessage ensureUnbanResponse() => $_ensure(104);

  @$pb.TagNumber(1063)
  $2.GetInfoRequestMessage get getInfoRequest => $_getN(105);
  @$pb.TagNumber(1063)
  set getInfoRequest($2.GetInfoRequestMessage v) { setField(1063, v); }
  @$pb.TagNumber(1063)
  $core.bool hasGetInfoRequest() => $_has(105);
  @$pb.TagNumber(1063)
  void clearGetInfoRequest() => clearField(1063);
  @$pb.TagNumber(1063)
  $2.GetInfoRequestMessage ensureGetInfoRequest() => $_ensure(105);

  @$pb.TagNumber(1064)
  $2.GetInfoResponseMessage get getInfoResponse => $_getN(106);
  @$pb.TagNumber(1064)
  set getInfoResponse($2.GetInfoResponseMessage v) { setField(1064, v); }
  @$pb.TagNumber(1064)
  $core.bool hasGetInfoResponse() => $_has(106);
  @$pb.TagNumber(1064)
  void clearGetInfoResponse() => clearField(1064);
  @$pb.TagNumber(1064)
  $2.GetInfoResponseMessage ensureGetInfoResponse() => $_ensure(106);

  @$pb.TagNumber(1065)
  $2.StopNotifyingUtxosChangedRequestMessage get stopNotifyingUtxosChangedRequest => $_getN(107);
  @$pb.TagNumber(1065)
  set stopNotifyingUtxosChangedRequest($2.StopNotifyingUtxosChangedRequestMessage v) { setField(1065, v); }
  @$pb.TagNumber(1065)
  $core.bool hasStopNotifyingUtxosChangedRequest() => $_has(107);
  @$pb.TagNumber(1065)
  void clearStopNotifyingUtxosChangedRequest() => clearField(1065);
  @$pb.TagNumber(1065)
  $2.StopNotifyingUtxosChangedRequestMessage ensureStopNotifyingUtxosChangedRequest() => $_ensure(107);

  @$pb.TagNumber(1066)
  $2.StopNotifyingUtxosChangedResponseMessage get stopNotifyingUtxosChangedResponse => $_getN(108);
  @$pb.TagNumber(1066)
  set stopNotifyingUtxosChangedResponse($2.StopNotifyingUtxosChangedResponseMessage v) { setField(1066, v); }
  @$pb.TagNumber(1066)
  $core.bool hasStopNotifyingUtxosChangedResponse() => $_has(108);
  @$pb.TagNumber(1066)
  void clearStopNotifyingUtxosChangedResponse() => clearField(1066);
  @$pb.TagNumber(1066)
  $2.StopNotifyingUtxosChangedResponseMessage ensureStopNotifyingUtxosChangedResponse() => $_ensure(108);

  @$pb.TagNumber(1067)
  $2.NotifyPruningPointUTXOSetOverrideRequestMessage get notifyPruningPointUTXOSetOverrideRequest => $_getN(109);
  @$pb.TagNumber(1067)
  set notifyPruningPointUTXOSetOverrideRequest($2.NotifyPruningPointUTXOSetOverrideRequestMessage v) { setField(1067, v); }
  @$pb.TagNumber(1067)
  $core.bool hasNotifyPruningPointUTXOSetOverrideRequest() => $_has(109);
  @$pb.TagNumber(1067)
  void clearNotifyPruningPointUTXOSetOverrideRequest() => clearField(1067);
  @$pb.TagNumber(1067)
  $2.NotifyPruningPointUTXOSetOverrideRequestMessage ensureNotifyPruningPointUTXOSetOverrideRequest() => $_ensure(109);

  @$pb.TagNumber(1068)
  $2.NotifyPruningPointUTXOSetOverrideResponseMessage get notifyPruningPointUTXOSetOverrideResponse => $_getN(110);
  @$pb.TagNumber(1068)
  set notifyPruningPointUTXOSetOverrideResponse($2.NotifyPruningPointUTXOSetOverrideResponseMessage v) { setField(1068, v); }
  @$pb.TagNumber(1068)
  $core.bool hasNotifyPruningPointUTXOSetOverrideResponse() => $_has(110);
  @$pb.TagNumber(1068)
  void clearNotifyPruningPointUTXOSetOverrideResponse() => clearField(1068);
  @$pb.TagNumber(1068)
  $2.NotifyPruningPointUTXOSetOverrideResponseMessage ensureNotifyPruningPointUTXOSetOverrideResponse() => $_ensure(110);

  @$pb.TagNumber(1069)
  $2.PruningPointUTXOSetOverrideNotificationMessage get pruningPointUTXOSetOverrideNotification => $_getN(111);
  @$pb.TagNumber(1069)
  set pruningPointUTXOSetOverrideNotification($2.PruningPointUTXOSetOverrideNotificationMessage v) { setField(1069, v); }
  @$pb.TagNumber(1069)
  $core.bool hasPruningPointUTXOSetOverrideNotification() => $_has(111);
  @$pb.TagNumber(1069)
  void clearPruningPointUTXOSetOverrideNotification() => clearField(1069);
  @$pb.TagNumber(1069)
  $2.PruningPointUTXOSetOverrideNotificationMessage ensurePruningPointUTXOSetOverrideNotification() => $_ensure(111);

  @$pb.TagNumber(1070)
  $2.StopNotifyingPruningPointUTXOSetOverrideRequestMessage get stopNotifyingPruningPointUTXOSetOverrideRequest => $_getN(112);
  @$pb.TagNumber(1070)
  set stopNotifyingPruningPointUTXOSetOverrideRequest($2.StopNotifyingPruningPointUTXOSetOverrideRequestMessage v) { setField(1070, v); }
  @$pb.TagNumber(1070)
  $core.bool hasStopNotifyingPruningPointUTXOSetOverrideRequest() => $_has(112);
  @$pb.TagNumber(1070)
  void clearStopNotifyingPruningPointUTXOSetOverrideRequest() => clearField(1070);
  @$pb.TagNumber(1070)
  $2.StopNotifyingPruningPointUTXOSetOverrideRequestMessage ensureStopNotifyingPruningPointUTXOSetOverrideRequest() => $_ensure(112);

  @$pb.TagNumber(1071)
  $2.StopNotifyingPruningPointUTXOSetOverrideResponseMessage get stopNotifyingPruningPointUTXOSetOverrideResponse => $_getN(113);
  @$pb.TagNumber(1071)
  set stopNotifyingPruningPointUTXOSetOverrideResponse($2.StopNotifyingPruningPointUTXOSetOverrideResponseMessage v) { setField(1071, v); }
  @$pb.TagNumber(1071)
  $core.bool hasStopNotifyingPruningPointUTXOSetOverrideResponse() => $_has(113);
  @$pb.TagNumber(1071)
  void clearStopNotifyingPruningPointUTXOSetOverrideResponse() => clearField(1071);
  @$pb.TagNumber(1071)
  $2.StopNotifyingPruningPointUTXOSetOverrideResponseMessage ensureStopNotifyingPruningPointUTXOSetOverrideResponse() => $_ensure(113);

  @$pb.TagNumber(1072)
  $2.EstimateNetworkHashesPerSecondRequestMessage get estimateNetworkHashesPerSecondRequest => $_getN(114);
  @$pb.TagNumber(1072)
  set estimateNetworkHashesPerSecondRequest($2.EstimateNetworkHashesPerSecondRequestMessage v) { setField(1072, v); }
  @$pb.TagNumber(1072)
  $core.bool hasEstimateNetworkHashesPerSecondRequest() => $_has(114);
  @$pb.TagNumber(1072)
  void clearEstimateNetworkHashesPerSecondRequest() => clearField(1072);
  @$pb.TagNumber(1072)
  $2.EstimateNetworkHashesPerSecondRequestMessage ensureEstimateNetworkHashesPerSecondRequest() => $_ensure(114);

  @$pb.TagNumber(1073)
  $2.EstimateNetworkHashesPerSecondResponseMessage get estimateNetworkHashesPerSecondResponse => $_getN(115);
  @$pb.TagNumber(1073)
  set estimateNetworkHashesPerSecondResponse($2.EstimateNetworkHashesPerSecondResponseMessage v) { setField(1073, v); }
  @$pb.TagNumber(1073)
  $core.bool hasEstimateNetworkHashesPerSecondResponse() => $_has(115);
  @$pb.TagNumber(1073)
  void clearEstimateNetworkHashesPerSecondResponse() => clearField(1073);
  @$pb.TagNumber(1073)
  $2.EstimateNetworkHashesPerSecondResponseMessage ensureEstimateNetworkHashesPerSecondResponse() => $_ensure(115);

  @$pb.TagNumber(1074)
  $2.NotifyVirtualDaaScoreChangedRequestMessage get notifyVirtualDaaScoreChangedRequest => $_getN(116);
  @$pb.TagNumber(1074)
  set notifyVirtualDaaScoreChangedRequest($2.NotifyVirtualDaaScoreChangedRequestMessage v) { setField(1074, v); }
  @$pb.TagNumber(1074)
  $core.bool hasNotifyVirtualDaaScoreChangedRequest() => $_has(116);
  @$pb.TagNumber(1074)
  void clearNotifyVirtualDaaScoreChangedRequest() => clearField(1074);
  @$pb.TagNumber(1074)
  $2.NotifyVirtualDaaScoreChangedRequestMessage ensureNotifyVirtualDaaScoreChangedRequest() => $_ensure(116);

  @$pb.TagNumber(1075)
  $2.NotifyVirtualDaaScoreChangedResponseMessage get notifyVirtualDaaScoreChangedResponse => $_getN(117);
  @$pb.TagNumber(1075)
  set notifyVirtualDaaScoreChangedResponse($2.NotifyVirtualDaaScoreChangedResponseMessage v) { setField(1075, v); }
  @$pb.TagNumber(1075)
  $core.bool hasNotifyVirtualDaaScoreChangedResponse() => $_has(117);
  @$pb.TagNumber(1075)
  void clearNotifyVirtualDaaScoreChangedResponse() => clearField(1075);
  @$pb.TagNumber(1075)
  $2.NotifyVirtualDaaScoreChangedResponseMessage ensureNotifyVirtualDaaScoreChangedResponse() => $_ensure(117);

  @$pb.TagNumber(1076)
  $2.VirtualDaaScoreChangedNotificationMessage get virtualDaaScoreChangedNotification => $_getN(118);
  @$pb.TagNumber(1076)
  set virtualDaaScoreChangedNotification($2.VirtualDaaScoreChangedNotificationMessage v) { setField(1076, v); }
  @$pb.TagNumber(1076)
  $core.bool hasVirtualDaaScoreChangedNotification() => $_has(118);
  @$pb.TagNumber(1076)
  void clearVirtualDaaScoreChangedNotification() => clearField(1076);
  @$pb.TagNumber(1076)
  $2.VirtualDaaScoreChangedNotificationMessage ensureVirtualDaaScoreChangedNotification() => $_ensure(118);

  @$pb.TagNumber(1077)
  $2.GetBalanceByAddressRequestMessage get getBalanceByAddressRequest => $_getN(119);
  @$pb.TagNumber(1077)
  set getBalanceByAddressRequest($2.GetBalanceByAddressRequestMessage v) { setField(1077, v); }
  @$pb.TagNumber(1077)
  $core.bool hasGetBalanceByAddressRequest() => $_has(119);
  @$pb.TagNumber(1077)
  void clearGetBalanceByAddressRequest() => clearField(1077);
  @$pb.TagNumber(1077)
  $2.GetBalanceByAddressRequestMessage ensureGetBalanceByAddressRequest() => $_ensure(119);

  @$pb.TagNumber(1078)
  $2.GetBalanceByAddressResponseMessage get getBalanceByAddressResponse => $_getN(120);
  @$pb.TagNumber(1078)
  set getBalanceByAddressResponse($2.GetBalanceByAddressResponseMessage v) { setField(1078, v); }
  @$pb.TagNumber(1078)
  $core.bool hasGetBalanceByAddressResponse() => $_has(120);
  @$pb.TagNumber(1078)
  void clearGetBalanceByAddressResponse() => clearField(1078);
  @$pb.TagNumber(1078)
  $2.GetBalanceByAddressResponseMessage ensureGetBalanceByAddressResponse() => $_ensure(120);

  @$pb.TagNumber(1079)
  $2.GetBalancesByAddressesRequestMessage get getBalancesByAddressesRequest => $_getN(121);
  @$pb.TagNumber(1079)
  set getBalancesByAddressesRequest($2.GetBalancesByAddressesRequestMessage v) { setField(1079, v); }
  @$pb.TagNumber(1079)
  $core.bool hasGetBalancesByAddressesRequest() => $_has(121);
  @$pb.TagNumber(1079)
  void clearGetBalancesByAddressesRequest() => clearField(1079);
  @$pb.TagNumber(1079)
  $2.GetBalancesByAddressesRequestMessage ensureGetBalancesByAddressesRequest() => $_ensure(121);

  @$pb.TagNumber(1080)
  $2.GetBalancesByAddressesResponseMessage get getBalancesByAddressesResponse => $_getN(122);
  @$pb.TagNumber(1080)
  set getBalancesByAddressesResponse($2.GetBalancesByAddressesResponseMessage v) { setField(1080, v); }
  @$pb.TagNumber(1080)
  $core.bool hasGetBalancesByAddressesResponse() => $_has(122);
  @$pb.TagNumber(1080)
  void clearGetBalancesByAddressesResponse() => clearField(1080);
  @$pb.TagNumber(1080)
  $2.GetBalancesByAddressesResponseMessage ensureGetBalancesByAddressesResponse() => $_ensure(122);

  @$pb.TagNumber(1081)
  $2.NotifyNewBlockTemplateRequestMessage get notifyNewBlockTemplateRequest => $_getN(123);
  @$pb.TagNumber(1081)
  set notifyNewBlockTemplateRequest($2.NotifyNewBlockTemplateRequestMessage v) { setField(1081, v); }
  @$pb.TagNumber(1081)
  $core.bool hasNotifyNewBlockTemplateRequest() => $_has(123);
  @$pb.TagNumber(1081)
  void clearNotifyNewBlockTemplateRequest() => clearField(1081);
  @$pb.TagNumber(1081)
  $2.NotifyNewBlockTemplateRequestMessage ensureNotifyNewBlockTemplateRequest() => $_ensure(123);

  @$pb.TagNumber(1082)
  $2.NotifyNewBlockTemplateResponseMessage get notifyNewBlockTemplateResponse => $_getN(124);
  @$pb.TagNumber(1082)
  set notifyNewBlockTemplateResponse($2.NotifyNewBlockTemplateResponseMessage v) { setField(1082, v); }
  @$pb.TagNumber(1082)
  $core.bool hasNotifyNewBlockTemplateResponse() => $_has(124);
  @$pb.TagNumber(1082)
  void clearNotifyNewBlockTemplateResponse() => clearField(1082);
  @$pb.TagNumber(1082)
  $2.NotifyNewBlockTemplateResponseMessage ensureNotifyNewBlockTemplateResponse() => $_ensure(124);

  @$pb.TagNumber(1083)
  $2.NewBlockTemplateNotificationMessage get newBlockTemplateNotification => $_getN(125);
  @$pb.TagNumber(1083)
  set newBlockTemplateNotification($2.NewBlockTemplateNotificationMessage v) { setField(1083, v); }
  @$pb.TagNumber(1083)
  $core.bool hasNewBlockTemplateNotification() => $_has(125);
  @$pb.TagNumber(1083)
  void clearNewBlockTemplateNotification() => clearField(1083);
  @$pb.TagNumber(1083)
  $2.NewBlockTemplateNotificationMessage ensureNewBlockTemplateNotification() => $_ensure(125);

  @$pb.TagNumber(1084)
  $2.GetMempoolEntriesByAddressesRequestMessage get getMempoolEntriesByAddressesRequest => $_getN(126);
  @$pb.TagNumber(1084)
  set getMempoolEntriesByAddressesRequest($2.GetMempoolEntriesByAddressesRequestMessage v) { setField(1084, v); }
  @$pb.TagNumber(1084)
  $core.bool hasGetMempoolEntriesByAddressesRequest() => $_has(126);
  @$pb.TagNumber(1084)
  void clearGetMempoolEntriesByAddressesRequest() => clearField(1084);
  @$pb.TagNumber(1084)
  $2.GetMempoolEntriesByAddressesRequestMessage ensureGetMempoolEntriesByAddressesRequest() => $_ensure(126);

  @$pb.TagNumber(1085)
  $2.GetMempoolEntriesByAddressesResponseMessage get getMempoolEntriesByAddressesResponse => $_getN(127);
  @$pb.TagNumber(1085)
  set getMempoolEntriesByAddressesResponse($2.GetMempoolEntriesByAddressesResponseMessage v) { setField(1085, v); }
  @$pb.TagNumber(1085)
  $core.bool hasGetMempoolEntriesByAddressesResponse() => $_has(127);
  @$pb.TagNumber(1085)
  void clearGetMempoolEntriesByAddressesResponse() => clearField(1085);
  @$pb.TagNumber(1085)
  $2.GetMempoolEntriesByAddressesResponseMessage ensureGetMempoolEntriesByAddressesResponse() => $_ensure(127);

  @$pb.TagNumber(1086)
  $2.GetCoinSupplyRequestMessage get getCoinSupplyRequest => $_getN(128);
  @$pb.TagNumber(1086)
  set getCoinSupplyRequest($2.GetCoinSupplyRequestMessage v) { setField(1086, v); }
  @$pb.TagNumber(1086)
  $core.bool hasGetCoinSupplyRequest() => $_has(128);
  @$pb.TagNumber(1086)
  void clearGetCoinSupplyRequest() => clearField(1086);
  @$pb.TagNumber(1086)
  $2.GetCoinSupplyRequestMessage ensureGetCoinSupplyRequest() => $_ensure(128);

  @$pb.TagNumber(1087)
  $2.GetCoinSupplyResponseMessage get getCoinSupplyResponse => $_getN(129);
  @$pb.TagNumber(1087)
  set getCoinSupplyResponse($2.GetCoinSupplyResponseMessage v) { setField(1087, v); }
  @$pb.TagNumber(1087)
  $core.bool hasGetCoinSupplyResponse() => $_has(129);
  @$pb.TagNumber(1087)
  void clearGetCoinSupplyResponse() => clearField(1087);
  @$pb.TagNumber(1087)
  $2.GetCoinSupplyResponseMessage ensureGetCoinSupplyResponse() => $_ensure(129);
}

