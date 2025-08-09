//
//  Generated code. Do not modify.
//  source: messages.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use kaspadRequestDescriptor instead')
const KaspadRequest$json = {
  '1': 'KaspadRequest',
  '2': [
    {'1': 'id', '3': 101, '4': 1, '5': 4, '10': 'id'},
    {'1': 'getCurrentNetworkRequest', '3': 1001, '4': 1, '5': 11, '6': '.protowire.GetCurrentNetworkRequestMessage', '9': 0, '10': 'getCurrentNetworkRequest'},
    {'1': 'submitBlockRequest', '3': 1003, '4': 1, '5': 11, '6': '.protowire.SubmitBlockRequestMessage', '9': 0, '10': 'submitBlockRequest'},
    {'1': 'getBlockTemplateRequest', '3': 1005, '4': 1, '5': 11, '6': '.protowire.GetBlockTemplateRequestMessage', '9': 0, '10': 'getBlockTemplateRequest'},
    {'1': 'notifyBlockAddedRequest', '3': 1007, '4': 1, '5': 11, '6': '.protowire.NotifyBlockAddedRequestMessage', '9': 0, '10': 'notifyBlockAddedRequest'},
    {'1': 'getPeerAddressesRequest', '3': 1010, '4': 1, '5': 11, '6': '.protowire.GetPeerAddressesRequestMessage', '9': 0, '10': 'getPeerAddressesRequest'},
    {'1': 'GetSinkRequest', '3': 1012, '4': 1, '5': 11, '6': '.protowire.GetSinkRequestMessage', '9': 0, '10': 'GetSinkRequest'},
    {'1': 'getMempoolEntryRequest', '3': 1014, '4': 1, '5': 11, '6': '.protowire.GetMempoolEntryRequestMessage', '9': 0, '10': 'getMempoolEntryRequest'},
    {'1': 'getConnectedPeerInfoRequest', '3': 1016, '4': 1, '5': 11, '6': '.protowire.GetConnectedPeerInfoRequestMessage', '9': 0, '10': 'getConnectedPeerInfoRequest'},
    {'1': 'addPeerRequest', '3': 1018, '4': 1, '5': 11, '6': '.protowire.AddPeerRequestMessage', '9': 0, '10': 'addPeerRequest'},
    {'1': 'submitTransactionRequest', '3': 1020, '4': 1, '5': 11, '6': '.protowire.SubmitTransactionRequestMessage', '9': 0, '10': 'submitTransactionRequest'},
    {'1': 'notifyVirtualChainChangedRequest', '3': 1022, '4': 1, '5': 11, '6': '.protowire.NotifyVirtualChainChangedRequestMessage', '9': 0, '10': 'notifyVirtualChainChangedRequest'},
    {'1': 'getBlockRequest', '3': 1025, '4': 1, '5': 11, '6': '.protowire.GetBlockRequestMessage', '9': 0, '10': 'getBlockRequest'},
    {'1': 'getSubnetworkRequest', '3': 1027, '4': 1, '5': 11, '6': '.protowire.GetSubnetworkRequestMessage', '9': 0, '10': 'getSubnetworkRequest'},
    {'1': 'getVirtualChainFromBlockRequest', '3': 1029, '4': 1, '5': 11, '6': '.protowire.GetVirtualChainFromBlockRequestMessage', '9': 0, '10': 'getVirtualChainFromBlockRequest'},
    {'1': 'getBlocksRequest', '3': 1031, '4': 1, '5': 11, '6': '.protowire.GetBlocksRequestMessage', '9': 0, '10': 'getBlocksRequest'},
    {'1': 'getBlockCountRequest', '3': 1033, '4': 1, '5': 11, '6': '.protowire.GetBlockCountRequestMessage', '9': 0, '10': 'getBlockCountRequest'},
    {'1': 'getBlockDagInfoRequest', '3': 1035, '4': 1, '5': 11, '6': '.protowire.GetBlockDagInfoRequestMessage', '9': 0, '10': 'getBlockDagInfoRequest'},
    {'1': 'resolveFinalityConflictRequest', '3': 1037, '4': 1, '5': 11, '6': '.protowire.ResolveFinalityConflictRequestMessage', '9': 0, '10': 'resolveFinalityConflictRequest'},
    {'1': 'notifyFinalityConflictRequest', '3': 1039, '4': 1, '5': 11, '6': '.protowire.NotifyFinalityConflictRequestMessage', '9': 0, '10': 'notifyFinalityConflictRequest'},
    {'1': 'getMempoolEntriesRequest', '3': 1043, '4': 1, '5': 11, '6': '.protowire.GetMempoolEntriesRequestMessage', '9': 0, '10': 'getMempoolEntriesRequest'},
    {'1': 'shutdownRequest', '3': 1045, '4': 1, '5': 11, '6': '.protowire.ShutdownRequestMessage', '9': 0, '10': 'shutdownRequest'},
    {'1': 'getHeadersRequest', '3': 1047, '4': 1, '5': 11, '6': '.protowire.GetHeadersRequestMessage', '9': 0, '10': 'getHeadersRequest'},
    {'1': 'notifyUtxosChangedRequest', '3': 1049, '4': 1, '5': 11, '6': '.protowire.NotifyUtxosChangedRequestMessage', '9': 0, '10': 'notifyUtxosChangedRequest'},
    {'1': 'getUtxosByAddressesRequest', '3': 1052, '4': 1, '5': 11, '6': '.protowire.GetUtxosByAddressesRequestMessage', '9': 0, '10': 'getUtxosByAddressesRequest'},
    {'1': 'getSinkBlueScoreRequest', '3': 1054, '4': 1, '5': 11, '6': '.protowire.GetSinkBlueScoreRequestMessage', '9': 0, '10': 'getSinkBlueScoreRequest'},
    {'1': 'notifySinkBlueScoreChangedRequest', '3': 1056, '4': 1, '5': 11, '6': '.protowire.NotifySinkBlueScoreChangedRequestMessage', '9': 0, '10': 'notifySinkBlueScoreChangedRequest'},
    {'1': 'banRequest', '3': 1059, '4': 1, '5': 11, '6': '.protowire.BanRequestMessage', '9': 0, '10': 'banRequest'},
    {'1': 'unbanRequest', '3': 1061, '4': 1, '5': 11, '6': '.protowire.UnbanRequestMessage', '9': 0, '10': 'unbanRequest'},
    {'1': 'getInfoRequest', '3': 1063, '4': 1, '5': 11, '6': '.protowire.GetInfoRequestMessage', '9': 0, '10': 'getInfoRequest'},
    {'1': 'stopNotifyingUtxosChangedRequest', '3': 1065, '4': 1, '5': 11, '6': '.protowire.StopNotifyingUtxosChangedRequestMessage', '9': 0, '10': 'stopNotifyingUtxosChangedRequest'},
    {'1': 'notifyPruningPointUtxoSetOverrideRequest', '3': 1067, '4': 1, '5': 11, '6': '.protowire.NotifyPruningPointUtxoSetOverrideRequestMessage', '9': 0, '10': 'notifyPruningPointUtxoSetOverrideRequest'},
    {'1': 'stopNotifyingPruningPointUtxoSetOverrideRequest', '3': 1070, '4': 1, '5': 11, '6': '.protowire.StopNotifyingPruningPointUtxoSetOverrideRequestMessage', '9': 0, '10': 'stopNotifyingPruningPointUtxoSetOverrideRequest'},
    {'1': 'estimateNetworkHashesPerSecondRequest', '3': 1072, '4': 1, '5': 11, '6': '.protowire.EstimateNetworkHashesPerSecondRequestMessage', '9': 0, '10': 'estimateNetworkHashesPerSecondRequest'},
    {'1': 'notifyVirtualDaaScoreChangedRequest', '3': 1074, '4': 1, '5': 11, '6': '.protowire.NotifyVirtualDaaScoreChangedRequestMessage', '9': 0, '10': 'notifyVirtualDaaScoreChangedRequest'},
    {'1': 'getBalanceByAddressRequest', '3': 1077, '4': 1, '5': 11, '6': '.protowire.GetBalanceByAddressRequestMessage', '9': 0, '10': 'getBalanceByAddressRequest'},
    {'1': 'getBalancesByAddressesRequest', '3': 1079, '4': 1, '5': 11, '6': '.protowire.GetBalancesByAddressesRequestMessage', '9': 0, '10': 'getBalancesByAddressesRequest'},
    {'1': 'notifyNewBlockTemplateRequest', '3': 1081, '4': 1, '5': 11, '6': '.protowire.NotifyNewBlockTemplateRequestMessage', '9': 0, '10': 'notifyNewBlockTemplateRequest'},
    {'1': 'getMempoolEntriesByAddressesRequest', '3': 1084, '4': 1, '5': 11, '6': '.protowire.GetMempoolEntriesByAddressesRequestMessage', '9': 0, '10': 'getMempoolEntriesByAddressesRequest'},
    {'1': 'getCoinSupplyRequest', '3': 1086, '4': 1, '5': 11, '6': '.protowire.GetCoinSupplyRequestMessage', '9': 0, '10': 'getCoinSupplyRequest'},
    {'1': 'pingRequest', '3': 1088, '4': 1, '5': 11, '6': '.protowire.PingRequestMessage', '9': 0, '10': 'pingRequest'},
    {'1': 'getMetricsRequest', '3': 1090, '4': 1, '5': 11, '6': '.protowire.GetMetricsRequestMessage', '9': 0, '10': 'getMetricsRequest'},
    {'1': 'getServerInfoRequest', '3': 1092, '4': 1, '5': 11, '6': '.protowire.GetServerInfoRequestMessage', '9': 0, '10': 'getServerInfoRequest'},
    {'1': 'getSyncStatusRequest', '3': 1094, '4': 1, '5': 11, '6': '.protowire.GetSyncStatusRequestMessage', '9': 0, '10': 'getSyncStatusRequest'},
    {'1': 'getDaaScoreTimestampEstimateRequest', '3': 1096, '4': 1, '5': 11, '6': '.protowire.GetDaaScoreTimestampEstimateRequestMessage', '9': 0, '10': 'getDaaScoreTimestampEstimateRequest'},
    {'1': 'submitTransactionReplacementRequest', '3': 1100, '4': 1, '5': 11, '6': '.protowire.SubmitTransactionReplacementRequestMessage', '9': 0, '10': 'submitTransactionReplacementRequest'},
    {'1': 'getConnectionsRequest', '3': 1102, '4': 1, '5': 11, '6': '.protowire.GetConnectionsRequestMessage', '9': 0, '10': 'getConnectionsRequest'},
    {'1': 'getSystemInfoRequest', '3': 1104, '4': 1, '5': 11, '6': '.protowire.GetSystemInfoRequestMessage', '9': 0, '10': 'getSystemInfoRequest'},
    {'1': 'getFeeEstimateRequest', '3': 1106, '4': 1, '5': 11, '6': '.protowire.GetFeeEstimateRequestMessage', '9': 0, '10': 'getFeeEstimateRequest'},
    {'1': 'getFeeEstimateExperimentalRequest', '3': 1108, '4': 1, '5': 11, '6': '.protowire.GetFeeEstimateExperimentalRequestMessage', '9': 0, '10': 'getFeeEstimateExperimentalRequest'},
    {'1': 'getCurrentBlockColorRequest', '3': 1110, '4': 1, '5': 11, '6': '.protowire.GetCurrentBlockColorRequestMessage', '9': 0, '10': 'getCurrentBlockColorRequest'},
  ],
  '8': [
    {'1': 'payload'},
  ],
};

