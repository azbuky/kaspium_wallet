///
//  Generated code. Do not modify.
//  source: messages.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use kaspadMessageDescriptor instead')
const KaspadMessage$json = const {
  '1': 'KaspadMessage',
  '2': const [
    const {
      '1': 'addresses',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.protowire.AddressesMessage',
      '9': 0,
      '10': 'addresses'
    },
    const {
      '1': 'block',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protowire.BlockMessage',
      '9': 0,
      '10': 'block'
    },
    const {
      '1': 'transaction',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protowire.TransactionMessage',
      '9': 0,
      '10': 'transaction'
    },
    const {
      '1': 'blockLocator',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.protowire.BlockLocatorMessage',
      '9': 0,
      '10': 'blockLocator'
    },
    const {
      '1': 'requestAddresses',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.protowire.RequestAddressesMessage',
      '9': 0,
      '10': 'requestAddresses'
    },
    const {
      '1': 'requestRelayBlocks',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.protowire.RequestRelayBlocksMessage',
      '9': 0,
      '10': 'requestRelayBlocks'
    },
    const {
      '1': 'requestTransactions',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.protowire.RequestTransactionsMessage',
      '9': 0,
      '10': 'requestTransactions'
    },
    const {
      '1': 'ibdBlock',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.protowire.BlockMessage',
      '9': 0,
      '10': 'ibdBlock'
    },
    const {
      '1': 'invRelayBlock',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.protowire.InvRelayBlockMessage',
      '9': 0,
      '10': 'invRelayBlock'
    },
    const {
      '1': 'invTransactions',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.protowire.InvTransactionsMessage',
      '9': 0,
      '10': 'invTransactions'
    },
    const {
      '1': 'ping',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.protowire.PingMessage',
      '9': 0,
      '10': 'ping'
    },
    const {
      '1': 'pong',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.protowire.PongMessage',
      '9': 0,
      '10': 'pong'
    },
    const {
      '1': 'verack',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.protowire.VerackMessage',
      '9': 0,
      '10': 'verack'
    },
    const {
      '1': 'version',
      '3': 20,
      '4': 1,
      '5': 11,
      '6': '.protowire.VersionMessage',
      '9': 0,
      '10': 'version'
    },
    const {
      '1': 'transactionNotFound',
      '3': 21,
      '4': 1,
      '5': 11,
      '6': '.protowire.TransactionNotFoundMessage',
      '9': 0,
      '10': 'transactionNotFound'
    },
    const {
      '1': 'reject',
      '3': 22,
      '4': 1,
      '5': 11,
      '6': '.protowire.RejectMessage',
      '9': 0,
      '10': 'reject'
    },
    const {
      '1': 'pruningPointUtxoSetChunk',
      '3': 25,
      '4': 1,
      '5': 11,
      '6': '.protowire.PruningPointUtxoSetChunkMessage',
      '9': 0,
      '10': 'pruningPointUtxoSetChunk'
    },
    const {
      '1': 'requestIBDBlocks',
      '3': 26,
      '4': 1,
      '5': 11,
      '6': '.protowire.RequestIBDBlocksMessage',
      '9': 0,
      '10': 'requestIBDBlocks'
    },
    const {
      '1': 'unexpectedPruningPoint',
      '3': 27,
      '4': 1,
      '5': 11,
      '6': '.protowire.UnexpectedPruningPointMessage',
      '9': 0,
      '10': 'unexpectedPruningPoint'
    },
    const {
      '1': 'ibdBlockLocator',
      '3': 30,
      '4': 1,
      '5': 11,
      '6': '.protowire.IbdBlockLocatorMessage',
      '9': 0,
      '10': 'ibdBlockLocator'
    },
    const {
      '1': 'ibdBlockLocatorHighestHash',
      '3': 31,
      '4': 1,
      '5': 11,
      '6': '.protowire.IbdBlockLocatorHighestHashMessage',
      '9': 0,
      '10': 'ibdBlockLocatorHighestHash'
    },
    const {
      '1': 'requestNextPruningPointUtxoSetChunk',
      '3': 33,
      '4': 1,
      '5': 11,
      '6': '.protowire.RequestNextPruningPointUtxoSetChunkMessage',
      '9': 0,
      '10': 'requestNextPruningPointUtxoSetChunk'
    },
    const {
      '1': 'donePruningPointUtxoSetChunks',
      '3': 34,
      '4': 1,
      '5': 11,
      '6': '.protowire.DonePruningPointUtxoSetChunksMessage',
      '9': 0,
      '10': 'donePruningPointUtxoSetChunks'
    },
    const {
      '1': 'ibdBlockLocatorHighestHashNotFound',
      '3': 35,
      '4': 1,
      '5': 11,
      '6': '.protowire.IbdBlockLocatorHighestHashNotFoundMessage',
      '9': 0,
      '10': 'ibdBlockLocatorHighestHashNotFound'
    },
    const {
      '1': 'blockWithTrustedData',
      '3': 36,
      '4': 1,
      '5': 11,
      '6': '.protowire.BlockWithTrustedDataMessage',
      '9': 0,
      '10': 'blockWithTrustedData'
    },
    const {
      '1': 'doneBlocksWithTrustedData',
      '3': 37,
      '4': 1,
      '5': 11,
      '6': '.protowire.DoneBlocksWithTrustedDataMessage',
      '9': 0,
      '10': 'doneBlocksWithTrustedData'
    },
    const {
      '1': 'requestPruningPointAndItsAnticone',
      '3': 40,
      '4': 1,
      '5': 11,
      '6': '.protowire.RequestPruningPointAndItsAnticoneMessage',
      '9': 0,
      '10': 'requestPruningPointAndItsAnticone'
    },
    const {
      '1': 'blockHeaders',
      '3': 41,
      '4': 1,
      '5': 11,
      '6': '.protowire.BlockHeadersMessage',
      '9': 0,
      '10': 'blockHeaders'
    },
    const {
      '1': 'requestNextHeaders',
      '3': 42,
      '4': 1,
      '5': 11,
      '6': '.protowire.RequestNextHeadersMessage',
      '9': 0,
      '10': 'requestNextHeaders'
    },
    const {
      '1': 'DoneHeaders',
      '3': 43,
      '4': 1,
      '5': 11,
      '6': '.protowire.DoneHeadersMessage',
      '9': 0,
      '10': 'DoneHeaders'
    },
    const {
      '1': 'requestPruningPointUTXOSet',
      '3': 44,
      '4': 1,
      '5': 11,
      '6': '.protowire.RequestPruningPointUTXOSetMessage',
      '9': 0,
      '10': 'requestPruningPointUTXOSet'
    },
    const {
      '1': 'requestHeaders',
      '3': 45,
      '4': 1,
      '5': 11,
      '6': '.protowire.RequestHeadersMessage',
      '9': 0,
      '10': 'requestHeaders'
    },
    const {
      '1': 'requestBlockLocator',
      '3': 46,
      '4': 1,
      '5': 11,
      '6': '.protowire.RequestBlockLocatorMessage',
      '9': 0,
      '10': 'requestBlockLocator'
    },
    const {
      '1': 'pruningPoints',
      '3': 47,
      '4': 1,
      '5': 11,
      '6': '.protowire.PruningPointsMessage',
      '9': 0,
      '10': 'pruningPoints'
    },
    const {
      '1': 'requestPruningPointProof',
      '3': 48,
      '4': 1,
      '5': 11,
      '6': '.protowire.RequestPruningPointProofMessage',
      '9': 0,
      '10': 'requestPruningPointProof'
    },
    const {
      '1': 'pruningPointProof',
      '3': 49,
      '4': 1,
      '5': 11,
      '6': '.protowire.PruningPointProofMessage',
      '9': 0,
      '10': 'pruningPointProof'
    },
    const {
      '1': 'ready',
      '3': 50,
      '4': 1,
      '5': 11,
      '6': '.protowire.ReadyMessage',
      '9': 0,
      '10': 'ready'
    },
    const {
      '1': 'blockWithTrustedDataV4',
      '3': 51,
      '4': 1,
      '5': 11,
      '6': '.protowire.BlockWithTrustedDataV4Message',
      '9': 0,
      '10': 'blockWithTrustedDataV4'
    },
    const {
      '1': 'trustedData',
      '3': 52,
      '4': 1,
      '5': 11,
      '6': '.protowire.TrustedDataMessage',
      '9': 0,
      '10': 'trustedData'
    },
    const {
      '1': 'requestIBDChainBlockLocator',
      '3': 53,
      '4': 1,
      '5': 11,
      '6': '.protowire.RequestIBDChainBlockLocatorMessage',
      '9': 0,
      '10': 'requestIBDChainBlockLocator'
    },
    const {
      '1': 'ibdChainBlockLocator',
      '3': 54,
      '4': 1,
      '5': 11,
      '6': '.protowire.IbdChainBlockLocatorMessage',
      '9': 0,
      '10': 'ibdChainBlockLocator'
    },
    const {
      '1': 'requestAnticone',
      '3': 55,
      '4': 1,
      '5': 11,
      '6': '.protowire.RequestAnticoneMessage',
      '9': 0,
      '10': 'requestAnticone'
    },
    const {
      '1': 'requestNextPruningPointAndItsAnticoneBlocks',
      '3': 56,
      '4': 1,
      '5': 11,
      '6': '.protowire.RequestNextPruningPointAndItsAnticoneBlocksMessage',
      '9': 0,
      '10': 'requestNextPruningPointAndItsAnticoneBlocks'
    },
    const {
      '1': 'getCurrentNetworkRequest',
      '3': 1001,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetCurrentNetworkRequestMessage',
      '9': 0,
      '10': 'getCurrentNetworkRequest'
    },
    const {
      '1': 'getCurrentNetworkResponse',
      '3': 1002,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetCurrentNetworkResponseMessage',
      '9': 0,
      '10': 'getCurrentNetworkResponse'
    },
    const {
      '1': 'submitBlockRequest',
      '3': 1003,
      '4': 1,
      '5': 11,
      '6': '.protowire.SubmitBlockRequestMessage',
      '9': 0,
      '10': 'submitBlockRequest'
    },
    const {
      '1': 'submitBlockResponse',
      '3': 1004,
      '4': 1,
      '5': 11,
      '6': '.protowire.SubmitBlockResponseMessage',
      '9': 0,
      '10': 'submitBlockResponse'
    },
    const {
      '1': 'getBlockTemplateRequest',
      '3': 1005,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetBlockTemplateRequestMessage',
      '9': 0,
      '10': 'getBlockTemplateRequest'
    },
    const {
      '1': 'getBlockTemplateResponse',
      '3': 1006,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetBlockTemplateResponseMessage',
      '9': 0,
      '10': 'getBlockTemplateResponse'
    },
    const {
      '1': 'notifyBlockAddedRequest',
      '3': 1007,
      '4': 1,
      '5': 11,
      '6': '.protowire.NotifyBlockAddedRequestMessage',
      '9': 0,
      '10': 'notifyBlockAddedRequest'
    },
    const {
      '1': 'notifyBlockAddedResponse',
      '3': 1008,
      '4': 1,
      '5': 11,
      '6': '.protowire.NotifyBlockAddedResponseMessage',
      '9': 0,
      '10': 'notifyBlockAddedResponse'
    },
    const {
      '1': 'blockAddedNotification',
      '3': 1009,
      '4': 1,
      '5': 11,
      '6': '.protowire.BlockAddedNotificationMessage',
      '9': 0,
      '10': 'blockAddedNotification'
    },
    const {
      '1': 'getPeerAddressesRequest',
      '3': 1010,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetPeerAddressesRequestMessage',
      '9': 0,
      '10': 'getPeerAddressesRequest'
    },
    const {
      '1': 'getPeerAddressesResponse',
      '3': 1011,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetPeerAddressesResponseMessage',
      '9': 0,
      '10': 'getPeerAddressesResponse'
    },
    const {
      '1': 'getSelectedTipHashRequest',
      '3': 1012,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetSelectedTipHashRequestMessage',
      '9': 0,
      '10': 'getSelectedTipHashRequest'
    },
    const {
      '1': 'getSelectedTipHashResponse',
      '3': 1013,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetSelectedTipHashResponseMessage',
      '9': 0,
      '10': 'getSelectedTipHashResponse'
    },
    const {
      '1': 'getMempoolEntryRequest',
      '3': 1014,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetMempoolEntryRequestMessage',
      '9': 0,
      '10': 'getMempoolEntryRequest'
    },
    const {
      '1': 'getMempoolEntryResponse',
      '3': 1015,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetMempoolEntryResponseMessage',
      '9': 0,
      '10': 'getMempoolEntryResponse'
    },
    const {
      '1': 'getConnectedPeerInfoRequest',
      '3': 1016,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetConnectedPeerInfoRequestMessage',
      '9': 0,
      '10': 'getConnectedPeerInfoRequest'
    },
    const {
      '1': 'getConnectedPeerInfoResponse',
      '3': 1017,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetConnectedPeerInfoResponseMessage',
      '9': 0,
      '10': 'getConnectedPeerInfoResponse'
    },
    const {
      '1': 'addPeerRequest',
      '3': 1018,
      '4': 1,
      '5': 11,
      '6': '.protowire.AddPeerRequestMessage',
      '9': 0,
      '10': 'addPeerRequest'
    },
    const {
      '1': 'addPeerResponse',
      '3': 1019,
      '4': 1,
      '5': 11,
      '6': '.protowire.AddPeerResponseMessage',
      '9': 0,
      '10': 'addPeerResponse'
    },
    const {
      '1': 'submitTransactionRequest',
      '3': 1020,
      '4': 1,
      '5': 11,
      '6': '.protowire.SubmitTransactionRequestMessage',
      '9': 0,
      '10': 'submitTransactionRequest'
    },
    const {
      '1': 'submitTransactionResponse',
      '3': 1021,
      '4': 1,
      '5': 11,
      '6': '.protowire.SubmitTransactionResponseMessage',
      '9': 0,
      '10': 'submitTransactionResponse'
    },
    const {
      '1': 'notifyVirtualSelectedParentChainChangedRequest',
      '3': 1022,
      '4': 1,
      '5': 11,
      '6': '.protowire.NotifyVirtualSelectedParentChainChangedRequestMessage',
      '9': 0,
      '10': 'notifyVirtualSelectedParentChainChangedRequest'
    },
    const {
      '1': 'notifyVirtualSelectedParentChainChangedResponse',
      '3': 1023,
      '4': 1,
      '5': 11,
      '6': '.protowire.NotifyVirtualSelectedParentChainChangedResponseMessage',
      '9': 0,
      '10': 'notifyVirtualSelectedParentChainChangedResponse'
    },
    const {
      '1': 'virtualSelectedParentChainChangedNotification',
      '3': 1024,
      '4': 1,
      '5': 11,
      '6': '.protowire.VirtualSelectedParentChainChangedNotificationMessage',
      '9': 0,
      '10': 'virtualSelectedParentChainChangedNotification'
    },
    const {
      '1': 'getBlockRequest',
      '3': 1025,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetBlockRequestMessage',
      '9': 0,
      '10': 'getBlockRequest'
    },
    const {
      '1': 'getBlockResponse',
      '3': 1026,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetBlockResponseMessage',
      '9': 0,
      '10': 'getBlockResponse'
    },
    const {
      '1': 'getSubnetworkRequest',
      '3': 1027,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetSubnetworkRequestMessage',
      '9': 0,
      '10': 'getSubnetworkRequest'
    },
    const {
      '1': 'getSubnetworkResponse',
      '3': 1028,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetSubnetworkResponseMessage',
      '9': 0,
      '10': 'getSubnetworkResponse'
    },
    const {
      '1': 'getVirtualSelectedParentChainFromBlockRequest',
      '3': 1029,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetVirtualSelectedParentChainFromBlockRequestMessage',
      '9': 0,
      '10': 'getVirtualSelectedParentChainFromBlockRequest'
    },
    const {
      '1': 'getVirtualSelectedParentChainFromBlockResponse',
      '3': 1030,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetVirtualSelectedParentChainFromBlockResponseMessage',
      '9': 0,
      '10': 'getVirtualSelectedParentChainFromBlockResponse'
    },
    const {
      '1': 'getBlocksRequest',
      '3': 1031,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetBlocksRequestMessage',
      '9': 0,
      '10': 'getBlocksRequest'
    },
    const {
      '1': 'getBlocksResponse',
      '3': 1032,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetBlocksResponseMessage',
      '9': 0,
      '10': 'getBlocksResponse'
    },
    const {
      '1': 'getBlockCountRequest',
      '3': 1033,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetBlockCountRequestMessage',
      '9': 0,
      '10': 'getBlockCountRequest'
    },
    const {
      '1': 'getBlockCountResponse',
      '3': 1034,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetBlockCountResponseMessage',
      '9': 0,
      '10': 'getBlockCountResponse'
    },
    const {
      '1': 'getBlockDagInfoRequest',
      '3': 1035,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetBlockDagInfoRequestMessage',
      '9': 0,
      '10': 'getBlockDagInfoRequest'
    },
    const {
      '1': 'getBlockDagInfoResponse',
      '3': 1036,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetBlockDagInfoResponseMessage',
      '9': 0,
      '10': 'getBlockDagInfoResponse'
    },
    const {
      '1': 'resolveFinalityConflictRequest',
      '3': 1037,
      '4': 1,
      '5': 11,
      '6': '.protowire.ResolveFinalityConflictRequestMessage',
      '9': 0,
      '10': 'resolveFinalityConflictRequest'
    },
    const {
      '1': 'resolveFinalityConflictResponse',
      '3': 1038,
      '4': 1,
      '5': 11,
      '6': '.protowire.ResolveFinalityConflictResponseMessage',
      '9': 0,
      '10': 'resolveFinalityConflictResponse'
    },
    const {
      '1': 'notifyFinalityConflictsRequest',
      '3': 1039,
      '4': 1,
      '5': 11,
      '6': '.protowire.NotifyFinalityConflictsRequestMessage',
      '9': 0,
      '10': 'notifyFinalityConflictsRequest'
    },
    const {
      '1': 'notifyFinalityConflictsResponse',
      '3': 1040,
      '4': 1,
      '5': 11,
      '6': '.protowire.NotifyFinalityConflictsResponseMessage',
      '9': 0,
      '10': 'notifyFinalityConflictsResponse'
    },
    const {
      '1': 'finalityConflictNotification',
      '3': 1041,
      '4': 1,
      '5': 11,
      '6': '.protowire.FinalityConflictNotificationMessage',
      '9': 0,
      '10': 'finalityConflictNotification'
    },
    const {
      '1': 'finalityConflictResolvedNotification',
      '3': 1042,
      '4': 1,
      '5': 11,
      '6': '.protowire.FinalityConflictResolvedNotificationMessage',
      '9': 0,
      '10': 'finalityConflictResolvedNotification'
    },
    const {
      '1': 'getMempoolEntriesRequest',
      '3': 1043,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetMempoolEntriesRequestMessage',
      '9': 0,
      '10': 'getMempoolEntriesRequest'
    },
    const {
      '1': 'getMempoolEntriesResponse',
      '3': 1044,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetMempoolEntriesResponseMessage',
      '9': 0,
      '10': 'getMempoolEntriesResponse'
    },
    const {
      '1': 'shutDownRequest',
      '3': 1045,
      '4': 1,
      '5': 11,
      '6': '.protowire.ShutDownRequestMessage',
      '9': 0,
      '10': 'shutDownRequest'
    },
    const {
      '1': 'shutDownResponse',
      '3': 1046,
      '4': 1,
      '5': 11,
      '6': '.protowire.ShutDownResponseMessage',
      '9': 0,
      '10': 'shutDownResponse'
    },
    const {
      '1': 'getHeadersRequest',
      '3': 1047,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetHeadersRequestMessage',
      '9': 0,
      '10': 'getHeadersRequest'
    },
    const {
      '1': 'getHeadersResponse',
      '3': 1048,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetHeadersResponseMessage',
      '9': 0,
      '10': 'getHeadersResponse'
    },
    const {
      '1': 'notifyUtxosChangedRequest',
      '3': 1049,
      '4': 1,
      '5': 11,
      '6': '.protowire.NotifyUtxosChangedRequestMessage',
      '9': 0,
      '10': 'notifyUtxosChangedRequest'
    },
    const {
      '1': 'notifyUtxosChangedResponse',
      '3': 1050,
      '4': 1,
      '5': 11,
      '6': '.protowire.NotifyUtxosChangedResponseMessage',
      '9': 0,
      '10': 'notifyUtxosChangedResponse'
    },
    const {
      '1': 'utxosChangedNotification',
      '3': 1051,
      '4': 1,
      '5': 11,
      '6': '.protowire.UtxosChangedNotificationMessage',
      '9': 0,
      '10': 'utxosChangedNotification'
    },
    const {
      '1': 'getUtxosByAddressesRequest',
      '3': 1052,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetUtxosByAddressesRequestMessage',
      '9': 0,
      '10': 'getUtxosByAddressesRequest'
    },
    const {
      '1': 'getUtxosByAddressesResponse',
      '3': 1053,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetUtxosByAddressesResponseMessage',
      '9': 0,
      '10': 'getUtxosByAddressesResponse'
    },
    const {
      '1': 'getVirtualSelectedParentBlueScoreRequest',
      '3': 1054,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetVirtualSelectedParentBlueScoreRequestMessage',
      '9': 0,
      '10': 'getVirtualSelectedParentBlueScoreRequest'
    },
    const {
      '1': 'getVirtualSelectedParentBlueScoreResponse',
      '3': 1055,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetVirtualSelectedParentBlueScoreResponseMessage',
      '9': 0,
      '10': 'getVirtualSelectedParentBlueScoreResponse'
    },
    const {
      '1': 'notifyVirtualSelectedParentBlueScoreChangedRequest',
      '3': 1056,
      '4': 1,
      '5': 11,
      '6':
          '.protowire.NotifyVirtualSelectedParentBlueScoreChangedRequestMessage',
      '9': 0,
      '10': 'notifyVirtualSelectedParentBlueScoreChangedRequest'
    },
    const {
      '1': 'notifyVirtualSelectedParentBlueScoreChangedResponse',
      '3': 1057,
      '4': 1,
      '5': 11,
      '6':
          '.protowire.NotifyVirtualSelectedParentBlueScoreChangedResponseMessage',
      '9': 0,
      '10': 'notifyVirtualSelectedParentBlueScoreChangedResponse'
    },
    const {
      '1': 'virtualSelectedParentBlueScoreChangedNotification',
      '3': 1058,
      '4': 1,
      '5': 11,
      '6':
          '.protowire.VirtualSelectedParentBlueScoreChangedNotificationMessage',
      '9': 0,
      '10': 'virtualSelectedParentBlueScoreChangedNotification'
    },
    const {
      '1': 'banRequest',
      '3': 1059,
      '4': 1,
      '5': 11,
      '6': '.protowire.BanRequestMessage',
      '9': 0,
      '10': 'banRequest'
    },
    const {
      '1': 'banResponse',
      '3': 1060,
      '4': 1,
      '5': 11,
      '6': '.protowire.BanResponseMessage',
      '9': 0,
      '10': 'banResponse'
    },
    const {
      '1': 'unbanRequest',
      '3': 1061,
      '4': 1,
      '5': 11,
      '6': '.protowire.UnbanRequestMessage',
      '9': 0,
      '10': 'unbanRequest'
    },
    const {
      '1': 'unbanResponse',
      '3': 1062,
      '4': 1,
      '5': 11,
      '6': '.protowire.UnbanResponseMessage',
      '9': 0,
      '10': 'unbanResponse'
    },
    const {
      '1': 'getInfoRequest',
      '3': 1063,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetInfoRequestMessage',
      '9': 0,
      '10': 'getInfoRequest'
    },
    const {
      '1': 'getInfoResponse',
      '3': 1064,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetInfoResponseMessage',
      '9': 0,
      '10': 'getInfoResponse'
    },
    const {
      '1': 'stopNotifyingUtxosChangedRequest',
      '3': 1065,
      '4': 1,
      '5': 11,
      '6': '.protowire.StopNotifyingUtxosChangedRequestMessage',
      '9': 0,
      '10': 'stopNotifyingUtxosChangedRequest'
    },
    const {
      '1': 'stopNotifyingUtxosChangedResponse',
      '3': 1066,
      '4': 1,
      '5': 11,
      '6': '.protowire.StopNotifyingUtxosChangedResponseMessage',
      '9': 0,
      '10': 'stopNotifyingUtxosChangedResponse'
    },
    const {
      '1': 'notifyPruningPointUTXOSetOverrideRequest',
      '3': 1067,
      '4': 1,
      '5': 11,
      '6': '.protowire.NotifyPruningPointUTXOSetOverrideRequestMessage',
      '9': 0,
      '10': 'notifyPruningPointUTXOSetOverrideRequest'
    },
    const {
      '1': 'notifyPruningPointUTXOSetOverrideResponse',
      '3': 1068,
      '4': 1,
      '5': 11,
      '6': '.protowire.NotifyPruningPointUTXOSetOverrideResponseMessage',
      '9': 0,
      '10': 'notifyPruningPointUTXOSetOverrideResponse'
    },
    const {
      '1': 'pruningPointUTXOSetOverrideNotification',
      '3': 1069,
      '4': 1,
      '5': 11,
      '6': '.protowire.PruningPointUTXOSetOverrideNotificationMessage',
      '9': 0,
      '10': 'pruningPointUTXOSetOverrideNotification'
    },
    const {
      '1': 'stopNotifyingPruningPointUTXOSetOverrideRequest',
      '3': 1070,
      '4': 1,
      '5': 11,
      '6': '.protowire.StopNotifyingPruningPointUTXOSetOverrideRequestMessage',
      '9': 0,
      '10': 'stopNotifyingPruningPointUTXOSetOverrideRequest'
    },
    const {
      '1': 'stopNotifyingPruningPointUTXOSetOverrideResponse',
      '3': 1071,
      '4': 1,
      '5': 11,
      '6': '.protowire.StopNotifyingPruningPointUTXOSetOverrideResponseMessage',
      '9': 0,
      '10': 'stopNotifyingPruningPointUTXOSetOverrideResponse'
    },
    const {
      '1': 'estimateNetworkHashesPerSecondRequest',
      '3': 1072,
      '4': 1,
      '5': 11,
      '6': '.protowire.EstimateNetworkHashesPerSecondRequestMessage',
      '9': 0,
      '10': 'estimateNetworkHashesPerSecondRequest'
    },
    const {
      '1': 'estimateNetworkHashesPerSecondResponse',
      '3': 1073,
      '4': 1,
      '5': 11,
      '6': '.protowire.EstimateNetworkHashesPerSecondResponseMessage',
      '9': 0,
      '10': 'estimateNetworkHashesPerSecondResponse'
    },
    const {
      '1': 'notifyVirtualDaaScoreChangedRequest',
      '3': 1074,
      '4': 1,
      '5': 11,
      '6': '.protowire.NotifyVirtualDaaScoreChangedRequestMessage',
      '9': 0,
      '10': 'notifyVirtualDaaScoreChangedRequest'
    },
    const {
      '1': 'notifyVirtualDaaScoreChangedResponse',
      '3': 1075,
      '4': 1,
      '5': 11,
      '6': '.protowire.NotifyVirtualDaaScoreChangedResponseMessage',
      '9': 0,
      '10': 'notifyVirtualDaaScoreChangedResponse'
    },
    const {
      '1': 'virtualDaaScoreChangedNotification',
      '3': 1076,
      '4': 1,
      '5': 11,
      '6': '.protowire.VirtualDaaScoreChangedNotificationMessage',
      '9': 0,
      '10': 'virtualDaaScoreChangedNotification'
    },
    const {
      '1': 'getBalanceByAddressRequest',
      '3': 1077,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetBalanceByAddressRequestMessage',
      '9': 0,
      '10': 'getBalanceByAddressRequest'
    },
    const {
      '1': 'getBalanceByAddressResponse',
      '3': 1078,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetBalanceByAddressResponseMessage',
      '9': 0,
      '10': 'getBalanceByAddressResponse'
    },
    const {
      '1': 'getBalancesByAddressesRequest',
      '3': 1079,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetBalancesByAddressesRequestMessage',
      '9': 0,
      '10': 'getBalancesByAddressesRequest'
    },
    const {
      '1': 'getBalancesByAddressesResponse',
      '3': 1080,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetBalancesByAddressesResponseMessage',
      '9': 0,
      '10': 'getBalancesByAddressesResponse'
    },
    const {
      '1': 'notifyNewBlockTemplateRequest',
      '3': 1081,
      '4': 1,
      '5': 11,
      '6': '.protowire.NotifyNewBlockTemplateRequestMessage',
      '9': 0,
      '10': 'notifyNewBlockTemplateRequest'
    },
    const {
      '1': 'notifyNewBlockTemplateResponse',
      '3': 1082,
      '4': 1,
      '5': 11,
      '6': '.protowire.NotifyNewBlockTemplateResponseMessage',
      '9': 0,
      '10': 'notifyNewBlockTemplateResponse'
    },
    const {
      '1': 'newBlockTemplateNotification',
      '3': 1083,
      '4': 1,
      '5': 11,
      '6': '.protowire.NewBlockTemplateNotificationMessage',
      '9': 0,
      '10': 'newBlockTemplateNotification'
    },
    const {
      '1': 'getMempoolEntriesByAddressesRequest',
      '3': 1084,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetMempoolEntriesByAddressesRequestMessage',
      '9': 0,
      '10': 'getMempoolEntriesByAddressesRequest'
    },
    const {
      '1': 'getMempoolEntriesByAddressesResponse',
      '3': 1085,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetMempoolEntriesByAddressesResponseMessage',
      '9': 0,
      '10': 'getMempoolEntriesByAddressesResponse'
    },
    const {
      '1': 'getCoinSupplyRequest',
      '3': 1086,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetCoinSupplyRequestMessage',
      '9': 0,
      '10': 'getCoinSupplyRequest'
    },
    const {
      '1': 'getCoinSupplyResponse',
      '3': 1087,
      '4': 1,
      '5': 11,
      '6': '.protowire.GetCoinSupplyResponseMessage',
      '9': 0,
      '10': 'getCoinSupplyResponse'
    },
  ],
  '8': const [
    const {'1': 'payload'},
  ],
};

