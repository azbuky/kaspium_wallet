///
import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class RequestAddressesMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RequestAddressesMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOB(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'includeAllSubnetworks',
        protoName: 'includeAllSubnetworks')
    ..aOM<SubnetworkId>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'subnetworkId',
        protoName: 'subnetworkId',
        subBuilder: SubnetworkId.create)
    ..hasRequiredFields = false;

  RequestAddressesMessage._() : super();
  factory RequestAddressesMessage({
    $core.bool? includeAllSubnetworks,
    SubnetworkId? subnetworkId,
  }) {
    final _result = create();
    if (includeAllSubnetworks != null) {
      _result.includeAllSubnetworks = includeAllSubnetworks;
    }
    if (subnetworkId != null) {
      _result.subnetworkId = subnetworkId;
    }
    return _result;
  }
  factory RequestAddressesMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RequestAddressesMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RequestAddressesMessage clone() =>
      RequestAddressesMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RequestAddressesMessage copyWith(
          void Function(RequestAddressesMessage) updates) =>
      super.copyWith((message) => updates(message as RequestAddressesMessage))
          as RequestAddressesMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestAddressesMessage create() => RequestAddressesMessage._();
  RequestAddressesMessage createEmptyInstance() => create();
  static $pb.PbList<RequestAddressesMessage> createRepeated() =>
      $pb.PbList<RequestAddressesMessage>();
  @$core.pragma('dart2js:noInline')
  static RequestAddressesMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequestAddressesMessage>(create);
  static RequestAddressesMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get includeAllSubnetworks => $_getBF(0);
  @$pb.TagNumber(1)
  set includeAllSubnetworks($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIncludeAllSubnetworks() => $_has(0);
  @$pb.TagNumber(1)
  void clearIncludeAllSubnetworks() => clearField(1);

  @$pb.TagNumber(2)
  SubnetworkId get subnetworkId => $_getN(1);
  @$pb.TagNumber(2)
  set subnetworkId(SubnetworkId v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSubnetworkId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubnetworkId() => clearField(2);
  @$pb.TagNumber(2)
  SubnetworkId ensureSubnetworkId() => $_ensure(1);
}

class AddressesMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'AddressesMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..pc<NetAddress>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'addressList',
        $pb.PbFieldType.PM,
        protoName: 'addressList',
        subBuilder: NetAddress.create)
    ..hasRequiredFields = false;

  AddressesMessage._() : super();
  factory AddressesMessage({
    $core.Iterable<NetAddress>? addressList,
  }) {
    final _result = create();
    if (addressList != null) {
      _result.addressList.addAll(addressList);
    }
    return _result;
  }
  factory AddressesMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AddressesMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AddressesMessage clone() => AddressesMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AddressesMessage copyWith(void Function(AddressesMessage) updates) =>
      super.copyWith((message) => updates(message as AddressesMessage))
          as AddressesMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddressesMessage create() => AddressesMessage._();
  AddressesMessage createEmptyInstance() => create();
  static $pb.PbList<AddressesMessage> createRepeated() =>
      $pb.PbList<AddressesMessage>();
  @$core.pragma('dart2js:noInline')
  static AddressesMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AddressesMessage>(create);
  static AddressesMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<NetAddress> get addressList => $_getList(0);
}

