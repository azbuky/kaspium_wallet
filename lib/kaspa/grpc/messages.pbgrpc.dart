///
//  Generated code. Do not modify.
//  source: messages.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'messages.pb.dart' as $0;
export 'messages.pb.dart';

class P2PClient extends $grpc.Client {
  static final _$messageStream =
      $grpc.ClientMethod<$0.KaspadMessage, $0.KaspadMessage>(
          '/protowire.P2P/MessageStream',
          ($0.KaspadMessage value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.KaspadMessage.fromBuffer(value));

  P2PClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.KaspadMessage> messageStream(
      $async.Stream<$0.KaspadMessage> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$messageStream, request, options: options);
  }
}

abstract class P2PServiceBase extends $grpc.Service {
  $core.String get $name => 'protowire.P2P';

  P2PServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.KaspadMessage, $0.KaspadMessage>(
        'MessageStream',
        messageStream,
        true,
        true,
        ($core.List<$core.int> value) => $0.KaspadMessage.fromBuffer(value),
        ($0.KaspadMessage value) => value.writeToBuffer()));
  }

  $async.Stream<$0.KaspadMessage> messageStream(
      $grpc.ServiceCall call, $async.Stream<$0.KaspadMessage> request);
}

class RPCClient extends $grpc.Client {
  static final _$messageStream =
      $grpc.ClientMethod<$0.KaspadMessage, $0.KaspadMessage>(
          '/protowire.RPC/MessageStream',
          ($0.KaspadMessage value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.KaspadMessage.fromBuffer(value));

  RPCClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.KaspadMessage> messageStream(
      $async.Stream<$0.KaspadMessage> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$messageStream, request, options: options);
  }
}

abstract class RPCServiceBase extends $grpc.Service {
  $core.String get $name => 'protowire.RPC';

  RPCServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.KaspadMessage, $0.KaspadMessage>(
        'MessageStream',
        messageStream,
        true,
        true,
        ($core.List<$core.int> value) => $0.KaspadMessage.fromBuffer(value),
        ($0.KaspadMessage value) => value.writeToBuffer()));
  }

  $async.Stream<$0.KaspadMessage> messageStream(
      $grpc.ServiceCall call, $async.Stream<$0.KaspadMessage> request);
}
