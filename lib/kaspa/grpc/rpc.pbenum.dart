//
//  Generated code. Do not modify.
//  source: rpc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class RpcNotifyCommand extends $pb.ProtobufEnum {
  static const RpcNotifyCommand NOTIFY_START = RpcNotifyCommand._(0, _omitEnumNames ? '' : 'NOTIFY_START');
  static const RpcNotifyCommand NOTIFY_STOP = RpcNotifyCommand._(1, _omitEnumNames ? '' : 'NOTIFY_STOP');

  static const $core.List<RpcNotifyCommand> values = <RpcNotifyCommand> [
    NOTIFY_START,
    NOTIFY_STOP,
  ];

  static final $core.Map<$core.int, RpcNotifyCommand> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RpcNotifyCommand? valueOf($core.int value) => _byValue[value];

  const RpcNotifyCommand._($core.int v, $core.String n) : super(v, n);
}

class SubmitBlockResponseMessage_RejectReason extends $pb.ProtobufEnum {
  static const SubmitBlockResponseMessage_RejectReason NONE = SubmitBlockResponseMessage_RejectReason._(0, _omitEnumNames ? '' : 'NONE');
  static const SubmitBlockResponseMessage_RejectReason BLOCK_INVALID = SubmitBlockResponseMessage_RejectReason._(1, _omitEnumNames ? '' : 'BLOCK_INVALID');
  static const SubmitBlockResponseMessage_RejectReason IS_IN_IBD = SubmitBlockResponseMessage_RejectReason._(2, _omitEnumNames ? '' : 'IS_IN_IBD');

  static const $core.List<SubmitBlockResponseMessage_RejectReason> values = <SubmitBlockResponseMessage_RejectReason> [
    NONE,
    BLOCK_INVALID,
    IS_IN_IBD,
  ];

  static final $core.Map<$core.int, SubmitBlockResponseMessage_RejectReason> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SubmitBlockResponseMessage_RejectReason? valueOf($core.int value) => _byValue[value];

  const SubmitBlockResponseMessage_RejectReason._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