class NetAddress extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'NetAddress',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'timestamp')
    ..a<$core.List<$core.int>>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ip',
        $pb.PbFieldType.OY)
    ..a<$core.int>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'port',
        $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  NetAddress._() : super();
  factory NetAddress({
    $fixnum.Int64? timestamp,
    $core.List<$core.int>? ip,
    $core.int? port,
  }) {
    final _result = create();
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    if (ip != null) {
      _result.ip = ip;
    }
    if (port != null) {
      _result.port = port;
    }
    return _result;
  }
  factory NetAddress.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NetAddress.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NetAddress clone() => NetAddress()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NetAddress copyWith(void Function(NetAddress) updates) =>
      super.copyWith((message) => updates(message as NetAddress))
          as NetAddress; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NetAddress create() => NetAddress._();
  NetAddress createEmptyInstance() => create();
  static $pb.PbList<NetAddress> createRepeated() => $pb.PbList<NetAddress>();
  @$core.pragma('dart2js:noInline')
  static NetAddress getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NetAddress>(create);
  static NetAddress? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestamp => $_getI64(0);
  @$pb.TagNumber(1)
  set timestamp($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestamp() => clearField(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get ip => $_getN(1);
  @$pb.TagNumber(3)
  set ip($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasIp() => $_has(1);
  @$pb.TagNumber(3)
  void clearIp() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get port => $_getIZ(2);
  @$pb.TagNumber(4)
  set port($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPort() => $_has(2);
  @$pb.TagNumber(4)
  void clearPort() => clearField(4);
}

class SubnetworkId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SubnetworkId',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'bytes',
        $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  SubnetworkId._() : super();
  factory SubnetworkId({
    $core.List<$core.int>? bytes,
  }) {
    final _result = create();
    if (bytes != null) {
      _result.bytes = bytes;
    }
    return _result;
  }
  factory SubnetworkId.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SubnetworkId.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SubnetworkId clone() => SubnetworkId()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SubnetworkId copyWith(void Function(SubnetworkId) updates) =>
      super.copyWith((message) => updates(message as SubnetworkId))
          as SubnetworkId; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubnetworkId create() => SubnetworkId._();
  SubnetworkId createEmptyInstance() => create();
  static $pb.PbList<SubnetworkId> createRepeated() =>
      $pb.PbList<SubnetworkId>();
  @$core.pragma('dart2js:noInline')
  static SubnetworkId getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SubnetworkId>(create);
  static SubnetworkId? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get bytes => $_getN(0);
  @$pb.TagNumber(1)
  set bytes($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearBytes() => clearField(1);
}

class TransactionMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TransactionMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'version',
        $pb.PbFieldType.OU3)
    ..pc<TransactionInput>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'inputs',
        $pb.PbFieldType.PM,
        subBuilder: TransactionInput.create)
    ..pc<TransactionOutput>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'outputs',
        $pb.PbFieldType.PM,
        subBuilder: TransactionOutput.create)
    ..a<$fixnum.Int64>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'lockTime',
        $pb.PbFieldType.OU6,
        protoName: 'lockTime',
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<SubnetworkId>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'subnetworkId',
        protoName: 'subnetworkId',
        subBuilder: SubnetworkId.create)
    ..a<$fixnum.Int64>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'gas',
        $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'payload',
        $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  TransactionMessage._() : super();
  factory TransactionMessage({
    $core.int? version,
    $core.Iterable<TransactionInput>? inputs,
    $core.Iterable<TransactionOutput>? outputs,
    $fixnum.Int64? lockTime,
    SubnetworkId? subnetworkId,
    $fixnum.Int64? gas,
    $core.List<$core.int>? payload,
  }) {
    final _result = create();
    if (version != null) {
      _result.version = version;
    }
    if (inputs != null) {
      _result.inputs.addAll(inputs);
    }
    if (outputs != null) {
      _result.outputs.addAll(outputs);
    }
    if (lockTime != null) {
      _result.lockTime = lockTime;
    }
    if (subnetworkId != null) {
      _result.subnetworkId = subnetworkId;
    }
    if (gas != null) {
      _result.gas = gas;
    }
    if (payload != null) {
      _result.payload = payload;
    }
    return _result;
  }
  factory TransactionMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TransactionMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TransactionMessage clone() => TransactionMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TransactionMessage copyWith(void Function(TransactionMessage) updates) =>
      super.copyWith((message) => updates(message as TransactionMessage))
          as TransactionMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransactionMessage create() => TransactionMessage._();
  TransactionMessage createEmptyInstance() => create();
  static $pb.PbList<TransactionMessage> createRepeated() =>
      $pb.PbList<TransactionMessage>();
  @$core.pragma('dart2js:noInline')
  static TransactionMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransactionMessage>(create);
  static TransactionMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get version => $_getIZ(0);
  @$pb.TagNumber(1)
  set version($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<TransactionInput> get inputs => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<TransactionOutput> get outputs => $_getList(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get lockTime => $_getI64(3);
  @$pb.TagNumber(4)
  set lockTime($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasLockTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearLockTime() => clearField(4);

  @$pb.TagNumber(5)
  SubnetworkId get subnetworkId => $_getN(4);
  @$pb.TagNumber(5)
  set subnetworkId(SubnetworkId v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasSubnetworkId() => $_has(4);
  @$pb.TagNumber(5)
  void clearSubnetworkId() => clearField(5);
  @$pb.TagNumber(5)
  SubnetworkId ensureSubnetworkId() => $_ensure(4);

  @$pb.TagNumber(6)
  $fixnum.Int64 get gas => $_getI64(5);
  @$pb.TagNumber(6)
  set gas($fixnum.Int64 v) {
    $_setInt64(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasGas() => $_has(5);
  @$pb.TagNumber(6)
  void clearGas() => clearField(6);

  @$pb.TagNumber(8)
  $core.List<$core.int> get payload => $_getN(6);
  @$pb.TagNumber(8)
  set payload($core.List<$core.int> v) {
    $_setBytes(6, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasPayload() => $_has(6);
  @$pb.TagNumber(8)
  void clearPayload() => clearField(8);
}

class TransactionInput extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TransactionInput',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<Outpoint>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'previousOutpoint',
        protoName: 'previousOutpoint',
        subBuilder: Outpoint.create)
    ..a<$core.List<$core.int>>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'signatureScript',
        $pb.PbFieldType.OY,
        protoName: 'signatureScript')
    ..a<$fixnum.Int64>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'sequence',
        $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'sigOpCount',
        $pb.PbFieldType.OU3,
        protoName: 'sigOpCount')
    ..hasRequiredFields = false;

  TransactionInput._() : super();
  factory TransactionInput({
    Outpoint? previousOutpoint,
    $core.List<$core.int>? signatureScript,
    $fixnum.Int64? sequence,
    $core.int? sigOpCount,
  }) {
    final _result = create();
    if (previousOutpoint != null) {
      _result.previousOutpoint = previousOutpoint;
    }
    if (signatureScript != null) {
      _result.signatureScript = signatureScript;
    }
    if (sequence != null) {
      _result.sequence = sequence;
    }
    if (sigOpCount != null) {
      _result.sigOpCount = sigOpCount;
    }
    return _result;
  }
  factory TransactionInput.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TransactionInput.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TransactionInput clone() => TransactionInput()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TransactionInput copyWith(void Function(TransactionInput) updates) =>
      super.copyWith((message) => updates(message as TransactionInput))
          as TransactionInput; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransactionInput create() => TransactionInput._();
  TransactionInput createEmptyInstance() => create();
  static $pb.PbList<TransactionInput> createRepeated() =>
      $pb.PbList<TransactionInput>();
  @$core.pragma('dart2js:noInline')
  static TransactionInput getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransactionInput>(create);
  static TransactionInput? _defaultInstance;

  @$pb.TagNumber(1)
  Outpoint get previousOutpoint => $_getN(0);
  @$pb.TagNumber(1)
  set previousOutpoint(Outpoint v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPreviousOutpoint() => $_has(0);
  @$pb.TagNumber(1)
  void clearPreviousOutpoint() => clearField(1);
  @$pb.TagNumber(1)
  Outpoint ensurePreviousOutpoint() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get signatureScript => $_getN(1);
  @$pb.TagNumber(2)
  set signatureScript($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSignatureScript() => $_has(1);
  @$pb.TagNumber(2)
  void clearSignatureScript() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get sequence => $_getI64(2);
  @$pb.TagNumber(3)
  set sequence($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSequence() => $_has(2);
  @$pb.TagNumber(3)
  void clearSequence() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get sigOpCount => $_getIZ(3);
  @$pb.TagNumber(4)
  set sigOpCount($core.int v) {
    $_setUnsignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasSigOpCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearSigOpCount() => clearField(4);
}

class Outpoint extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Outpoint',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<TransactionId>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'transactionId',
        protoName: 'transactionId',
        subBuilder: TransactionId.create)
    ..a<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'index',
        $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  Outpoint._() : super();
  factory Outpoint({
    TransactionId? transactionId,
    $core.int? index,
  }) {
    final _result = create();
    if (transactionId != null) {
      _result.transactionId = transactionId;
    }
    if (index != null) {
      _result.index = index;
    }
    return _result;
  }
  factory Outpoint.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Outpoint.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Outpoint clone() => Outpoint()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Outpoint copyWith(void Function(Outpoint) updates) =>
      super.copyWith((message) => updates(message as Outpoint))
          as Outpoint; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Outpoint create() => Outpoint._();
  Outpoint createEmptyInstance() => create();
  static $pb.PbList<Outpoint> createRepeated() => $pb.PbList<Outpoint>();
  @$core.pragma('dart2js:noInline')
  static Outpoint getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Outpoint>(create);
  static Outpoint? _defaultInstance;

  @$pb.TagNumber(1)
  TransactionId get transactionId => $_getN(0);
  @$pb.TagNumber(1)
  set transactionId(TransactionId v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTransactionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransactionId() => clearField(1);
  @$pb.TagNumber(1)
  TransactionId ensureTransactionId() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get index => $_getIZ(1);
  @$pb.TagNumber(2)
  set index($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearIndex() => clearField(2);
}

class TransactionId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TransactionId',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'bytes',
        $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  TransactionId._() : super();
  factory TransactionId({
    $core.List<$core.int>? bytes,
  }) {
    final _result = create();
    if (bytes != null) {
      _result.bytes = bytes;
    }
    return _result;
  }
  factory TransactionId.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TransactionId.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TransactionId clone() => TransactionId()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TransactionId copyWith(void Function(TransactionId) updates) =>
      super.copyWith((message) => updates(message as TransactionId))
          as TransactionId; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransactionId create() => TransactionId._();
  TransactionId createEmptyInstance() => create();
  static $pb.PbList<TransactionId> createRepeated() =>
      $pb.PbList<TransactionId>();
  @$core.pragma('dart2js:noInline')
  static TransactionId getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransactionId>(create);
  static TransactionId? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get bytes => $_getN(0);
  @$pb.TagNumber(1)
  set bytes($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearBytes() => clearField(1);
}

class ScriptPublicKey extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ScriptPublicKey',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'script',
        $pb.PbFieldType.OY)
    ..a<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'version',
        $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  ScriptPublicKey._() : super();
  factory ScriptPublicKey({
    $core.List<$core.int>? script,
    $core.int? version,
  }) {
    final _result = create();
    if (script != null) {
      _result.script = script;
    }
    if (version != null) {
      _result.version = version;
    }
    return _result;
  }
  factory ScriptPublicKey.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ScriptPublicKey.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ScriptPublicKey clone() => ScriptPublicKey()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ScriptPublicKey copyWith(void Function(ScriptPublicKey) updates) =>
      super.copyWith((message) => updates(message as ScriptPublicKey))
          as ScriptPublicKey; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ScriptPublicKey create() => ScriptPublicKey._();
  ScriptPublicKey createEmptyInstance() => create();
  static $pb.PbList<ScriptPublicKey> createRepeated() =>
      $pb.PbList<ScriptPublicKey>();
  @$core.pragma('dart2js:noInline')
  static ScriptPublicKey getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ScriptPublicKey>(create);
  static ScriptPublicKey? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get script => $_getN(0);
  @$pb.TagNumber(1)
  set script($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasScript() => $_has(0);
  @$pb.TagNumber(1)
  void clearScript() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get version => $_getIZ(1);
  @$pb.TagNumber(2)
  set version($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);
}

class TransactionOutput extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TransactionOutput',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'value',
        $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<ScriptPublicKey>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'scriptPublicKey',
        protoName: 'scriptPublicKey',
        subBuilder: ScriptPublicKey.create)
    ..hasRequiredFields = false;

  TransactionOutput._() : super();
  factory TransactionOutput({
    $fixnum.Int64? value,
    ScriptPublicKey? scriptPublicKey,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    if (scriptPublicKey != null) {
      _result.scriptPublicKey = scriptPublicKey;
    }
    return _result;
  }
  factory TransactionOutput.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TransactionOutput.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TransactionOutput clone() => TransactionOutput()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TransactionOutput copyWith(void Function(TransactionOutput) updates) =>
      super.copyWith((message) => updates(message as TransactionOutput))
          as TransactionOutput; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransactionOutput create() => TransactionOutput._();
  TransactionOutput createEmptyInstance() => create();
  static $pb.PbList<TransactionOutput> createRepeated() =>
      $pb.PbList<TransactionOutput>();
  @$core.pragma('dart2js:noInline')
  static TransactionOutput getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransactionOutput>(create);
  static TransactionOutput? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get value => $_getI64(0);
  @$pb.TagNumber(1)
  set value($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);

  @$pb.TagNumber(2)
  ScriptPublicKey get scriptPublicKey => $_getN(1);
  @$pb.TagNumber(2)
  set scriptPublicKey(ScriptPublicKey v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasScriptPublicKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearScriptPublicKey() => clearField(2);
  @$pb.TagNumber(2)
  ScriptPublicKey ensureScriptPublicKey() => $_ensure(1);
}

class BlockMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'BlockMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<BlockHeader>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'header',
        subBuilder: BlockHeader.create)
    ..pc<TransactionMessage>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'transactions',
        $pb.PbFieldType.PM,
        subBuilder: TransactionMessage.create)
    ..hasRequiredFields = false;

  BlockMessage._() : super();
  factory BlockMessage({
    BlockHeader? header,
    $core.Iterable<TransactionMessage>? transactions,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (transactions != null) {
      _result.transactions.addAll(transactions);
    }
    return _result;
  }
  factory BlockMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BlockMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BlockMessage clone() => BlockMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BlockMessage copyWith(void Function(BlockMessage) updates) =>
      super.copyWith((message) => updates(message as BlockMessage))
          as BlockMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockMessage create() => BlockMessage._();
  BlockMessage createEmptyInstance() => create();
  static $pb.PbList<BlockMessage> createRepeated() =>
      $pb.PbList<BlockMessage>();
  @$core.pragma('dart2js:noInline')
  static BlockMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BlockMessage>(create);
  static BlockMessage? _defaultInstance;

  @$pb.TagNumber(1)
  BlockHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(BlockHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  BlockHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<TransactionMessage> get transactions => $_getList(1);
}

class BlockHeader extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'BlockHeader',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'version',
        $pb.PbFieldType.OU3)
    ..aOM<Hash>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hashMerkleRoot',
        protoName: 'hashMerkleRoot',
        subBuilder: Hash.create)
    ..aOM<Hash>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'acceptedIdMerkleRoot',
        protoName: 'acceptedIdMerkleRoot',
        subBuilder: Hash.create)
    ..aOM<Hash>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'utxoCommitment',
        protoName: 'utxoCommitment',
        subBuilder: Hash.create)
    ..aInt64(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'timestamp')
    ..a<$core.int>(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'bits',
        $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'nonce',
        $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        9,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'daaScore',
        $pb.PbFieldType.OU6,
        protoName: 'daaScore',
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(
        10,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'blueWork',
        $pb.PbFieldType.OY,
        protoName: 'blueWork')
    ..pc<BlockLevelParents>(
        12,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'parents',
        $pb.PbFieldType.PM,
        subBuilder: BlockLevelParents.create)
    ..a<$fixnum.Int64>(
        13,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'blueScore',
        $pb.PbFieldType.OU6,
        protoName: 'blueScore',
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<Hash>(
        14,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'pruningPoint',
        protoName: 'pruningPoint',
        subBuilder: Hash.create)
    ..hasRequiredFields = false;

  BlockHeader._() : super();
  factory BlockHeader({
    $core.int? version,
    Hash? hashMerkleRoot,
    Hash? acceptedIdMerkleRoot,
    Hash? utxoCommitment,
    $fixnum.Int64? timestamp,
    $core.int? bits,
    $fixnum.Int64? nonce,
    $fixnum.Int64? daaScore,
    $core.List<$core.int>? blueWork,
    $core.Iterable<BlockLevelParents>? parents,
    $fixnum.Int64? blueScore,
    Hash? pruningPoint,
  }) {
    final _result = create();
    if (version != null) {
      _result.version = version;
    }
    if (hashMerkleRoot != null) {
      _result.hashMerkleRoot = hashMerkleRoot;
    }
    if (acceptedIdMerkleRoot != null) {
      _result.acceptedIdMerkleRoot = acceptedIdMerkleRoot;
    }
    if (utxoCommitment != null) {
      _result.utxoCommitment = utxoCommitment;
    }
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    if (bits != null) {
      _result.bits = bits;
    }
    if (nonce != null) {
      _result.nonce = nonce;
    }
    if (daaScore != null) {
      _result.daaScore = daaScore;
    }
    if (blueWork != null) {
      _result.blueWork = blueWork;
    }
    if (parents != null) {
      _result.parents.addAll(parents);
    }
    if (blueScore != null) {
      _result.blueScore = blueScore;
    }
    if (pruningPoint != null) {
      _result.pruningPoint = pruningPoint;
    }
    return _result;
  }
  factory BlockHeader.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BlockHeader.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BlockHeader clone() => BlockHeader()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BlockHeader copyWith(void Function(BlockHeader) updates) =>
      super.copyWith((message) => updates(message as BlockHeader))
          as BlockHeader; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockHeader create() => BlockHeader._();
  BlockHeader createEmptyInstance() => create();
  static $pb.PbList<BlockHeader> createRepeated() => $pb.PbList<BlockHeader>();
  @$core.pragma('dart2js:noInline')
  static BlockHeader getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BlockHeader>(create);
  static BlockHeader? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get version => $_getIZ(0);
  @$pb.TagNumber(1)
  set version($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);

  @$pb.TagNumber(3)
  Hash get hashMerkleRoot => $_getN(1);
  @$pb.TagNumber(3)
  set hashMerkleRoot(Hash v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasHashMerkleRoot() => $_has(1);
  @$pb.TagNumber(3)
  void clearHashMerkleRoot() => clearField(3);
  @$pb.TagNumber(3)
  Hash ensureHashMerkleRoot() => $_ensure(1);

  @$pb.TagNumber(4)
  Hash get acceptedIdMerkleRoot => $_getN(2);
  @$pb.TagNumber(4)
  set acceptedIdMerkleRoot(Hash v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasAcceptedIdMerkleRoot() => $_has(2);
  @$pb.TagNumber(4)
  void clearAcceptedIdMerkleRoot() => clearField(4);
  @$pb.TagNumber(4)
  Hash ensureAcceptedIdMerkleRoot() => $_ensure(2);

  @$pb.TagNumber(5)
  Hash get utxoCommitment => $_getN(3);
  @$pb.TagNumber(5)
  set utxoCommitment(Hash v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasUtxoCommitment() => $_has(3);
  @$pb.TagNumber(5)
  void clearUtxoCommitment() => clearField(5);
  @$pb.TagNumber(5)
  Hash ensureUtxoCommitment() => $_ensure(3);

  @$pb.TagNumber(6)
  $fixnum.Int64 get timestamp => $_getI64(4);
  @$pb.TagNumber(6)
  set timestamp($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasTimestamp() => $_has(4);
  @$pb.TagNumber(6)
  void clearTimestamp() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get bits => $_getIZ(5);
  @$pb.TagNumber(7)
  set bits($core.int v) {
    $_setUnsignedInt32(5, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasBits() => $_has(5);
  @$pb.TagNumber(7)
  void clearBits() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get nonce => $_getI64(6);
  @$pb.TagNumber(8)
  set nonce($fixnum.Int64 v) {
    $_setInt64(6, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasNonce() => $_has(6);
  @$pb.TagNumber(8)
  void clearNonce() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get daaScore => $_getI64(7);
  @$pb.TagNumber(9)
  set daaScore($fixnum.Int64 v) {
    $_setInt64(7, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasDaaScore() => $_has(7);
  @$pb.TagNumber(9)
  void clearDaaScore() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<$core.int> get blueWork => $_getN(8);
  @$pb.TagNumber(10)
  set blueWork($core.List<$core.int> v) {
    $_setBytes(8, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasBlueWork() => $_has(8);
  @$pb.TagNumber(10)
  void clearBlueWork() => clearField(10);

  @$pb.TagNumber(12)
  $core.List<BlockLevelParents> get parents => $_getList(9);

  @$pb.TagNumber(13)
  $fixnum.Int64 get blueScore => $_getI64(10);
  @$pb.TagNumber(13)
  set blueScore($fixnum.Int64 v) {
    $_setInt64(10, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasBlueScore() => $_has(10);
  @$pb.TagNumber(13)
  void clearBlueScore() => clearField(13);

  @$pb.TagNumber(14)
  Hash get pruningPoint => $_getN(11);
  @$pb.TagNumber(14)
  set pruningPoint(Hash v) {
    setField(14, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasPruningPoint() => $_has(11);
  @$pb.TagNumber(14)
  void clearPruningPoint() => clearField(14);
  @$pb.TagNumber(14)
  Hash ensurePruningPoint() => $_ensure(11);
}

class BlockLevelParents extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'BlockLevelParents',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..pc<Hash>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'parentHashes',
        $pb.PbFieldType.PM,
        protoName: 'parentHashes',
        subBuilder: Hash.create)
    ..hasRequiredFields = false;

  BlockLevelParents._() : super();
  factory BlockLevelParents({
    $core.Iterable<Hash>? parentHashes,
  }) {
    final _result = create();
    if (parentHashes != null) {
      _result.parentHashes.addAll(parentHashes);
    }
    return _result;
  }
  factory BlockLevelParents.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BlockLevelParents.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BlockLevelParents clone() => BlockLevelParents()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BlockLevelParents copyWith(void Function(BlockLevelParents) updates) =>
      super.copyWith((message) => updates(message as BlockLevelParents))
          as BlockLevelParents; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockLevelParents create() => BlockLevelParents._();
  BlockLevelParents createEmptyInstance() => create();
  static $pb.PbList<BlockLevelParents> createRepeated() =>
      $pb.PbList<BlockLevelParents>();
  @$core.pragma('dart2js:noInline')
  static BlockLevelParents getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BlockLevelParents>(create);
  static BlockLevelParents? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Hash> get parentHashes => $_getList(0);
}

class Hash extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Hash',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'bytes',
        $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  Hash._() : super();
  factory Hash({
    $core.List<$core.int>? bytes,
  }) {
    final _result = create();
    if (bytes != null) {
      _result.bytes = bytes;
    }
    return _result;
  }
  factory Hash.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Hash.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Hash clone() => Hash()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Hash copyWith(void Function(Hash) updates) =>
      super.copyWith((message) => updates(message as Hash))
          as Hash; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Hash create() => Hash._();
  Hash createEmptyInstance() => create();
  static $pb.PbList<Hash> createRepeated() => $pb.PbList<Hash>();
  @$core.pragma('dart2js:noInline')
  static Hash getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Hash>(create);
  static Hash? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get bytes => $_getN(0);
  @$pb.TagNumber(1)
  set bytes($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearBytes() => clearField(1);
}

class RequestBlockLocatorMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RequestBlockLocatorMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<Hash>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'highHash',
        protoName: 'highHash',
        subBuilder: Hash.create)
    ..a<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'limit',
        $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  RequestBlockLocatorMessage._() : super();
  factory RequestBlockLocatorMessage({
    Hash? highHash,
    $core.int? limit,
  }) {
    final _result = create();
    if (highHash != null) {
      _result.highHash = highHash;
    }
    if (limit != null) {
      _result.limit = limit;
    }
    return _result;
  }
  factory RequestBlockLocatorMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RequestBlockLocatorMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RequestBlockLocatorMessage clone() =>
      RequestBlockLocatorMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RequestBlockLocatorMessage copyWith(
          void Function(RequestBlockLocatorMessage) updates) =>
      super.copyWith(
              (message) => updates(message as RequestBlockLocatorMessage))
          as RequestBlockLocatorMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestBlockLocatorMessage create() => RequestBlockLocatorMessage._();
  RequestBlockLocatorMessage createEmptyInstance() => create();
  static $pb.PbList<RequestBlockLocatorMessage> createRepeated() =>
      $pb.PbList<RequestBlockLocatorMessage>();
  @$core.pragma('dart2js:noInline')
  static RequestBlockLocatorMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequestBlockLocatorMessage>(create);
  static RequestBlockLocatorMessage? _defaultInstance;

  @$pb.TagNumber(1)
  Hash get highHash => $_getN(0);
  @$pb.TagNumber(1)
  set highHash(Hash v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHighHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearHighHash() => clearField(1);
  @$pb.TagNumber(1)
  Hash ensureHighHash() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get limit => $_getIZ(1);
  @$pb.TagNumber(2)
  set limit($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLimit() => $_has(1);
  @$pb.TagNumber(2)
  void clearLimit() => clearField(2);
}

class BlockLocatorMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'BlockLocatorMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..pc<Hash>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hashes',
        $pb.PbFieldType.PM,
        subBuilder: Hash.create)
    ..hasRequiredFields = false;

  BlockLocatorMessage._() : super();
  factory BlockLocatorMessage({
    $core.Iterable<Hash>? hashes,
  }) {
    final _result = create();
    if (hashes != null) {
      _result.hashes.addAll(hashes);
    }
    return _result;
  }
  factory BlockLocatorMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BlockLocatorMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BlockLocatorMessage clone() => BlockLocatorMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BlockLocatorMessage copyWith(void Function(BlockLocatorMessage) updates) =>
      super.copyWith((message) => updates(message as BlockLocatorMessage))
          as BlockLocatorMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockLocatorMessage create() => BlockLocatorMessage._();
  BlockLocatorMessage createEmptyInstance() => create();
  static $pb.PbList<BlockLocatorMessage> createRepeated() =>
      $pb.PbList<BlockLocatorMessage>();
  @$core.pragma('dart2js:noInline')
  static BlockLocatorMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BlockLocatorMessage>(create);
  static BlockLocatorMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Hash> get hashes => $_getList(0);
}

class RequestHeadersMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RequestHeadersMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<Hash>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'lowHash',
        protoName: 'lowHash',
        subBuilder: Hash.create)
    ..aOM<Hash>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'highHash',
        protoName: 'highHash',
        subBuilder: Hash.create)
    ..hasRequiredFields = false;

  RequestHeadersMessage._() : super();
  factory RequestHeadersMessage({
    Hash? lowHash,
    Hash? highHash,
  }) {
    final _result = create();
    if (lowHash != null) {
      _result.lowHash = lowHash;
    }
    if (highHash != null) {
      _result.highHash = highHash;
    }
    return _result;
  }
  factory RequestHeadersMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RequestHeadersMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RequestHeadersMessage clone() =>
      RequestHeadersMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RequestHeadersMessage copyWith(
          void Function(RequestHeadersMessage) updates) =>
      super.copyWith((message) => updates(message as RequestHeadersMessage))
          as RequestHeadersMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestHeadersMessage create() => RequestHeadersMessage._();
  RequestHeadersMessage createEmptyInstance() => create();
  static $pb.PbList<RequestHeadersMessage> createRepeated() =>
      $pb.PbList<RequestHeadersMessage>();
  @$core.pragma('dart2js:noInline')
  static RequestHeadersMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequestHeadersMessage>(create);
  static RequestHeadersMessage? _defaultInstance;

  @$pb.TagNumber(1)
  Hash get lowHash => $_getN(0);
  @$pb.TagNumber(1)
  set lowHash(Hash v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLowHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearLowHash() => clearField(1);
  @$pb.TagNumber(1)
  Hash ensureLowHash() => $_ensure(0);

  @$pb.TagNumber(2)
  Hash get highHash => $_getN(1);
  @$pb.TagNumber(2)
  set highHash(Hash v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasHighHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearHighHash() => clearField(2);
  @$pb.TagNumber(2)
  Hash ensureHighHash() => $_ensure(1);
}

class RequestNextHeadersMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RequestNextHeadersMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  RequestNextHeadersMessage._() : super();
  factory RequestNextHeadersMessage() => create();
  factory RequestNextHeadersMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RequestNextHeadersMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RequestNextHeadersMessage clone() =>
      RequestNextHeadersMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RequestNextHeadersMessage copyWith(
          void Function(RequestNextHeadersMessage) updates) =>
      super.copyWith((message) => updates(message as RequestNextHeadersMessage))
          as RequestNextHeadersMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestNextHeadersMessage create() => RequestNextHeadersMessage._();
  RequestNextHeadersMessage createEmptyInstance() => create();
  static $pb.PbList<RequestNextHeadersMessage> createRepeated() =>
      $pb.PbList<RequestNextHeadersMessage>();
  @$core.pragma('dart2js:noInline')
  static RequestNextHeadersMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequestNextHeadersMessage>(create);
  static RequestNextHeadersMessage? _defaultInstance;
}

class DoneHeadersMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'DoneHeadersMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  DoneHeadersMessage._() : super();
  factory DoneHeadersMessage() => create();
  factory DoneHeadersMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DoneHeadersMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DoneHeadersMessage clone() => DoneHeadersMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DoneHeadersMessage copyWith(void Function(DoneHeadersMessage) updates) =>
      super.copyWith((message) => updates(message as DoneHeadersMessage))
          as DoneHeadersMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DoneHeadersMessage create() => DoneHeadersMessage._();
  DoneHeadersMessage createEmptyInstance() => create();
  static $pb.PbList<DoneHeadersMessage> createRepeated() =>
      $pb.PbList<DoneHeadersMessage>();
  @$core.pragma('dart2js:noInline')
  static DoneHeadersMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DoneHeadersMessage>(create);
  static DoneHeadersMessage? _defaultInstance;
}

class RequestRelayBlocksMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RequestRelayBlocksMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..pc<Hash>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hashes',
        $pb.PbFieldType.PM,
        subBuilder: Hash.create)
    ..hasRequiredFields = false;

  RequestRelayBlocksMessage._() : super();
  factory RequestRelayBlocksMessage({
    $core.Iterable<Hash>? hashes,
  }) {
    final _result = create();
    if (hashes != null) {
      _result.hashes.addAll(hashes);
    }
    return _result;
  }
  factory RequestRelayBlocksMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RequestRelayBlocksMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RequestRelayBlocksMessage clone() =>
      RequestRelayBlocksMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RequestRelayBlocksMessage copyWith(
          void Function(RequestRelayBlocksMessage) updates) =>
      super.copyWith((message) => updates(message as RequestRelayBlocksMessage))
          as RequestRelayBlocksMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestRelayBlocksMessage create() => RequestRelayBlocksMessage._();
  RequestRelayBlocksMessage createEmptyInstance() => create();
  static $pb.PbList<RequestRelayBlocksMessage> createRepeated() =>
      $pb.PbList<RequestRelayBlocksMessage>();
  @$core.pragma('dart2js:noInline')
  static RequestRelayBlocksMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequestRelayBlocksMessage>(create);
  static RequestRelayBlocksMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Hash> get hashes => $_getList(0);
}

class RequestTransactionsMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RequestTransactionsMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..pc<TransactionId>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ids',
        $pb.PbFieldType.PM,
        subBuilder: TransactionId.create)
    ..hasRequiredFields = false;

  RequestTransactionsMessage._() : super();
  factory RequestTransactionsMessage({
    $core.Iterable<TransactionId>? ids,
  }) {
    final _result = create();
    if (ids != null) {
      _result.ids.addAll(ids);
    }
    return _result;
  }
  factory RequestTransactionsMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RequestTransactionsMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RequestTransactionsMessage clone() =>
      RequestTransactionsMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RequestTransactionsMessage copyWith(
          void Function(RequestTransactionsMessage) updates) =>
      super.copyWith(
              (message) => updates(message as RequestTransactionsMessage))
          as RequestTransactionsMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestTransactionsMessage create() => RequestTransactionsMessage._();
  RequestTransactionsMessage createEmptyInstance() => create();
  static $pb.PbList<RequestTransactionsMessage> createRepeated() =>
      $pb.PbList<RequestTransactionsMessage>();
  @$core.pragma('dart2js:noInline')
  static RequestTransactionsMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequestTransactionsMessage>(create);
  static RequestTransactionsMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TransactionId> get ids => $_getList(0);
}

class TransactionNotFoundMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TransactionNotFoundMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<TransactionId>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'id',
        subBuilder: TransactionId.create)
    ..hasRequiredFields = false;

  TransactionNotFoundMessage._() : super();
  factory TransactionNotFoundMessage({
    TransactionId? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory TransactionNotFoundMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TransactionNotFoundMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TransactionNotFoundMessage clone() =>
      TransactionNotFoundMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TransactionNotFoundMessage copyWith(
          void Function(TransactionNotFoundMessage) updates) =>
      super.copyWith(
              (message) => updates(message as TransactionNotFoundMessage))
          as TransactionNotFoundMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransactionNotFoundMessage create() => TransactionNotFoundMessage._();
  TransactionNotFoundMessage createEmptyInstance() => create();
  static $pb.PbList<TransactionNotFoundMessage> createRepeated() =>
      $pb.PbList<TransactionNotFoundMessage>();
  @$core.pragma('dart2js:noInline')
  static TransactionNotFoundMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransactionNotFoundMessage>(create);
  static TransactionNotFoundMessage? _defaultInstance;

  @$pb.TagNumber(1)
  TransactionId get id => $_getN(0);
  @$pb.TagNumber(1)
  set id(TransactionId v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  TransactionId ensureId() => $_ensure(0);
}

class InvRelayBlockMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'InvRelayBlockMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<Hash>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hash',
        subBuilder: Hash.create)
    ..hasRequiredFields = false;

  InvRelayBlockMessage._() : super();
  factory InvRelayBlockMessage({
    Hash? hash,
  }) {
    final _result = create();
    if (hash != null) {
      _result.transactionId = hash;
    }
    return _result;
  }
  factory InvRelayBlockMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory InvRelayBlockMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  InvRelayBlockMessage clone() =>
      InvRelayBlockMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  InvRelayBlockMessage copyWith(void Function(InvRelayBlockMessage) updates) =>
      super.copyWith((message) => updates(message as InvRelayBlockMessage))
          as InvRelayBlockMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InvRelayBlockMessage create() => InvRelayBlockMessage._();
  InvRelayBlockMessage createEmptyInstance() => create();
  static $pb.PbList<InvRelayBlockMessage> createRepeated() =>
      $pb.PbList<InvRelayBlockMessage>();
  @$core.pragma('dart2js:noInline')
  static InvRelayBlockMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InvRelayBlockMessage>(create);
  static InvRelayBlockMessage? _defaultInstance;

  @$pb.TagNumber(1)
  Hash get transactionId => $_getN(0);
  @$pb.TagNumber(1)
  set transactionId(Hash v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearHash() => clearField(1);
  @$pb.TagNumber(1)
  Hash ensureHash() => $_ensure(0);
}

class InvTransactionsMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'InvTransactionsMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..pc<TransactionId>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ids',
        $pb.PbFieldType.PM,
        subBuilder: TransactionId.create)
    ..hasRequiredFields = false;

  InvTransactionsMessage._() : super();
  factory InvTransactionsMessage({
    $core.Iterable<TransactionId>? ids,
  }) {
    final _result = create();
    if (ids != null) {
      _result.ids.addAll(ids);
    }
    return _result;
  }
  factory InvTransactionsMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory InvTransactionsMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  InvTransactionsMessage clone() =>
      InvTransactionsMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  InvTransactionsMessage copyWith(
          void Function(InvTransactionsMessage) updates) =>
      super.copyWith((message) => updates(message as InvTransactionsMessage))
          as InvTransactionsMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InvTransactionsMessage create() => InvTransactionsMessage._();
  InvTransactionsMessage createEmptyInstance() => create();
  static $pb.PbList<InvTransactionsMessage> createRepeated() =>
      $pb.PbList<InvTransactionsMessage>();
  @$core.pragma('dart2js:noInline')
  static InvTransactionsMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InvTransactionsMessage>(create);
  static InvTransactionsMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TransactionId> get ids => $_getList(0);
}

class PingMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PingMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'nonce',
        $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  PingMessage._() : super();
  factory PingMessage({
    $fixnum.Int64? nonce,
  }) {
    final _result = create();
    if (nonce != null) {
      _result.nonce = nonce;
    }
    return _result;
  }
  factory PingMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PingMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PingMessage clone() => PingMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PingMessage copyWith(void Function(PingMessage) updates) =>
      super.copyWith((message) => updates(message as PingMessage))
          as PingMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PingMessage create() => PingMessage._();
  PingMessage createEmptyInstance() => create();
  static $pb.PbList<PingMessage> createRepeated() => $pb.PbList<PingMessage>();
  @$core.pragma('dart2js:noInline')
  static PingMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PingMessage>(create);
  static PingMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get nonce => $_getI64(0);
  @$pb.TagNumber(1)
  set nonce($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasNonce() => $_has(0);
  @$pb.TagNumber(1)
  void clearNonce() => clearField(1);
}

class PongMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PongMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'nonce',
        $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  PongMessage._() : super();
  factory PongMessage({
    $fixnum.Int64? nonce,
  }) {
    final _result = create();
    if (nonce != null) {
      _result.nonce = nonce;
    }
    return _result;
  }
  factory PongMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PongMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PongMessage clone() => PongMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PongMessage copyWith(void Function(PongMessage) updates) =>
      super.copyWith((message) => updates(message as PongMessage))
          as PongMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PongMessage create() => PongMessage._();
  PongMessage createEmptyInstance() => create();
  static $pb.PbList<PongMessage> createRepeated() => $pb.PbList<PongMessage>();
  @$core.pragma('dart2js:noInline')
  static PongMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PongMessage>(create);
  static PongMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get nonce => $_getI64(0);
  @$pb.TagNumber(1)
  set nonce($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasNonce() => $_has(0);
  @$pb.TagNumber(1)
  void clearNonce() => clearField(1);
}

class VerackMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'VerackMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  VerackMessage._() : super();
  factory VerackMessage() => create();
  factory VerackMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VerackMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VerackMessage clone() => VerackMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VerackMessage copyWith(void Function(VerackMessage) updates) =>
      super.copyWith((message) => updates(message as VerackMessage))
          as VerackMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerackMessage create() => VerackMessage._();
  VerackMessage createEmptyInstance() => create();
  static $pb.PbList<VerackMessage> createRepeated() =>
      $pb.PbList<VerackMessage>();
  @$core.pragma('dart2js:noInline')
  static VerackMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VerackMessage>(create);
  static VerackMessage? _defaultInstance;
}

class VersionMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'VersionMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'protocolVersion',
        $pb.PbFieldType.OU3,
        protoName: 'protocolVersion')
    ..a<$fixnum.Int64>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'services',
        $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aInt64(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'timestamp')
    ..aOM<NetAddress>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'address',
        subBuilder: NetAddress.create)
    ..a<$core.List<$core.int>>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'id',
        $pb.PbFieldType.OY)
    ..aOS(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'userAgent',
        protoName: 'userAgent')
    ..aOB(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'disableRelayTx',
        protoName: 'disableRelayTx')
    ..aOM<SubnetworkId>(
        9,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'subnetworkId',
        protoName: 'subnetworkId',
        subBuilder: SubnetworkId.create)
    ..aOS(
        10,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'network')
    ..hasRequiredFields = false;

  VersionMessage._() : super();
  factory VersionMessage({
    $core.int? protocolVersion,
    $fixnum.Int64? services,
    $fixnum.Int64? timestamp,
    NetAddress? address,
    $core.List<$core.int>? id,
    $core.String? userAgent,
    $core.bool? disableRelayTx,
    SubnetworkId? subnetworkId,
    $core.String? network,
  }) {
    final _result = create();
    if (protocolVersion != null) {
      _result.protocolVersion = protocolVersion;
    }
    if (services != null) {
      _result.services = services;
    }
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    if (address != null) {
      _result.address = address;
    }
    if (id != null) {
      _result.id = id;
    }
    if (userAgent != null) {
      _result.userAgent = userAgent;
    }
    if (disableRelayTx != null) {
      _result.disableRelayTx = disableRelayTx;
    }
    if (subnetworkId != null) {
      _result.subnetworkId = subnetworkId;
    }
    if (network != null) {
      _result.network = network;
    }
    return _result;
  }
  factory VersionMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VersionMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VersionMessage clone() => VersionMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VersionMessage copyWith(void Function(VersionMessage) updates) =>
      super.copyWith((message) => updates(message as VersionMessage))
          as VersionMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VersionMessage create() => VersionMessage._();
  VersionMessage createEmptyInstance() => create();
  static $pb.PbList<VersionMessage> createRepeated() =>
      $pb.PbList<VersionMessage>();
  @$core.pragma('dart2js:noInline')
  static VersionMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VersionMessage>(create);
  static VersionMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get protocolVersion => $_getIZ(0);
  @$pb.TagNumber(1)
  set protocolVersion($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasProtocolVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearProtocolVersion() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get services => $_getI64(1);
  @$pb.TagNumber(2)
  set services($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasServices() => $_has(1);
  @$pb.TagNumber(2)
  void clearServices() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get timestamp => $_getI64(2);
  @$pb.TagNumber(3)
  set timestamp($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTimestamp() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimestamp() => clearField(3);

  @$pb.TagNumber(4)
  NetAddress get address => $_getN(3);
  @$pb.TagNumber(4)
  set address(NetAddress v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasAddress() => $_has(3);
  @$pb.TagNumber(4)
  void clearAddress() => clearField(4);
  @$pb.TagNumber(4)
  NetAddress ensureAddress() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.List<$core.int> get id => $_getN(4);
  @$pb.TagNumber(5)
  set id($core.List<$core.int> v) {
    $_setBytes(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasId() => $_has(4);
  @$pb.TagNumber(5)
  void clearId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get userAgent => $_getSZ(5);
  @$pb.TagNumber(6)
  set userAgent($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasUserAgent() => $_has(5);
  @$pb.TagNumber(6)
  void clearUserAgent() => clearField(6);

  @$pb.TagNumber(8)
  $core.bool get disableRelayTx => $_getBF(6);
  @$pb.TagNumber(8)
  set disableRelayTx($core.bool v) {
    $_setBool(6, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasDisableRelayTx() => $_has(6);
  @$pb.TagNumber(8)
  void clearDisableRelayTx() => clearField(8);

  @$pb.TagNumber(9)
  SubnetworkId get subnetworkId => $_getN(7);
  @$pb.TagNumber(9)
  set subnetworkId(SubnetworkId v) {
    setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasSubnetworkId() => $_has(7);
  @$pb.TagNumber(9)
  void clearSubnetworkId() => clearField(9);
  @$pb.TagNumber(9)
  SubnetworkId ensureSubnetworkId() => $_ensure(7);

  @$pb.TagNumber(10)
  $core.String get network => $_getSZ(8);
  @$pb.TagNumber(10)
  set network($core.String v) {
    $_setString(8, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasNetwork() => $_has(8);
  @$pb.TagNumber(10)
  void clearNetwork() => clearField(10);
}

class RejectMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RejectMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'reason')
    ..hasRequiredFields = false;

  RejectMessage._() : super();
  factory RejectMessage({
    $core.String? reason,
  }) {
    final _result = create();
    if (reason != null) {
      _result.reason = reason;
    }
    return _result;
  }
  factory RejectMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RejectMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RejectMessage clone() => RejectMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RejectMessage copyWith(void Function(RejectMessage) updates) =>
      super.copyWith((message) => updates(message as RejectMessage))
          as RejectMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RejectMessage create() => RejectMessage._();
  RejectMessage createEmptyInstance() => create();
  static $pb.PbList<RejectMessage> createRepeated() =>
      $pb.PbList<RejectMessage>();
  @$core.pragma('dart2js:noInline')
  static RejectMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RejectMessage>(create);
  static RejectMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get reason => $_getSZ(0);
  @$pb.TagNumber(1)
  set reason($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasReason() => $_has(0);
  @$pb.TagNumber(1)
  void clearReason() => clearField(1);
}

class RequestPruningPointUTXOSetMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RequestPruningPointUTXOSetMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<Hash>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'pruningPointHash',
        protoName: 'pruningPointHash',
        subBuilder: Hash.create)
    ..hasRequiredFields = false;

  RequestPruningPointUTXOSetMessage._() : super();
  factory RequestPruningPointUTXOSetMessage({
    Hash? pruningPointHash,
  }) {
    final _result = create();
    if (pruningPointHash != null) {
      _result.pruningPointHash = pruningPointHash;
    }
    return _result;
  }
  factory RequestPruningPointUTXOSetMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RequestPruningPointUTXOSetMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RequestPruningPointUTXOSetMessage clone() =>
      RequestPruningPointUTXOSetMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RequestPruningPointUTXOSetMessage copyWith(
          void Function(RequestPruningPointUTXOSetMessage) updates) =>
      super.copyWith((message) =>
              updates(message as RequestPruningPointUTXOSetMessage))
          as RequestPruningPointUTXOSetMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestPruningPointUTXOSetMessage create() =>
      RequestPruningPointUTXOSetMessage._();
  RequestPruningPointUTXOSetMessage createEmptyInstance() => create();
  static $pb.PbList<RequestPruningPointUTXOSetMessage> createRepeated() =>
      $pb.PbList<RequestPruningPointUTXOSetMessage>();
  @$core.pragma('dart2js:noInline')
  static RequestPruningPointUTXOSetMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequestPruningPointUTXOSetMessage>(
          create);
  static RequestPruningPointUTXOSetMessage? _defaultInstance;

  @$pb.TagNumber(1)
  Hash get pruningPointHash => $_getN(0);
  @$pb.TagNumber(1)
  set pruningPointHash(Hash v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPruningPointHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearPruningPointHash() => clearField(1);
  @$pb.TagNumber(1)
  Hash ensurePruningPointHash() => $_ensure(0);
}

class PruningPointUtxoSetChunkMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PruningPointUtxoSetChunkMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..pc<OutpointAndUtxoEntryPair>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'outpointAndUtxoEntryPairs',
        $pb.PbFieldType.PM,
        protoName: 'outpointAndUtxoEntryPairs',
        subBuilder: OutpointAndUtxoEntryPair.create)
    ..hasRequiredFields = false;

  PruningPointUtxoSetChunkMessage._() : super();
  factory PruningPointUtxoSetChunkMessage({
    $core.Iterable<OutpointAndUtxoEntryPair>? outpointAndUtxoEntryPairs,
  }) {
    final _result = create();
    if (outpointAndUtxoEntryPairs != null) {
      _result.outpointAndUtxoEntryPairs.addAll(outpointAndUtxoEntryPairs);
    }
    return _result;
  }
  factory PruningPointUtxoSetChunkMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PruningPointUtxoSetChunkMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PruningPointUtxoSetChunkMessage clone() =>
      PruningPointUtxoSetChunkMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PruningPointUtxoSetChunkMessage copyWith(
          void Function(PruningPointUtxoSetChunkMessage) updates) =>
      super.copyWith(
              (message) => updates(message as PruningPointUtxoSetChunkMessage))
          as PruningPointUtxoSetChunkMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PruningPointUtxoSetChunkMessage create() =>
      PruningPointUtxoSetChunkMessage._();
  PruningPointUtxoSetChunkMessage createEmptyInstance() => create();
  static $pb.PbList<PruningPointUtxoSetChunkMessage> createRepeated() =>
      $pb.PbList<PruningPointUtxoSetChunkMessage>();
  @$core.pragma('dart2js:noInline')
  static PruningPointUtxoSetChunkMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PruningPointUtxoSetChunkMessage>(
          create);
  static PruningPointUtxoSetChunkMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<OutpointAndUtxoEntryPair> get outpointAndUtxoEntryPairs =>
      $_getList(0);
}

class OutpointAndUtxoEntryPair extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'OutpointAndUtxoEntryPair',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<Outpoint>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'outpoint',
        subBuilder: Outpoint.create)
    ..aOM<UtxoEntry>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'utxoEntry',
        protoName: 'utxoEntry',
        subBuilder: UtxoEntry.create)
    ..hasRequiredFields = false;

  OutpointAndUtxoEntryPair._() : super();
  factory OutpointAndUtxoEntryPair({
    Outpoint? outpoint,
    UtxoEntry? utxoEntry,
  }) {
    final _result = create();
    if (outpoint != null) {
      _result.outpoint = outpoint;
    }
    if (utxoEntry != null) {
      _result.utxoEntry = utxoEntry;
    }
    return _result;
  }
  factory OutpointAndUtxoEntryPair.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory OutpointAndUtxoEntryPair.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  OutpointAndUtxoEntryPair clone() =>
      OutpointAndUtxoEntryPair()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  OutpointAndUtxoEntryPair copyWith(
          void Function(OutpointAndUtxoEntryPair) updates) =>
      super.copyWith((message) => updates(message as OutpointAndUtxoEntryPair))
          as OutpointAndUtxoEntryPair; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OutpointAndUtxoEntryPair create() => OutpointAndUtxoEntryPair._();
  OutpointAndUtxoEntryPair createEmptyInstance() => create();
  static $pb.PbList<OutpointAndUtxoEntryPair> createRepeated() =>
      $pb.PbList<OutpointAndUtxoEntryPair>();
  @$core.pragma('dart2js:noInline')
  static OutpointAndUtxoEntryPair getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OutpointAndUtxoEntryPair>(create);
  static OutpointAndUtxoEntryPair? _defaultInstance;

  @$pb.TagNumber(1)
  Outpoint get outpoint => $_getN(0);
  @$pb.TagNumber(1)
  set outpoint(Outpoint v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasOutpoint() => $_has(0);
  @$pb.TagNumber(1)
  void clearOutpoint() => clearField(1);
  @$pb.TagNumber(1)
  Outpoint ensureOutpoint() => $_ensure(0);

  @$pb.TagNumber(2)
  UtxoEntry get utxoEntry => $_getN(1);
  @$pb.TagNumber(2)
  set utxoEntry(UtxoEntry v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUtxoEntry() => $_has(1);
  @$pb.TagNumber(2)
  void clearUtxoEntry() => clearField(2);
  @$pb.TagNumber(2)
  UtxoEntry ensureUtxoEntry() => $_ensure(1);
}

class UtxoEntry extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'UtxoEntry',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'amount',
        $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<ScriptPublicKey>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'scriptPublicKey',
        protoName: 'scriptPublicKey',
        subBuilder: ScriptPublicKey.create)
    ..a<$fixnum.Int64>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'blockDaaScore',
        $pb.PbFieldType.OU6,
        protoName: 'blockDaaScore',
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isCoinbase',
        protoName: 'isCoinbase')
    ..hasRequiredFields = false;

  UtxoEntry._() : super();
  factory UtxoEntry({
    $fixnum.Int64? amount,
    ScriptPublicKey? scriptPublicKey,
    $fixnum.Int64? blockDaaScore,
    $core.bool? isCoinbase,
  }) {
    final _result = create();
    if (amount != null) {
      _result.amount = amount;
    }
    if (scriptPublicKey != null) {
      _result.scriptPublicKey = scriptPublicKey;
    }
    if (blockDaaScore != null) {
      _result.blockDaaScore = blockDaaScore;
    }
    if (isCoinbase != null) {
      _result.isCoinbase = isCoinbase;
    }
    return _result;
  }
  factory UtxoEntry.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UtxoEntry.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UtxoEntry clone() => UtxoEntry()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UtxoEntry copyWith(void Function(UtxoEntry) updates) =>
      super.copyWith((message) => updates(message as UtxoEntry))
          as UtxoEntry; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UtxoEntry create() => UtxoEntry._();
  UtxoEntry createEmptyInstance() => create();
  static $pb.PbList<UtxoEntry> createRepeated() => $pb.PbList<UtxoEntry>();
  @$core.pragma('dart2js:noInline')
  static UtxoEntry getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UtxoEntry>(create);
  static UtxoEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get amount => $_getI64(0);
  @$pb.TagNumber(1)
  set amount($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAmount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAmount() => clearField(1);

  @$pb.TagNumber(2)
  ScriptPublicKey get scriptPublicKey => $_getN(1);
  @$pb.TagNumber(2)
  set scriptPublicKey(ScriptPublicKey v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasScriptPublicKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearScriptPublicKey() => clearField(2);
  @$pb.TagNumber(2)
  ScriptPublicKey ensureScriptPublicKey() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get blockDaaScore => $_getI64(2);
  @$pb.TagNumber(3)
  set blockDaaScore($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasBlockDaaScore() => $_has(2);
  @$pb.TagNumber(3)
  void clearBlockDaaScore() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isCoinbase => $_getBF(3);
  @$pb.TagNumber(4)
  set isCoinbase($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasIsCoinbase() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsCoinbase() => clearField(4);
}

class RequestNextPruningPointUtxoSetChunkMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RequestNextPruningPointUtxoSetChunkMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  RequestNextPruningPointUtxoSetChunkMessage._() : super();
  factory RequestNextPruningPointUtxoSetChunkMessage() => create();
  factory RequestNextPruningPointUtxoSetChunkMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RequestNextPruningPointUtxoSetChunkMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RequestNextPruningPointUtxoSetChunkMessage clone() =>
      RequestNextPruningPointUtxoSetChunkMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RequestNextPruningPointUtxoSetChunkMessage copyWith(
          void Function(RequestNextPruningPointUtxoSetChunkMessage) updates) =>
      super.copyWith((message) =>
              updates(message as RequestNextPruningPointUtxoSetChunkMessage))
          as RequestNextPruningPointUtxoSetChunkMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestNextPruningPointUtxoSetChunkMessage create() =>
      RequestNextPruningPointUtxoSetChunkMessage._();
  RequestNextPruningPointUtxoSetChunkMessage createEmptyInstance() => create();
  static $pb.PbList<RequestNextPruningPointUtxoSetChunkMessage>
      createRepeated() =>
          $pb.PbList<RequestNextPruningPointUtxoSetChunkMessage>();
  @$core.pragma('dart2js:noInline')
  static RequestNextPruningPointUtxoSetChunkMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          RequestNextPruningPointUtxoSetChunkMessage>(create);
  static RequestNextPruningPointUtxoSetChunkMessage? _defaultInstance;
}

class DonePruningPointUtxoSetChunksMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'DonePruningPointUtxoSetChunksMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  DonePruningPointUtxoSetChunksMessage._() : super();
  factory DonePruningPointUtxoSetChunksMessage() => create();
  factory DonePruningPointUtxoSetChunksMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DonePruningPointUtxoSetChunksMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DonePruningPointUtxoSetChunksMessage clone() =>
      DonePruningPointUtxoSetChunksMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DonePruningPointUtxoSetChunksMessage copyWith(
          void Function(DonePruningPointUtxoSetChunksMessage) updates) =>
      super.copyWith((message) =>
              updates(message as DonePruningPointUtxoSetChunksMessage))
          as DonePruningPointUtxoSetChunksMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DonePruningPointUtxoSetChunksMessage create() =>
      DonePruningPointUtxoSetChunksMessage._();
  DonePruningPointUtxoSetChunksMessage createEmptyInstance() => create();
  static $pb.PbList<DonePruningPointUtxoSetChunksMessage> createRepeated() =>
      $pb.PbList<DonePruningPointUtxoSetChunksMessage>();
  @$core.pragma('dart2js:noInline')
  static DonePruningPointUtxoSetChunksMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          DonePruningPointUtxoSetChunksMessage>(create);
  static DonePruningPointUtxoSetChunksMessage? _defaultInstance;
}

class RequestIBDBlocksMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RequestIBDBlocksMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..pc<Hash>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hashes',
        $pb.PbFieldType.PM,
        subBuilder: Hash.create)
    ..hasRequiredFields = false;

  RequestIBDBlocksMessage._() : super();
  factory RequestIBDBlocksMessage({
    $core.Iterable<Hash>? hashes,
  }) {
    final _result = create();
    if (hashes != null) {
      _result.hashes.addAll(hashes);
    }
    return _result;
  }
  factory RequestIBDBlocksMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RequestIBDBlocksMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RequestIBDBlocksMessage clone() =>
      RequestIBDBlocksMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RequestIBDBlocksMessage copyWith(
          void Function(RequestIBDBlocksMessage) updates) =>
      super.copyWith((message) => updates(message as RequestIBDBlocksMessage))
          as RequestIBDBlocksMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestIBDBlocksMessage create() => RequestIBDBlocksMessage._();
  RequestIBDBlocksMessage createEmptyInstance() => create();
  static $pb.PbList<RequestIBDBlocksMessage> createRepeated() =>
      $pb.PbList<RequestIBDBlocksMessage>();
  @$core.pragma('dart2js:noInline')
  static RequestIBDBlocksMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequestIBDBlocksMessage>(create);
  static RequestIBDBlocksMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Hash> get hashes => $_getList(0);
}

class UnexpectedPruningPointMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'UnexpectedPruningPointMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  UnexpectedPruningPointMessage._() : super();
  factory UnexpectedPruningPointMessage() => create();
  factory UnexpectedPruningPointMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UnexpectedPruningPointMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UnexpectedPruningPointMessage clone() =>
      UnexpectedPruningPointMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UnexpectedPruningPointMessage copyWith(
          void Function(UnexpectedPruningPointMessage) updates) =>
      super.copyWith(
              (message) => updates(message as UnexpectedPruningPointMessage))
          as UnexpectedPruningPointMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnexpectedPruningPointMessage create() =>
      UnexpectedPruningPointMessage._();
  UnexpectedPruningPointMessage createEmptyInstance() => create();
  static $pb.PbList<UnexpectedPruningPointMessage> createRepeated() =>
      $pb.PbList<UnexpectedPruningPointMessage>();
  @$core.pragma('dart2js:noInline')
  static UnexpectedPruningPointMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UnexpectedPruningPointMessage>(create);
  static UnexpectedPruningPointMessage? _defaultInstance;
}

class IbdBlockLocatorMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'IbdBlockLocatorMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<Hash>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'targetHash',
        protoName: 'targetHash',
        subBuilder: Hash.create)
    ..pc<Hash>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'blockLocatorHashes',
        $pb.PbFieldType.PM,
        protoName: 'blockLocatorHashes',
        subBuilder: Hash.create)
    ..hasRequiredFields = false;

  IbdBlockLocatorMessage._() : super();
  factory IbdBlockLocatorMessage({
    Hash? targetHash,
    $core.Iterable<Hash>? blockLocatorHashes,
  }) {
    final _result = create();
    if (targetHash != null) {
      _result.targetHash = targetHash;
    }
    if (blockLocatorHashes != null) {
      _result.blockLocatorHashes.addAll(blockLocatorHashes);
    }
    return _result;
  }
  factory IbdBlockLocatorMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory IbdBlockLocatorMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  IbdBlockLocatorMessage clone() =>
      IbdBlockLocatorMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  IbdBlockLocatorMessage copyWith(
          void Function(IbdBlockLocatorMessage) updates) =>
      super.copyWith((message) => updates(message as IbdBlockLocatorMessage))
          as IbdBlockLocatorMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IbdBlockLocatorMessage create() => IbdBlockLocatorMessage._();
  IbdBlockLocatorMessage createEmptyInstance() => create();
  static $pb.PbList<IbdBlockLocatorMessage> createRepeated() =>
      $pb.PbList<IbdBlockLocatorMessage>();
  @$core.pragma('dart2js:noInline')
  static IbdBlockLocatorMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IbdBlockLocatorMessage>(create);
  static IbdBlockLocatorMessage? _defaultInstance;

  @$pb.TagNumber(1)
  Hash get targetHash => $_getN(0);
  @$pb.TagNumber(1)
  set targetHash(Hash v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTargetHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearTargetHash() => clearField(1);
  @$pb.TagNumber(1)
  Hash ensureTargetHash() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<Hash> get blockLocatorHashes => $_getList(1);
}

class RequestIBDChainBlockLocatorMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RequestIBDChainBlockLocatorMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<Hash>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'lowHash',
        protoName: 'lowHash',
        subBuilder: Hash.create)
    ..aOM<Hash>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'highHash',
        protoName: 'highHash',
        subBuilder: Hash.create)
    ..hasRequiredFields = false;

  RequestIBDChainBlockLocatorMessage._() : super();
  factory RequestIBDChainBlockLocatorMessage({
    Hash? lowHash,
    Hash? highHash,
  }) {
    final _result = create();
    if (lowHash != null) {
      _result.lowHash = lowHash;
    }
    if (highHash != null) {
      _result.highHash = highHash;
    }
    return _result;
  }
  factory RequestIBDChainBlockLocatorMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RequestIBDChainBlockLocatorMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RequestIBDChainBlockLocatorMessage clone() =>
      RequestIBDChainBlockLocatorMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RequestIBDChainBlockLocatorMessage copyWith(
          void Function(RequestIBDChainBlockLocatorMessage) updates) =>
      super.copyWith((message) =>
              updates(message as RequestIBDChainBlockLocatorMessage))
          as RequestIBDChainBlockLocatorMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestIBDChainBlockLocatorMessage create() =>
      RequestIBDChainBlockLocatorMessage._();
  RequestIBDChainBlockLocatorMessage createEmptyInstance() => create();
  static $pb.PbList<RequestIBDChainBlockLocatorMessage> createRepeated() =>
      $pb.PbList<RequestIBDChainBlockLocatorMessage>();
  @$core.pragma('dart2js:noInline')
  static RequestIBDChainBlockLocatorMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequestIBDChainBlockLocatorMessage>(
          create);
  static RequestIBDChainBlockLocatorMessage? _defaultInstance;

  @$pb.TagNumber(1)
  Hash get lowHash => $_getN(0);
  @$pb.TagNumber(1)
  set lowHash(Hash v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLowHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearLowHash() => clearField(1);
  @$pb.TagNumber(1)
  Hash ensureLowHash() => $_ensure(0);

  @$pb.TagNumber(2)
  Hash get highHash => $_getN(1);
  @$pb.TagNumber(2)
  set highHash(Hash v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasHighHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearHighHash() => clearField(2);
  @$pb.TagNumber(2)
  Hash ensureHighHash() => $_ensure(1);
}

class IbdChainBlockLocatorMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'IbdChainBlockLocatorMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..pc<Hash>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'blockLocatorHashes',
        $pb.PbFieldType.PM,
        protoName: 'blockLocatorHashes',
        subBuilder: Hash.create)
    ..hasRequiredFields = false;

  IbdChainBlockLocatorMessage._() : super();
  factory IbdChainBlockLocatorMessage({
    $core.Iterable<Hash>? blockLocatorHashes,
  }) {
    final _result = create();
    if (blockLocatorHashes != null) {
      _result.blockLocatorHashes.addAll(blockLocatorHashes);
    }
    return _result;
  }
  factory IbdChainBlockLocatorMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory IbdChainBlockLocatorMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  IbdChainBlockLocatorMessage clone() =>
      IbdChainBlockLocatorMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  IbdChainBlockLocatorMessage copyWith(
          void Function(IbdChainBlockLocatorMessage) updates) =>
      super.copyWith(
              (message) => updates(message as IbdChainBlockLocatorMessage))
          as IbdChainBlockLocatorMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IbdChainBlockLocatorMessage create() =>
      IbdChainBlockLocatorMessage._();
  IbdChainBlockLocatorMessage createEmptyInstance() => create();
  static $pb.PbList<IbdChainBlockLocatorMessage> createRepeated() =>
      $pb.PbList<IbdChainBlockLocatorMessage>();
  @$core.pragma('dart2js:noInline')
  static IbdChainBlockLocatorMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IbdChainBlockLocatorMessage>(create);
  static IbdChainBlockLocatorMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Hash> get blockLocatorHashes => $_getList(0);
}

class RequestAnticoneMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RequestAnticoneMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<Hash>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'blockHash',
        protoName: 'blockHash',
        subBuilder: Hash.create)
    ..aOM<Hash>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'contextHash',
        protoName: 'contextHash',
        subBuilder: Hash.create)
    ..hasRequiredFields = false;

  RequestAnticoneMessage._() : super();
  factory RequestAnticoneMessage({
    Hash? blockHash,
    Hash? contextHash,
  }) {
    final _result = create();
    if (blockHash != null) {
      _result.blockHash = blockHash;
    }
    if (contextHash != null) {
      _result.contextHash = contextHash;
    }
    return _result;
  }
  factory RequestAnticoneMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RequestAnticoneMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RequestAnticoneMessage clone() =>
      RequestAnticoneMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RequestAnticoneMessage copyWith(
          void Function(RequestAnticoneMessage) updates) =>
      super.copyWith((message) => updates(message as RequestAnticoneMessage))
          as RequestAnticoneMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestAnticoneMessage create() => RequestAnticoneMessage._();
  RequestAnticoneMessage createEmptyInstance() => create();
  static $pb.PbList<RequestAnticoneMessage> createRepeated() =>
      $pb.PbList<RequestAnticoneMessage>();
  @$core.pragma('dart2js:noInline')
  static RequestAnticoneMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequestAnticoneMessage>(create);
  static RequestAnticoneMessage? _defaultInstance;

  @$pb.TagNumber(1)
  Hash get blockHash => $_getN(0);
  @$pb.TagNumber(1)
  set blockHash(Hash v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBlockHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearBlockHash() => clearField(1);
  @$pb.TagNumber(1)
  Hash ensureBlockHash() => $_ensure(0);

  @$pb.TagNumber(2)
  Hash get contextHash => $_getN(1);
  @$pb.TagNumber(2)
  set contextHash(Hash v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasContextHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearContextHash() => clearField(2);
  @$pb.TagNumber(2)
  Hash ensureContextHash() => $_ensure(1);
}

class IbdBlockLocatorHighestHashMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'IbdBlockLocatorHighestHashMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<Hash>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'highestHash',
        protoName: 'highestHash',
        subBuilder: Hash.create)
    ..hasRequiredFields = false;

  IbdBlockLocatorHighestHashMessage._() : super();
  factory IbdBlockLocatorHighestHashMessage({
    Hash? highestHash,
  }) {
    final _result = create();
    if (highestHash != null) {
      _result.highestHash = highestHash;
    }
    return _result;
  }
  factory IbdBlockLocatorHighestHashMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory IbdBlockLocatorHighestHashMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  IbdBlockLocatorHighestHashMessage clone() =>
      IbdBlockLocatorHighestHashMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  IbdBlockLocatorHighestHashMessage copyWith(
          void Function(IbdBlockLocatorHighestHashMessage) updates) =>
      super.copyWith((message) =>
              updates(message as IbdBlockLocatorHighestHashMessage))
          as IbdBlockLocatorHighestHashMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IbdBlockLocatorHighestHashMessage create() =>
      IbdBlockLocatorHighestHashMessage._();
  IbdBlockLocatorHighestHashMessage createEmptyInstance() => create();
  static $pb.PbList<IbdBlockLocatorHighestHashMessage> createRepeated() =>
      $pb.PbList<IbdBlockLocatorHighestHashMessage>();
  @$core.pragma('dart2js:noInline')
  static IbdBlockLocatorHighestHashMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IbdBlockLocatorHighestHashMessage>(
          create);
  static IbdBlockLocatorHighestHashMessage? _defaultInstance;

  @$pb.TagNumber(1)
  Hash get highestHash => $_getN(0);
  @$pb.TagNumber(1)
  set highestHash(Hash v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHighestHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearHighestHash() => clearField(1);
  @$pb.TagNumber(1)
  Hash ensureHighestHash() => $_ensure(0);
}