/// Descriptor for `KaspadMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kaspadMessageDescriptor = $convert.base64Decode(
    'Cg1LYXNwYWRNZXNzYWdlEjsKCWFkZHJlc3NlcxgBIAEoCzIbLnByb3Rvd2lyZS5BZGRyZXNzZXNNZXNzYWdlSABSCWFkZHJlc3NlcxIvCgVibG9jaxgCIAEoCzIXLnByb3Rvd2lyZS5CbG9ja01lc3NhZ2VIAFIFYmxvY2sSQQoLdHJhbnNhY3Rpb24YAyABKAsyHS5wcm90b3dpcmUuVHJhbnNhY3Rpb25NZXNzYWdlSABSC3RyYW5zYWN0aW9uEkQKDGJsb2NrTG9jYXRvchgFIAEoCzIeLnByb3Rvd2lyZS5CbG9ja0xvY2F0b3JNZXNzYWdlSABSDGJsb2NrTG9jYXRvchJQChByZXF1ZXN0QWRkcmVzc2VzGAYgASgLMiIucHJvdG93aXJlLlJlcXVlc3RBZGRyZXNzZXNNZXNzYWdlSABSEHJlcXVlc3RBZGRyZXNzZXMSVgoScmVxdWVzdFJlbGF5QmxvY2tzGAogASgLMiQucHJvdG93aXJlLlJlcXVlc3RSZWxheUJsb2Nrc01lc3NhZ2VIAFIScmVxdWVzdFJlbGF5QmxvY2tzElkKE3JlcXVlc3RUcmFuc2FjdGlvbnMYDCABKAsyJS5wcm90b3dpcmUuUmVxdWVzdFRyYW5zYWN0aW9uc01lc3NhZ2VIAFITcmVxdWVzdFRyYW5zYWN0aW9ucxI1CghpYmRCbG9jaxgNIAEoCzIXLnByb3Rvd2lyZS5CbG9ja01lc3NhZ2VIAFIIaWJkQmxvY2sSRwoNaW52UmVsYXlCbG9jaxgOIAEoCzIfLnByb3Rvd2lyZS5JbnZSZWxheUJsb2NrTWVzc2FnZUgAUg1pbnZSZWxheUJsb2NrEk0KD2ludlRyYW5zYWN0aW9ucxgPIAEoCzIhLnByb3Rvd2lyZS5JbnZUcmFuc2FjdGlvbnNNZXNzYWdlSABSD2ludlRyYW5zYWN0aW9ucxIsCgRwaW5nGBAgASgLMhYucHJvdG93aXJlLlBpbmdNZXNzYWdlSABSBHBpbmcSLAoEcG9uZxgRIAEoCzIWLnByb3Rvd2lyZS5Qb25nTWVzc2FnZUgAUgRwb25nEjIKBnZlcmFjaxgTIAEoCzIYLnByb3Rvd2lyZS5WZXJhY2tNZXNzYWdlSABSBnZlcmFjaxI1Cgd2ZXJzaW9uGBQgASgLMhkucHJvdG93aXJlLlZlcnNpb25NZXNzYWdlSABSB3ZlcnNpb24SWQoTdHJhbnNhY3Rpb25Ob3RGb3VuZBgVIAEoCzIlLnByb3Rvd2lyZS5UcmFuc2FjdGlvbk5vdEZvdW5kTWVzc2FnZUgAUhN0cmFuc2FjdGlvbk5vdEZvdW5kEjIKBnJlamVjdBgWIAEoCzIYLnByb3Rvd2lyZS5SZWplY3RNZXNzYWdlSABSBnJlamVjdBJoChhwcnVuaW5nUG9pbnRVdHhvU2V0Q2h1bmsYGSABKAsyKi5wcm90b3dpcmUuUHJ1bmluZ1BvaW50VXR4b1NldENodW5rTWVzc2FnZUgAUhhwcnVuaW5nUG9pbnRVdHhvU2V0Q2h1bmsSUAoQcmVxdWVzdElCREJsb2NrcxgaIAEoCzIiLnByb3Rvd2lyZS5SZXF1ZXN0SUJEQmxvY2tzTWVzc2FnZUgAUhByZXF1ZXN0SUJEQmxvY2tzEmIKFnVuZXhwZWN0ZWRQcnVuaW5nUG9pbnQYGyABKAsyKC5wcm90b3dpcmUuVW5leHBlY3RlZFBydW5pbmdQb2ludE1lc3NhZ2VIAFIWdW5leHBlY3RlZFBydW5pbmdQb2ludBJNCg9pYmRCbG9ja0xvY2F0b3IYHiABKAsyIS5wcm90b3dpcmUuSWJkQmxvY2tMb2NhdG9yTWVzc2FnZUgAUg9pYmRCbG9ja0xvY2F0b3ISbgoaaWJkQmxvY2tMb2NhdG9ySGlnaGVzdEhhc2gYHyABKAsyLC5wcm90b3dpcmUuSWJkQmxvY2tMb2NhdG9ySGlnaGVzdEhhc2hNZXNzYWdlSABSGmliZEJsb2NrTG9jYXRvckhpZ2hlc3RIYXNoEokBCiNyZXF1ZXN0TmV4dFBydW5pbmdQb2ludFV0eG9TZXRDaHVuaxghIAEoCzI1LnByb3Rvd2lyZS5SZXF1ZXN0TmV4dFBydW5pbmdQb2ludFV0eG9TZXRDaHVua01lc3NhZ2VIAFIjcmVxdWVzdE5leHRQcnVuaW5nUG9pbnRVdHhvU2V0Q2h1bmsSdwodZG9uZVBydW5pbmdQb2ludFV0eG9TZXRDaHVua3MYIiABKAsyLy5wcm90b3dpcmUuRG9uZVBydW5pbmdQb2ludFV0eG9TZXRDaHVua3NNZXNzYWdlSABSHWRvbmVQcnVuaW5nUG9pbnRVdHhvU2V0Q2h1bmtzEoYBCiJpYmRCbG9ja0xvY2F0b3JIaWdoZXN0SGFzaE5vdEZvdW5kGCMgASgLMjQucHJvdG93aXJlLkliZEJsb2NrTG9jYXRvckhpZ2hlc3RIYXNoTm90Rm91bmRNZXNzYWdlSABSImliZEJsb2NrTG9jYXRvckhpZ2hlc3RIYXNoTm90Rm91bmQSXAoUYmxvY2tXaXRoVHJ1c3RlZERhdGEYJCABKAsyJi5wcm90b3dpcmUuQmxvY2tXaXRoVHJ1c3RlZERhdGFNZXNzYWdlSABSFGJsb2NrV2l0aFRydXN0ZWREYXRhEmsKGWRvbmVCbG9ja3NXaXRoVHJ1c3RlZERhdGEYJSABKAsyKy5wcm90b3dpcmUuRG9uZUJsb2Nrc1dpdGhUcnVzdGVkRGF0YU1lc3NhZ2VIAFIZZG9uZUJsb2Nrc1dpdGhUcnVzdGVkRGF0YRKDAQohcmVxdWVzdFBydW5pbmdQb2ludEFuZEl0c0FudGljb25lGCggASgLMjMucHJvdG93aXJlLlJlcXVlc3RQcnVuaW5nUG9pbnRBbmRJdHNBbnRpY29uZU1lc3NhZ2VIAFIhcmVxdWVzdFBydW5pbmdQb2ludEFuZEl0c0FudGljb25lEkQKDGJsb2NrSGVhZGVycxgpIAEoCzIeLnByb3Rvd2lyZS5CbG9ja0hlYWRlcnNNZXNzYWdlSABSDGJsb2NrSGVhZGVycxJWChJyZXF1ZXN0TmV4dEhlYWRlcnMYKiABKAsyJC5wcm90b3dpcmUuUmVxdWVzdE5leHRIZWFkZXJzTWVzc2FnZUgAUhJyZXF1ZXN0TmV4dEhlYWRlcnMSQQoLRG9uZUhlYWRlcnMYKyABKAsyHS5wcm90b3dpcmUuRG9uZUhlYWRlcnNNZXNzYWdlSABSC0RvbmVIZWFkZXJzEm4KGnJlcXVlc3RQcnVuaW5nUG9pbnRVVFhPU2V0GCwgASgLMiwucHJvdG93aXJlLlJlcXVlc3RQcnVuaW5nUG9pbnRVVFhPU2V0TWVzc2FnZUgAUhpyZXF1ZXN0UHJ1bmluZ1BvaW50VVRYT1NldBJKCg5yZXF1ZXN0SGVhZGVycxgtIAEoCzIgLnByb3Rvd2lyZS5SZXF1ZXN0SGVhZGVyc01lc3NhZ2VIAFIOcmVxdWVzdEhlYWRlcnMSWQoTcmVxdWVzdEJsb2NrTG9jYXRvchguIAEoCzIlLnByb3Rvd2lyZS5SZXF1ZXN0QmxvY2tMb2NhdG9yTWVzc2FnZUgAUhNyZXF1ZXN0QmxvY2tMb2NhdG9yEkcKDXBydW5pbmdQb2ludHMYLyABKAsyHy5wcm90b3dpcmUuUHJ1bmluZ1BvaW50c01lc3NhZ2VIAFINcHJ1bmluZ1BvaW50cxJoChhyZXF1ZXN0UHJ1bmluZ1BvaW50UHJvb2YYMCABKAsyKi5wcm90b3dpcmUuUmVxdWVzdFBydW5pbmdQb2ludFByb29mTWVzc2FnZUgAUhhyZXF1ZXN0UHJ1bmluZ1BvaW50UHJvb2YSUwoRcHJ1bmluZ1BvaW50UHJvb2YYMSABKAsyIy5wcm90b3dpcmUuUHJ1bmluZ1BvaW50UHJvb2ZNZXNzYWdlSABSEXBydW5pbmdQb2ludFByb29mEi8KBXJlYWR5GDIgASgLMhcucHJvdG93aXJlLlJlYWR5TWVzc2FnZUgAUgVyZWFkeRJiChZibG9ja1dpdGhUcnVzdGVkRGF0YVY0GDMgASgLMigucHJvdG93aXJlLkJsb2NrV2l0aFRydXN0ZWREYXRhVjRNZXNzYWdlSABSFmJsb2NrV2l0aFRydXN0ZWREYXRhVjQSQQoLdHJ1c3RlZERhdGEYNCABKAsyHS5wcm90b3dpcmUuVHJ1c3RlZERhdGFNZXNzYWdlSABSC3RydXN0ZWREYXRhEnEKG3JlcXVlc3RJQkRDaGFpbkJsb2NrTG9jYXRvchg1IAEoCzItLnByb3Rvd2lyZS5SZXF1ZXN0SUJEQ2hhaW5CbG9ja0xvY2F0b3JNZXNzYWdlSABSG3JlcXVlc3RJQkRDaGFpbkJsb2NrTG9jYXRvchJcChRpYmRDaGFpbkJsb2NrTG9jYXRvchg2IAEoCzImLnByb3Rvd2lyZS5JYmRDaGFpbkJsb2NrTG9jYXRvck1lc3NhZ2VIAFIUaWJkQ2hhaW5CbG9ja0xvY2F0b3ISTQoPcmVxdWVzdEFudGljb25lGDcgASgLMiEucHJvdG93aXJlLlJlcXVlc3RBbnRpY29uZU1lc3NhZ2VIAFIPcmVxdWVzdEFudGljb25lEqEBCityZXF1ZXN0TmV4dFBydW5pbmdQb2ludEFuZEl0c0FudGljb25lQmxvY2tzGDggASgLMj0ucHJvdG93aXJlLlJlcXVlc3ROZXh0UHJ1bmluZ1BvaW50QW5kSXRzQW50aWNvbmVCbG9ja3NNZXNzYWdlSABSK3JlcXVlc3ROZXh0UHJ1bmluZ1BvaW50QW5kSXRzQW50aWNvbmVCbG9ja3MSaQoYZ2V0Q3VycmVudE5ldHdvcmtSZXF1ZXN0GOkHIAEoCzIqLnByb3Rvd2lyZS5HZXRDdXJyZW50TmV0d29ya1JlcXVlc3RNZXNzYWdlSABSGGdldEN1cnJlbnROZXR3b3JrUmVxdWVzdBJsChlnZXRDdXJyZW50TmV0d29ya1Jlc3BvbnNlGOoHIAEoCzIrLnByb3Rvd2lyZS5HZXRDdXJyZW50TmV0d29ya1Jlc3BvbnNlTWVzc2FnZUgAUhlnZXRDdXJyZW50TmV0d29ya1Jlc3BvbnNlElcKEnN1Ym1pdEJsb2NrUmVxdWVzdBjrByABKAsyJC5wcm90b3dpcmUuU3VibWl0QmxvY2tSZXF1ZXN0TWVzc2FnZUgAUhJzdWJtaXRCbG9ja1JlcXVlc3QSWgoTc3VibWl0QmxvY2tSZXNwb25zZRjsByABKAsyJS5wcm90b3dpcmUuU3VibWl0QmxvY2tSZXNwb25zZU1lc3NhZ2VIAFITc3VibWl0QmxvY2tSZXNwb25zZRJmChdnZXRCbG9ja1RlbXBsYXRlUmVxdWVzdBjtByABKAsyKS5wcm90b3dpcmUuR2V0QmxvY2tUZW1wbGF0ZVJlcXVlc3RNZXNzYWdlSABSF2dldEJsb2NrVGVtcGxhdGVSZXF1ZXN0EmkKGGdldEJsb2NrVGVtcGxhdGVSZXNwb25zZRjuByABKAsyKi5wcm90b3dpcmUuR2V0QmxvY2tUZW1wbGF0ZVJlc3BvbnNlTWVzc2FnZUgAUhhnZXRCbG9ja1RlbXBsYXRlUmVzcG9uc2USZgoXbm90aWZ5QmxvY2tBZGRlZFJlcXVlc3QY7wcgASgLMikucHJvdG93aXJlLk5vdGlmeUJsb2NrQWRkZWRSZXF1ZXN0TWVzc2FnZUgAUhdub3RpZnlCbG9ja0FkZGVkUmVxdWVzdBJpChhub3RpZnlCbG9ja0FkZGVkUmVzcG9uc2UY8AcgASgLMioucHJvdG93aXJlLk5vdGlmeUJsb2NrQWRkZWRSZXNwb25zZU1lc3NhZ2VIAFIYbm90aWZ5QmxvY2tBZGRlZFJlc3BvbnNlEmMKFmJsb2NrQWRkZWROb3RpZmljYXRpb24Y8QcgASgLMigucHJvdG93aXJlLkJsb2NrQWRkZWROb3RpZmljYXRpb25NZXNzYWdlSABSFmJsb2NrQWRkZWROb3RpZmljYXRpb24SZgoXZ2V0UGVlckFkZHJlc3Nlc1JlcXVlc3QY8gcgASgLMikucHJvdG93aXJlLkdldFBlZXJBZGRyZXNzZXNSZXF1ZXN0TWVzc2FnZUgAUhdnZXRQZWVyQWRkcmVzc2VzUmVxdWVzdBJpChhnZXRQZWVyQWRkcmVzc2VzUmVzcG9uc2UY8wcgASgLMioucHJvdG93aXJlLkdldFBlZXJBZGRyZXNzZXNSZXNwb25zZU1lc3NhZ2VIAFIYZ2V0UGVlckFkZHJlc3Nlc1Jlc3BvbnNlEmwKGWdldFNlbGVjdGVkVGlwSGFzaFJlcXVlc3QY9AcgASgLMisucHJvdG93aXJlLkdldFNlbGVjdGVkVGlwSGFzaFJlcXVlc3RNZXNzYWdlSABSGWdldFNlbGVjdGVkVGlwSGFzaFJlcXVlc3QSbwoaZ2V0U2VsZWN0ZWRUaXBIYXNoUmVzcG9uc2UY9QcgASgLMiwucHJvdG93aXJlLkdldFNlbGVjdGVkVGlwSGFzaFJlc3BvbnNlTWVzc2FnZUgAUhpnZXRTZWxlY3RlZFRpcEhhc2hSZXNwb25zZRJjChZnZXRNZW1wb29sRW50cnlSZXF1ZXN0GPYHIAEoCzIoLnByb3Rvd2lyZS5HZXRNZW1wb29sRW50cnlSZXF1ZXN0TWVzc2FnZUgAUhZnZXRNZW1wb29sRW50cnlSZXF1ZXN0EmYKF2dldE1lbXBvb2xFbnRyeVJlc3BvbnNlGPcHIAEoCzIpLnByb3Rvd2lyZS5HZXRNZW1wb29sRW50cnlSZXNwb25zZU1lc3NhZ2VIAFIXZ2V0TWVtcG9vbEVudHJ5UmVzcG9uc2UScgobZ2V0Q29ubmVjdGVkUGVlckluZm9SZXF1ZXN0GPgHIAEoCzItLnByb3Rvd2lyZS5HZXRDb25uZWN0ZWRQZWVySW5mb1JlcXVlc3RNZXNzYWdlSABSG2dldENvbm5lY3RlZFBlZXJJbmZvUmVxdWVzdBJ1ChxnZXRDb25uZWN0ZWRQZWVySW5mb1Jlc3BvbnNlGPkHIAEoCzIuLnByb3Rvd2lyZS5HZXRDb25uZWN0ZWRQZWVySW5mb1Jlc3BvbnNlTWVzc2FnZUgAUhxnZXRDb25uZWN0ZWRQZWVySW5mb1Jlc3BvbnNlEksKDmFkZFBlZXJSZXF1ZXN0GPoHIAEoCzIgLnByb3Rvd2lyZS5BZGRQZWVyUmVxdWVzdE1lc3NhZ2VIAFIOYWRkUGVlclJlcXVlc3QSTgoPYWRkUGVlclJlc3BvbnNlGPsHIAEoCzIhLnByb3Rvd2lyZS5BZGRQZWVyUmVzcG9uc2VNZXNzYWdlSABSD2FkZFBlZXJSZXNwb25zZRJpChhzdWJtaXRUcmFuc2FjdGlvblJlcXVlc3QY/AcgASgLMioucHJvdG93aXJlLlN1Ym1pdFRyYW5zYWN0aW9uUmVxdWVzdE1lc3NhZ2VIAFIYc3VibWl0VHJhbnNhY3Rpb25SZXF1ZXN0EmwKGXN1Ym1pdFRyYW5zYWN0aW9uUmVzcG9uc2UY/QcgASgLMisucHJvdG93aXJlLlN1Ym1pdFRyYW5zYWN0aW9uUmVzcG9uc2VNZXNzYWdlSABSGXN1Ym1pdFRyYW5zYWN0aW9uUmVzcG9uc2USqwEKLm5vdGlmeVZpcnR1YWxTZWxlY3RlZFBhcmVudENoYWluQ2hhbmdlZFJlcXVlc3QY/gcgASgLMkAucHJvdG93aXJlLk5vdGlmeVZpcnR1YWxTZWxlY3RlZFBhcmVudENoYWluQ2hhbmdlZFJlcXVlc3RNZXNzYWdlSABSLm5vdGlmeVZpcnR1YWxTZWxlY3RlZFBhcmVudENoYWluQ2hhbmdlZFJlcXVlc3QSrgEKL25vdGlmeVZpcnR1YWxTZWxlY3RlZFBhcmVudENoYWluQ2hhbmdlZFJlc3BvbnNlGP8HIAEoCzJBLnByb3Rvd2lyZS5Ob3RpZnlWaXJ0dWFsU2VsZWN0ZWRQYXJlbnRDaGFpbkNoYW5nZWRSZXNwb25zZU1lc3NhZ2VIAFIvbm90aWZ5VmlydHVhbFNlbGVjdGVkUGFyZW50Q2hhaW5DaGFuZ2VkUmVzcG9uc2USqAEKLXZpcnR1YWxTZWxlY3RlZFBhcmVudENoYWluQ2hhbmdlZE5vdGlmaWNhdGlvbhiACCABKAsyPy5wcm90b3dpcmUuVmlydHVhbFNlbGVjdGVkUGFyZW50Q2hhaW5DaGFuZ2VkTm90aWZpY2F0aW9uTWVzc2FnZUgAUi12aXJ0dWFsU2VsZWN0ZWRQYXJlbnRDaGFpbkNoYW5nZWROb3RpZmljYXRpb24STgoPZ2V0QmxvY2tSZXF1ZXN0GIEIIAEoCzIhLnByb3Rvd2lyZS5HZXRCbG9ja1JlcXVlc3RNZXNzYWdlSABSD2dldEJsb2NrUmVxdWVzdBJRChBnZXRCbG9ja1Jlc3BvbnNlGIIIIAEoCzIiLnByb3Rvd2lyZS5HZXRCbG9ja1Jlc3BvbnNlTWVzc2FnZUgAUhBnZXRCbG9ja1Jlc3BvbnNlEl0KFGdldFN1Ym5ldHdvcmtSZXF1ZXN0GIMIIAEoCzImLnByb3Rvd2lyZS5HZXRTdWJuZXR3b3JrUmVxdWVzdE1lc3NhZ2VIAFIUZ2V0U3VibmV0d29ya1JlcXVlc3QSYAoVZ2V0U3VibmV0d29ya1Jlc3BvbnNlGIQIIAEoCzInLnByb3Rvd2lyZS5HZXRTdWJuZXR3b3JrUmVzcG9uc2VNZXNzYWdlSABSFWdldFN1Ym5ldHdvcmtSZXNwb25zZRKoAQotZ2V0VmlydHVhbFNlbGVjdGVkUGFyZW50Q2hhaW5Gcm9tQmxvY2tSZXF1ZXN0GIUIIAEoCzI/LnByb3Rvd2lyZS5HZXRWaXJ0dWFsU2VsZWN0ZWRQYXJlbnRDaGFpbkZyb21CbG9ja1JlcXVlc3RNZXNzYWdlSABSLWdldFZpcnR1YWxTZWxlY3RlZFBhcmVudENoYWluRnJvbUJsb2NrUmVxdWVzdBKrAQouZ2V0VmlydHVhbFNlbGVjdGVkUGFyZW50Q2hhaW5Gcm9tQmxvY2tSZXNwb25zZRiGCCABKAsyQC5wcm90b3dpcmUuR2V0VmlydHVhbFNlbGVjdGVkUGFyZW50Q2hhaW5Gcm9tQmxvY2tSZXNwb25zZU1lc3NhZ2VIAFIuZ2V0VmlydHVhbFNlbGVjdGVkUGFyZW50Q2hhaW5Gcm9tQmxvY2tSZXNwb25zZRJRChBnZXRCbG9ja3NSZXF1ZXN0GIcIIAEoCzIiLnByb3Rvd2lyZS5HZXRCbG9ja3NSZXF1ZXN0TWVzc2FnZUgAUhBnZXRCbG9ja3NSZXF1ZXN0ElQKEWdldEJsb2Nrc1Jlc3BvbnNlGIgIIAEoCzIjLnByb3Rvd2lyZS5HZXRCbG9ja3NSZXNwb25zZU1lc3NhZ2VIAFIRZ2V0QmxvY2tzUmVzcG9uc2USXQoUZ2V0QmxvY2tDb3VudFJlcXVlc3QYiQggASgLMiYucHJvdG93aXJlLkdldEJsb2NrQ291bnRSZXF1ZXN0TWVzc2FnZUgAUhRnZXRCbG9ja0NvdW50UmVxdWVzdBJgChVnZXRCbG9ja0NvdW50UmVzcG9uc2UYigggASgLMicucHJvdG93aXJlLkdldEJsb2NrQ291bnRSZXNwb25zZU1lc3NhZ2VIAFIVZ2V0QmxvY2tDb3VudFJlc3BvbnNlEmMKFmdldEJsb2NrRGFnSW5mb1JlcXVlc3QYiwggASgLMigucHJvdG93aXJlLkdldEJsb2NrRGFnSW5mb1JlcXVlc3RNZXNzYWdlSABSFmdldEJsb2NrRGFnSW5mb1JlcXVlc3QSZgoXZ2V0QmxvY2tEYWdJbmZvUmVzcG9uc2UYjAggASgLMikucHJvdG93aXJlLkdldEJsb2NrRGFnSW5mb1Jlc3BvbnNlTWVzc2FnZUgAUhdnZXRCbG9ja0RhZ0luZm9SZXNwb25zZRJ7Ch5yZXNvbHZlRmluYWxpdHlDb25mbGljdFJlcXVlc3QYjQggASgLMjAucHJvdG93aXJlLlJlc29sdmVGaW5hbGl0eUNvbmZsaWN0UmVxdWVzdE1lc3NhZ2VIAFIecmVzb2x2ZUZpbmFsaXR5Q29uZmxpY3RSZXF1ZXN0En4KH3Jlc29sdmVGaW5hbGl0eUNvbmZsaWN0UmVzcG9uc2UYjgggASgLMjEucHJvdG93aXJlLlJlc29sdmVGaW5hbGl0eUNvbmZsaWN0UmVzcG9uc2VNZXNzYWdlSABSH3Jlc29sdmVGaW5hbGl0eUNvbmZsaWN0UmVzcG9uc2USewoebm90aWZ5RmluYWxpdHlDb25mbGljdHNSZXF1ZXN0GI8IIAEoCzIwLnByb3Rvd2lyZS5Ob3RpZnlGaW5hbGl0eUNvbmZsaWN0c1JlcXVlc3RNZXNzYWdlSABSHm5vdGlmeUZpbmFsaXR5Q29uZmxpY3RzUmVxdWVzdBJ+Ch9ub3RpZnlGaW5hbGl0eUNvbmZsaWN0c1Jlc3BvbnNlGJAIIAEoCzIxLnByb3Rvd2lyZS5Ob3RpZnlGaW5hbGl0eUNvbmZsaWN0c1Jlc3BvbnNlTWVzc2FnZUgAUh9ub3RpZnlGaW5hbGl0eUNvbmZsaWN0c1Jlc3BvbnNlEnUKHGZpbmFsaXR5Q29uZmxpY3ROb3RpZmljYXRpb24YkQggASgLMi4ucHJvdG93aXJlLkZpbmFsaXR5Q29uZmxpY3ROb3RpZmljYXRpb25NZXNzYWdlSABSHGZpbmFsaXR5Q29uZmxpY3ROb3RpZmljYXRpb24SjQEKJGZpbmFsaXR5Q29uZmxpY3RSZXNvbHZlZE5vdGlmaWNhdGlvbhiSCCABKAsyNi5wcm90b3dpcmUuRmluYWxpdHlDb25mbGljdFJlc29sdmVkTm90aWZpY2F0aW9uTWVzc2FnZUgAUiRmaW5hbGl0eUNvbmZsaWN0UmVzb2x2ZWROb3RpZmljYXRpb24SaQoYZ2V0TWVtcG9vbEVudHJpZXNSZXF1ZXN0GJMIIAEoCzIqLnByb3Rvd2lyZS5HZXRNZW1wb29sRW50cmllc1JlcXVlc3RNZXNzYWdlSABSGGdldE1lbXBvb2xFbnRyaWVzUmVxdWVzdBJsChlnZXRNZW1wb29sRW50cmllc1Jlc3BvbnNlGJQIIAEoCzIrLnByb3Rvd2lyZS5HZXRNZW1wb29sRW50cmllc1Jlc3BvbnNlTWVzc2FnZUgAUhlnZXRNZW1wb29sRW50cmllc1Jlc3BvbnNlEk4KD3NodXREb3duUmVxdWVzdBiVCCABKAsyIS5wcm90b3dpcmUuU2h1dERvd25SZXF1ZXN0TWVzc2FnZUgAUg9zaHV0RG93blJlcXVlc3QSUQoQc2h1dERvd25SZXNwb25zZRiWCCABKAsyIi5wcm90b3dpcmUuU2h1dERvd25SZXNwb25zZU1lc3NhZ2VIAFIQc2h1dERvd25SZXNwb25zZRJUChFnZXRIZWFkZXJzUmVxdWVzdBiXCCABKAsyIy5wcm90b3dpcmUuR2V0SGVhZGVyc1JlcXVlc3RNZXNzYWdlSABSEWdldEhlYWRlcnNSZXF1ZXN0ElcKEmdldEhlYWRlcnNSZXNwb25zZRiYCCABKAsyJC5wcm90b3dpcmUuR2V0SGVhZGVyc1Jlc3BvbnNlTWVzc2FnZUgAUhJnZXRIZWFkZXJzUmVzcG9uc2USbAoZbm90aWZ5VXR4b3NDaGFuZ2VkUmVxdWVzdBiZCCABKAsyKy5wcm90b3dpcmUuTm90aWZ5VXR4b3NDaGFuZ2VkUmVxdWVzdE1lc3NhZ2VIAFIZbm90aWZ5VXR4b3NDaGFuZ2VkUmVxdWVzdBJvChpub3RpZnlVdHhvc0NoYW5nZWRSZXNwb25zZRiaCCABKAsyLC5wcm90b3dpcmUuTm90aWZ5VXR4b3NDaGFuZ2VkUmVzcG9uc2VNZXNzYWdlSABSGm5vdGlmeVV0eG9zQ2hhbmdlZFJlc3BvbnNlEmkKGHV0eG9zQ2hhbmdlZE5vdGlmaWNhdGlvbhibCCABKAsyKi5wcm90b3dpcmUuVXR4b3NDaGFuZ2VkTm90aWZpY2F0aW9uTWVzc2FnZUgAUhh1dHhvc0NoYW5nZWROb3RpZmljYXRpb24SbwoaZ2V0VXR4b3NCeUFkZHJlc3Nlc1JlcXVlc3QYnAggASgLMiwucHJvdG93aXJlLkdldFV0eG9zQnlBZGRyZXNzZXNSZXF1ZXN0TWVzc2FnZUgAUhpnZXRVdHhvc0J5QWRkcmVzc2VzUmVxdWVzdBJyChtnZXRVdHhvc0J5QWRkcmVzc2VzUmVzcG9uc2UYnQggASgLMi0ucHJvdG93aXJlLkdldFV0eG9zQnlBZGRyZXNzZXNSZXNwb25zZU1lc3NhZ2VIAFIbZ2V0VXR4b3NCeUFkZHJlc3Nlc1Jlc3BvbnNlEpkBCihnZXRWaXJ0dWFsU2VsZWN0ZWRQYXJlbnRCbHVlU2NvcmVSZXF1ZXN0GJ4IIAEoCzI6LnByb3Rvd2lyZS5HZXRWaXJ0dWFsU2VsZWN0ZWRQYXJlbnRCbHVlU2NvcmVSZXF1ZXN0TWVzc2FnZUgAUihnZXRWaXJ0dWFsU2VsZWN0ZWRQYXJlbnRCbHVlU2NvcmVSZXF1ZXN0EpwBCilnZXRWaXJ0dWFsU2VsZWN0ZWRQYXJlbnRCbHVlU2NvcmVSZXNwb25zZRifCCABKAsyOy5wcm90b3dpcmUuR2V0VmlydHVhbFNlbGVjdGVkUGFyZW50Qmx1ZVNjb3JlUmVzcG9uc2VNZXNzYWdlSABSKWdldFZpcnR1YWxTZWxlY3RlZFBhcmVudEJsdWVTY29yZVJlc3BvbnNlErcBCjJub3RpZnlWaXJ0dWFsU2VsZWN0ZWRQYXJlbnRCbHVlU2NvcmVDaGFuZ2VkUmVxdWVzdBigCCABKAsyRC5wcm90b3dpcmUuTm90aWZ5VmlydHVhbFNlbGVjdGVkUGFyZW50Qmx1ZVNjb3JlQ2hhbmdlZFJlcXVlc3RNZXNzYWdlSABSMm5vdGlmeVZpcnR1YWxTZWxlY3RlZFBhcmVudEJsdWVTY29yZUNoYW5nZWRSZXF1ZXN0EroBCjNub3RpZnlWaXJ0dWFsU2VsZWN0ZWRQYXJlbnRCbHVlU2NvcmVDaGFuZ2VkUmVzcG9uc2UYoQggASgLMkUucHJvdG93aXJlLk5vdGlmeVZpcnR1YWxTZWxlY3RlZFBhcmVudEJsdWVTY29yZUNoYW5nZWRSZXNwb25zZU1lc3NhZ2VIAFIzbm90aWZ5VmlydHVhbFNlbGVjdGVkUGFyZW50Qmx1ZVNjb3JlQ2hhbmdlZFJlc3BvbnNlErQBCjF2aXJ0dWFsU2VsZWN0ZWRQYXJlbnRCbHVlU2NvcmVDaGFuZ2VkTm90aWZpY2F0aW9uGKIIIAEoCzJDLnByb3Rvd2lyZS5WaXJ0dWFsU2VsZWN0ZWRQYXJlbnRCbHVlU2NvcmVDaGFuZ2VkTm90aWZpY2F0aW9uTWVzc2FnZUgAUjF2aXJ0dWFsU2VsZWN0ZWRQYXJlbnRCbHVlU2NvcmVDaGFuZ2VkTm90aWZpY2F0aW9uEj8KCmJhblJlcXVlc3QYowggASgLMhwucHJvdG93aXJlLkJhblJlcXVlc3RNZXNzYWdlSABSCmJhblJlcXVlc3QSQgoLYmFuUmVzcG9uc2UYpAggASgLMh0ucHJvdG93aXJlLkJhblJlc3BvbnNlTWVzc2FnZUgAUgtiYW5SZXNwb25zZRJFCgx1bmJhblJlcXVlc3QYpQggASgLMh4ucHJvdG93aXJlLlVuYmFuUmVxdWVzdE1lc3NhZ2VIAFIMdW5iYW5SZXF1ZXN0EkgKDXVuYmFuUmVzcG9uc2UYpgggASgLMh8ucHJvdG93aXJlLlVuYmFuUmVzcG9uc2VNZXNzYWdlSABSDXVuYmFuUmVzcG9uc2USSwoOZ2V0SW5mb1JlcXVlc3QYpwggASgLMiAucHJvdG93aXJlLkdldEluZm9SZXF1ZXN0TWVzc2FnZUgAUg5nZXRJbmZvUmVxdWVzdBJOCg9nZXRJbmZvUmVzcG9uc2UYqAggASgLMiEucHJvdG93aXJlLkdldEluZm9SZXNwb25zZU1lc3NhZ2VIAFIPZ2V0SW5mb1Jlc3BvbnNlEoEBCiBzdG9wTm90aWZ5aW5nVXR4b3NDaGFuZ2VkUmVxdWVzdBipCCABKAsyMi5wcm90b3dpcmUuU3RvcE5vdGlmeWluZ1V0eG9zQ2hhbmdlZFJlcXVlc3RNZXNzYWdlSABSIHN0b3BOb3RpZnlpbmdVdHhvc0NoYW5nZWRSZXF1ZXN0EoQBCiFzdG9wTm90aWZ5aW5nVXR4b3NDaGFuZ2VkUmVzcG9uc2UYqgggASgLMjMucHJvdG93aXJlLlN0b3BOb3RpZnlpbmdVdHhvc0NoYW5nZWRSZXNwb25zZU1lc3NhZ2VIAFIhc3RvcE5vdGlmeWluZ1V0eG9zQ2hhbmdlZFJlc3BvbnNlEpkBCihub3RpZnlQcnVuaW5nUG9pbnRVVFhPU2V0T3ZlcnJpZGVSZXF1ZXN0GKsIIAEoCzI6LnByb3Rvd2lyZS5Ob3RpZnlQcnVuaW5nUG9pbnRVVFhPU2V0T3ZlcnJpZGVSZXF1ZXN0TWVzc2FnZUgAUihub3RpZnlQcnVuaW5nUG9pbnRVVFhPU2V0T3ZlcnJpZGVSZXF1ZXN0EpwBCilub3RpZnlQcnVuaW5nUG9pbnRVVFhPU2V0T3ZlcnJpZGVSZXNwb25zZRisCCABKAsyOy5wcm90b3dpcmUuTm90aWZ5UHJ1bmluZ1BvaW50VVRYT1NldE92ZXJyaWRlUmVzcG9uc2VNZXNzYWdlSABSKW5vdGlmeVBydW5pbmdQb2ludFVUWE9TZXRPdmVycmlkZVJlc3BvbnNlEpYBCidwcnVuaW5nUG9pbnRVVFhPU2V0T3ZlcnJpZGVOb3RpZmljYXRpb24YrQggASgLMjkucHJvdG93aXJlLlBydW5pbmdQb2ludFVUWE9TZXRPdmVycmlkZU5vdGlmaWNhdGlvbk1lc3NhZ2VIAFIncHJ1bmluZ1BvaW50VVRYT1NldE92ZXJyaWRlTm90aWZpY2F0aW9uEq4BCi9zdG9wTm90aWZ5aW5nUHJ1bmluZ1BvaW50VVRYT1NldE92ZXJyaWRlUmVxdWVzdBiuCCABKAsyQS5wcm90b3dpcmUuU3RvcE5vdGlmeWluZ1BydW5pbmdQb2ludFVUWE9TZXRPdmVycmlkZVJlcXVlc3RNZXNzYWdlSABSL3N0b3BOb3RpZnlpbmdQcnVuaW5nUG9pbnRVVFhPU2V0T3ZlcnJpZGVSZXF1ZXN0ErEBCjBzdG9wTm90aWZ5aW5nUHJ1bmluZ1BvaW50VVRYT1NldE92ZXJyaWRlUmVzcG9uc2UYrwggASgLMkIucHJvdG93aXJlLlN0b3BOb3RpZnlpbmdQcnVuaW5nUG9pbnRVVFhPU2V0T3ZlcnJpZGVSZXNwb25zZU1lc3NhZ2VIAFIwc3RvcE5vdGlmeWluZ1BydW5pbmdQb2ludFVUWE9TZXRPdmVycmlkZVJlc3BvbnNlEpABCiVlc3RpbWF0ZU5ldHdvcmtIYXNoZXNQZXJTZWNvbmRSZXF1ZXN0GLAIIAEoCzI3LnByb3Rvd2lyZS5Fc3RpbWF0ZU5ldHdvcmtIYXNoZXNQZXJTZWNvbmRSZXF1ZXN0TWVzc2FnZUgAUiVlc3RpbWF0ZU5ldHdvcmtIYXNoZXNQZXJTZWNvbmRSZXF1ZXN0EpMBCiZlc3RpbWF0ZU5ldHdvcmtIYXNoZXNQZXJTZWNvbmRSZXNwb25zZRixCCABKAsyOC5wcm90b3dpcmUuRXN0aW1hdGVOZXR3b3JrSGFzaGVzUGVyU2Vjb25kUmVzcG9uc2VNZXNzYWdlSABSJmVzdGltYXRlTmV0d29ya0hhc2hlc1BlclNlY29uZFJlc3BvbnNlEooBCiNub3RpZnlWaXJ0dWFsRGFhU2NvcmVDaGFuZ2VkUmVxdWVzdBiyCCABKAsyNS5wcm90b3dpcmUuTm90aWZ5VmlydHVhbERhYVNjb3JlQ2hhbmdlZFJlcXVlc3RNZXNzYWdlSABSI25vdGlmeVZpcnR1YWxEYWFTY29yZUNoYW5nZWRSZXF1ZXN0Eo0BCiRub3RpZnlWaXJ0dWFsRGFhU2NvcmVDaGFuZ2VkUmVzcG9uc2UYswggASgLMjYucHJvdG93aXJlLk5vdGlmeVZpcnR1YWxEYWFTY29yZUNoYW5nZWRSZXNwb25zZU1lc3NhZ2VIAFIkbm90aWZ5VmlydHVhbERhYVNjb3JlQ2hhbmdlZFJlc3BvbnNlEocBCiJ2aXJ0dWFsRGFhU2NvcmVDaGFuZ2VkTm90aWZpY2F0aW9uGLQIIAEoCzI0LnByb3Rvd2lyZS5WaXJ0dWFsRGFhU2NvcmVDaGFuZ2VkTm90aWZpY2F0aW9uTWVzc2FnZUgAUiJ2aXJ0dWFsRGFhU2NvcmVDaGFuZ2VkTm90aWZpY2F0aW9uEm8KGmdldEJhbGFuY2VCeUFkZHJlc3NSZXF1ZXN0GLUIIAEoCzIsLnByb3Rvd2lyZS5HZXRCYWxhbmNlQnlBZGRyZXNzUmVxdWVzdE1lc3NhZ2VIAFIaZ2V0QmFsYW5jZUJ5QWRkcmVzc1JlcXVlc3QScgobZ2V0QmFsYW5jZUJ5QWRkcmVzc1Jlc3BvbnNlGLYIIAEoCzItLnByb3Rvd2lyZS5HZXRCYWxhbmNlQnlBZGRyZXNzUmVzcG9uc2VNZXNzYWdlSABSG2dldEJhbGFuY2VCeUFkZHJlc3NSZXNwb25zZRJ4Ch1nZXRCYWxhbmNlc0J5QWRkcmVzc2VzUmVxdWVzdBi3CCABKAsyLy5wcm90b3dpcmUuR2V0QmFsYW5jZXNCeUFkZHJlc3Nlc1JlcXVlc3RNZXNzYWdlSABSHWdldEJhbGFuY2VzQnlBZGRyZXNzZXNSZXF1ZXN0EnsKHmdldEJhbGFuY2VzQnlBZGRyZXNzZXNSZXNwb25zZRi4CCABKAsyMC5wcm90b3dpcmUuR2V0QmFsYW5jZXNCeUFkZHJlc3Nlc1Jlc3BvbnNlTWVzc2FnZUgAUh5nZXRCYWxhbmNlc0J5QWRkcmVzc2VzUmVzcG9uc2USeAodbm90aWZ5TmV3QmxvY2tUZW1wbGF0ZVJlcXVlc3QYuQggASgLMi8ucHJvdG93aXJlLk5vdGlmeU5ld0Jsb2NrVGVtcGxhdGVSZXF1ZXN0TWVzc2FnZUgAUh1ub3RpZnlOZXdCbG9ja1RlbXBsYXRlUmVxdWVzdBJ7Ch5ub3RpZnlOZXdCbG9ja1RlbXBsYXRlUmVzcG9uc2UYugggASgLMjAucHJvdG93aXJlLk5vdGlmeU5ld0Jsb2NrVGVtcGxhdGVSZXNwb25zZU1lc3NhZ2VIAFIebm90aWZ5TmV3QmxvY2tUZW1wbGF0ZVJlc3BvbnNlEnUKHG5ld0Jsb2NrVGVtcGxhdGVOb3RpZmljYXRpb24YuwggASgLMi4ucHJvdG93aXJlLk5ld0Jsb2NrVGVtcGxhdGVOb3RpZmljYXRpb25NZXNzYWdlSABSHG5ld0Jsb2NrVGVtcGxhdGVOb3RpZmljYXRpb24SigEKI2dldE1lbXBvb2xFbnRyaWVzQnlBZGRyZXNzZXNSZXF1ZXN0GLwIIAEoCzI1LnByb3Rvd2lyZS5HZXRNZW1wb29sRW50cmllc0J5QWRkcmVzc2VzUmVxdWVzdE1lc3NhZ2VIAFIjZ2V0TWVtcG9vbEVudHJpZXNCeUFkZHJlc3Nlc1JlcXVlc3QSjQEKJGdldE1lbXBvb2xFbnRyaWVzQnlBZGRyZXNzZXNSZXNwb25zZRi9CCABKAsyNi5wcm90b3dpcmUuR2V0TWVtcG9vbEVudHJpZXNCeUFkZHJlc3Nlc1Jlc3BvbnNlTWVzc2FnZUgAUiRnZXRNZW1wb29sRW50cmllc0J5QWRkcmVzc2VzUmVzcG9uc2USXQoUZ2V0Q29pblN1cHBseVJlcXVlc3QYvgggASgLMiYucHJvdG93aXJlLkdldENvaW5TdXBwbHlSZXF1ZXN0TWVzc2FnZUgAUhRnZXRDb2luU3VwcGx5UmVxdWVzdBJgChVnZXRDb2luU3VwcGx5UmVzcG9uc2UYvwggASgLMicucHJvdG93aXJlLkdldENvaW5TdXBwbHlSZXNwb25zZU1lc3NhZ2VIAFIVZ2V0Q29pblN1cHBseVJlc3BvbnNlQgkKB3BheWxvYWQ=');
