///
//  Generated code. Do not modify.
//  source: rpc.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class SubmitBlockResponseMessage_RejectReason extends $pb.ProtobufEnum {
  static const SubmitBlockResponseMessage_RejectReason NONE = SubmitBlockResponseMessage_RejectReason._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NONE');
  static const SubmitBlockResponseMessage_RejectReason BLOCK_INVALID = SubmitBlockResponseMessage_RejectReason._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BLOCK_INVALID');
  static const SubmitBlockResponseMessage_RejectReason IS_IN_IBD = SubmitBlockResponseMessage_RejectReason._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IS_IN_IBD');

  static const $core.List<SubmitBlockResponseMessage_RejectReason> values = <SubmitBlockResponseMessage_RejectReason> [
    NONE,
    BLOCK_INVALID,
    IS_IN_IBD,
  ];

  static final $core.Map<$core.int, SubmitBlockResponseMessage_RejectReason> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SubmitBlockResponseMessage_RejectReason? valueOf($core.int value) => _byValue[value];

  const SubmitBlockResponseMessage_RejectReason._($core.int v, $core.String n) : super(v, n);
}