class IbdBlockLocatorHighestHashNotFoundMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'IbdBlockLocatorHighestHashNotFoundMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  IbdBlockLocatorHighestHashNotFoundMessage._() : super();
  factory IbdBlockLocatorHighestHashNotFoundMessage() => create();
  factory IbdBlockLocatorHighestHashNotFoundMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory IbdBlockLocatorHighestHashNotFoundMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  IbdBlockLocatorHighestHashNotFoundMessage clone() =>
      IbdBlockLocatorHighestHashNotFoundMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  IbdBlockLocatorHighestHashNotFoundMessage copyWith(
          void Function(IbdBlockLocatorHighestHashNotFoundMessage) updates) =>
      super.copyWith((message) =>
              updates(message as IbdBlockLocatorHighestHashNotFoundMessage))
          as IbdBlockLocatorHighestHashNotFoundMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IbdBlockLocatorHighestHashNotFoundMessage create() =>
      IbdBlockLocatorHighestHashNotFoundMessage._();
  IbdBlockLocatorHighestHashNotFoundMessage createEmptyInstance() => create();
  static $pb.PbList<IbdBlockLocatorHighestHashNotFoundMessage>
      createRepeated() =>
          $pb.PbList<IbdBlockLocatorHighestHashNotFoundMessage>();
  @$core.pragma('dart2js:noInline')
  static IbdBlockLocatorHighestHashNotFoundMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          IbdBlockLocatorHighestHashNotFoundMessage>(create);
  static IbdBlockLocatorHighestHashNotFoundMessage? _defaultInstance;
}

class BlockHeadersMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'BlockHeadersMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..pc<BlockHeader>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'blockHeaders',
        $pb.PbFieldType.PM,
        protoName: 'blockHeaders',
        subBuilder: BlockHeader.create)
    ..hasRequiredFields = false;

  BlockHeadersMessage._() : super();
  factory BlockHeadersMessage({
    $core.Iterable<BlockHeader>? blockHeaders,
  }) {
    final _result = create();
    if (blockHeaders != null) {
      _result.blockHeaders.addAll(blockHeaders);
    }
    return _result;
  }
  factory BlockHeadersMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BlockHeadersMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BlockHeadersMessage clone() => BlockHeadersMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BlockHeadersMessage copyWith(void Function(BlockHeadersMessage) updates) =>
      super.copyWith((message) => updates(message as BlockHeadersMessage))
          as BlockHeadersMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockHeadersMessage create() => BlockHeadersMessage._();
  BlockHeadersMessage createEmptyInstance() => create();
  static $pb.PbList<BlockHeadersMessage> createRepeated() =>
      $pb.PbList<BlockHeadersMessage>();
  @$core.pragma('dart2js:noInline')
  static BlockHeadersMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BlockHeadersMessage>(create);
  static BlockHeadersMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<BlockHeader> get blockHeaders => $_getList(0);
}

class RequestPruningPointAndItsAnticoneMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RequestPruningPointAndItsAnticoneMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  RequestPruningPointAndItsAnticoneMessage._() : super();
  factory RequestPruningPointAndItsAnticoneMessage() => create();
  factory RequestPruningPointAndItsAnticoneMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RequestPruningPointAndItsAnticoneMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RequestPruningPointAndItsAnticoneMessage clone() =>
      RequestPruningPointAndItsAnticoneMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RequestPruningPointAndItsAnticoneMessage copyWith(
          void Function(RequestPruningPointAndItsAnticoneMessage) updates) =>
      super.copyWith((message) =>
              updates(message as RequestPruningPointAndItsAnticoneMessage))
          as RequestPruningPointAndItsAnticoneMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestPruningPointAndItsAnticoneMessage create() =>
      RequestPruningPointAndItsAnticoneMessage._();
  RequestPruningPointAndItsAnticoneMessage createEmptyInstance() => create();
  static $pb.PbList<RequestPruningPointAndItsAnticoneMessage>
      createRepeated() =>
          $pb.PbList<RequestPruningPointAndItsAnticoneMessage>();
  @$core.pragma('dart2js:noInline')
  static RequestPruningPointAndItsAnticoneMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          RequestPruningPointAndItsAnticoneMessage>(create);
  static RequestPruningPointAndItsAnticoneMessage? _defaultInstance;
}

class RequestNextPruningPointAndItsAnticoneBlocksMessage
    extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RequestNextPruningPointAndItsAnticoneBlocksMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  RequestNextPruningPointAndItsAnticoneBlocksMessage._() : super();
  factory RequestNextPruningPointAndItsAnticoneBlocksMessage() => create();
  factory RequestNextPruningPointAndItsAnticoneBlocksMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RequestNextPruningPointAndItsAnticoneBlocksMessage.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RequestNextPruningPointAndItsAnticoneBlocksMessage clone() =>
      RequestNextPruningPointAndItsAnticoneBlocksMessage()
        ..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RequestNextPruningPointAndItsAnticoneBlocksMessage copyWith(
          void Function(RequestNextPruningPointAndItsAnticoneBlocksMessage)
              updates) =>
      super.copyWith((message) => updates(
              message as RequestNextPruningPointAndItsAnticoneBlocksMessage))
          as RequestNextPruningPointAndItsAnticoneBlocksMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestNextPruningPointAndItsAnticoneBlocksMessage create() =>
      RequestNextPruningPointAndItsAnticoneBlocksMessage._();
  RequestNextPruningPointAndItsAnticoneBlocksMessage createEmptyInstance() =>
      create();
  static $pb.PbList<RequestNextPruningPointAndItsAnticoneBlocksMessage>
      createRepeated() =>
          $pb.PbList<RequestNextPruningPointAndItsAnticoneBlocksMessage>();
  @$core.pragma('dart2js:noInline')
  static RequestNextPruningPointAndItsAnticoneBlocksMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          RequestNextPruningPointAndItsAnticoneBlocksMessage>(create);
  static RequestNextPruningPointAndItsAnticoneBlocksMessage? _defaultInstance;
}

class BlockWithTrustedDataMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'BlockWithTrustedDataMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<BlockMessage>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'block',
        subBuilder: BlockMessage.create)
    ..a<$fixnum.Int64>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'daaScore',
        $pb.PbFieldType.OU6,
        protoName: 'daaScore',
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<DaaBlock>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'daaWindow',
        $pb.PbFieldType.PM,
        protoName: 'daaWindow',
        subBuilder: DaaBlock.create)
    ..pc<BlockGhostdagDataHashPair>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ghostdagData',
        $pb.PbFieldType.PM,
        protoName: 'ghostdagData',
        subBuilder: BlockGhostdagDataHashPair.create)
    ..hasRequiredFields = false;

  BlockWithTrustedDataMessage._() : super();
  factory BlockWithTrustedDataMessage({
    BlockMessage? block,
    $fixnum.Int64? daaScore,
    $core.Iterable<DaaBlock>? daaWindow,
    $core.Iterable<BlockGhostdagDataHashPair>? ghostdagData,
  }) {
    final _result = create();
    if (block != null) {
      _result.block = block;
    }
    if (daaScore != null) {
      _result.daaScore = daaScore;
    }
    if (daaWindow != null) {
      _result.daaWindow.addAll(daaWindow);
    }
    if (ghostdagData != null) {
      _result.ghostdagData.addAll(ghostdagData);
    }
    return _result;
  }
  factory BlockWithTrustedDataMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BlockWithTrustedDataMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BlockWithTrustedDataMessage clone() =>
      BlockWithTrustedDataMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BlockWithTrustedDataMessage copyWith(
          void Function(BlockWithTrustedDataMessage) updates) =>
      super.copyWith(
              (message) => updates(message as BlockWithTrustedDataMessage))
          as BlockWithTrustedDataMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockWithTrustedDataMessage create() =>
      BlockWithTrustedDataMessage._();
  BlockWithTrustedDataMessage createEmptyInstance() => create();
  static $pb.PbList<BlockWithTrustedDataMessage> createRepeated() =>
      $pb.PbList<BlockWithTrustedDataMessage>();
  @$core.pragma('dart2js:noInline')
  static BlockWithTrustedDataMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BlockWithTrustedDataMessage>(create);
  static BlockWithTrustedDataMessage? _defaultInstance;

  @$pb.TagNumber(1)
  BlockMessage get block => $_getN(0);
  @$pb.TagNumber(1)
  set block(BlockMessage v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBlock() => $_has(0);
  @$pb.TagNumber(1)
  void clearBlock() => clearField(1);
  @$pb.TagNumber(1)
  BlockMessage ensureBlock() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get daaScore => $_getI64(1);
  @$pb.TagNumber(2)
  set daaScore($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDaaScore() => $_has(1);
  @$pb.TagNumber(2)
  void clearDaaScore() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<DaaBlock> get daaWindow => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<BlockGhostdagDataHashPair> get ghostdagData => $_getList(3);
}

class DaaBlock extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'DaaBlock',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<GhostdagData>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ghostdagData',
        protoName: 'ghostdagData',
        subBuilder: GhostdagData.create)
    ..aOM<BlockMessage>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'block',
        subBuilder: BlockMessage.create)
    ..hasRequiredFields = false;

  DaaBlock._() : super();
  factory DaaBlock({
    GhostdagData? ghostdagData,
    BlockMessage? block,
  }) {
    final _result = create();
    if (ghostdagData != null) {
      _result.ghostdagData = ghostdagData;
    }
    if (block != null) {
      _result.block = block;
    }
    return _result;
  }
  factory DaaBlock.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DaaBlock.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DaaBlock clone() => DaaBlock()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DaaBlock copyWith(void Function(DaaBlock) updates) =>
      super.copyWith((message) => updates(message as DaaBlock))
          as DaaBlock; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DaaBlock create() => DaaBlock._();
  DaaBlock createEmptyInstance() => create();
  static $pb.PbList<DaaBlock> createRepeated() => $pb.PbList<DaaBlock>();
  @$core.pragma('dart2js:noInline')
  static DaaBlock getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DaaBlock>(create);
  static DaaBlock? _defaultInstance;

  @$pb.TagNumber(2)
  GhostdagData get ghostdagData => $_getN(0);
  @$pb.TagNumber(2)
  set ghostdagData(GhostdagData v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasGhostdagData() => $_has(0);
  @$pb.TagNumber(2)
  void clearGhostdagData() => clearField(2);
  @$pb.TagNumber(2)
  GhostdagData ensureGhostdagData() => $_ensure(0);

  @$pb.TagNumber(3)
  BlockMessage get block => $_getN(1);
  @$pb.TagNumber(3)
  set block(BlockMessage v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasBlock() => $_has(1);
  @$pb.TagNumber(3)
  void clearBlock() => clearField(3);
  @$pb.TagNumber(3)
  BlockMessage ensureBlock() => $_ensure(1);
}

class DaaBlockV4 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'DaaBlockV4',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<BlockHeader>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'header',
        subBuilder: BlockHeader.create)
    ..aOM<GhostdagData>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ghostdagData',
        protoName: 'ghostdagData',
        subBuilder: GhostdagData.create)
    ..hasRequiredFields = false;

  DaaBlockV4._() : super();
  factory DaaBlockV4({
    BlockHeader? header,
    GhostdagData? ghostdagData,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (ghostdagData != null) {
      _result.ghostdagData = ghostdagData;
    }
    return _result;
  }
  factory DaaBlockV4.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DaaBlockV4.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DaaBlockV4 clone() => DaaBlockV4()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DaaBlockV4 copyWith(void Function(DaaBlockV4) updates) =>
      super.copyWith((message) => updates(message as DaaBlockV4))
          as DaaBlockV4; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DaaBlockV4 create() => DaaBlockV4._();
  DaaBlockV4 createEmptyInstance() => create();
  static $pb.PbList<DaaBlockV4> createRepeated() => $pb.PbList<DaaBlockV4>();
  @$core.pragma('dart2js:noInline')
  static DaaBlockV4 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DaaBlockV4>(create);
  static DaaBlockV4? _defaultInstance;

  @$pb.TagNumber(1)
  BlockHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(BlockHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  BlockHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  GhostdagData get ghostdagData => $_getN(1);
  @$pb.TagNumber(2)
  set ghostdagData(GhostdagData v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasGhostdagData() => $_has(1);
  @$pb.TagNumber(2)
  void clearGhostdagData() => clearField(2);
  @$pb.TagNumber(2)
  GhostdagData ensureGhostdagData() => $_ensure(1);
}

class BlockGhostdagDataHashPair extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'BlockGhostdagDataHashPair',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<Hash>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hash',
        subBuilder: Hash.create)
    ..aOM<GhostdagData>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ghostdagData',
        protoName: 'ghostdagData',
        subBuilder: GhostdagData.create)
    ..hasRequiredFields = false;

  BlockGhostdagDataHashPair._() : super();
  factory BlockGhostdagDataHashPair({
    Hash? hash,
    GhostdagData? ghostdagData,
  }) {
    final _result = create();
    if (hash != null) {
      _result.transactionId = hash;
    }
    if (ghostdagData != null) {
      _result.ghostdagData = ghostdagData;
    }
    return _result;
  }
  factory BlockGhostdagDataHashPair.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BlockGhostdagDataHashPair.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BlockGhostdagDataHashPair clone() =>
      BlockGhostdagDataHashPair()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BlockGhostdagDataHashPair copyWith(
          void Function(BlockGhostdagDataHashPair) updates) =>
      super.copyWith((message) => updates(message as BlockGhostdagDataHashPair))
          as BlockGhostdagDataHashPair; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockGhostdagDataHashPair create() => BlockGhostdagDataHashPair._();
  BlockGhostdagDataHashPair createEmptyInstance() => create();
  static $pb.PbList<BlockGhostdagDataHashPair> createRepeated() =>
      $pb.PbList<BlockGhostdagDataHashPair>();
  @$core.pragma('dart2js:noInline')
  static BlockGhostdagDataHashPair getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BlockGhostdagDataHashPair>(create);
  static BlockGhostdagDataHashPair? _defaultInstance;

  @$pb.TagNumber(1)
  Hash get transactionId => $_getN(0);
  @$pb.TagNumber(1)
  set transactionId(Hash v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearHash() => clearField(1);
  @$pb.TagNumber(1)
  Hash ensureHash() => $_ensure(0);

  @$pb.TagNumber(2)
  GhostdagData get ghostdagData => $_getN(1);
  @$pb.TagNumber(2)
  set ghostdagData(GhostdagData v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasGhostdagData() => $_has(1);
  @$pb.TagNumber(2)
  void clearGhostdagData() => clearField(2);
  @$pb.TagNumber(2)
  GhostdagData ensureGhostdagData() => $_ensure(1);
}

class GhostdagData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GhostdagData',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'blueScore',
        $pb.PbFieldType.OU6,
        protoName: 'blueScore',
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'blueWork',
        $pb.PbFieldType.OY,
        protoName: 'blueWork')
    ..aOM<Hash>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'selectedParent',
        protoName: 'selectedParent',
        subBuilder: Hash.create)
    ..pc<Hash>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'mergeSetBlues',
        $pb.PbFieldType.PM,
        protoName: 'mergeSetBlues',
        subBuilder: Hash.create)
    ..pc<Hash>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'mergeSetReds',
        $pb.PbFieldType.PM,
        protoName: 'mergeSetReds',
        subBuilder: Hash.create)
    ..pc<BluesAnticoneSizes>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'bluesAnticoneSizes',
        $pb.PbFieldType.PM,
        protoName: 'bluesAnticoneSizes',
        subBuilder: BluesAnticoneSizes.create)
    ..hasRequiredFields = false;

  GhostdagData._() : super();
  factory GhostdagData({
    $fixnum.Int64? blueScore,
    $core.List<$core.int>? blueWork,
    Hash? selectedParent,
    $core.Iterable<Hash>? mergeSetBlues,
    $core.Iterable<Hash>? mergeSetReds,
    $core.Iterable<BluesAnticoneSizes>? bluesAnticoneSizes,
  }) {
    final _result = create();
    if (blueScore != null) {
      _result.blueScore = blueScore;
    }
    if (blueWork != null) {
      _result.blueWork = blueWork;
    }
    if (selectedParent != null) {
      _result.selectedParent = selectedParent;
    }
    if (mergeSetBlues != null) {
      _result.mergeSetBlues.addAll(mergeSetBlues);
    }
    if (mergeSetReds != null) {
      _result.mergeSetReds.addAll(mergeSetReds);
    }
    if (bluesAnticoneSizes != null) {
      _result.bluesAnticoneSizes.addAll(bluesAnticoneSizes);
    }
    return _result;
  }
  factory GhostdagData.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GhostdagData.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GhostdagData clone() => GhostdagData()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GhostdagData copyWith(void Function(GhostdagData) updates) =>
      super.copyWith((message) => updates(message as GhostdagData))
          as GhostdagData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GhostdagData create() => GhostdagData._();
  GhostdagData createEmptyInstance() => create();
  static $pb.PbList<GhostdagData> createRepeated() =>
      $pb.PbList<GhostdagData>();
  @$core.pragma('dart2js:noInline')
  static GhostdagData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GhostdagData>(create);
  static GhostdagData? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get blueScore => $_getI64(0);
  @$pb.TagNumber(1)
  set blueScore($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBlueScore() => $_has(0);
  @$pb.TagNumber(1)
  void clearBlueScore() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get blueWork => $_getN(1);
  @$pb.TagNumber(2)
  set blueWork($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasBlueWork() => $_has(1);
  @$pb.TagNumber(2)
  void clearBlueWork() => clearField(2);

  @$pb.TagNumber(3)
  Hash get selectedParent => $_getN(2);
  @$pb.TagNumber(3)
  set selectedParent(Hash v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSelectedParent() => $_has(2);
  @$pb.TagNumber(3)
  void clearSelectedParent() => clearField(3);
  @$pb.TagNumber(3)
  Hash ensureSelectedParent() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.List<Hash> get mergeSetBlues => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<Hash> get mergeSetReds => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<BluesAnticoneSizes> get bluesAnticoneSizes => $_getList(5);
}

class BluesAnticoneSizes extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'BluesAnticoneSizes',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<Hash>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'blueHash',
        protoName: 'blueHash',
        subBuilder: Hash.create)
    ..a<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'anticoneSize',
        $pb.PbFieldType.OU3,
        protoName: 'anticoneSize')
    ..hasRequiredFields = false;

  BluesAnticoneSizes._() : super();
  factory BluesAnticoneSizes({
    Hash? blueHash,
    $core.int? anticoneSize,
  }) {
    final _result = create();
    if (blueHash != null) {
      _result.blueHash = blueHash;
    }
    if (anticoneSize != null) {
      _result.anticoneSize = anticoneSize;
    }
    return _result;
  }
  factory BluesAnticoneSizes.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BluesAnticoneSizes.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BluesAnticoneSizes clone() => BluesAnticoneSizes()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BluesAnticoneSizes copyWith(void Function(BluesAnticoneSizes) updates) =>
      super.copyWith((message) => updates(message as BluesAnticoneSizes))
          as BluesAnticoneSizes; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BluesAnticoneSizes create() => BluesAnticoneSizes._();
  BluesAnticoneSizes createEmptyInstance() => create();
  static $pb.PbList<BluesAnticoneSizes> createRepeated() =>
      $pb.PbList<BluesAnticoneSizes>();
  @$core.pragma('dart2js:noInline')
  static BluesAnticoneSizes getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BluesAnticoneSizes>(create);
  static BluesAnticoneSizes? _defaultInstance;

  @$pb.TagNumber(1)
  Hash get blueHash => $_getN(0);
  @$pb.TagNumber(1)
  set blueHash(Hash v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBlueHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearBlueHash() => clearField(1);
  @$pb.TagNumber(1)
  Hash ensureBlueHash() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get anticoneSize => $_getIZ(1);
  @$pb.TagNumber(2)
  set anticoneSize($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAnticoneSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearAnticoneSize() => clearField(2);
}

class DoneBlocksWithTrustedDataMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'DoneBlocksWithTrustedDataMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  DoneBlocksWithTrustedDataMessage._() : super();
  factory DoneBlocksWithTrustedDataMessage() => create();
  factory DoneBlocksWithTrustedDataMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DoneBlocksWithTrustedDataMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DoneBlocksWithTrustedDataMessage clone() =>
      DoneBlocksWithTrustedDataMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DoneBlocksWithTrustedDataMessage copyWith(
          void Function(DoneBlocksWithTrustedDataMessage) updates) =>
      super.copyWith(
              (message) => updates(message as DoneBlocksWithTrustedDataMessage))
          as DoneBlocksWithTrustedDataMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DoneBlocksWithTrustedDataMessage create() =>
      DoneBlocksWithTrustedDataMessage._();
  DoneBlocksWithTrustedDataMessage createEmptyInstance() => create();
  static $pb.PbList<DoneBlocksWithTrustedDataMessage> createRepeated() =>
      $pb.PbList<DoneBlocksWithTrustedDataMessage>();
  @$core.pragma('dart2js:noInline')
  static DoneBlocksWithTrustedDataMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DoneBlocksWithTrustedDataMessage>(
          create);
  static DoneBlocksWithTrustedDataMessage? _defaultInstance;
}

class PruningPointsMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PruningPointsMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..pc<BlockHeader>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'headers',
        $pb.PbFieldType.PM,
        subBuilder: BlockHeader.create)
    ..hasRequiredFields = false;

  PruningPointsMessage._() : super();
  factory PruningPointsMessage({
    $core.Iterable<BlockHeader>? headers,
  }) {
    final _result = create();
    if (headers != null) {
      _result.headers.addAll(headers);
    }
    return _result;
  }
  factory PruningPointsMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PruningPointsMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PruningPointsMessage clone() =>
      PruningPointsMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PruningPointsMessage copyWith(void Function(PruningPointsMessage) updates) =>
      super.copyWith((message) => updates(message as PruningPointsMessage))
          as PruningPointsMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PruningPointsMessage create() => PruningPointsMessage._();
  PruningPointsMessage createEmptyInstance() => create();
  static $pb.PbList<PruningPointsMessage> createRepeated() =>
      $pb.PbList<PruningPointsMessage>();
  @$core.pragma('dart2js:noInline')
  static PruningPointsMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PruningPointsMessage>(create);
  static PruningPointsMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<BlockHeader> get headers => $_getList(0);
}

class RequestPruningPointProofMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RequestPruningPointProofMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  RequestPruningPointProofMessage._() : super();
  factory RequestPruningPointProofMessage() => create();
  factory RequestPruningPointProofMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RequestPruningPointProofMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RequestPruningPointProofMessage clone() =>
      RequestPruningPointProofMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RequestPruningPointProofMessage copyWith(
          void Function(RequestPruningPointProofMessage) updates) =>
      super.copyWith(
              (message) => updates(message as RequestPruningPointProofMessage))
          as RequestPruningPointProofMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestPruningPointProofMessage create() =>
      RequestPruningPointProofMessage._();
  RequestPruningPointProofMessage createEmptyInstance() => create();
  static $pb.PbList<RequestPruningPointProofMessage> createRepeated() =>
      $pb.PbList<RequestPruningPointProofMessage>();
  @$core.pragma('dart2js:noInline')
  static RequestPruningPointProofMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequestPruningPointProofMessage>(
          create);
  static RequestPruningPointProofMessage? _defaultInstance;
}

class PruningPointProofMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PruningPointProofMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..pc<PruningPointProofHeaderArray>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'headers',
        $pb.PbFieldType.PM,
        subBuilder: PruningPointProofHeaderArray.create)
    ..hasRequiredFields = false;

  PruningPointProofMessage._() : super();
  factory PruningPointProofMessage({
    $core.Iterable<PruningPointProofHeaderArray>? headers,
  }) {
    final _result = create();
    if (headers != null) {
      _result.headers.addAll(headers);
    }
    return _result;
  }
  factory PruningPointProofMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PruningPointProofMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PruningPointProofMessage clone() =>
      PruningPointProofMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PruningPointProofMessage copyWith(
          void Function(PruningPointProofMessage) updates) =>
      super.copyWith((message) => updates(message as PruningPointProofMessage))
          as PruningPointProofMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PruningPointProofMessage create() => PruningPointProofMessage._();
  PruningPointProofMessage createEmptyInstance() => create();
  static $pb.PbList<PruningPointProofMessage> createRepeated() =>
      $pb.PbList<PruningPointProofMessage>();
  @$core.pragma('dart2js:noInline')
  static PruningPointProofMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PruningPointProofMessage>(create);
  static PruningPointProofMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PruningPointProofHeaderArray> get headers => $_getList(0);
}

class PruningPointProofHeaderArray extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PruningPointProofHeaderArray',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..pc<BlockHeader>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'headers',
        $pb.PbFieldType.PM,
        subBuilder: BlockHeader.create)
    ..hasRequiredFields = false;

  PruningPointProofHeaderArray._() : super();
  factory PruningPointProofHeaderArray({
    $core.Iterable<BlockHeader>? headers,
  }) {
    final _result = create();
    if (headers != null) {
      _result.headers.addAll(headers);
    }
    return _result;
  }
  factory PruningPointProofHeaderArray.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PruningPointProofHeaderArray.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PruningPointProofHeaderArray clone() =>
      PruningPointProofHeaderArray()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PruningPointProofHeaderArray copyWith(
          void Function(PruningPointProofHeaderArray) updates) =>
      super.copyWith(
              (message) => updates(message as PruningPointProofHeaderArray))
          as PruningPointProofHeaderArray; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PruningPointProofHeaderArray create() =>
      PruningPointProofHeaderArray._();
  PruningPointProofHeaderArray createEmptyInstance() => create();
  static $pb.PbList<PruningPointProofHeaderArray> createRepeated() =>
      $pb.PbList<PruningPointProofHeaderArray>();
  @$core.pragma('dart2js:noInline')
  static PruningPointProofHeaderArray getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PruningPointProofHeaderArray>(create);
  static PruningPointProofHeaderArray? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<BlockHeader> get headers => $_getList(0);
}

class ReadyMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ReadyMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  ReadyMessage._() : super();
  factory ReadyMessage() => create();
  factory ReadyMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ReadyMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ReadyMessage clone() => ReadyMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ReadyMessage copyWith(void Function(ReadyMessage) updates) =>
      super.copyWith((message) => updates(message as ReadyMessage))
          as ReadyMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadyMessage create() => ReadyMessage._();
  ReadyMessage createEmptyInstance() => create();
  static $pb.PbList<ReadyMessage> createRepeated() =>
      $pb.PbList<ReadyMessage>();
  @$core.pragma('dart2js:noInline')
  static ReadyMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadyMessage>(create);
  static ReadyMessage? _defaultInstance;
}

class BlockWithTrustedDataV4Message extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'BlockWithTrustedDataV4Message',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<BlockMessage>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'block',
        subBuilder: BlockMessage.create)
    ..p<$fixnum.Int64>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'daaWindowIndices',
        $pb.PbFieldType.KU6,
        protoName: 'daaWindowIndices')
    ..p<$fixnum.Int64>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ghostdagDataIndices',
        $pb.PbFieldType.KU6,
        protoName: 'ghostdagDataIndices')
    ..hasRequiredFields = false;

  BlockWithTrustedDataV4Message._() : super();
  factory BlockWithTrustedDataV4Message({
    BlockMessage? block,
    $core.Iterable<$fixnum.Int64>? daaWindowIndices,
    $core.Iterable<$fixnum.Int64>? ghostdagDataIndices,
  }) {
    final _result = create();
    if (block != null) {
      _result.block = block;
    }
    if (daaWindowIndices != null) {
      _result.daaWindowIndices.addAll(daaWindowIndices);
    }
    if (ghostdagDataIndices != null) {
      _result.ghostdagDataIndices.addAll(ghostdagDataIndices);
    }
    return _result;
  }
  factory BlockWithTrustedDataV4Message.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BlockWithTrustedDataV4Message.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BlockWithTrustedDataV4Message clone() =>
      BlockWithTrustedDataV4Message()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BlockWithTrustedDataV4Message copyWith(
          void Function(BlockWithTrustedDataV4Message) updates) =>
      super.copyWith(
              (message) => updates(message as BlockWithTrustedDataV4Message))
          as BlockWithTrustedDataV4Message; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockWithTrustedDataV4Message create() =>
      BlockWithTrustedDataV4Message._();
  BlockWithTrustedDataV4Message createEmptyInstance() => create();
  static $pb.PbList<BlockWithTrustedDataV4Message> createRepeated() =>
      $pb.PbList<BlockWithTrustedDataV4Message>();
  @$core.pragma('dart2js:noInline')
  static BlockWithTrustedDataV4Message getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BlockWithTrustedDataV4Message>(create);
  static BlockWithTrustedDataV4Message? _defaultInstance;

  @$pb.TagNumber(1)
  BlockMessage get block => $_getN(0);
  @$pb.TagNumber(1)
  set block(BlockMessage v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBlock() => $_has(0);
  @$pb.TagNumber(1)
  void clearBlock() => clearField(1);
  @$pb.TagNumber(1)
  BlockMessage ensureBlock() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$fixnum.Int64> get daaWindowIndices => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$fixnum.Int64> get ghostdagDataIndices => $_getList(2);
}

class TrustedDataMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TrustedDataMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..pc<DaaBlockV4>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'daaWindow',
        $pb.PbFieldType.PM,
        protoName: 'daaWindow',
        subBuilder: DaaBlockV4.create)
    ..pc<BlockGhostdagDataHashPair>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ghostdagData',
        $pb.PbFieldType.PM,
        protoName: 'ghostdagData',
        subBuilder: BlockGhostdagDataHashPair.create)
    ..hasRequiredFields = false;

  TrustedDataMessage._() : super();
  factory TrustedDataMessage({
    $core.Iterable<DaaBlockV4>? daaWindow,
    $core.Iterable<BlockGhostdagDataHashPair>? ghostdagData,
  }) {
    final _result = create();
    if (daaWindow != null) {
      _result.daaWindow.addAll(daaWindow);
    }
    if (ghostdagData != null) {
      _result.ghostdagData.addAll(ghostdagData);
    }
    return _result;
  }
  factory TrustedDataMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TrustedDataMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TrustedDataMessage clone() => TrustedDataMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TrustedDataMessage copyWith(void Function(TrustedDataMessage) updates) =>
      super.copyWith((message) => updates(message as TrustedDataMessage))
          as TrustedDataMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TrustedDataMessage create() => TrustedDataMessage._();
  TrustedDataMessage createEmptyInstance() => create();
  static $pb.PbList<TrustedDataMessage> createRepeated() =>
      $pb.PbList<TrustedDataMessage>();
  @$core.pragma('dart2js:noInline')
  static TrustedDataMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TrustedDataMessage>(create);
  static TrustedDataMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<DaaBlockV4> get daaWindow => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<BlockGhostdagDataHashPair> get ghostdagData => $_getList(1);
}