/// Descriptor for `KaspadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kaspadRequestDescriptor = $convert.base64Decode(
    'Cg1LYXNwYWRSZXF1ZXN0Eg4KAmlkGGUgASgEUgJpZBJpChhnZXRDdXJyZW50TmV0d29ya1JlcX'
    'Vlc3QY6QcgASgLMioucHJvdG93aXJlLkdldEN1cnJlbnROZXR3b3JrUmVxdWVzdE1lc3NhZ2VI'
    'AFIYZ2V0Q3VycmVudE5ldHdvcmtSZXF1ZXN0ElcKEnN1Ym1pdEJsb2NrUmVxdWVzdBjrByABKA'
    'syJC5wcm90b3dpcmUuU3VibWl0QmxvY2tSZXF1ZXN0TWVzc2FnZUgAUhJzdWJtaXRCbG9ja1Jl'
    'cXVlc3QSZgoXZ2V0QmxvY2tUZW1wbGF0ZVJlcXVlc3QY7QcgASgLMikucHJvdG93aXJlLkdldE'
    'Jsb2NrVGVtcGxhdGVSZXF1ZXN0TWVzc2FnZUgAUhdnZXRCbG9ja1RlbXBsYXRlUmVxdWVzdBJm'
    'Chdub3RpZnlCbG9ja0FkZGVkUmVxdWVzdBjvByABKAsyKS5wcm90b3dpcmUuTm90aWZ5QmxvY2'
    'tBZGRlZFJlcXVlc3RNZXNzYWdlSABSF25vdGlmeUJsb2NrQWRkZWRSZXF1ZXN0EmYKF2dldFBl'
    'ZXJBZGRyZXNzZXNSZXF1ZXN0GPIHIAEoCzIpLnByb3Rvd2lyZS5HZXRQZWVyQWRkcmVzc2VzUm'
    'VxdWVzdE1lc3NhZ2VIAFIXZ2V0UGVlckFkZHJlc3Nlc1JlcXVlc3QSSwoOR2V0U2lua1JlcXVl'
    'c3QY9AcgASgLMiAucHJvdG93aXJlLkdldFNpbmtSZXF1ZXN0TWVzc2FnZUgAUg5HZXRTaW5rUm'
    'VxdWVzdBJjChZnZXRNZW1wb29sRW50cnlSZXF1ZXN0GPYHIAEoCzIoLnByb3Rvd2lyZS5HZXRN'
    'ZW1wb29sRW50cnlSZXF1ZXN0TWVzc2FnZUgAUhZnZXRNZW1wb29sRW50cnlSZXF1ZXN0EnIKG2'
    'dldENvbm5lY3RlZFBlZXJJbmZvUmVxdWVzdBj4ByABKAsyLS5wcm90b3dpcmUuR2V0Q29ubmVj'
    'dGVkUGVlckluZm9SZXF1ZXN0TWVzc2FnZUgAUhtnZXRDb25uZWN0ZWRQZWVySW5mb1JlcXVlc3'
    'QSSwoOYWRkUGVlclJlcXVlc3QY+gcgASgLMiAucHJvdG93aXJlLkFkZFBlZXJSZXF1ZXN0TWVz'
    'c2FnZUgAUg5hZGRQZWVyUmVxdWVzdBJpChhzdWJtaXRUcmFuc2FjdGlvblJlcXVlc3QY/AcgAS'
    'gLMioucHJvdG93aXJlLlN1Ym1pdFRyYW5zYWN0aW9uUmVxdWVzdE1lc3NhZ2VIAFIYc3VibWl0'
    'VHJhbnNhY3Rpb25SZXF1ZXN0EoEBCiBub3RpZnlWaXJ0dWFsQ2hhaW5DaGFuZ2VkUmVxdWVzdB'
    'j+ByABKAsyMi5wcm90b3dpcmUuTm90aWZ5VmlydHVhbENoYWluQ2hhbmdlZFJlcXVlc3RNZXNz'
    'YWdlSABSIG5vdGlmeVZpcnR1YWxDaGFpbkNoYW5nZWRSZXF1ZXN0Ek4KD2dldEJsb2NrUmVxdW'
    'VzdBiBCCABKAsyIS5wcm90b3dpcmUuR2V0QmxvY2tSZXF1ZXN0TWVzc2FnZUgAUg9nZXRCbG9j'
    'a1JlcXVlc3QSXQoUZ2V0U3VibmV0d29ya1JlcXVlc3QYgwggASgLMiYucHJvdG93aXJlLkdldF'
    'N1Ym5ldHdvcmtSZXF1ZXN0TWVzc2FnZUgAUhRnZXRTdWJuZXR3b3JrUmVxdWVzdBJ+Ch9nZXRW'
    'aXJ0dWFsQ2hhaW5Gcm9tQmxvY2tSZXF1ZXN0GIUIIAEoCzIxLnByb3Rvd2lyZS5HZXRWaXJ0dW'
    'FsQ2hhaW5Gcm9tQmxvY2tSZXF1ZXN0TWVzc2FnZUgAUh9nZXRWaXJ0dWFsQ2hhaW5Gcm9tQmxv'
    'Y2tSZXF1ZXN0ElEKEGdldEJsb2Nrc1JlcXVlc3QYhwggASgLMiIucHJvdG93aXJlLkdldEJsb2'
    'Nrc1JlcXVlc3RNZXNzYWdlSABSEGdldEJsb2Nrc1JlcXVlc3QSXQoUZ2V0QmxvY2tDb3VudFJl'
    'cXVlc3QYiQggASgLMiYucHJvdG93aXJlLkdldEJsb2NrQ291bnRSZXF1ZXN0TWVzc2FnZUgAUh'
    'RnZXRCbG9ja0NvdW50UmVxdWVzdBJjChZnZXRCbG9ja0RhZ0luZm9SZXF1ZXN0GIsIIAEoCzIo'
    'LnByb3Rvd2lyZS5HZXRCbG9ja0RhZ0luZm9SZXF1ZXN0TWVzc2FnZUgAUhZnZXRCbG9ja0RhZ0'
    'luZm9SZXF1ZXN0EnsKHnJlc29sdmVGaW5hbGl0eUNvbmZsaWN0UmVxdWVzdBiNCCABKAsyMC5w'
    'cm90b3dpcmUuUmVzb2x2ZUZpbmFsaXR5Q29uZmxpY3RSZXF1ZXN0TWVzc2FnZUgAUh5yZXNvbH'
    'ZlRmluYWxpdHlDb25mbGljdFJlcXVlc3QSeAodbm90aWZ5RmluYWxpdHlDb25mbGljdFJlcXVl'
    'c3QYjwggASgLMi8ucHJvdG93aXJlLk5vdGlmeUZpbmFsaXR5Q29uZmxpY3RSZXF1ZXN0TWVzc2'
    'FnZUgAUh1ub3RpZnlGaW5hbGl0eUNvbmZsaWN0UmVxdWVzdBJpChhnZXRNZW1wb29sRW50cmll'
    'c1JlcXVlc3QYkwggASgLMioucHJvdG93aXJlLkdldE1lbXBvb2xFbnRyaWVzUmVxdWVzdE1lc3'
    'NhZ2VIAFIYZ2V0TWVtcG9vbEVudHJpZXNSZXF1ZXN0Ek4KD3NodXRkb3duUmVxdWVzdBiVCCAB'
    'KAsyIS5wcm90b3dpcmUuU2h1dGRvd25SZXF1ZXN0TWVzc2FnZUgAUg9zaHV0ZG93blJlcXVlc3'
    'QSVAoRZ2V0SGVhZGVyc1JlcXVlc3QYlwggASgLMiMucHJvdG93aXJlLkdldEhlYWRlcnNSZXF1'
    'ZXN0TWVzc2FnZUgAUhFnZXRIZWFkZXJzUmVxdWVzdBJsChlub3RpZnlVdHhvc0NoYW5nZWRSZX'
    'F1ZXN0GJkIIAEoCzIrLnByb3Rvd2lyZS5Ob3RpZnlVdHhvc0NoYW5nZWRSZXF1ZXN0TWVzc2Fn'
    'ZUgAUhlub3RpZnlVdHhvc0NoYW5nZWRSZXF1ZXN0Em8KGmdldFV0eG9zQnlBZGRyZXNzZXNSZX'
    'F1ZXN0GJwIIAEoCzIsLnByb3Rvd2lyZS5HZXRVdHhvc0J5QWRkcmVzc2VzUmVxdWVzdE1lc3Nh'
    'Z2VIAFIaZ2V0VXR4b3NCeUFkZHJlc3Nlc1JlcXVlc3QSZgoXZ2V0U2lua0JsdWVTY29yZVJlcX'
    'Vlc3QYngggASgLMikucHJvdG93aXJlLkdldFNpbmtCbHVlU2NvcmVSZXF1ZXN0TWVzc2FnZUgA'
    'UhdnZXRTaW5rQmx1ZVNjb3JlUmVxdWVzdBKEAQohbm90aWZ5U2lua0JsdWVTY29yZUNoYW5nZW'
    'RSZXF1ZXN0GKAIIAEoCzIzLnByb3Rvd2lyZS5Ob3RpZnlTaW5rQmx1ZVNjb3JlQ2hhbmdlZFJl'
    'cXVlc3RNZXNzYWdlSABSIW5vdGlmeVNpbmtCbHVlU2NvcmVDaGFuZ2VkUmVxdWVzdBI/CgpiYW'
    '5SZXF1ZXN0GKMIIAEoCzIcLnByb3Rvd2lyZS5CYW5SZXF1ZXN0TWVzc2FnZUgAUgpiYW5SZXF1'
    'ZXN0EkUKDHVuYmFuUmVxdWVzdBilCCABKAsyHi5wcm90b3dpcmUuVW5iYW5SZXF1ZXN0TWVzc2'
    'FnZUgAUgx1bmJhblJlcXVlc3QSSwoOZ2V0SW5mb1JlcXVlc3QYpwggASgLMiAucHJvdG93aXJl'
    'LkdldEluZm9SZXF1ZXN0TWVzc2FnZUgAUg5nZXRJbmZvUmVxdWVzdBKBAQogc3RvcE5vdGlmeW'
    'luZ1V0eG9zQ2hhbmdlZFJlcXVlc3QYqQggASgLMjIucHJvdG93aXJlLlN0b3BOb3RpZnlpbmdV'
    'dHhvc0NoYW5nZWRSZXF1ZXN0TWVzc2FnZUgAUiBzdG9wTm90aWZ5aW5nVXR4b3NDaGFuZ2VkUm'
    'VxdWVzdBKZAQoobm90aWZ5UHJ1bmluZ1BvaW50VXR4b1NldE92ZXJyaWRlUmVxdWVzdBirCCAB'
    'KAsyOi5wcm90b3dpcmUuTm90aWZ5UHJ1bmluZ1BvaW50VXR4b1NldE92ZXJyaWRlUmVxdWVzdE'
    '1lc3NhZ2VIAFIobm90aWZ5UHJ1bmluZ1BvaW50VXR4b1NldE92ZXJyaWRlUmVxdWVzdBKuAQov'
    'c3RvcE5vdGlmeWluZ1BydW5pbmdQb2ludFV0eG9TZXRPdmVycmlkZVJlcXVlc3QYrgggASgLMk'
    'EucHJvdG93aXJlLlN0b3BOb3RpZnlpbmdQcnVuaW5nUG9pbnRVdHhvU2V0T3ZlcnJpZGVSZXF1'
    'ZXN0TWVzc2FnZUgAUi9zdG9wTm90aWZ5aW5nUHJ1bmluZ1BvaW50VXR4b1NldE92ZXJyaWRlUm'
    'VxdWVzdBKQAQolZXN0aW1hdGVOZXR3b3JrSGFzaGVzUGVyU2Vjb25kUmVxdWVzdBiwCCABKAsy'
    'Ny5wcm90b3dpcmUuRXN0aW1hdGVOZXR3b3JrSGFzaGVzUGVyU2Vjb25kUmVxdWVzdE1lc3NhZ2'
    'VIAFIlZXN0aW1hdGVOZXR3b3JrSGFzaGVzUGVyU2Vjb25kUmVxdWVzdBKKAQojbm90aWZ5Vmly'
    'dHVhbERhYVNjb3JlQ2hhbmdlZFJlcXVlc3QYsgggASgLMjUucHJvdG93aXJlLk5vdGlmeVZpcn'
    'R1YWxEYWFTY29yZUNoYW5nZWRSZXF1ZXN0TWVzc2FnZUgAUiNub3RpZnlWaXJ0dWFsRGFhU2Nv'
    'cmVDaGFuZ2VkUmVxdWVzdBJvChpnZXRCYWxhbmNlQnlBZGRyZXNzUmVxdWVzdBi1CCABKAsyLC'
    '5wcm90b3dpcmUuR2V0QmFsYW5jZUJ5QWRkcmVzc1JlcXVlc3RNZXNzYWdlSABSGmdldEJhbGFu'
    'Y2VCeUFkZHJlc3NSZXF1ZXN0EngKHWdldEJhbGFuY2VzQnlBZGRyZXNzZXNSZXF1ZXN0GLcIIA'
    'EoCzIvLnByb3Rvd2lyZS5HZXRCYWxhbmNlc0J5QWRkcmVzc2VzUmVxdWVzdE1lc3NhZ2VIAFId'
    'Z2V0QmFsYW5jZXNCeUFkZHJlc3Nlc1JlcXVlc3QSeAodbm90aWZ5TmV3QmxvY2tUZW1wbGF0ZV'
    'JlcXVlc3QYuQggASgLMi8ucHJvdG93aXJlLk5vdGlmeU5ld0Jsb2NrVGVtcGxhdGVSZXF1ZXN0'
    'TWVzc2FnZUgAUh1ub3RpZnlOZXdCbG9ja1RlbXBsYXRlUmVxdWVzdBKKAQojZ2V0TWVtcG9vbE'
    'VudHJpZXNCeUFkZHJlc3Nlc1JlcXVlc3QYvAggASgLMjUucHJvdG93aXJlLkdldE1lbXBvb2xF'
    'bnRyaWVzQnlBZGRyZXNzZXNSZXF1ZXN0TWVzc2FnZUgAUiNnZXRNZW1wb29sRW50cmllc0J5QW'
    'RkcmVzc2VzUmVxdWVzdBJdChRnZXRDb2luU3VwcGx5UmVxdWVzdBi+CCABKAsyJi5wcm90b3dp'
    'cmUuR2V0Q29pblN1cHBseVJlcXVlc3RNZXNzYWdlSABSFGdldENvaW5TdXBwbHlSZXF1ZXN0Ek'
    'IKC3BpbmdSZXF1ZXN0GMAIIAEoCzIdLnByb3Rvd2lyZS5QaW5nUmVxdWVzdE1lc3NhZ2VIAFIL'
    'cGluZ1JlcXVlc3QSVAoRZ2V0TWV0cmljc1JlcXVlc3QYwgggASgLMiMucHJvdG93aXJlLkdldE'
    '1ldHJpY3NSZXF1ZXN0TWVzc2FnZUgAUhFnZXRNZXRyaWNzUmVxdWVzdBJdChRnZXRTZXJ2ZXJJ'
    'bmZvUmVxdWVzdBjECCABKAsyJi5wcm90b3dpcmUuR2V0U2VydmVySW5mb1JlcXVlc3RNZXNzYW'
    'dlSABSFGdldFNlcnZlckluZm9SZXF1ZXN0El0KFGdldFN5bmNTdGF0dXNSZXF1ZXN0GMYIIAEo'
    'CzImLnByb3Rvd2lyZS5HZXRTeW5jU3RhdHVzUmVxdWVzdE1lc3NhZ2VIAFIUZ2V0U3luY1N0YX'
    'R1c1JlcXVlc3QSigEKI2dldERhYVNjb3JlVGltZXN0YW1wRXN0aW1hdGVSZXF1ZXN0GMgIIAEo'
    'CzI1LnByb3Rvd2lyZS5HZXREYWFTY29yZVRpbWVzdGFtcEVzdGltYXRlUmVxdWVzdE1lc3NhZ2'
    'VIAFIjZ2V0RGFhU2NvcmVUaW1lc3RhbXBFc3RpbWF0ZVJlcXVlc3QSigEKI3N1Ym1pdFRyYW5z'
    'YWN0aW9uUmVwbGFjZW1lbnRSZXF1ZXN0GMwIIAEoCzI1LnByb3Rvd2lyZS5TdWJtaXRUcmFuc2'
    'FjdGlvblJlcGxhY2VtZW50UmVxdWVzdE1lc3NhZ2VIAFIjc3VibWl0VHJhbnNhY3Rpb25SZXBs'
    'YWNlbWVudFJlcXVlc3QSYAoVZ2V0Q29ubmVjdGlvbnNSZXF1ZXN0GM4IIAEoCzInLnByb3Rvd2'
    'lyZS5HZXRDb25uZWN0aW9uc1JlcXVlc3RNZXNzYWdlSABSFWdldENvbm5lY3Rpb25zUmVxdWVz'
    'dBJdChRnZXRTeXN0ZW1JbmZvUmVxdWVzdBjQCCABKAsyJi5wcm90b3dpcmUuR2V0U3lzdGVtSW'
    '5mb1JlcXVlc3RNZXNzYWdlSABSFGdldFN5c3RlbUluZm9SZXF1ZXN0EmAKFWdldEZlZUVzdGlt'
    'YXRlUmVxdWVzdBjSCCABKAsyJy5wcm90b3dpcmUuR2V0RmVlRXN0aW1hdGVSZXF1ZXN0TWVzc2'
    'FnZUgAUhVnZXRGZWVFc3RpbWF0ZVJlcXVlc3QShAEKIWdldEZlZUVzdGltYXRlRXhwZXJpbWVu'
    'dGFsUmVxdWVzdBjUCCABKAsyMy5wcm90b3dpcmUuR2V0RmVlRXN0aW1hdGVFeHBlcmltZW50YW'
    'xSZXF1ZXN0TWVzc2FnZUgAUiFnZXRGZWVFc3RpbWF0ZUV4cGVyaW1lbnRhbFJlcXVlc3QScgob'
    'Z2V0Q3VycmVudEJsb2NrQ29sb3JSZXF1ZXN0GNYIIAEoCzItLnByb3Rvd2lyZS5HZXRDdXJyZW'
    '50QmxvY2tDb2xvclJlcXVlc3RNZXNzYWdlSABSG2dldEN1cnJlbnRCbG9ja0NvbG9yUmVxdWVz'
    'dEIJCgdwYXlsb2Fk');

@$core.Deprecated('Use kaspadResponseDescriptor instead')
const KaspadResponse$json = {
  '1': 'KaspadResponse',
  '2': [
    {'1': 'id', '3': 101, '4': 1, '5': 4, '10': 'id'},
    {'1': 'getCurrentNetworkResponse', '3': 1002, '4': 1, '5': 11, '6': '.protowire.GetCurrentNetworkResponseMessage', '9': 0, '10': 'getCurrentNetworkResponse'},
    {'1': 'submitBlockResponse', '3': 1004, '4': 1, '5': 11, '6': '.protowire.SubmitBlockResponseMessage', '9': 0, '10': 'submitBlockResponse'},
    {'1': 'getBlockTemplateResponse', '3': 1006, '4': 1, '5': 11, '6': '.protowire.GetBlockTemplateResponseMessage', '9': 0, '10': 'getBlockTemplateResponse'},
    {'1': 'notifyBlockAddedResponse', '3': 1008, '4': 1, '5': 11, '6': '.protowire.NotifyBlockAddedResponseMessage', '9': 0, '10': 'notifyBlockAddedResponse'},
    {'1': 'blockAddedNotification', '3': 1009, '4': 1, '5': 11, '6': '.protowire.BlockAddedNotificationMessage', '9': 0, '10': 'blockAddedNotification'},
    {'1': 'getPeerAddressesResponse', '3': 1011, '4': 1, '5': 11, '6': '.protowire.GetPeerAddressesResponseMessage', '9': 0, '10': 'getPeerAddressesResponse'},
    {'1': 'GetSinkResponse', '3': 1013, '4': 1, '5': 11, '6': '.protowire.GetSinkResponseMessage', '9': 0, '10': 'GetSinkResponse'},
    {'1': 'getMempoolEntryResponse', '3': 1015, '4': 1, '5': 11, '6': '.protowire.GetMempoolEntryResponseMessage', '9': 0, '10': 'getMempoolEntryResponse'},
    {'1': 'getConnectedPeerInfoResponse', '3': 1017, '4': 1, '5': 11, '6': '.protowire.GetConnectedPeerInfoResponseMessage', '9': 0, '10': 'getConnectedPeerInfoResponse'},
    {'1': 'addPeerResponse', '3': 1019, '4': 1, '5': 11, '6': '.protowire.AddPeerResponseMessage', '9': 0, '10': 'addPeerResponse'},
    {'1': 'submitTransactionResponse', '3': 1021, '4': 1, '5': 11, '6': '.protowire.SubmitTransactionResponseMessage', '9': 0, '10': 'submitTransactionResponse'},
    {'1': 'notifyVirtualChainChangedResponse', '3': 1023, '4': 1, '5': 11, '6': '.protowire.NotifyVirtualChainChangedResponseMessage', '9': 0, '10': 'notifyVirtualChainChangedResponse'},
    {'1': 'virtualChainChangedNotification', '3': 1024, '4': 1, '5': 11, '6': '.protowire.VirtualChainChangedNotificationMessage', '9': 0, '10': 'virtualChainChangedNotification'},
    {'1': 'getBlockResponse', '3': 1026, '4': 1, '5': 11, '6': '.protowire.GetBlockResponseMessage', '9': 0, '10': 'getBlockResponse'},
    {'1': 'getSubnetworkResponse', '3': 1028, '4': 1, '5': 11, '6': '.protowire.GetSubnetworkResponseMessage', '9': 0, '10': 'getSubnetworkResponse'},
    {'1': 'getVirtualChainFromBlockResponse', '3': 1030, '4': 1, '5': 11, '6': '.protowire.GetVirtualChainFromBlockResponseMessage', '9': 0, '10': 'getVirtualChainFromBlockResponse'},
    {'1': 'getBlocksResponse', '3': 1032, '4': 1, '5': 11, '6': '.protowire.GetBlocksResponseMessage', '9': 0, '10': 'getBlocksResponse'},
    {'1': 'getBlockCountResponse', '3': 1034, '4': 1, '5': 11, '6': '.protowire.GetBlockCountResponseMessage', '9': 0, '10': 'getBlockCountResponse'},
    {'1': 'getBlockDagInfoResponse', '3': 1036, '4': 1, '5': 11, '6': '.protowire.GetBlockDagInfoResponseMessage', '9': 0, '10': 'getBlockDagInfoResponse'},
    {'1': 'resolveFinalityConflictResponse', '3': 1038, '4': 1, '5': 11, '6': '.protowire.ResolveFinalityConflictResponseMessage', '9': 0, '10': 'resolveFinalityConflictResponse'},
    {'1': 'notifyFinalityConflictResponse', '3': 1040, '4': 1, '5': 11, '6': '.protowire.NotifyFinalityConflictResponseMessage', '9': 0, '10': 'notifyFinalityConflictResponse'},
    {'1': 'finalityConflictNotification', '3': 1041, '4': 1, '5': 11, '6': '.protowire.FinalityConflictNotificationMessage', '9': 0, '10': 'finalityConflictNotification'},
    {'1': 'finalityConflictResolvedNotification', '3': 1042, '4': 1, '5': 11, '6': '.protowire.FinalityConflictResolvedNotificationMessage', '9': 0, '10': 'finalityConflictResolvedNotification'},
    {'1': 'getMempoolEntriesResponse', '3': 1044, '4': 1, '5': 11, '6': '.protowire.GetMempoolEntriesResponseMessage', '9': 0, '10': 'getMempoolEntriesResponse'},
    {'1': 'shutdownResponse', '3': 1046, '4': 1, '5': 11, '6': '.protowire.ShutdownResponseMessage', '9': 0, '10': 'shutdownResponse'},
    {'1': 'getHeadersResponse', '3': 1048, '4': 1, '5': 11, '6': '.protowire.GetHeadersResponseMessage', '9': 0, '10': 'getHeadersResponse'},
    {'1': 'notifyUtxosChangedResponse', '3': 1050, '4': 1, '5': 11, '6': '.protowire.NotifyUtxosChangedResponseMessage', '9': 0, '10': 'notifyUtxosChangedResponse'},
    {'1': 'utxosChangedNotification', '3': 1051, '4': 1, '5': 11, '6': '.protowire.UtxosChangedNotificationMessage', '9': 0, '10': 'utxosChangedNotification'},
    {'1': 'getUtxosByAddressesResponse', '3': 1053, '4': 1, '5': 11, '6': '.protowire.GetUtxosByAddressesResponseMessage', '9': 0, '10': 'getUtxosByAddressesResponse'},
    {'1': 'getSinkBlueScoreResponse', '3': 1055, '4': 1, '5': 11, '6': '.protowire.GetSinkBlueScoreResponseMessage', '9': 0, '10': 'getSinkBlueScoreResponse'},
    {'1': 'notifySinkBlueScoreChangedResponse', '3': 1057, '4': 1, '5': 11, '6': '.protowire.NotifySinkBlueScoreChangedResponseMessage', '9': 0, '10': 'notifySinkBlueScoreChangedResponse'},
    {'1': 'sinkBlueScoreChangedNotification', '3': 1058, '4': 1, '5': 11, '6': '.protowire.SinkBlueScoreChangedNotificationMessage', '9': 0, '10': 'sinkBlueScoreChangedNotification'},
    {'1': 'banResponse', '3': 1060, '4': 1, '5': 11, '6': '.protowire.BanResponseMessage', '9': 0, '10': 'banResponse'},
    {'1': 'unbanResponse', '3': 1062, '4': 1, '5': 11, '6': '.protowire.UnbanResponseMessage', '9': 0, '10': 'unbanResponse'},
    {'1': 'getInfoResponse', '3': 1064, '4': 1, '5': 11, '6': '.protowire.GetInfoResponseMessage', '9': 0, '10': 'getInfoResponse'},
    {'1': 'stopNotifyingUtxosChangedResponse', '3': 1066, '4': 1, '5': 11, '6': '.protowire.StopNotifyingUtxosChangedResponseMessage', '9': 0, '10': 'stopNotifyingUtxosChangedResponse'},
    {'1': 'notifyPruningPointUtxoSetOverrideResponse', '3': 1068, '4': 1, '5': 11, '6': '.protowire.NotifyPruningPointUtxoSetOverrideResponseMessage', '9': 0, '10': 'notifyPruningPointUtxoSetOverrideResponse'},
    {'1': 'pruningPointUtxoSetOverrideNotification', '3': 1069, '4': 1, '5': 11, '6': '.protowire.PruningPointUtxoSetOverrideNotificationMessage', '9': 0, '10': 'pruningPointUtxoSetOverrideNotification'},
    {'1': 'stopNotifyingPruningPointUtxoSetOverrideResponse', '3': 1071, '4': 1, '5': 11, '6': '.protowire.StopNotifyingPruningPointUtxoSetOverrideResponseMessage', '9': 0, '10': 'stopNotifyingPruningPointUtxoSetOverrideResponse'},
    {'1': 'estimateNetworkHashesPerSecondResponse', '3': 1073, '4': 1, '5': 11, '6': '.protowire.EstimateNetworkHashesPerSecondResponseMessage', '9': 0, '10': 'estimateNetworkHashesPerSecondResponse'},
    {'1': 'notifyVirtualDaaScoreChangedResponse', '3': 1075, '4': 1, '5': 11, '6': '.protowire.NotifyVirtualDaaScoreChangedResponseMessage', '9': 0, '10': 'notifyVirtualDaaScoreChangedResponse'},
    {'1': 'virtualDaaScoreChangedNotification', '3': 1076, '4': 1, '5': 11, '6': '.protowire.VirtualDaaScoreChangedNotificationMessage', '9': 0, '10': 'virtualDaaScoreChangedNotification'},
    {'1': 'getBalanceByAddressResponse', '3': 1078, '4': 1, '5': 11, '6': '.protowire.GetBalanceByAddressResponseMessage', '9': 0, '10': 'getBalanceByAddressResponse'},
    {'1': 'getBalancesByAddressesResponse', '3': 1080, '4': 1, '5': 11, '6': '.protowire.GetBalancesByAddressesResponseMessage', '9': 0, '10': 'getBalancesByAddressesResponse'},
    {'1': 'notifyNewBlockTemplateResponse', '3': 1082, '4': 1, '5': 11, '6': '.protowire.NotifyNewBlockTemplateResponseMessage', '9': 0, '10': 'notifyNewBlockTemplateResponse'},
    {'1': 'newBlockTemplateNotification', '3': 1083, '4': 1, '5': 11, '6': '.protowire.NewBlockTemplateNotificationMessage', '9': 0, '10': 'newBlockTemplateNotification'},
    {'1': 'getMempoolEntriesByAddressesResponse', '3': 1085, '4': 1, '5': 11, '6': '.protowire.GetMempoolEntriesByAddressesResponseMessage', '9': 0, '10': 'getMempoolEntriesByAddressesResponse'},
    {'1': 'getCoinSupplyResponse', '3': 1087, '4': 1, '5': 11, '6': '.protowire.GetCoinSupplyResponseMessage', '9': 0, '10': 'getCoinSupplyResponse'},
    {'1': 'pingResponse', '3': 1089, '4': 1, '5': 11, '6': '.protowire.PingResponseMessage', '9': 0, '10': 'pingResponse'},
    {'1': 'getMetricsResponse', '3': 1091, '4': 1, '5': 11, '6': '.protowire.GetMetricsResponseMessage', '9': 0, '10': 'getMetricsResponse'},
    {'1': 'getServerInfoResponse', '3': 1093, '4': 1, '5': 11, '6': '.protowire.GetServerInfoResponseMessage', '9': 0, '10': 'getServerInfoResponse'},
    {'1': 'getSyncStatusResponse', '3': 1095, '4': 1, '5': 11, '6': '.protowire.GetSyncStatusResponseMessage', '9': 0, '10': 'getSyncStatusResponse'},
    {'1': 'getDaaScoreTimestampEstimateResponse', '3': 1097, '4': 1, '5': 11, '6': '.protowire.GetDaaScoreTimestampEstimateResponseMessage', '9': 0, '10': 'getDaaScoreTimestampEstimateResponse'},
    {'1': 'submitTransactionReplacementResponse', '3': 1101, '4': 1, '5': 11, '6': '.protowire.SubmitTransactionReplacementResponseMessage', '9': 0, '10': 'submitTransactionReplacementResponse'},
    {'1': 'getConnectionsResponse', '3': 1103, '4': 1, '5': 11, '6': '.protowire.GetConnectionsResponseMessage', '9': 0, '10': 'getConnectionsResponse'},
    {'1': 'getSystemInfoResponse', '3': 1105, '4': 1, '5': 11, '6': '.protowire.GetSystemInfoResponseMessage', '9': 0, '10': 'getSystemInfoResponse'},
    {'1': 'getFeeEstimateResponse', '3': 1107, '4': 1, '5': 11, '6': '.protowire.GetFeeEstimateResponseMessage', '9': 0, '10': 'getFeeEstimateResponse'},
    {'1': 'getFeeEstimateExperimentalResponse', '3': 1109, '4': 1, '5': 11, '6': '.protowire.GetFeeEstimateExperimentalResponseMessage', '9': 0, '10': 'getFeeEstimateExperimentalResponse'},
    {'1': 'getCurrentBlockColorResponse', '3': 1111, '4': 1, '5': 11, '6': '.protowire.GetCurrentBlockColorResponseMessage', '9': 0, '10': 'getCurrentBlockColorResponse'},
  ],
  '8': [
    {'1': 'payload'},
  ],
};

/// Descriptor for `KaspadResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kaspadResponseDescriptor = $convert.base64Decode(
    'Cg5LYXNwYWRSZXNwb25zZRIOCgJpZBhlIAEoBFICaWQSbAoZZ2V0Q3VycmVudE5ldHdvcmtSZX'
    'Nwb25zZRjqByABKAsyKy5wcm90b3dpcmUuR2V0Q3VycmVudE5ldHdvcmtSZXNwb25zZU1lc3Nh'
    'Z2VIAFIZZ2V0Q3VycmVudE5ldHdvcmtSZXNwb25zZRJaChNzdWJtaXRCbG9ja1Jlc3BvbnNlGO'
    'wHIAEoCzIlLnByb3Rvd2lyZS5TdWJtaXRCbG9ja1Jlc3BvbnNlTWVzc2FnZUgAUhNzdWJtaXRC'
    'bG9ja1Jlc3BvbnNlEmkKGGdldEJsb2NrVGVtcGxhdGVSZXNwb25zZRjuByABKAsyKi5wcm90b3'
    'dpcmUuR2V0QmxvY2tUZW1wbGF0ZVJlc3BvbnNlTWVzc2FnZUgAUhhnZXRCbG9ja1RlbXBsYXRl'
    'UmVzcG9uc2USaQoYbm90aWZ5QmxvY2tBZGRlZFJlc3BvbnNlGPAHIAEoCzIqLnByb3Rvd2lyZS'
    '5Ob3RpZnlCbG9ja0FkZGVkUmVzcG9uc2VNZXNzYWdlSABSGG5vdGlmeUJsb2NrQWRkZWRSZXNw'
    'b25zZRJjChZibG9ja0FkZGVkTm90aWZpY2F0aW9uGPEHIAEoCzIoLnByb3Rvd2lyZS5CbG9ja0'
    'FkZGVkTm90aWZpY2F0aW9uTWVzc2FnZUgAUhZibG9ja0FkZGVkTm90aWZpY2F0aW9uEmkKGGdl'
    'dFBlZXJBZGRyZXNzZXNSZXNwb25zZRjzByABKAsyKi5wcm90b3dpcmUuR2V0UGVlckFkZHJlc3'
    'Nlc1Jlc3BvbnNlTWVzc2FnZUgAUhhnZXRQZWVyQWRkcmVzc2VzUmVzcG9uc2USTgoPR2V0U2lu'
    'a1Jlc3BvbnNlGPUHIAEoCzIhLnByb3Rvd2lyZS5HZXRTaW5rUmVzcG9uc2VNZXNzYWdlSABSD0'
    'dldFNpbmtSZXNwb25zZRJmChdnZXRNZW1wb29sRW50cnlSZXNwb25zZRj3ByABKAsyKS5wcm90'
    'b3dpcmUuR2V0TWVtcG9vbEVudHJ5UmVzcG9uc2VNZXNzYWdlSABSF2dldE1lbXBvb2xFbnRyeV'
    'Jlc3BvbnNlEnUKHGdldENvbm5lY3RlZFBlZXJJbmZvUmVzcG9uc2UY+QcgASgLMi4ucHJvdG93'
    'aXJlLkdldENvbm5lY3RlZFBlZXJJbmZvUmVzcG9uc2VNZXNzYWdlSABSHGdldENvbm5lY3RlZF'
    'BlZXJJbmZvUmVzcG9uc2USTgoPYWRkUGVlclJlc3BvbnNlGPsHIAEoCzIhLnByb3Rvd2lyZS5B'
    'ZGRQZWVyUmVzcG9uc2VNZXNzYWdlSABSD2FkZFBlZXJSZXNwb25zZRJsChlzdWJtaXRUcmFuc2'
    'FjdGlvblJlc3BvbnNlGP0HIAEoCzIrLnByb3Rvd2lyZS5TdWJtaXRUcmFuc2FjdGlvblJlc3Bv'
    'bnNlTWVzc2FnZUgAUhlzdWJtaXRUcmFuc2FjdGlvblJlc3BvbnNlEoQBCiFub3RpZnlWaXJ0dW'
    'FsQ2hhaW5DaGFuZ2VkUmVzcG9uc2UY/wcgASgLMjMucHJvdG93aXJlLk5vdGlmeVZpcnR1YWxD'
    'aGFpbkNoYW5nZWRSZXNwb25zZU1lc3NhZ2VIAFIhbm90aWZ5VmlydHVhbENoYWluQ2hhbmdlZF'
    'Jlc3BvbnNlEn4KH3ZpcnR1YWxDaGFpbkNoYW5nZWROb3RpZmljYXRpb24YgAggASgLMjEucHJv'
    'dG93aXJlLlZpcnR1YWxDaGFpbkNoYW5nZWROb3RpZmljYXRpb25NZXNzYWdlSABSH3ZpcnR1YW'
    'xDaGFpbkNoYW5nZWROb3RpZmljYXRpb24SUQoQZ2V0QmxvY2tSZXNwb25zZRiCCCABKAsyIi5w'
    'cm90b3dpcmUuR2V0QmxvY2tSZXNwb25zZU1lc3NhZ2VIAFIQZ2V0QmxvY2tSZXNwb25zZRJgCh'
    'VnZXRTdWJuZXR3b3JrUmVzcG9uc2UYhAggASgLMicucHJvdG93aXJlLkdldFN1Ym5ldHdvcmtS'
    'ZXNwb25zZU1lc3NhZ2VIAFIVZ2V0U3VibmV0d29ya1Jlc3BvbnNlEoEBCiBnZXRWaXJ0dWFsQ2'
    'hhaW5Gcm9tQmxvY2tSZXNwb25zZRiGCCABKAsyMi5wcm90b3dpcmUuR2V0VmlydHVhbENoYWlu'
    'RnJvbUJsb2NrUmVzcG9uc2VNZXNzYWdlSABSIGdldFZpcnR1YWxDaGFpbkZyb21CbG9ja1Jlc3'
    'BvbnNlElQKEWdldEJsb2Nrc1Jlc3BvbnNlGIgIIAEoCzIjLnByb3Rvd2lyZS5HZXRCbG9ja3NS'
    'ZXNwb25zZU1lc3NhZ2VIAFIRZ2V0QmxvY2tzUmVzcG9uc2USYAoVZ2V0QmxvY2tDb3VudFJlc3'
    'BvbnNlGIoIIAEoCzInLnByb3Rvd2lyZS5HZXRCbG9ja0NvdW50UmVzcG9uc2VNZXNzYWdlSABS'
    'FWdldEJsb2NrQ291bnRSZXNwb25zZRJmChdnZXRCbG9ja0RhZ0luZm9SZXNwb25zZRiMCCABKA'
    'syKS5wcm90b3dpcmUuR2V0QmxvY2tEYWdJbmZvUmVzcG9uc2VNZXNzYWdlSABSF2dldEJsb2Nr'
    'RGFnSW5mb1Jlc3BvbnNlEn4KH3Jlc29sdmVGaW5hbGl0eUNvbmZsaWN0UmVzcG9uc2UYjgggAS'
    'gLMjEucHJvdG93aXJlLlJlc29sdmVGaW5hbGl0eUNvbmZsaWN0UmVzcG9uc2VNZXNzYWdlSABS'
    'H3Jlc29sdmVGaW5hbGl0eUNvbmZsaWN0UmVzcG9uc2USewoebm90aWZ5RmluYWxpdHlDb25mbG'
    'ljdFJlc3BvbnNlGJAIIAEoCzIwLnByb3Rvd2lyZS5Ob3RpZnlGaW5hbGl0eUNvbmZsaWN0UmVz'
    'cG9uc2VNZXNzYWdlSABSHm5vdGlmeUZpbmFsaXR5Q29uZmxpY3RSZXNwb25zZRJ1ChxmaW5hbG'
    'l0eUNvbmZsaWN0Tm90aWZpY2F0aW9uGJEIIAEoCzIuLnByb3Rvd2lyZS5GaW5hbGl0eUNvbmZs'
    'aWN0Tm90aWZpY2F0aW9uTWVzc2FnZUgAUhxmaW5hbGl0eUNvbmZsaWN0Tm90aWZpY2F0aW9uEo'
    '0BCiRmaW5hbGl0eUNvbmZsaWN0UmVzb2x2ZWROb3RpZmljYXRpb24YkgggASgLMjYucHJvdG93'
    'aXJlLkZpbmFsaXR5Q29uZmxpY3RSZXNvbHZlZE5vdGlmaWNhdGlvbk1lc3NhZ2VIAFIkZmluYW'
    'xpdHlDb25mbGljdFJlc29sdmVkTm90aWZpY2F0aW9uEmwKGWdldE1lbXBvb2xFbnRyaWVzUmVz'
    'cG9uc2UYlAggASgLMisucHJvdG93aXJlLkdldE1lbXBvb2xFbnRyaWVzUmVzcG9uc2VNZXNzYW'
    'dlSABSGWdldE1lbXBvb2xFbnRyaWVzUmVzcG9uc2USUQoQc2h1dGRvd25SZXNwb25zZRiWCCAB'
    'KAsyIi5wcm90b3dpcmUuU2h1dGRvd25SZXNwb25zZU1lc3NhZ2VIAFIQc2h1dGRvd25SZXNwb2'
    '5zZRJXChJnZXRIZWFkZXJzUmVzcG9uc2UYmAggASgLMiQucHJvdG93aXJlLkdldEhlYWRlcnNS'
    'ZXNwb25zZU1lc3NhZ2VIAFISZ2V0SGVhZGVyc1Jlc3BvbnNlEm8KGm5vdGlmeVV0eG9zQ2hhbm'
    'dlZFJlc3BvbnNlGJoIIAEoCzIsLnByb3Rvd2lyZS5Ob3RpZnlVdHhvc0NoYW5nZWRSZXNwb25z'
    'ZU1lc3NhZ2VIAFIabm90aWZ5VXR4b3NDaGFuZ2VkUmVzcG9uc2USaQoYdXR4b3NDaGFuZ2VkTm'
    '90aWZpY2F0aW9uGJsIIAEoCzIqLnByb3Rvd2lyZS5VdHhvc0NoYW5nZWROb3RpZmljYXRpb25N'
    'ZXNzYWdlSABSGHV0eG9zQ2hhbmdlZE5vdGlmaWNhdGlvbhJyChtnZXRVdHhvc0J5QWRkcmVzc2'
    'VzUmVzcG9uc2UYnQggASgLMi0ucHJvdG93aXJlLkdldFV0eG9zQnlBZGRyZXNzZXNSZXNwb25z'
    'ZU1lc3NhZ2VIAFIbZ2V0VXR4b3NCeUFkZHJlc3Nlc1Jlc3BvbnNlEmkKGGdldFNpbmtCbHVlU2'
    'NvcmVSZXNwb25zZRifCCABKAsyKi5wcm90b3dpcmUuR2V0U2lua0JsdWVTY29yZVJlc3BvbnNl'
    'TWVzc2FnZUgAUhhnZXRTaW5rQmx1ZVNjb3JlUmVzcG9uc2UShwEKIm5vdGlmeVNpbmtCbHVlU2'
    'NvcmVDaGFuZ2VkUmVzcG9uc2UYoQggASgLMjQucHJvdG93aXJlLk5vdGlmeVNpbmtCbHVlU2Nv'
    'cmVDaGFuZ2VkUmVzcG9uc2VNZXNzYWdlSABSIm5vdGlmeVNpbmtCbHVlU2NvcmVDaGFuZ2VkUm'
    'VzcG9uc2USgQEKIHNpbmtCbHVlU2NvcmVDaGFuZ2VkTm90aWZpY2F0aW9uGKIIIAEoCzIyLnBy'
    'b3Rvd2lyZS5TaW5rQmx1ZVNjb3JlQ2hhbmdlZE5vdGlmaWNhdGlvbk1lc3NhZ2VIAFIgc2lua0'
    'JsdWVTY29yZUNoYW5nZWROb3RpZmljYXRpb24SQgoLYmFuUmVzcG9uc2UYpAggASgLMh0ucHJv'
    'dG93aXJlLkJhblJlc3BvbnNlTWVzc2FnZUgAUgtiYW5SZXNwb25zZRJICg11bmJhblJlc3Bvbn'
    'NlGKYIIAEoCzIfLnByb3Rvd2lyZS5VbmJhblJlc3BvbnNlTWVzc2FnZUgAUg11bmJhblJlc3Bv'
    'bnNlEk4KD2dldEluZm9SZXNwb25zZRioCCABKAsyIS5wcm90b3dpcmUuR2V0SW5mb1Jlc3Bvbn'
    'NlTWVzc2FnZUgAUg9nZXRJbmZvUmVzcG9uc2UShAEKIXN0b3BOb3RpZnlpbmdVdHhvc0NoYW5n'
    'ZWRSZXNwb25zZRiqCCABKAsyMy5wcm90b3dpcmUuU3RvcE5vdGlmeWluZ1V0eG9zQ2hhbmdlZF'
    'Jlc3BvbnNlTWVzc2FnZUgAUiFzdG9wTm90aWZ5aW5nVXR4b3NDaGFuZ2VkUmVzcG9uc2USnAEK'
    'KW5vdGlmeVBydW5pbmdQb2ludFV0eG9TZXRPdmVycmlkZVJlc3BvbnNlGKwIIAEoCzI7LnByb3'
    'Rvd2lyZS5Ob3RpZnlQcnVuaW5nUG9pbnRVdHhvU2V0T3ZlcnJpZGVSZXNwb25zZU1lc3NhZ2VI'
    'AFIpbm90aWZ5UHJ1bmluZ1BvaW50VXR4b1NldE92ZXJyaWRlUmVzcG9uc2USlgEKJ3BydW5pbm'
    'dQb2ludFV0eG9TZXRPdmVycmlkZU5vdGlmaWNhdGlvbhitCCABKAsyOS5wcm90b3dpcmUuUHJ1'
    'bmluZ1BvaW50VXR4b1NldE92ZXJyaWRlTm90aWZpY2F0aW9uTWVzc2FnZUgAUidwcnVuaW5nUG'
    '9pbnRVdHhvU2V0T3ZlcnJpZGVOb3RpZmljYXRpb24SsQEKMHN0b3BOb3RpZnlpbmdQcnVuaW5n'
    'UG9pbnRVdHhvU2V0T3ZlcnJpZGVSZXNwb25zZRivCCABKAsyQi5wcm90b3dpcmUuU3RvcE5vdG'
    'lmeWluZ1BydW5pbmdQb2ludFV0eG9TZXRPdmVycmlkZVJlc3BvbnNlTWVzc2FnZUgAUjBzdG9w'
    'Tm90aWZ5aW5nUHJ1bmluZ1BvaW50VXR4b1NldE92ZXJyaWRlUmVzcG9uc2USkwEKJmVzdGltYX'
    'RlTmV0d29ya0hhc2hlc1BlclNlY29uZFJlc3BvbnNlGLEIIAEoCzI4LnByb3Rvd2lyZS5Fc3Rp'
    'bWF0ZU5ldHdvcmtIYXNoZXNQZXJTZWNvbmRSZXNwb25zZU1lc3NhZ2VIAFImZXN0aW1hdGVOZX'
    'R3b3JrSGFzaGVzUGVyU2Vjb25kUmVzcG9uc2USjQEKJG5vdGlmeVZpcnR1YWxEYWFTY29yZUNo'
    'YW5nZWRSZXNwb25zZRizCCABKAsyNi5wcm90b3dpcmUuTm90aWZ5VmlydHVhbERhYVNjb3JlQ2'
    'hhbmdlZFJlc3BvbnNlTWVzc2FnZUgAUiRub3RpZnlWaXJ0dWFsRGFhU2NvcmVDaGFuZ2VkUmVz'
    'cG9uc2UShwEKInZpcnR1YWxEYWFTY29yZUNoYW5nZWROb3RpZmljYXRpb24YtAggASgLMjQucH'
    'JvdG93aXJlLlZpcnR1YWxEYWFTY29yZUNoYW5nZWROb3RpZmljYXRpb25NZXNzYWdlSABSInZp'
    'cnR1YWxEYWFTY29yZUNoYW5nZWROb3RpZmljYXRpb24ScgobZ2V0QmFsYW5jZUJ5QWRkcmVzc1'
    'Jlc3BvbnNlGLYIIAEoCzItLnByb3Rvd2lyZS5HZXRCYWxhbmNlQnlBZGRyZXNzUmVzcG9uc2VN'
    'ZXNzYWdlSABSG2dldEJhbGFuY2VCeUFkZHJlc3NSZXNwb25zZRJ7Ch5nZXRCYWxhbmNlc0J5QW'
    'RkcmVzc2VzUmVzcG9uc2UYuAggASgLMjAucHJvdG93aXJlLkdldEJhbGFuY2VzQnlBZGRyZXNz'
    'ZXNSZXNwb25zZU1lc3NhZ2VIAFIeZ2V0QmFsYW5jZXNCeUFkZHJlc3Nlc1Jlc3BvbnNlEnsKHm'
    '5vdGlmeU5ld0Jsb2NrVGVtcGxhdGVSZXNwb25zZRi6CCABKAsyMC5wcm90b3dpcmUuTm90aWZ5'
    'TmV3QmxvY2tUZW1wbGF0ZVJlc3BvbnNlTWVzc2FnZUgAUh5ub3RpZnlOZXdCbG9ja1RlbXBsYX'
    'RlUmVzcG9uc2USdQocbmV3QmxvY2tUZW1wbGF0ZU5vdGlmaWNhdGlvbhi7CCABKAsyLi5wcm90'
    'b3dpcmUuTmV3QmxvY2tUZW1wbGF0ZU5vdGlmaWNhdGlvbk1lc3NhZ2VIAFIcbmV3QmxvY2tUZW'
    '1wbGF0ZU5vdGlmaWNhdGlvbhKNAQokZ2V0TWVtcG9vbEVudHJpZXNCeUFkZHJlc3Nlc1Jlc3Bv'
    'bnNlGL0IIAEoCzI2LnByb3Rvd2lyZS5HZXRNZW1wb29sRW50cmllc0J5QWRkcmVzc2VzUmVzcG'
    '9uc2VNZXNzYWdlSABSJGdldE1lbXBvb2xFbnRyaWVzQnlBZGRyZXNzZXNSZXNwb25zZRJgChVn'
    'ZXRDb2luU3VwcGx5UmVzcG9uc2UYvwggASgLMicucHJvdG93aXJlLkdldENvaW5TdXBwbHlSZX'
    'Nwb25zZU1lc3NhZ2VIAFIVZ2V0Q29pblN1cHBseVJlc3BvbnNlEkUKDHBpbmdSZXNwb25zZRjB'
    'CCABKAsyHi5wcm90b3dpcmUuUGluZ1Jlc3BvbnNlTWVzc2FnZUgAUgxwaW5nUmVzcG9uc2USVw'
    'oSZ2V0TWV0cmljc1Jlc3BvbnNlGMMIIAEoCzIkLnByb3Rvd2lyZS5HZXRNZXRyaWNzUmVzcG9u'
    'c2VNZXNzYWdlSABSEmdldE1ldHJpY3NSZXNwb25zZRJgChVnZXRTZXJ2ZXJJbmZvUmVzcG9uc2'
    'UYxQggASgLMicucHJvdG93aXJlLkdldFNlcnZlckluZm9SZXNwb25zZU1lc3NhZ2VIAFIVZ2V0'
    'U2VydmVySW5mb1Jlc3BvbnNlEmAKFWdldFN5bmNTdGF0dXNSZXNwb25zZRjHCCABKAsyJy5wcm'
    '90b3dpcmUuR2V0U3luY1N0YXR1c1Jlc3BvbnNlTWVzc2FnZUgAUhVnZXRTeW5jU3RhdHVzUmVz'
    'cG9uc2USjQEKJGdldERhYVNjb3JlVGltZXN0YW1wRXN0aW1hdGVSZXNwb25zZRjJCCABKAsyNi'
    '5wcm90b3dpcmUuR2V0RGFhU2NvcmVUaW1lc3RhbXBFc3RpbWF0ZVJlc3BvbnNlTWVzc2FnZUgA'
    'UiRnZXREYWFTY29yZVRpbWVzdGFtcEVzdGltYXRlUmVzcG9uc2USjQEKJHN1Ym1pdFRyYW5zYW'
    'N0aW9uUmVwbGFjZW1lbnRSZXNwb25zZRjNCCABKAsyNi5wcm90b3dpcmUuU3VibWl0VHJhbnNh'
    'Y3Rpb25SZXBsYWNlbWVudFJlc3BvbnNlTWVzc2FnZUgAUiRzdWJtaXRUcmFuc2FjdGlvblJlcG'
    'xhY2VtZW50UmVzcG9uc2USYwoWZ2V0Q29ubmVjdGlvbnNSZXNwb25zZRjPCCABKAsyKC5wcm90'
    'b3dpcmUuR2V0Q29ubmVjdGlvbnNSZXNwb25zZU1lc3NhZ2VIAFIWZ2V0Q29ubmVjdGlvbnNSZX'
    'Nwb25zZRJgChVnZXRTeXN0ZW1JbmZvUmVzcG9uc2UY0QggASgLMicucHJvdG93aXJlLkdldFN5'
    'c3RlbUluZm9SZXNwb25zZU1lc3NhZ2VIAFIVZ2V0U3lzdGVtSW5mb1Jlc3BvbnNlEmMKFmdldE'
    'ZlZUVzdGltYXRlUmVzcG9uc2UY0wggASgLMigucHJvdG93aXJlLkdldEZlZUVzdGltYXRlUmVz'
    'cG9uc2VNZXNzYWdlSABSFmdldEZlZUVzdGltYXRlUmVzcG9uc2UShwEKImdldEZlZUVzdGltYX'
    'RlRXhwZXJpbWVudGFsUmVzcG9uc2UY1QggASgLMjQucHJvdG93aXJlLkdldEZlZUVzdGltYXRl'
    'RXhwZXJpbWVudGFsUmVzcG9uc2VNZXNzYWdlSABSImdldEZlZUVzdGltYXRlRXhwZXJpbWVudG'
    'FsUmVzcG9uc2USdQocZ2V0Q3VycmVudEJsb2NrQ29sb3JSZXNwb25zZRjXCCABKAsyLi5wcm90'
    'b3dpcmUuR2V0Q3VycmVudEJsb2NrQ29sb3JSZXNwb25zZU1lc3NhZ2VIAFIcZ2V0Q3VycmVudE'
    'Jsb2NrQ29sb3JSZXNwb25zZUIJCgdwYXlsb2Fk');

