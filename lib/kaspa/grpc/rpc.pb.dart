///
import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'rpc.pbenum.dart';

export 'rpc.pbenum.dart';

class RPCError extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RPCError',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'message')
    ..hasRequiredFields = false;

  RPCError._() : super();
  factory RPCError({
    $core.String? message,
  }) {
    final _result = create();
    if (message != null) {
      _result.message = message;
    }
    return _result;
  }
  factory RPCError.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RPCError.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RPCError clone() => RPCError()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RPCError copyWith(void Function(RPCError) updates) =>
      super.copyWith((message) => updates(message as RPCError))
          as RPCError; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RPCError create() => RPCError._();
  RPCError createEmptyInstance() => create();
  static $pb.PbList<RPCError> createRepeated() => $pb.PbList<RPCError>();
  @$core.pragma('dart2js:noInline')
  static RPCError getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RPCError>(create);
  static RPCError? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

class RpcBlock extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RpcBlock',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<RpcBlockHeader>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'header',
        subBuilder: RpcBlockHeader.create)
    ..pc<RpcTransaction>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'transactions',
        $pb.PbFieldType.PM,
        subBuilder: RpcTransaction.create)
    ..aOM<RpcBlockVerboseData>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'verboseData',
        protoName: 'verboseData',
        subBuilder: RpcBlockVerboseData.create)
    ..hasRequiredFields = false;

  RpcBlock._() : super();
  factory RpcBlock({
    RpcBlockHeader? header,
    $core.Iterable<RpcTransaction>? transactions,
    RpcBlockVerboseData? verboseData,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (transactions != null) {
      _result.transactions.addAll(transactions);
    }
    if (verboseData != null) {
      _result.verboseData = verboseData;
    }
    return _result;
  }
  factory RpcBlock.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RpcBlock.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RpcBlock clone() => RpcBlock()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RpcBlock copyWith(void Function(RpcBlock) updates) =>
      super.copyWith((message) => updates(message as RpcBlock))
          as RpcBlock; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpcBlock create() => RpcBlock._();
  RpcBlock createEmptyInstance() => create();
  static $pb.PbList<RpcBlock> createRepeated() => $pb.PbList<RpcBlock>();
  @$core.pragma('dart2js:noInline')
  static RpcBlock getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpcBlock>(create);
  static RpcBlock? _defaultInstance;

  @$pb.TagNumber(1)
  RpcBlockHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(RpcBlockHeader v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  RpcBlockHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<RpcTransaction> get transactions => $_getList(1);

  @$pb.TagNumber(3)
  RpcBlockVerboseData get verboseData => $_getN(2);
  @$pb.TagNumber(3)
  set verboseData(RpcBlockVerboseData v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasVerboseData() => $_has(2);
  @$pb.TagNumber(3)
  void clearVerboseData() => clearField(3);
  @$pb.TagNumber(3)
  RpcBlockVerboseData ensureVerboseData() => $_ensure(2);
}

class RpcBlockHeader extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RpcBlockHeader',
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
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hashMerkleRoot',
        protoName: 'hashMerkleRoot')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'acceptedIdMerkleRoot',
        protoName: 'acceptedIdMerkleRoot')
    ..aOS(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'utxoCommitment',
        protoName: 'utxoCommitment')
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
    ..aOS(
        10,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'blueWork',
        protoName: 'blueWork')
    ..pc<RpcBlockLevelParents>(
        12,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'parents',
        $pb.PbFieldType.PM,
        subBuilder: RpcBlockLevelParents.create)
    ..a<$fixnum.Int64>(
        13,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'blueScore',
        $pb.PbFieldType.OU6,
        protoName: 'blueScore',
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(
        14,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'pruningPoint',
        protoName: 'pruningPoint')
    ..hasRequiredFields = false;

  RpcBlockHeader._() : super();
  factory RpcBlockHeader({
    $core.int? version,
    $core.String? hashMerkleRoot,
    $core.String? acceptedIdMerkleRoot,
    $core.String? utxoCommitment,
    $fixnum.Int64? timestamp,
    $core.int? bits,
    $fixnum.Int64? nonce,
    $fixnum.Int64? daaScore,
    $core.String? blueWork,
    $core.Iterable<RpcBlockLevelParents>? parents,
    $fixnum.Int64? blueScore,
    $core.String? pruningPoint,
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
  factory RpcBlockHeader.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RpcBlockHeader.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RpcBlockHeader clone() => RpcBlockHeader()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RpcBlockHeader copyWith(void Function(RpcBlockHeader) updates) =>
      super.copyWith((message) => updates(message as RpcBlockHeader))
          as RpcBlockHeader; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpcBlockHeader create() => RpcBlockHeader._();
  RpcBlockHeader createEmptyInstance() => create();
  static $pb.PbList<RpcBlockHeader> createRepeated() =>
      $pb.PbList<RpcBlockHeader>();
  @$core.pragma('dart2js:noInline')
  static RpcBlockHeader getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RpcBlockHeader>(create);
  static RpcBlockHeader? _defaultInstance;

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
  $core.String get hashMerkleRoot => $_getSZ(1);
  @$pb.TagNumber(3)
  set hashMerkleRoot($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasHashMerkleRoot() => $_has(1);
  @$pb.TagNumber(3)
  void clearHashMerkleRoot() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get acceptedIdMerkleRoot => $_getSZ(2);
  @$pb.TagNumber(4)
  set acceptedIdMerkleRoot($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasAcceptedIdMerkleRoot() => $_has(2);
  @$pb.TagNumber(4)
  void clearAcceptedIdMerkleRoot() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get utxoCommitment => $_getSZ(3);
  @$pb.TagNumber(5)
  set utxoCommitment($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasUtxoCommitment() => $_has(3);
  @$pb.TagNumber(5)
  void clearUtxoCommitment() => clearField(5);

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
  $core.String get blueWork => $_getSZ(8);
  @$pb.TagNumber(10)
  set blueWork($core.String v) {
    $_setString(8, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasBlueWork() => $_has(8);
  @$pb.TagNumber(10)
  void clearBlueWork() => clearField(10);

  @$pb.TagNumber(12)
  $core.List<RpcBlockLevelParents> get parents => $_getList(9);

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
  $core.String get pruningPoint => $_getSZ(11);
  @$pb.TagNumber(14)
  set pruningPoint($core.String v) {
    $_setString(11, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasPruningPoint() => $_has(11);
  @$pb.TagNumber(14)
  void clearPruningPoint() => clearField(14);
}

class RpcBlockLevelParents extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RpcBlockLevelParents',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..pPS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'parentHashes',
        protoName: 'parentHashes')
    ..hasRequiredFields = false;

  RpcBlockLevelParents._() : super();
  factory RpcBlockLevelParents({
    $core.Iterable<$core.String>? parentHashes,
  }) {
    final _result = create();
    if (parentHashes != null) {
      _result.parentHashes.addAll(parentHashes);
    }
    return _result;
  }
  factory RpcBlockLevelParents.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RpcBlockLevelParents.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RpcBlockLevelParents clone() =>
      RpcBlockLevelParents()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RpcBlockLevelParents copyWith(void Function(RpcBlockLevelParents) updates) =>
      super.copyWith((message) => updates(message as RpcBlockLevelParents))
          as RpcBlockLevelParents; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpcBlockLevelParents create() => RpcBlockLevelParents._();
  RpcBlockLevelParents createEmptyInstance() => create();
  static $pb.PbList<RpcBlockLevelParents> createRepeated() =>
      $pb.PbList<RpcBlockLevelParents>();
  @$core.pragma('dart2js:noInline')
  static RpcBlockLevelParents getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RpcBlockLevelParents>(create);
  static RpcBlockLevelParents? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get parentHashes => $_getList(0);
}

class RpcBlockVerboseData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RpcBlockVerboseData',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hash')
    ..a<$core.double>(
        11,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'difficulty',
        $pb.PbFieldType.OD)
    ..aOS(
        13,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'selectedParentHash',
        protoName: 'selectedParentHash')
    ..pPS(
        14,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'transactionIds',
        protoName: 'transactionIds')
    ..aOB(
        15,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isHeaderOnly',
        protoName: 'isHeaderOnly')
    ..a<$fixnum.Int64>(
        16,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'blueScore',
        $pb.PbFieldType.OU6,
        protoName: 'blueScore',
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..pPS(
        17,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'childrenHashes',
        protoName: 'childrenHashes')
    ..pPS(
        18,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'mergeSetBluesHashes',
        protoName: 'mergeSetBluesHashes')
    ..pPS(
        19,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'mergeSetRedsHashes',
        protoName: 'mergeSetRedsHashes')
    ..aOB(
        20,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isChainBlock',
        protoName: 'isChainBlock')
    ..hasRequiredFields = false;

  RpcBlockVerboseData._() : super();
  factory RpcBlockVerboseData({
    $core.String? hash,
    $core.double? difficulty,
    $core.String? selectedParentHash,
    $core.Iterable<$core.String>? transactionIds,
    $core.bool? isHeaderOnly,
    $fixnum.Int64? blueScore,
    $core.Iterable<$core.String>? childrenHashes,
    $core.Iterable<$core.String>? mergeSetBluesHashes,
    $core.Iterable<$core.String>? mergeSetRedsHashes,
    $core.bool? isChainBlock,
  }) {
    final _result = create();
    if (hash != null) {
      _result.hash = hash;
    }
    if (difficulty != null) {
      _result.difficulty = difficulty;
    }
    if (selectedParentHash != null) {
      _result.selectedParentHash = selectedParentHash;
    }
    if (transactionIds != null) {
      _result.transactionIds.addAll(transactionIds);
    }
    if (isHeaderOnly != null) {
      _result.isHeaderOnly = isHeaderOnly;
    }
    if (blueScore != null) {
      _result.blueScore = blueScore;
    }
    if (childrenHashes != null) {
      _result.childrenHashes.addAll(childrenHashes);
    }
    if (mergeSetBluesHashes != null) {
      _result.mergeSetBluesHashes.addAll(mergeSetBluesHashes);
    }
    if (mergeSetRedsHashes != null) {
      _result.mergeSetRedsHashes.addAll(mergeSetRedsHashes);
    }
    if (isChainBlock != null) {
      _result.isChainBlock = isChainBlock;
    }
    return _result;
  }
  factory RpcBlockVerboseData.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RpcBlockVerboseData.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RpcBlockVerboseData clone() => RpcBlockVerboseData()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RpcBlockVerboseData copyWith(void Function(RpcBlockVerboseData) updates) =>
      super.copyWith((message) => updates(message as RpcBlockVerboseData))
          as RpcBlockVerboseData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpcBlockVerboseData create() => RpcBlockVerboseData._();
  RpcBlockVerboseData createEmptyInstance() => create();
  static $pb.PbList<RpcBlockVerboseData> createRepeated() =>
      $pb.PbList<RpcBlockVerboseData>();
  @$core.pragma('dart2js:noInline')
  static RpcBlockVerboseData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RpcBlockVerboseData>(create);
  static RpcBlockVerboseData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get hash => $_getSZ(0);
  @$pb.TagNumber(1)
  set hash($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearHash() => clearField(1);

  @$pb.TagNumber(11)
  $core.double get difficulty => $_getN(1);
  @$pb.TagNumber(11)
  set difficulty($core.double v) {
    $_setDouble(1, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasDifficulty() => $_has(1);
  @$pb.TagNumber(11)
  void clearDifficulty() => clearField(11);

  @$pb.TagNumber(13)
  $core.String get selectedParentHash => $_getSZ(2);
  @$pb.TagNumber(13)
  set selectedParentHash($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasSelectedParentHash() => $_has(2);
  @$pb.TagNumber(13)
  void clearSelectedParentHash() => clearField(13);

  @$pb.TagNumber(14)
  $core.List<$core.String> get transactionIds => $_getList(3);

  @$pb.TagNumber(15)
  $core.bool get isHeaderOnly => $_getBF(4);
  @$pb.TagNumber(15)
  set isHeaderOnly($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(15)
  $core.bool hasIsHeaderOnly() => $_has(4);
  @$pb.TagNumber(15)
  void clearIsHeaderOnly() => clearField(15);

  @$pb.TagNumber(16)
  $fixnum.Int64 get blueScore => $_getI64(5);
  @$pb.TagNumber(16)
  set blueScore($fixnum.Int64 v) {
    $_setInt64(5, v);
  }

  @$pb.TagNumber(16)
  $core.bool hasBlueScore() => $_has(5);
  @$pb.TagNumber(16)
  void clearBlueScore() => clearField(16);

  @$pb.TagNumber(17)
  $core.List<$core.String> get childrenHashes => $_getList(6);

  @$pb.TagNumber(18)
  $core.List<$core.String> get mergeSetBluesHashes => $_getList(7);

  @$pb.TagNumber(19)
  $core.List<$core.String> get mergeSetRedsHashes => $_getList(8);

  @$pb.TagNumber(20)
  $core.bool get isChainBlock => $_getBF(9);
  @$pb.TagNumber(20)
  set isChainBlock($core.bool v) {
    $_setBool(9, v);
  }

  @$pb.TagNumber(20)
  $core.bool hasIsChainBlock() => $_has(9);
  @$pb.TagNumber(20)
  void clearIsChainBlock() => clearField(20);
}

class RpcTransaction extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RpcTransaction',
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
    ..pc<RpcTransactionInput>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'inputs',
        $pb.PbFieldType.PM,
        subBuilder: RpcTransactionInput.create)
    ..pc<RpcTransactionOutput>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'outputs',
        $pb.PbFieldType.PM,
        subBuilder: RpcTransactionOutput.create)
    ..a<$fixnum.Int64>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'lockTime',
        $pb.PbFieldType.OU6,
        protoName: 'lockTime',
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'subnetworkId',
        protoName: 'subnetworkId')
    ..a<$fixnum.Int64>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'gas',
        $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'payload')
    ..aOM<RpcTransactionVerboseData>(
        9,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'verboseData',
        protoName: 'verboseData',
        subBuilder: RpcTransactionVerboseData.create)
    ..hasRequiredFields = false;

  RpcTransaction._() : super();
  factory RpcTransaction({
    $core.int? version,
    $core.Iterable<RpcTransactionInput>? inputs,
    $core.Iterable<RpcTransactionOutput>? outputs,
    $fixnum.Int64? lockTime,
    $core.String? subnetworkId,
    $fixnum.Int64? gas,
    $core.String? payload,
    RpcTransactionVerboseData? verboseData,
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
    if (verboseData != null) {
      _result.verboseData = verboseData;
    }
    return _result;
  }
  factory RpcTransaction.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RpcTransaction.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RpcTransaction clone() => RpcTransaction()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RpcTransaction copyWith(void Function(RpcTransaction) updates) =>
      super.copyWith((message) => updates(message as RpcTransaction))
          as RpcTransaction; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpcTransaction create() => RpcTransaction._();
  RpcTransaction createEmptyInstance() => create();
  static $pb.PbList<RpcTransaction> createRepeated() =>
      $pb.PbList<RpcTransaction>();
  @$core.pragma('dart2js:noInline')
  static RpcTransaction getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RpcTransaction>(create);
  static RpcTransaction? _defaultInstance;

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
  $core.List<RpcTransactionInput> get inputs => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<RpcTransactionOutput> get outputs => $_getList(2);

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
  $core.String get subnetworkId => $_getSZ(4);
  @$pb.TagNumber(5)
  set subnetworkId($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasSubnetworkId() => $_has(4);
  @$pb.TagNumber(5)
  void clearSubnetworkId() => clearField(5);

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
  $core.String get payload => $_getSZ(6);
  @$pb.TagNumber(8)
  set payload($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasPayload() => $_has(6);
  @$pb.TagNumber(8)
  void clearPayload() => clearField(8);

  @$pb.TagNumber(9)
  RpcTransactionVerboseData get verboseData => $_getN(7);
  @$pb.TagNumber(9)
  set verboseData(RpcTransactionVerboseData v) {
    setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasVerboseData() => $_has(7);
  @$pb.TagNumber(9)
  void clearVerboseData() => clearField(9);
  @$pb.TagNumber(9)
  RpcTransactionVerboseData ensureVerboseData() => $_ensure(7);
}

class RpcTransactionInput extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RpcTransactionInput',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<RpcOutpoint>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'previousOutpoint',
        protoName: 'previousOutpoint',
        subBuilder: RpcOutpoint.create)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'signatureScript',
        protoName: 'signatureScript')
    ..a<$fixnum.Int64>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'sequence',
        $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<RpcTransactionInputVerboseData>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'verboseData',
        protoName: 'verboseData',
        subBuilder: RpcTransactionInputVerboseData.create)
    ..a<$core.int>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'sigOpCount',
        $pb.PbFieldType.OU3,
        protoName: 'sigOpCount')
    ..hasRequiredFields = false;

  RpcTransactionInput._() : super();
  factory RpcTransactionInput({
    RpcOutpoint? previousOutpoint,
    $core.String? signatureScript,
    $fixnum.Int64? sequence,
    RpcTransactionInputVerboseData? verboseData,
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
    if (verboseData != null) {
      _result.verboseData = verboseData;
    }
    if (sigOpCount != null) {
      _result.sigOpCount = sigOpCount;
    }
    return _result;
  }
  factory RpcTransactionInput.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RpcTransactionInput.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RpcTransactionInput clone() => RpcTransactionInput()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RpcTransactionInput copyWith(void Function(RpcTransactionInput) updates) =>
      super.copyWith((message) => updates(message as RpcTransactionInput))
          as RpcTransactionInput; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpcTransactionInput create() => RpcTransactionInput._();
  RpcTransactionInput createEmptyInstance() => create();
  static $pb.PbList<RpcTransactionInput> createRepeated() =>
      $pb.PbList<RpcTransactionInput>();
  @$core.pragma('dart2js:noInline')
  static RpcTransactionInput getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RpcTransactionInput>(create);
  static RpcTransactionInput? _defaultInstance;

  @$pb.TagNumber(1)
  RpcOutpoint get previousOutpoint => $_getN(0);
  @$pb.TagNumber(1)
  set previousOutpoint(RpcOutpoint v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPreviousOutpoint() => $_has(0);
  @$pb.TagNumber(1)
  void clearPreviousOutpoint() => clearField(1);
  @$pb.TagNumber(1)
  RpcOutpoint ensurePreviousOutpoint() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get signatureScript => $_getSZ(1);
  @$pb.TagNumber(2)
  set signatureScript($core.String v) {
    $_setString(1, v);
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
  RpcTransactionInputVerboseData get verboseData => $_getN(3);
  @$pb.TagNumber(4)
  set verboseData(RpcTransactionInputVerboseData v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasVerboseData() => $_has(3);
  @$pb.TagNumber(4)
  void clearVerboseData() => clearField(4);
  @$pb.TagNumber(4)
  RpcTransactionInputVerboseData ensureVerboseData() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.int get sigOpCount => $_getIZ(4);
  @$pb.TagNumber(5)
  set sigOpCount($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasSigOpCount() => $_has(4);
  @$pb.TagNumber(5)
  void clearSigOpCount() => clearField(5);
}

class RpcScriptPublicKey extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RpcScriptPublicKey',
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
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'scriptPublicKey',
        protoName: 'scriptPublicKey')
    ..hasRequiredFields = false;

  RpcScriptPublicKey._() : super();
  factory RpcScriptPublicKey({
    $core.int? version,
    $core.String? scriptPublicKey,
  }) {
    final _result = create();
    if (version != null) {
      _result.version = version;
    }
    if (scriptPublicKey != null) {
      _result.scriptPublicKey = scriptPublicKey;
    }
    return _result;
  }
  factory RpcScriptPublicKey.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RpcScriptPublicKey.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RpcScriptPublicKey clone() => RpcScriptPublicKey()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RpcScriptPublicKey copyWith(void Function(RpcScriptPublicKey) updates) =>
      super.copyWith((message) => updates(message as RpcScriptPublicKey))
          as RpcScriptPublicKey; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpcScriptPublicKey create() => RpcScriptPublicKey._();
  RpcScriptPublicKey createEmptyInstance() => create();
  static $pb.PbList<RpcScriptPublicKey> createRepeated() =>
      $pb.PbList<RpcScriptPublicKey>();
  @$core.pragma('dart2js:noInline')
  static RpcScriptPublicKey getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RpcScriptPublicKey>(create);
  static RpcScriptPublicKey? _defaultInstance;

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
  $core.String get scriptPublicKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set scriptPublicKey($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasScriptPublicKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearScriptPublicKey() => clearField(2);
}

class RpcTransactionOutput extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RpcTransactionOutput',
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
    ..aOM<RpcScriptPublicKey>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'scriptPublicKey',
        protoName: 'scriptPublicKey',
        subBuilder: RpcScriptPublicKey.create)
    ..aOM<RpcTransactionOutputVerboseData>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'verboseData',
        protoName: 'verboseData',
        subBuilder: RpcTransactionOutputVerboseData.create)
    ..hasRequiredFields = false;

  RpcTransactionOutput._() : super();
  factory RpcTransactionOutput({
    $fixnum.Int64? amount,
    RpcScriptPublicKey? scriptPublicKey,
    RpcTransactionOutputVerboseData? verboseData,
  }) {
    final _result = create();
    if (amount != null) {
      _result.amount = amount;
    }
    if (scriptPublicKey != null) {
      _result.scriptPublicKey = scriptPublicKey;
    }
    if (verboseData != null) {
      _result.verboseData = verboseData;
    }
    return _result;
  }
  factory RpcTransactionOutput.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RpcTransactionOutput.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RpcTransactionOutput clone() =>
      RpcTransactionOutput()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RpcTransactionOutput copyWith(void Function(RpcTransactionOutput) updates) =>
      super.copyWith((message) => updates(message as RpcTransactionOutput))
          as RpcTransactionOutput; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpcTransactionOutput create() => RpcTransactionOutput._();
  RpcTransactionOutput createEmptyInstance() => create();
  static $pb.PbList<RpcTransactionOutput> createRepeated() =>
      $pb.PbList<RpcTransactionOutput>();
  @$core.pragma('dart2js:noInline')
  static RpcTransactionOutput getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RpcTransactionOutput>(create);
  static RpcTransactionOutput? _defaultInstance;

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
  RpcScriptPublicKey get scriptPublicKey => $_getN(1);
  @$pb.TagNumber(2)
  set scriptPublicKey(RpcScriptPublicKey v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasScriptPublicKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearScriptPublicKey() => clearField(2);
  @$pb.TagNumber(2)
  RpcScriptPublicKey ensureScriptPublicKey() => $_ensure(1);

  @$pb.TagNumber(3)
  RpcTransactionOutputVerboseData get verboseData => $_getN(2);
  @$pb.TagNumber(3)
  set verboseData(RpcTransactionOutputVerboseData v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasVerboseData() => $_has(2);
  @$pb.TagNumber(3)
  void clearVerboseData() => clearField(3);
  @$pb.TagNumber(3)
  RpcTransactionOutputVerboseData ensureVerboseData() => $_ensure(2);
}

class RpcOutpoint extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RpcOutpoint',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'transactionId',
        protoName: 'transactionId')
    ..a<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'index',
        $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  RpcOutpoint._() : super();
  factory RpcOutpoint({
    $core.String? transactionId,
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
  factory RpcOutpoint.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RpcOutpoint.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RpcOutpoint clone() => RpcOutpoint()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RpcOutpoint copyWith(void Function(RpcOutpoint) updates) =>
      super.copyWith((message) => updates(message as RpcOutpoint))
          as RpcOutpoint; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpcOutpoint create() => RpcOutpoint._();
  RpcOutpoint createEmptyInstance() => create();
  static $pb.PbList<RpcOutpoint> createRepeated() => $pb.PbList<RpcOutpoint>();
  @$core.pragma('dart2js:noInline')
  static RpcOutpoint getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RpcOutpoint>(create);
  static RpcOutpoint? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get transactionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set transactionId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTransactionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransactionId() => clearField(1);

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

class RpcUtxoEntry extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RpcUtxoEntry',
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
    ..aOM<RpcScriptPublicKey>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'scriptPublicKey',
        protoName: 'scriptPublicKey',
        subBuilder: RpcScriptPublicKey.create)
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

  RpcUtxoEntry._() : super();
  factory RpcUtxoEntry({
    $fixnum.Int64? amount,
    RpcScriptPublicKey? scriptPublicKey,
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
  factory RpcUtxoEntry.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RpcUtxoEntry.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RpcUtxoEntry clone() => RpcUtxoEntry()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RpcUtxoEntry copyWith(void Function(RpcUtxoEntry) updates) =>
      super.copyWith((message) => updates(message as RpcUtxoEntry))
          as RpcUtxoEntry; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpcUtxoEntry create() => RpcUtxoEntry._();
  RpcUtxoEntry createEmptyInstance() => create();
  static $pb.PbList<RpcUtxoEntry> createRepeated() =>
      $pb.PbList<RpcUtxoEntry>();
  @$core.pragma('dart2js:noInline')
  static RpcUtxoEntry getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RpcUtxoEntry>(create);
  static RpcUtxoEntry? _defaultInstance;

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
  RpcScriptPublicKey get scriptPublicKey => $_getN(1);
  @$pb.TagNumber(2)
  set scriptPublicKey(RpcScriptPublicKey v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasScriptPublicKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearScriptPublicKey() => clearField(2);
  @$pb.TagNumber(2)
  RpcScriptPublicKey ensureScriptPublicKey() => $_ensure(1);

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

class RpcTransactionVerboseData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RpcTransactionVerboseData',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'transactionId',
        protoName: 'transactionId')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hash')
    ..a<$fixnum.Int64>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'mass',
        $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(
        12,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'blockHash',
        protoName: 'blockHash')
    ..a<$fixnum.Int64>(
        14,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'blockTime',
        $pb.PbFieldType.OU6,
        protoName: 'blockTime',
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  RpcTransactionVerboseData._() : super();
  factory RpcTransactionVerboseData({
    $core.String? transactionId,
    $core.String? hash,
    $fixnum.Int64? mass,
    $core.String? blockHash,
    $fixnum.Int64? blockTime,
  }) {
    final _result = create();
    if (transactionId != null) {
      _result.transactionId = transactionId;
    }
    if (hash != null) {
      _result.hash = hash;
    }
    if (mass != null) {
      _result.mass = mass;
    }
    if (blockHash != null) {
      _result.blockHash = blockHash;
    }
    if (blockTime != null) {
      _result.blockTime = blockTime;
    }
    return _result;
  }
  factory RpcTransactionVerboseData.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RpcTransactionVerboseData.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RpcTransactionVerboseData clone() =>
      RpcTransactionVerboseData()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RpcTransactionVerboseData copyWith(
          void Function(RpcTransactionVerboseData) updates) =>
      super.copyWith((message) => updates(message as RpcTransactionVerboseData))
          as RpcTransactionVerboseData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpcTransactionVerboseData create() => RpcTransactionVerboseData._();
  RpcTransactionVerboseData createEmptyInstance() => create();
  static $pb.PbList<RpcTransactionVerboseData> createRepeated() =>
      $pb.PbList<RpcTransactionVerboseData>();
  @$core.pragma('dart2js:noInline')
  static RpcTransactionVerboseData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RpcTransactionVerboseData>(create);
  static RpcTransactionVerboseData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get transactionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set transactionId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTransactionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransactionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get hash => $_getSZ(1);
  @$pb.TagNumber(2)
  set hash($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearHash() => clearField(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get mass => $_getI64(2);
  @$pb.TagNumber(4)
  set mass($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasMass() => $_has(2);
  @$pb.TagNumber(4)
  void clearMass() => clearField(4);

  @$pb.TagNumber(12)
  $core.String get blockHash => $_getSZ(3);
  @$pb.TagNumber(12)
  set blockHash($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasBlockHash() => $_has(3);
  @$pb.TagNumber(12)
  void clearBlockHash() => clearField(12);

  @$pb.TagNumber(14)
  $fixnum.Int64 get blockTime => $_getI64(4);
  @$pb.TagNumber(14)
  set blockTime($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasBlockTime() => $_has(4);
  @$pb.TagNumber(14)
  void clearBlockTime() => clearField(14);
}

class RpcTransactionInputVerboseData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RpcTransactionInputVerboseData',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  RpcTransactionInputVerboseData._() : super();
  factory RpcTransactionInputVerboseData() => create();
  factory RpcTransactionInputVerboseData.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RpcTransactionInputVerboseData.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RpcTransactionInputVerboseData clone() =>
      RpcTransactionInputVerboseData()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RpcTransactionInputVerboseData copyWith(
          void Function(RpcTransactionInputVerboseData) updates) =>
      super.copyWith(
              (message) => updates(message as RpcTransactionInputVerboseData))
          as RpcTransactionInputVerboseData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpcTransactionInputVerboseData create() =>
      RpcTransactionInputVerboseData._();
  RpcTransactionInputVerboseData createEmptyInstance() => create();
  static $pb.PbList<RpcTransactionInputVerboseData> createRepeated() =>
      $pb.PbList<RpcTransactionInputVerboseData>();
  @$core.pragma('dart2js:noInline')
  static RpcTransactionInputVerboseData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RpcTransactionInputVerboseData>(create);
  static RpcTransactionInputVerboseData? _defaultInstance;
}

class RpcTransactionOutputVerboseData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RpcTransactionOutputVerboseData',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOS(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'scriptPublicKeyType',
        protoName: 'scriptPublicKeyType')
    ..aOS(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'scriptPublicKeyAddress',
        protoName: 'scriptPublicKeyAddress')
    ..hasRequiredFields = false;

  RpcTransactionOutputVerboseData._() : super();
  factory RpcTransactionOutputVerboseData({
    $core.String? scriptPublicKeyType,
    $core.String? scriptPublicKeyAddress,
  }) {
    final _result = create();
    if (scriptPublicKeyType != null) {
      _result.scriptPublicKeyType = scriptPublicKeyType;
    }
    if (scriptPublicKeyAddress != null) {
      _result.scriptPublicKeyAddress = scriptPublicKeyAddress;
    }
    return _result;
  }
  factory RpcTransactionOutputVerboseData.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RpcTransactionOutputVerboseData.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RpcTransactionOutputVerboseData clone() =>
      RpcTransactionOutputVerboseData()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RpcTransactionOutputVerboseData copyWith(
          void Function(RpcTransactionOutputVerboseData) updates) =>
      super.copyWith(
              (message) => updates(message as RpcTransactionOutputVerboseData))
          as RpcTransactionOutputVerboseData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpcTransactionOutputVerboseData create() =>
      RpcTransactionOutputVerboseData._();
  RpcTransactionOutputVerboseData createEmptyInstance() => create();
  static $pb.PbList<RpcTransactionOutputVerboseData> createRepeated() =>
      $pb.PbList<RpcTransactionOutputVerboseData>();
  @$core.pragma('dart2js:noInline')
  static RpcTransactionOutputVerboseData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RpcTransactionOutputVerboseData>(
          create);
  static RpcTransactionOutputVerboseData? _defaultInstance;

  @$pb.TagNumber(5)
  $core.String get scriptPublicKeyType => $_getSZ(0);
  @$pb.TagNumber(5)
  set scriptPublicKeyType($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasScriptPublicKeyType() => $_has(0);
  @$pb.TagNumber(5)
  void clearScriptPublicKeyType() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get scriptPublicKeyAddress => $_getSZ(1);
  @$pb.TagNumber(6)
  set scriptPublicKeyAddress($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasScriptPublicKeyAddress() => $_has(1);
  @$pb.TagNumber(6)
  void clearScriptPublicKeyAddress() => clearField(6);
}

class GetCurrentNetworkRequestMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetCurrentNetworkRequestMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  GetCurrentNetworkRequestMessage._() : super();
  factory GetCurrentNetworkRequestMessage() => create();
  factory GetCurrentNetworkRequestMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetCurrentNetworkRequestMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetCurrentNetworkRequestMessage clone() =>
      GetCurrentNetworkRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetCurrentNetworkRequestMessage copyWith(
          void Function(GetCurrentNetworkRequestMessage) updates) =>
      super.copyWith(
              (message) => updates(message as GetCurrentNetworkRequestMessage))
          as GetCurrentNetworkRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetCurrentNetworkRequestMessage create() =>
      GetCurrentNetworkRequestMessage._();
  GetCurrentNetworkRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetCurrentNetworkRequestMessage> createRepeated() =>
      $pb.PbList<GetCurrentNetworkRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetCurrentNetworkRequestMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetCurrentNetworkRequestMessage>(
          create);
  static GetCurrentNetworkRequestMessage? _defaultInstance;
}

class GetCurrentNetworkResponseMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetCurrentNetworkResponseMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'currentNetwork',
        protoName: 'currentNetwork')
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  GetCurrentNetworkResponseMessage._() : super();
  factory GetCurrentNetworkResponseMessage({
    $core.String? currentNetwork,
    RPCError? error,
  }) {
    final _result = create();
    if (currentNetwork != null) {
      _result.currentNetwork = currentNetwork;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory GetCurrentNetworkResponseMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetCurrentNetworkResponseMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetCurrentNetworkResponseMessage clone() =>
      GetCurrentNetworkResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetCurrentNetworkResponseMessage copyWith(
          void Function(GetCurrentNetworkResponseMessage) updates) =>
      super.copyWith(
              (message) => updates(message as GetCurrentNetworkResponseMessage))
          as GetCurrentNetworkResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetCurrentNetworkResponseMessage create() =>
      GetCurrentNetworkResponseMessage._();
  GetCurrentNetworkResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetCurrentNetworkResponseMessage> createRepeated() =>
      $pb.PbList<GetCurrentNetworkResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetCurrentNetworkResponseMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetCurrentNetworkResponseMessage>(
          create);
  static GetCurrentNetworkResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get currentNetwork => $_getSZ(0);
  @$pb.TagNumber(1)
  set currentNetwork($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCurrentNetwork() => $_has(0);
  @$pb.TagNumber(1)
  void clearCurrentNetwork() => clearField(1);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(1);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(1);
}

class SubmitBlockRequestMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SubmitBlockRequestMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<RpcBlock>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'block',
        subBuilder: RpcBlock.create)
    ..aOB(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'allowNonDAABlocks',
        protoName: 'allowNonDAABlocks')
    ..hasRequiredFields = false;

  SubmitBlockRequestMessage._() : super();
  factory SubmitBlockRequestMessage({
    RpcBlock? block,
    $core.bool? allowNonDAABlocks,
  }) {
    final _result = create();
    if (block != null) {
      _result.block = block;
    }
    if (allowNonDAABlocks != null) {
      _result.allowNonDAABlocks = allowNonDAABlocks;
    }
    return _result;
  }
  factory SubmitBlockRequestMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SubmitBlockRequestMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SubmitBlockRequestMessage clone() =>
      SubmitBlockRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SubmitBlockRequestMessage copyWith(
          void Function(SubmitBlockRequestMessage) updates) =>
      super.copyWith((message) => updates(message as SubmitBlockRequestMessage))
          as SubmitBlockRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubmitBlockRequestMessage create() => SubmitBlockRequestMessage._();
  SubmitBlockRequestMessage createEmptyInstance() => create();
  static $pb.PbList<SubmitBlockRequestMessage> createRepeated() =>
      $pb.PbList<SubmitBlockRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static SubmitBlockRequestMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SubmitBlockRequestMessage>(create);
  static SubmitBlockRequestMessage? _defaultInstance;

  @$pb.TagNumber(2)
  RpcBlock get block => $_getN(0);
  @$pb.TagNumber(2)
  set block(RpcBlock v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasBlock() => $_has(0);
  @$pb.TagNumber(2)
  void clearBlock() => clearField(2);
  @$pb.TagNumber(2)
  RpcBlock ensureBlock() => $_ensure(0);

  @$pb.TagNumber(3)
  $core.bool get allowNonDAABlocks => $_getBF(1);
  @$pb.TagNumber(3)
  set allowNonDAABlocks($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAllowNonDAABlocks() => $_has(1);
  @$pb.TagNumber(3)
  void clearAllowNonDAABlocks() => clearField(3);
}

class SubmitBlockResponseMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SubmitBlockResponseMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..e<SubmitBlockResponseMessage_RejectReason>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'rejectReason',
        $pb.PbFieldType.OE,
        protoName: 'rejectReason',
        defaultOrMaker: SubmitBlockResponseMessage_RejectReason.NONE,
        valueOf: SubmitBlockResponseMessage_RejectReason.valueOf,
        enumValues: SubmitBlockResponseMessage_RejectReason.values)
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  SubmitBlockResponseMessage._() : super();
  factory SubmitBlockResponseMessage({
    SubmitBlockResponseMessage_RejectReason? rejectReason,
    RPCError? error,
  }) {
    final _result = create();
    if (rejectReason != null) {
      _result.rejectReason = rejectReason;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory SubmitBlockResponseMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SubmitBlockResponseMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SubmitBlockResponseMessage clone() =>
      SubmitBlockResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SubmitBlockResponseMessage copyWith(
          void Function(SubmitBlockResponseMessage) updates) =>
      super.copyWith(
              (message) => updates(message as SubmitBlockResponseMessage))
          as SubmitBlockResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubmitBlockResponseMessage create() => SubmitBlockResponseMessage._();
  SubmitBlockResponseMessage createEmptyInstance() => create();
  static $pb.PbList<SubmitBlockResponseMessage> createRepeated() =>
      $pb.PbList<SubmitBlockResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static SubmitBlockResponseMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SubmitBlockResponseMessage>(create);
  static SubmitBlockResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  SubmitBlockResponseMessage_RejectReason get rejectReason => $_getN(0);
  @$pb.TagNumber(1)
  set rejectReason(SubmitBlockResponseMessage_RejectReason v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRejectReason() => $_has(0);
  @$pb.TagNumber(1)
  void clearRejectReason() => clearField(1);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(1);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(1);
}

class GetBlockTemplateRequestMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetBlockTemplateRequestMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'payAddress',
        protoName: 'payAddress')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'extraData',
        protoName: 'extraData')
    ..hasRequiredFields = false;

  GetBlockTemplateRequestMessage._() : super();
  factory GetBlockTemplateRequestMessage({
    $core.String? payAddress,
    $core.String? extraData,
  }) {
    final _result = create();
    if (payAddress != null) {
      _result.payAddress = payAddress;
    }
    if (extraData != null) {
      _result.extraData = extraData;
    }
    return _result;
  }
  factory GetBlockTemplateRequestMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetBlockTemplateRequestMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetBlockTemplateRequestMessage clone() =>
      GetBlockTemplateRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetBlockTemplateRequestMessage copyWith(
          void Function(GetBlockTemplateRequestMessage) updates) =>
      super.copyWith(
              (message) => updates(message as GetBlockTemplateRequestMessage))
          as GetBlockTemplateRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBlockTemplateRequestMessage create() =>
      GetBlockTemplateRequestMessage._();
  GetBlockTemplateRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetBlockTemplateRequestMessage> createRepeated() =>
      $pb.PbList<GetBlockTemplateRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetBlockTemplateRequestMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetBlockTemplateRequestMessage>(create);
  static GetBlockTemplateRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get payAddress => $_getSZ(0);
  @$pb.TagNumber(1)
  set payAddress($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPayAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get extraData => $_getSZ(1);
  @$pb.TagNumber(2)
  set extraData($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasExtraData() => $_has(1);
  @$pb.TagNumber(2)
  void clearExtraData() => clearField(2);
}

class GetBlockTemplateResponseMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetBlockTemplateResponseMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOB(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isSynced',
        protoName: 'isSynced')
    ..aOM<RpcBlock>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'block',
        subBuilder: RpcBlock.create)
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  GetBlockTemplateResponseMessage._() : super();
  factory GetBlockTemplateResponseMessage({
    $core.bool? isSynced,
    RpcBlock? block,
    RPCError? error,
  }) {
    final _result = create();
    if (isSynced != null) {
      _result.isSynced = isSynced;
    }
    if (block != null) {
      _result.block = block;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory GetBlockTemplateResponseMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetBlockTemplateResponseMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetBlockTemplateResponseMessage clone() =>
      GetBlockTemplateResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetBlockTemplateResponseMessage copyWith(
          void Function(GetBlockTemplateResponseMessage) updates) =>
      super.copyWith(
              (message) => updates(message as GetBlockTemplateResponseMessage))
          as GetBlockTemplateResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBlockTemplateResponseMessage create() =>
      GetBlockTemplateResponseMessage._();
  GetBlockTemplateResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetBlockTemplateResponseMessage> createRepeated() =>
      $pb.PbList<GetBlockTemplateResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetBlockTemplateResponseMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetBlockTemplateResponseMessage>(
          create);
  static GetBlockTemplateResponseMessage? _defaultInstance;

  @$pb.TagNumber(2)
  $core.bool get isSynced => $_getBF(0);
  @$pb.TagNumber(2)
  set isSynced($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasIsSynced() => $_has(0);
  @$pb.TagNumber(2)
  void clearIsSynced() => clearField(2);

  @$pb.TagNumber(3)
  RpcBlock get block => $_getN(1);
  @$pb.TagNumber(3)
  set block(RpcBlock v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasBlock() => $_has(1);
  @$pb.TagNumber(3)
  void clearBlock() => clearField(3);
  @$pb.TagNumber(3)
  RpcBlock ensureBlock() => $_ensure(1);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(2);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(2);
}

class NotifyBlockAddedRequestMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'NotifyBlockAddedRequestMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  NotifyBlockAddedRequestMessage._() : super();
  factory NotifyBlockAddedRequestMessage() => create();
  factory NotifyBlockAddedRequestMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NotifyBlockAddedRequestMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NotifyBlockAddedRequestMessage clone() =>
      NotifyBlockAddedRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NotifyBlockAddedRequestMessage copyWith(
          void Function(NotifyBlockAddedRequestMessage) updates) =>
      super.copyWith(
              (message) => updates(message as NotifyBlockAddedRequestMessage))
          as NotifyBlockAddedRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NotifyBlockAddedRequestMessage create() =>
      NotifyBlockAddedRequestMessage._();
  NotifyBlockAddedRequestMessage createEmptyInstance() => create();
  static $pb.PbList<NotifyBlockAddedRequestMessage> createRepeated() =>
      $pb.PbList<NotifyBlockAddedRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static NotifyBlockAddedRequestMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NotifyBlockAddedRequestMessage>(create);
  static NotifyBlockAddedRequestMessage? _defaultInstance;
}

class NotifyBlockAddedResponseMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'NotifyBlockAddedResponseMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  NotifyBlockAddedResponseMessage._() : super();
  factory NotifyBlockAddedResponseMessage({
    RPCError? error,
  }) {
    final _result = create();
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory NotifyBlockAddedResponseMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NotifyBlockAddedResponseMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NotifyBlockAddedResponseMessage clone() =>
      NotifyBlockAddedResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NotifyBlockAddedResponseMessage copyWith(
          void Function(NotifyBlockAddedResponseMessage) updates) =>
      super.copyWith(
              (message) => updates(message as NotifyBlockAddedResponseMessage))
          as NotifyBlockAddedResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NotifyBlockAddedResponseMessage create() =>
      NotifyBlockAddedResponseMessage._();
  NotifyBlockAddedResponseMessage createEmptyInstance() => create();
  static $pb.PbList<NotifyBlockAddedResponseMessage> createRepeated() =>
      $pb.PbList<NotifyBlockAddedResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static NotifyBlockAddedResponseMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NotifyBlockAddedResponseMessage>(
          create);
  static NotifyBlockAddedResponseMessage? _defaultInstance;

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(0);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(0);
}

class BlockAddedNotificationMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'BlockAddedNotificationMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<RpcBlock>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'block',
        subBuilder: RpcBlock.create)
    ..hasRequiredFields = false;

  BlockAddedNotificationMessage._() : super();
  factory BlockAddedNotificationMessage({
    RpcBlock? block,
  }) {
    final _result = create();
    if (block != null) {
      _result.block = block;
    }
    return _result;
  }
  factory BlockAddedNotificationMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BlockAddedNotificationMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BlockAddedNotificationMessage clone() =>
      BlockAddedNotificationMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BlockAddedNotificationMessage copyWith(
          void Function(BlockAddedNotificationMessage) updates) =>
      super.copyWith(
              (message) => updates(message as BlockAddedNotificationMessage))
          as BlockAddedNotificationMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockAddedNotificationMessage create() =>
      BlockAddedNotificationMessage._();
  BlockAddedNotificationMessage createEmptyInstance() => create();
  static $pb.PbList<BlockAddedNotificationMessage> createRepeated() =>
      $pb.PbList<BlockAddedNotificationMessage>();
  @$core.pragma('dart2js:noInline')
  static BlockAddedNotificationMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BlockAddedNotificationMessage>(create);
  static BlockAddedNotificationMessage? _defaultInstance;

  @$pb.TagNumber(3)
  RpcBlock get block => $_getN(0);
  @$pb.TagNumber(3)
  set block(RpcBlock v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasBlock() => $_has(0);
  @$pb.TagNumber(3)
  void clearBlock() => clearField(3);
  @$pb.TagNumber(3)
  RpcBlock ensureBlock() => $_ensure(0);
}

class GetPeerAddressesRequestMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetPeerAddressesRequestMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  GetPeerAddressesRequestMessage._() : super();
  factory GetPeerAddressesRequestMessage() => create();
  factory GetPeerAddressesRequestMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetPeerAddressesRequestMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetPeerAddressesRequestMessage clone() =>
      GetPeerAddressesRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetPeerAddressesRequestMessage copyWith(
          void Function(GetPeerAddressesRequestMessage) updates) =>
      super.copyWith(
              (message) => updates(message as GetPeerAddressesRequestMessage))
          as GetPeerAddressesRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPeerAddressesRequestMessage create() =>
      GetPeerAddressesRequestMessage._();
  GetPeerAddressesRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetPeerAddressesRequestMessage> createRepeated() =>
      $pb.PbList<GetPeerAddressesRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetPeerAddressesRequestMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetPeerAddressesRequestMessage>(create);
  static GetPeerAddressesRequestMessage? _defaultInstance;
}

class GetPeerAddressesResponseMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetPeerAddressesResponseMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..pc<GetPeerAddressesKnownAddressMessage>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'addresses',
        $pb.PbFieldType.PM,
        subBuilder: GetPeerAddressesKnownAddressMessage.create)
    ..pc<GetPeerAddressesKnownAddressMessage>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'bannedAddresses',
        $pb.PbFieldType.PM,
        protoName: 'bannedAddresses',
        subBuilder: GetPeerAddressesKnownAddressMessage.create)
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  GetPeerAddressesResponseMessage._() : super();
  factory GetPeerAddressesResponseMessage({
    $core.Iterable<GetPeerAddressesKnownAddressMessage>? addresses,
    $core.Iterable<GetPeerAddressesKnownAddressMessage>? bannedAddresses,
    RPCError? error,
  }) {
    final _result = create();
    if (addresses != null) {
      _result.addresses.addAll(addresses);
    }
    if (bannedAddresses != null) {
      _result.bannedAddresses.addAll(bannedAddresses);
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory GetPeerAddressesResponseMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetPeerAddressesResponseMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetPeerAddressesResponseMessage clone() =>
      GetPeerAddressesResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetPeerAddressesResponseMessage copyWith(
          void Function(GetPeerAddressesResponseMessage) updates) =>
      super.copyWith(
              (message) => updates(message as GetPeerAddressesResponseMessage))
          as GetPeerAddressesResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPeerAddressesResponseMessage create() =>
      GetPeerAddressesResponseMessage._();
  GetPeerAddressesResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetPeerAddressesResponseMessage> createRepeated() =>
      $pb.PbList<GetPeerAddressesResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetPeerAddressesResponseMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetPeerAddressesResponseMessage>(
          create);
  static GetPeerAddressesResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetPeerAddressesKnownAddressMessage> get addresses => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<GetPeerAddressesKnownAddressMessage> get bannedAddresses =>
      $_getList(1);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(2);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(2);
}

class GetPeerAddressesKnownAddressMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetPeerAddressesKnownAddressMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'Addr',
        protoName: 'Addr')
    ..hasRequiredFields = false;

  GetPeerAddressesKnownAddressMessage._() : super();
  factory GetPeerAddressesKnownAddressMessage({
    $core.String? addr,
  }) {
    final _result = create();
    if (addr != null) {
      _result.addr = addr;
    }
    return _result;
  }
  factory GetPeerAddressesKnownAddressMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetPeerAddressesKnownAddressMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetPeerAddressesKnownAddressMessage clone() =>
      GetPeerAddressesKnownAddressMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetPeerAddressesKnownAddressMessage copyWith(
          void Function(GetPeerAddressesKnownAddressMessage) updates) =>
      super.copyWith((message) =>
              updates(message as GetPeerAddressesKnownAddressMessage))
          as GetPeerAddressesKnownAddressMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPeerAddressesKnownAddressMessage create() =>
      GetPeerAddressesKnownAddressMessage._();
  GetPeerAddressesKnownAddressMessage createEmptyInstance() => create();
  static $pb.PbList<GetPeerAddressesKnownAddressMessage> createRepeated() =>
      $pb.PbList<GetPeerAddressesKnownAddressMessage>();
  @$core.pragma('dart2js:noInline')
  static GetPeerAddressesKnownAddressMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          GetPeerAddressesKnownAddressMessage>(create);
  static GetPeerAddressesKnownAddressMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get addr => $_getSZ(0);
  @$pb.TagNumber(1)
  set addr($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAddr() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddr() => clearField(1);
}

class GetSelectedTipHashRequestMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetSelectedTipHashRequestMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  GetSelectedTipHashRequestMessage._() : super();
  factory GetSelectedTipHashRequestMessage() => create();
  factory GetSelectedTipHashRequestMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetSelectedTipHashRequestMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetSelectedTipHashRequestMessage clone() =>
      GetSelectedTipHashRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetSelectedTipHashRequestMessage copyWith(
          void Function(GetSelectedTipHashRequestMessage) updates) =>
      super.copyWith(
              (message) => updates(message as GetSelectedTipHashRequestMessage))
          as GetSelectedTipHashRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSelectedTipHashRequestMessage create() =>
      GetSelectedTipHashRequestMessage._();
  GetSelectedTipHashRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetSelectedTipHashRequestMessage> createRepeated() =>
      $pb.PbList<GetSelectedTipHashRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetSelectedTipHashRequestMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetSelectedTipHashRequestMessage>(
          create);
  static GetSelectedTipHashRequestMessage? _defaultInstance;
}

class GetSelectedTipHashResponseMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetSelectedTipHashResponseMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'selectedTipHash',
        protoName: 'selectedTipHash')
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  GetSelectedTipHashResponseMessage._() : super();
  factory GetSelectedTipHashResponseMessage({
    $core.String? selectedTipHash,
    RPCError? error,
  }) {
    final _result = create();
    if (selectedTipHash != null) {
      _result.selectedTipHash = selectedTipHash;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory GetSelectedTipHashResponseMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetSelectedTipHashResponseMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetSelectedTipHashResponseMessage clone() =>
      GetSelectedTipHashResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetSelectedTipHashResponseMessage copyWith(
          void Function(GetSelectedTipHashResponseMessage) updates) =>
      super.copyWith((message) =>
              updates(message as GetSelectedTipHashResponseMessage))
          as GetSelectedTipHashResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSelectedTipHashResponseMessage create() =>
      GetSelectedTipHashResponseMessage._();
  GetSelectedTipHashResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetSelectedTipHashResponseMessage> createRepeated() =>
      $pb.PbList<GetSelectedTipHashResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetSelectedTipHashResponseMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetSelectedTipHashResponseMessage>(
          create);
  static GetSelectedTipHashResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get selectedTipHash => $_getSZ(0);
  @$pb.TagNumber(1)
  set selectedTipHash($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSelectedTipHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearSelectedTipHash() => clearField(1);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(1);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(1);
}

class GetMempoolEntryRequestMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetMempoolEntryRequestMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'txId',
        protoName: 'txId')
    ..aOB(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'includeOrphanPool',
        protoName: 'includeOrphanPool')
    ..aOB(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'filterTransactionPool',
        protoName: 'filterTransactionPool')
    ..hasRequiredFields = false;

  GetMempoolEntryRequestMessage._() : super();
  factory GetMempoolEntryRequestMessage({
    $core.String? txId,
    $core.bool? includeOrphanPool,
    $core.bool? filterTransactionPool,
  }) {
    final _result = create();
    if (txId != null) {
      _result.txId = txId;
    }
    if (includeOrphanPool != null) {
      _result.includeOrphanPool = includeOrphanPool;
    }
    if (filterTransactionPool != null) {
      _result.filterTransactionPool = filterTransactionPool;
    }
    return _result;
  }
  factory GetMempoolEntryRequestMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetMempoolEntryRequestMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetMempoolEntryRequestMessage clone() =>
      GetMempoolEntryRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetMempoolEntryRequestMessage copyWith(
          void Function(GetMempoolEntryRequestMessage) updates) =>
      super.copyWith(
              (message) => updates(message as GetMempoolEntryRequestMessage))
          as GetMempoolEntryRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetMempoolEntryRequestMessage create() =>
      GetMempoolEntryRequestMessage._();
  GetMempoolEntryRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetMempoolEntryRequestMessage> createRepeated() =>
      $pb.PbList<GetMempoolEntryRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetMempoolEntryRequestMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMempoolEntryRequestMessage>(create);
  static GetMempoolEntryRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get txId => $_getSZ(0);
  @$pb.TagNumber(1)
  set txId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTxId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTxId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get includeOrphanPool => $_getBF(1);
  @$pb.TagNumber(2)
  set includeOrphanPool($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasIncludeOrphanPool() => $_has(1);
  @$pb.TagNumber(2)
  void clearIncludeOrphanPool() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get filterTransactionPool => $_getBF(2);
  @$pb.TagNumber(3)
  set filterTransactionPool($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasFilterTransactionPool() => $_has(2);
  @$pb.TagNumber(3)
  void clearFilterTransactionPool() => clearField(3);
}

class GetMempoolEntryResponseMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetMempoolEntryResponseMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<MempoolEntry>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'entry',
        subBuilder: MempoolEntry.create)
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  GetMempoolEntryResponseMessage._() : super();
  factory GetMempoolEntryResponseMessage({
    MempoolEntry? entry,
    RPCError? error,
  }) {
    final _result = create();
    if (entry != null) {
      _result.entry = entry;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory GetMempoolEntryResponseMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetMempoolEntryResponseMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetMempoolEntryResponseMessage clone() =>
      GetMempoolEntryResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetMempoolEntryResponseMessage copyWith(
          void Function(GetMempoolEntryResponseMessage) updates) =>
      super.copyWith(
              (message) => updates(message as GetMempoolEntryResponseMessage))
          as GetMempoolEntryResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetMempoolEntryResponseMessage create() =>
      GetMempoolEntryResponseMessage._();
  GetMempoolEntryResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetMempoolEntryResponseMessage> createRepeated() =>
      $pb.PbList<GetMempoolEntryResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetMempoolEntryResponseMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMempoolEntryResponseMessage>(create);
  static GetMempoolEntryResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  MempoolEntry get entry => $_getN(0);
  @$pb.TagNumber(1)
  set entry(MempoolEntry v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasEntry() => $_has(0);
  @$pb.TagNumber(1)
  void clearEntry() => clearField(1);
  @$pb.TagNumber(1)
  MempoolEntry ensureEntry() => $_ensure(0);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(1);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(1);
}

class GetMempoolEntriesRequestMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetMempoolEntriesRequestMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOB(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'includeOrphanPool',
        protoName: 'includeOrphanPool')
    ..aOB(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'filterTransactionPool',
        protoName: 'filterTransactionPool')
    ..hasRequiredFields = false;

  GetMempoolEntriesRequestMessage._() : super();
  factory GetMempoolEntriesRequestMessage({
    $core.bool? includeOrphanPool,
    $core.bool? filterTransactionPool,
  }) {
    final _result = create();
    if (includeOrphanPool != null) {
      _result.includeOrphanPool = includeOrphanPool;
    }
    if (filterTransactionPool != null) {
      _result.filterTransactionPool = filterTransactionPool;
    }
    return _result;
  }
  factory GetMempoolEntriesRequestMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetMempoolEntriesRequestMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetMempoolEntriesRequestMessage clone() =>
      GetMempoolEntriesRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetMempoolEntriesRequestMessage copyWith(
          void Function(GetMempoolEntriesRequestMessage) updates) =>
      super.copyWith(
              (message) => updates(message as GetMempoolEntriesRequestMessage))
          as GetMempoolEntriesRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetMempoolEntriesRequestMessage create() =>
      GetMempoolEntriesRequestMessage._();
  GetMempoolEntriesRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetMempoolEntriesRequestMessage> createRepeated() =>
      $pb.PbList<GetMempoolEntriesRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetMempoolEntriesRequestMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMempoolEntriesRequestMessage>(
          create);
  static GetMempoolEntriesRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get includeOrphanPool => $_getBF(0);
  @$pb.TagNumber(1)
  set includeOrphanPool($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIncludeOrphanPool() => $_has(0);
  @$pb.TagNumber(1)
  void clearIncludeOrphanPool() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get filterTransactionPool => $_getBF(1);
  @$pb.TagNumber(2)
  set filterTransactionPool($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFilterTransactionPool() => $_has(1);
  @$pb.TagNumber(2)
  void clearFilterTransactionPool() => clearField(2);
}

class GetMempoolEntriesResponseMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetMempoolEntriesResponseMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..pc<MempoolEntry>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'entries',
        $pb.PbFieldType.PM,
        subBuilder: MempoolEntry.create)
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  GetMempoolEntriesResponseMessage._() : super();
  factory GetMempoolEntriesResponseMessage({
    $core.Iterable<MempoolEntry>? entries,
    RPCError? error,
  }) {
    final _result = create();
    if (entries != null) {
      _result.entries.addAll(entries);
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory GetMempoolEntriesResponseMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetMempoolEntriesResponseMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetMempoolEntriesResponseMessage clone() =>
      GetMempoolEntriesResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetMempoolEntriesResponseMessage copyWith(
          void Function(GetMempoolEntriesResponseMessage) updates) =>
      super.copyWith(
              (message) => updates(message as GetMempoolEntriesResponseMessage))
          as GetMempoolEntriesResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetMempoolEntriesResponseMessage create() =>
      GetMempoolEntriesResponseMessage._();
  GetMempoolEntriesResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetMempoolEntriesResponseMessage> createRepeated() =>
      $pb.PbList<GetMempoolEntriesResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetMempoolEntriesResponseMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMempoolEntriesResponseMessage>(
          create);
  static GetMempoolEntriesResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<MempoolEntry> get entries => $_getList(0);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(1);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(1);
}

class MempoolEntry extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'MempoolEntry',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fee',
        $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<RpcTransaction>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'transaction',
        subBuilder: RpcTransaction.create)
    ..aOB(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isOrphan',
        protoName: 'isOrphan')
    ..hasRequiredFields = false;

  MempoolEntry._() : super();
  factory MempoolEntry({
    $fixnum.Int64? fee,
    RpcTransaction? transaction,
    $core.bool? isOrphan,
  }) {
    final _result = create();
    if (fee != null) {
      _result.fee = fee;
    }
    if (transaction != null) {
      _result.transaction = transaction;
    }
    if (isOrphan != null) {
      _result.isOrphan = isOrphan;
    }
    return _result;
  }
  factory MempoolEntry.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MempoolEntry.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MempoolEntry clone() => MempoolEntry()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MempoolEntry copyWith(void Function(MempoolEntry) updates) =>
      super.copyWith((message) => updates(message as MempoolEntry))
          as MempoolEntry; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MempoolEntry create() => MempoolEntry._();
  MempoolEntry createEmptyInstance() => create();
  static $pb.PbList<MempoolEntry> createRepeated() =>
      $pb.PbList<MempoolEntry>();
  @$core.pragma('dart2js:noInline')
  static MempoolEntry getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MempoolEntry>(create);
  static MempoolEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get fee => $_getI64(0);
  @$pb.TagNumber(1)
  set fee($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFee() => $_has(0);
  @$pb.TagNumber(1)
  void clearFee() => clearField(1);

  @$pb.TagNumber(3)
  RpcTransaction get transaction => $_getN(1);
  @$pb.TagNumber(3)
  set transaction(RpcTransaction v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTransaction() => $_has(1);
  @$pb.TagNumber(3)
  void clearTransaction() => clearField(3);
  @$pb.TagNumber(3)
  RpcTransaction ensureTransaction() => $_ensure(1);

  @$pb.TagNumber(4)
  $core.bool get isOrphan => $_getBF(2);
  @$pb.TagNumber(4)
  set isOrphan($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasIsOrphan() => $_has(2);
  @$pb.TagNumber(4)
  void clearIsOrphan() => clearField(4);
}

class GetConnectedPeerInfoRequestMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetConnectedPeerInfoRequestMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  GetConnectedPeerInfoRequestMessage._() : super();
  factory GetConnectedPeerInfoRequestMessage() => create();
  factory GetConnectedPeerInfoRequestMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetConnectedPeerInfoRequestMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetConnectedPeerInfoRequestMessage clone() =>
      GetConnectedPeerInfoRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetConnectedPeerInfoRequestMessage copyWith(
          void Function(GetConnectedPeerInfoRequestMessage) updates) =>
      super.copyWith((message) =>
              updates(message as GetConnectedPeerInfoRequestMessage))
          as GetConnectedPeerInfoRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetConnectedPeerInfoRequestMessage create() =>
      GetConnectedPeerInfoRequestMessage._();
  GetConnectedPeerInfoRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetConnectedPeerInfoRequestMessage> createRepeated() =>
      $pb.PbList<GetConnectedPeerInfoRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetConnectedPeerInfoRequestMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetConnectedPeerInfoRequestMessage>(
          create);
  static GetConnectedPeerInfoRequestMessage? _defaultInstance;
}

class GetConnectedPeerInfoResponseMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetConnectedPeerInfoResponseMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..pc<GetConnectedPeerInfoMessage>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'infos',
        $pb.PbFieldType.PM,
        subBuilder: GetConnectedPeerInfoMessage.create)
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  GetConnectedPeerInfoResponseMessage._() : super();
  factory GetConnectedPeerInfoResponseMessage({
    $core.Iterable<GetConnectedPeerInfoMessage>? infos,
    RPCError? error,
  }) {
    final _result = create();
    if (infos != null) {
      _result.infos.addAll(infos);
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory GetConnectedPeerInfoResponseMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetConnectedPeerInfoResponseMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetConnectedPeerInfoResponseMessage clone() =>
      GetConnectedPeerInfoResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetConnectedPeerInfoResponseMessage copyWith(
          void Function(GetConnectedPeerInfoResponseMessage) updates) =>
      super.copyWith((message) =>
              updates(message as GetConnectedPeerInfoResponseMessage))
          as GetConnectedPeerInfoResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetConnectedPeerInfoResponseMessage create() =>
      GetConnectedPeerInfoResponseMessage._();
  GetConnectedPeerInfoResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetConnectedPeerInfoResponseMessage> createRepeated() =>
      $pb.PbList<GetConnectedPeerInfoResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetConnectedPeerInfoResponseMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          GetConnectedPeerInfoResponseMessage>(create);
  static GetConnectedPeerInfoResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetConnectedPeerInfoMessage> get infos => $_getList(0);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(1);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(1);
}

class GetConnectedPeerInfoMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetConnectedPeerInfoMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'id')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'address')
    ..aInt64(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'lastPingDuration',
        protoName: 'lastPingDuration')
    ..aOB(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isOutbound',
        protoName: 'isOutbound')
    ..aInt64(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'timeOffset',
        protoName: 'timeOffset')
    ..aOS(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'userAgent',
        protoName: 'userAgent')
    ..a<$core.int>(
        9,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'advertisedProtocolVersion',
        $pb.PbFieldType.OU3,
        protoName: 'advertisedProtocolVersion')
    ..aInt64(
        10,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'timeConnected',
        protoName: 'timeConnected')
    ..aOB(
        11,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isIbdPeer',
        protoName: 'isIbdPeer')
    ..hasRequiredFields = false;

  GetConnectedPeerInfoMessage._() : super();
  factory GetConnectedPeerInfoMessage({
    $core.String? id,
    $core.String? address,
    $fixnum.Int64? lastPingDuration,
    $core.bool? isOutbound,
    $fixnum.Int64? timeOffset,
    $core.String? userAgent,
    $core.int? advertisedProtocolVersion,
    $fixnum.Int64? timeConnected,
    $core.bool? isIbdPeer,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (address != null) {
      _result.address = address;
    }
    if (lastPingDuration != null) {
      _result.lastPingDuration = lastPingDuration;
    }
    if (isOutbound != null) {
      _result.isOutbound = isOutbound;
    }
    if (timeOffset != null) {
      _result.timeOffset = timeOffset;
    }
    if (userAgent != null) {
      _result.userAgent = userAgent;
    }
    if (advertisedProtocolVersion != null) {
      _result.advertisedProtocolVersion = advertisedProtocolVersion;
    }
    if (timeConnected != null) {
      _result.timeConnected = timeConnected;
    }
    if (isIbdPeer != null) {
      _result.isIbdPeer = isIbdPeer;
    }
    return _result;
  }
  factory GetConnectedPeerInfoMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetConnectedPeerInfoMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetConnectedPeerInfoMessage clone() =>
      GetConnectedPeerInfoMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetConnectedPeerInfoMessage copyWith(
          void Function(GetConnectedPeerInfoMessage) updates) =>
      super.copyWith(
              (message) => updates(message as GetConnectedPeerInfoMessage))
          as GetConnectedPeerInfoMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetConnectedPeerInfoMessage create() =>
      GetConnectedPeerInfoMessage._();
  GetConnectedPeerInfoMessage createEmptyInstance() => create();
  static $pb.PbList<GetConnectedPeerInfoMessage> createRepeated() =>
      $pb.PbList<GetConnectedPeerInfoMessage>();
  @$core.pragma('dart2js:noInline')
  static GetConnectedPeerInfoMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetConnectedPeerInfoMessage>(create);
  static GetConnectedPeerInfoMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get address => $_getSZ(1);
  @$pb.TagNumber(2)
  set address($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddress() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get lastPingDuration => $_getI64(2);
  @$pb.TagNumber(3)
  set lastPingDuration($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasLastPingDuration() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastPingDuration() => clearField(3);

  @$pb.TagNumber(6)
  $core.bool get isOutbound => $_getBF(3);
  @$pb.TagNumber(6)
  set isOutbound($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasIsOutbound() => $_has(3);
  @$pb.TagNumber(6)
  void clearIsOutbound() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get timeOffset => $_getI64(4);
  @$pb.TagNumber(7)
  set timeOffset($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasTimeOffset() => $_has(4);
  @$pb.TagNumber(7)
  void clearTimeOffset() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get userAgent => $_getSZ(5);
  @$pb.TagNumber(8)
  set userAgent($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasUserAgent() => $_has(5);
  @$pb.TagNumber(8)
  void clearUserAgent() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get advertisedProtocolVersion => $_getIZ(6);
  @$pb.TagNumber(9)
  set advertisedProtocolVersion($core.int v) {
    $_setUnsignedInt32(6, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasAdvertisedProtocolVersion() => $_has(6);
  @$pb.TagNumber(9)
  void clearAdvertisedProtocolVersion() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get timeConnected => $_getI64(7);
  @$pb.TagNumber(10)
  set timeConnected($fixnum.Int64 v) {
    $_setInt64(7, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasTimeConnected() => $_has(7);
  @$pb.TagNumber(10)
  void clearTimeConnected() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get isIbdPeer => $_getBF(8);
  @$pb.TagNumber(11)
  set isIbdPeer($core.bool v) {
    $_setBool(8, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasIsIbdPeer() => $_has(8);
  @$pb.TagNumber(11)
  void clearIsIbdPeer() => clearField(11);
}

class AddPeerRequestMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'AddPeerRequestMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'address')
    ..aOB(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isPermanent',
        protoName: 'isPermanent')
    ..hasRequiredFields = false;

  AddPeerRequestMessage._() : super();
  factory AddPeerRequestMessage({
    $core.String? address,
    $core.bool? isPermanent,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (isPermanent != null) {
      _result.isPermanent = isPermanent;
    }
    return _result;
  }
  factory AddPeerRequestMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AddPeerRequestMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AddPeerRequestMessage clone() =>
      AddPeerRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AddPeerRequestMessage copyWith(
          void Function(AddPeerRequestMessage) updates) =>
      super.copyWith((message) => updates(message as AddPeerRequestMessage))
          as AddPeerRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddPeerRequestMessage create() => AddPeerRequestMessage._();
  AddPeerRequestMessage createEmptyInstance() => create();
  static $pb.PbList<AddPeerRequestMessage> createRepeated() =>
      $pb.PbList<AddPeerRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static AddPeerRequestMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AddPeerRequestMessage>(create);
  static AddPeerRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isPermanent => $_getBF(1);
  @$pb.TagNumber(2)
  set isPermanent($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasIsPermanent() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsPermanent() => clearField(2);
}

class AddPeerResponseMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'AddPeerResponseMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  AddPeerResponseMessage._() : super();
  factory AddPeerResponseMessage({
    RPCError? error,
  }) {
    final _result = create();
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory AddPeerResponseMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AddPeerResponseMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AddPeerResponseMessage clone() =>
      AddPeerResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AddPeerResponseMessage copyWith(
          void Function(AddPeerResponseMessage) updates) =>
      super.copyWith((message) => updates(message as AddPeerResponseMessage))
          as AddPeerResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddPeerResponseMessage create() => AddPeerResponseMessage._();
  AddPeerResponseMessage createEmptyInstance() => create();
  static $pb.PbList<AddPeerResponseMessage> createRepeated() =>
      $pb.PbList<AddPeerResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static AddPeerResponseMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AddPeerResponseMessage>(create);
  static AddPeerResponseMessage? _defaultInstance;

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(0);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(0);
}

class SubmitTransactionRequestMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SubmitTransactionRequestMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<RpcTransaction>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'transaction',
        subBuilder: RpcTransaction.create)
    ..aOB(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'allowOrphan',
        protoName: 'allowOrphan')
    ..hasRequiredFields = false;

  SubmitTransactionRequestMessage._() : super();
  factory SubmitTransactionRequestMessage({
    RpcTransaction? transaction,
    $core.bool? allowOrphan,
  }) {
    final _result = create();
    if (transaction != null) {
      _result.transaction = transaction;
    }
    if (allowOrphan != null) {
      _result.allowOrphan = allowOrphan;
    }
    return _result;
  }
  factory SubmitTransactionRequestMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SubmitTransactionRequestMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SubmitTransactionRequestMessage clone() =>
      SubmitTransactionRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SubmitTransactionRequestMessage copyWith(
          void Function(SubmitTransactionRequestMessage) updates) =>
      super.copyWith(
              (message) => updates(message as SubmitTransactionRequestMessage))
          as SubmitTransactionRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubmitTransactionRequestMessage create() =>
      SubmitTransactionRequestMessage._();
  SubmitTransactionRequestMessage createEmptyInstance() => create();
  static $pb.PbList<SubmitTransactionRequestMessage> createRepeated() =>
      $pb.PbList<SubmitTransactionRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static SubmitTransactionRequestMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SubmitTransactionRequestMessage>(
          create);
  static SubmitTransactionRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  RpcTransaction get transaction => $_getN(0);
  @$pb.TagNumber(1)
  set transaction(RpcTransaction v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTransaction() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransaction() => clearField(1);
  @$pb.TagNumber(1)
  RpcTransaction ensureTransaction() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get allowOrphan => $_getBF(1);
  @$pb.TagNumber(2)
  set allowOrphan($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAllowOrphan() => $_has(1);
  @$pb.TagNumber(2)
  void clearAllowOrphan() => clearField(2);
}

class SubmitTransactionResponseMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SubmitTransactionResponseMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'transactionId',
        protoName: 'transactionId')
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  SubmitTransactionResponseMessage._() : super();
  factory SubmitTransactionResponseMessage({
    $core.String? transactionId,
    RPCError? error,
  }) {
    final _result = create();
    if (transactionId != null) {
      _result.transactionId = transactionId;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory SubmitTransactionResponseMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SubmitTransactionResponseMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SubmitTransactionResponseMessage clone() =>
      SubmitTransactionResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SubmitTransactionResponseMessage copyWith(
          void Function(SubmitTransactionResponseMessage) updates) =>
      super.copyWith(
              (message) => updates(message as SubmitTransactionResponseMessage))
          as SubmitTransactionResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubmitTransactionResponseMessage create() =>
      SubmitTransactionResponseMessage._();
  SubmitTransactionResponseMessage createEmptyInstance() => create();
  static $pb.PbList<SubmitTransactionResponseMessage> createRepeated() =>
      $pb.PbList<SubmitTransactionResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static SubmitTransactionResponseMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SubmitTransactionResponseMessage>(
          create);
  static SubmitTransactionResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get transactionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set transactionId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTransactionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransactionId() => clearField(1);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(1);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(1);
}

class NotifyVirtualSelectedParentChainChangedRequestMessage
    extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'NotifyVirtualSelectedParentChainChangedRequestMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOB(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'includeAcceptedTransactionIds',
        protoName: 'includeAcceptedTransactionIds')
    ..hasRequiredFields = false;

  NotifyVirtualSelectedParentChainChangedRequestMessage._() : super();
  factory NotifyVirtualSelectedParentChainChangedRequestMessage({
    $core.bool? includeAcceptedTransactionIds,
  }) {
    final _result = create();
    if (includeAcceptedTransactionIds != null) {
      _result.includeAcceptedTransactionIds = includeAcceptedTransactionIds;
    }
    return _result;
  }
  factory NotifyVirtualSelectedParentChainChangedRequestMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NotifyVirtualSelectedParentChainChangedRequestMessage.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NotifyVirtualSelectedParentChainChangedRequestMessage clone() =>
      NotifyVirtualSelectedParentChainChangedRequestMessage()
        ..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NotifyVirtualSelectedParentChainChangedRequestMessage copyWith(
          void Function(NotifyVirtualSelectedParentChainChangedRequestMessage)
              updates) =>
      super.copyWith((message) => updates(
              message as NotifyVirtualSelectedParentChainChangedRequestMessage))
          as NotifyVirtualSelectedParentChainChangedRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NotifyVirtualSelectedParentChainChangedRequestMessage create() =>
      NotifyVirtualSelectedParentChainChangedRequestMessage._();
  NotifyVirtualSelectedParentChainChangedRequestMessage createEmptyInstance() =>
      create();
  static $pb.PbList<NotifyVirtualSelectedParentChainChangedRequestMessage>
      createRepeated() =>
          $pb.PbList<NotifyVirtualSelectedParentChainChangedRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static NotifyVirtualSelectedParentChainChangedRequestMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          NotifyVirtualSelectedParentChainChangedRequestMessage>(create);
  static NotifyVirtualSelectedParentChainChangedRequestMessage?
      _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get includeAcceptedTransactionIds => $_getBF(0);
  @$pb.TagNumber(1)
  set includeAcceptedTransactionIds($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIncludeAcceptedTransactionIds() => $_has(0);
  @$pb.TagNumber(1)
  void clearIncludeAcceptedTransactionIds() => clearField(1);
}

class NotifyVirtualSelectedParentChainChangedResponseMessage
    extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'NotifyVirtualSelectedParentChainChangedResponseMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  NotifyVirtualSelectedParentChainChangedResponseMessage._() : super();
  factory NotifyVirtualSelectedParentChainChangedResponseMessage({
    RPCError? error,
  }) {
    final _result = create();
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory NotifyVirtualSelectedParentChainChangedResponseMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NotifyVirtualSelectedParentChainChangedResponseMessage.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NotifyVirtualSelectedParentChainChangedResponseMessage clone() =>
      NotifyVirtualSelectedParentChainChangedResponseMessage()
        ..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NotifyVirtualSelectedParentChainChangedResponseMessage copyWith(
          void Function(NotifyVirtualSelectedParentChainChangedResponseMessage)
              updates) =>
      super.copyWith((message) => updates(message
              as NotifyVirtualSelectedParentChainChangedResponseMessage))
          as NotifyVirtualSelectedParentChainChangedResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NotifyVirtualSelectedParentChainChangedResponseMessage create() =>
      NotifyVirtualSelectedParentChainChangedResponseMessage._();
  NotifyVirtualSelectedParentChainChangedResponseMessage
      createEmptyInstance() => create();
  static $pb.PbList<NotifyVirtualSelectedParentChainChangedResponseMessage>
      createRepeated() =>
          $pb.PbList<NotifyVirtualSelectedParentChainChangedResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static NotifyVirtualSelectedParentChainChangedResponseMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          NotifyVirtualSelectedParentChainChangedResponseMessage>(create);
  static NotifyVirtualSelectedParentChainChangedResponseMessage?
      _defaultInstance;

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(0);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(0);
}

class VirtualSelectedParentChainChangedNotificationMessage
    extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'VirtualSelectedParentChainChangedNotificationMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..pPS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'removedChainBlockHashes',
        protoName: 'removedChainBlockHashes')
    ..pc<AcceptedTransactionIds>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'acceptedTransactionIds',
        $pb.PbFieldType.PM,
        protoName: 'acceptedTransactionIds',
        subBuilder: AcceptedTransactionIds.create)
    ..pPS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'addedChainBlockHashes',
        protoName: 'addedChainBlockHashes')
    ..hasRequiredFields = false;

  VirtualSelectedParentChainChangedNotificationMessage._() : super();
  factory VirtualSelectedParentChainChangedNotificationMessage({
    $core.Iterable<$core.String>? removedChainBlockHashes,
    $core.Iterable<AcceptedTransactionIds>? acceptedTransactionIds,
    $core.Iterable<$core.String>? addedChainBlockHashes,
  }) {
    final _result = create();
    if (removedChainBlockHashes != null) {
      _result.removedChainBlockHashes.addAll(removedChainBlockHashes);
    }
    if (acceptedTransactionIds != null) {
      _result.acceptedTransactionIds.addAll(acceptedTransactionIds);
    }
    if (addedChainBlockHashes != null) {
      _result.addedChainBlockHashes.addAll(addedChainBlockHashes);
    }
    return _result;
  }
  factory VirtualSelectedParentChainChangedNotificationMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VirtualSelectedParentChainChangedNotificationMessage.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VirtualSelectedParentChainChangedNotificationMessage clone() =>
      VirtualSelectedParentChainChangedNotificationMessage()
        ..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VirtualSelectedParentChainChangedNotificationMessage copyWith(
          void Function(VirtualSelectedParentChainChangedNotificationMessage)
              updates) =>
      super.copyWith((message) => updates(
              message as VirtualSelectedParentChainChangedNotificationMessage))
          as VirtualSelectedParentChainChangedNotificationMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VirtualSelectedParentChainChangedNotificationMessage create() =>
      VirtualSelectedParentChainChangedNotificationMessage._();
  VirtualSelectedParentChainChangedNotificationMessage createEmptyInstance() =>
      create();
  static $pb.PbList<VirtualSelectedParentChainChangedNotificationMessage>
      createRepeated() =>
          $pb.PbList<VirtualSelectedParentChainChangedNotificationMessage>();
  @$core.pragma('dart2js:noInline')
  static VirtualSelectedParentChainChangedNotificationMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          VirtualSelectedParentChainChangedNotificationMessage>(create);
  static VirtualSelectedParentChainChangedNotificationMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get removedChainBlockHashes => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<AcceptedTransactionIds> get acceptedTransactionIds => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.String> get addedChainBlockHashes => $_getList(2);
}

class GetBlockRequestMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetBlockRequestMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hash')
    ..aOB(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'includeTransactions',
        protoName: 'includeTransactions')
    ..hasRequiredFields = false;

  GetBlockRequestMessage._() : super();
  factory GetBlockRequestMessage({
    $core.String? hash,
    $core.bool? includeTransactions,
  }) {
    final _result = create();
    if (hash != null) {
      _result.hash = hash;
    }
    if (includeTransactions != null) {
      _result.includeTransactions = includeTransactions;
    }
    return _result;
  }
  factory GetBlockRequestMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetBlockRequestMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetBlockRequestMessage clone() =>
      GetBlockRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetBlockRequestMessage copyWith(
          void Function(GetBlockRequestMessage) updates) =>
      super.copyWith((message) => updates(message as GetBlockRequestMessage))
          as GetBlockRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBlockRequestMessage create() => GetBlockRequestMessage._();
  GetBlockRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetBlockRequestMessage> createRepeated() =>
      $pb.PbList<GetBlockRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetBlockRequestMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetBlockRequestMessage>(create);
  static GetBlockRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get hash => $_getSZ(0);
  @$pb.TagNumber(1)
  set hash($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearHash() => clearField(1);

  @$pb.TagNumber(3)
  $core.bool get includeTransactions => $_getBF(1);
  @$pb.TagNumber(3)
  set includeTransactions($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasIncludeTransactions() => $_has(1);
  @$pb.TagNumber(3)
  void clearIncludeTransactions() => clearField(3);
}

class GetBlockResponseMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetBlockResponseMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<RpcBlock>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'block',
        subBuilder: RpcBlock.create)
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  GetBlockResponseMessage._() : super();
  factory GetBlockResponseMessage({
    RpcBlock? block,
    RPCError? error,
  }) {
    final _result = create();
    if (block != null) {
      _result.block = block;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory GetBlockResponseMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetBlockResponseMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetBlockResponseMessage clone() =>
      GetBlockResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetBlockResponseMessage copyWith(
          void Function(GetBlockResponseMessage) updates) =>
      super.copyWith((message) => updates(message as GetBlockResponseMessage))
          as GetBlockResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBlockResponseMessage create() => GetBlockResponseMessage._();
  GetBlockResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetBlockResponseMessage> createRepeated() =>
      $pb.PbList<GetBlockResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetBlockResponseMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetBlockResponseMessage>(create);
  static GetBlockResponseMessage? _defaultInstance;

  @$pb.TagNumber(3)
  RpcBlock get block => $_getN(0);
  @$pb.TagNumber(3)
  set block(RpcBlock v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasBlock() => $_has(0);
  @$pb.TagNumber(3)
  void clearBlock() => clearField(3);
  @$pb.TagNumber(3)
  RpcBlock ensureBlock() => $_ensure(0);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(1);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(1);
}

class GetSubnetworkRequestMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetSubnetworkRequestMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'subnetworkId',
        protoName: 'subnetworkId')
    ..hasRequiredFields = false;

  GetSubnetworkRequestMessage._() : super();
  factory GetSubnetworkRequestMessage({
    $core.String? subnetworkId,
  }) {
    final _result = create();
    if (subnetworkId != null) {
      _result.subnetworkId = subnetworkId;
    }
    return _result;
  }
  factory GetSubnetworkRequestMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetSubnetworkRequestMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetSubnetworkRequestMessage clone() =>
      GetSubnetworkRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetSubnetworkRequestMessage copyWith(
          void Function(GetSubnetworkRequestMessage) updates) =>
      super.copyWith(
              (message) => updates(message as GetSubnetworkRequestMessage))
          as GetSubnetworkRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSubnetworkRequestMessage create() =>
      GetSubnetworkRequestMessage._();
  GetSubnetworkRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetSubnetworkRequestMessage> createRepeated() =>
      $pb.PbList<GetSubnetworkRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetSubnetworkRequestMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetSubnetworkRequestMessage>(create);
  static GetSubnetworkRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get subnetworkId => $_getSZ(0);
  @$pb.TagNumber(1)
  set subnetworkId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSubnetworkId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubnetworkId() => clearField(1);
}

class GetSubnetworkResponseMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetSubnetworkResponseMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'gasLimit',
        $pb.PbFieldType.OU6,
        protoName: 'gasLimit',
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  GetSubnetworkResponseMessage._() : super();
  factory GetSubnetworkResponseMessage({
    $fixnum.Int64? gasLimit,
    RPCError? error,
  }) {
    final _result = create();
    if (gasLimit != null) {
      _result.gasLimit = gasLimit;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory GetSubnetworkResponseMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetSubnetworkResponseMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetSubnetworkResponseMessage clone() =>
      GetSubnetworkResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetSubnetworkResponseMessage copyWith(
          void Function(GetSubnetworkResponseMessage) updates) =>
      super.copyWith(
              (message) => updates(message as GetSubnetworkResponseMessage))
          as GetSubnetworkResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSubnetworkResponseMessage create() =>
      GetSubnetworkResponseMessage._();
  GetSubnetworkResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetSubnetworkResponseMessage> createRepeated() =>
      $pb.PbList<GetSubnetworkResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetSubnetworkResponseMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetSubnetworkResponseMessage>(create);
  static GetSubnetworkResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get gasLimit => $_getI64(0);
  @$pb.TagNumber(1)
  set gasLimit($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasGasLimit() => $_has(0);
  @$pb.TagNumber(1)
  void clearGasLimit() => clearField(1);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(1);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(1);
}

class GetVirtualSelectedParentChainFromBlockRequestMessage
    extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetVirtualSelectedParentChainFromBlockRequestMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'startHash',
        protoName: 'startHash')
    ..aOB(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'includeAcceptedTransactionIds',
        protoName: 'includeAcceptedTransactionIds')
    ..hasRequiredFields = false;

  GetVirtualSelectedParentChainFromBlockRequestMessage._() : super();
  factory GetVirtualSelectedParentChainFromBlockRequestMessage({
    $core.String? startHash,
    $core.bool? includeAcceptedTransactionIds,
  }) {
    final _result = create();
    if (startHash != null) {
      _result.startHash = startHash;
    }
    if (includeAcceptedTransactionIds != null) {
      _result.includeAcceptedTransactionIds = includeAcceptedTransactionIds;
    }
    return _result;
  }
  factory GetVirtualSelectedParentChainFromBlockRequestMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetVirtualSelectedParentChainFromBlockRequestMessage.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetVirtualSelectedParentChainFromBlockRequestMessage clone() =>
      GetVirtualSelectedParentChainFromBlockRequestMessage()
        ..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetVirtualSelectedParentChainFromBlockRequestMessage copyWith(
          void Function(GetVirtualSelectedParentChainFromBlockRequestMessage)
              updates) =>
      super.copyWith((message) => updates(
              message as GetVirtualSelectedParentChainFromBlockRequestMessage))
          as GetVirtualSelectedParentChainFromBlockRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetVirtualSelectedParentChainFromBlockRequestMessage create() =>
      GetVirtualSelectedParentChainFromBlockRequestMessage._();
  GetVirtualSelectedParentChainFromBlockRequestMessage createEmptyInstance() =>
      create();
  static $pb.PbList<GetVirtualSelectedParentChainFromBlockRequestMessage>
      createRepeated() =>
          $pb.PbList<GetVirtualSelectedParentChainFromBlockRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetVirtualSelectedParentChainFromBlockRequestMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          GetVirtualSelectedParentChainFromBlockRequestMessage>(create);
  static GetVirtualSelectedParentChainFromBlockRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get startHash => $_getSZ(0);
  @$pb.TagNumber(1)
  set startHash($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStartHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartHash() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get includeAcceptedTransactionIds => $_getBF(1);
  @$pb.TagNumber(2)
  set includeAcceptedTransactionIds($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasIncludeAcceptedTransactionIds() => $_has(1);
  @$pb.TagNumber(2)
  void clearIncludeAcceptedTransactionIds() => clearField(2);
}

class AcceptedTransactionIds extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'AcceptedTransactionIds',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'acceptingBlockHash',
        protoName: 'acceptingBlockHash')
    ..pPS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'acceptedTransactionIds',
        protoName: 'acceptedTransactionIds')
    ..hasRequiredFields = false;

  AcceptedTransactionIds._() : super();
  factory AcceptedTransactionIds({
    $core.String? acceptingBlockHash,
    $core.Iterable<$core.String>? acceptedTransactionIds,
  }) {
    final _result = create();
    if (acceptingBlockHash != null) {
      _result.acceptingBlockHash = acceptingBlockHash;
    }
    if (acceptedTransactionIds != null) {
      _result.acceptedTransactionIds.addAll(acceptedTransactionIds);
    }
    return _result;
  }
  factory AcceptedTransactionIds.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AcceptedTransactionIds.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AcceptedTransactionIds clone() =>
      AcceptedTransactionIds()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AcceptedTransactionIds copyWith(
          void Function(AcceptedTransactionIds) updates) =>
      super.copyWith((message) => updates(message as AcceptedTransactionIds))
          as AcceptedTransactionIds; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AcceptedTransactionIds create() => AcceptedTransactionIds._();
  AcceptedTransactionIds createEmptyInstance() => create();
  static $pb.PbList<AcceptedTransactionIds> createRepeated() =>
      $pb.PbList<AcceptedTransactionIds>();
  @$core.pragma('dart2js:noInline')
  static AcceptedTransactionIds getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AcceptedTransactionIds>(create);
  static AcceptedTransactionIds? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get acceptingBlockHash => $_getSZ(0);
  @$pb.TagNumber(1)
  set acceptingBlockHash($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAcceptingBlockHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearAcceptingBlockHash() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get acceptedTransactionIds => $_getList(1);
}

class GetVirtualSelectedParentChainFromBlockResponseMessage
    extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetVirtualSelectedParentChainFromBlockResponseMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..pPS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'removedChainBlockHashes',
        protoName: 'removedChainBlockHashes')
    ..pc<AcceptedTransactionIds>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'acceptedTransactionIds',
        $pb.PbFieldType.PM,
        protoName: 'acceptedTransactionIds',
        subBuilder: AcceptedTransactionIds.create)
    ..pPS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'addedChainBlockHashes',
        protoName: 'addedChainBlockHashes')
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  GetVirtualSelectedParentChainFromBlockResponseMessage._() : super();
  factory GetVirtualSelectedParentChainFromBlockResponseMessage({
    $core.Iterable<$core.String>? removedChainBlockHashes,
    $core.Iterable<AcceptedTransactionIds>? acceptedTransactionIds,
    $core.Iterable<$core.String>? addedChainBlockHashes,
    RPCError? error,
  }) {
    final _result = create();
    if (removedChainBlockHashes != null) {
      _result.removedChainBlockHashes.addAll(removedChainBlockHashes);
    }
    if (acceptedTransactionIds != null) {
      _result.acceptedTransactionIds.addAll(acceptedTransactionIds);
    }
    if (addedChainBlockHashes != null) {
      _result.addedChainBlockHashes.addAll(addedChainBlockHashes);
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory GetVirtualSelectedParentChainFromBlockResponseMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetVirtualSelectedParentChainFromBlockResponseMessage.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetVirtualSelectedParentChainFromBlockResponseMessage clone() =>
      GetVirtualSelectedParentChainFromBlockResponseMessage()
        ..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetVirtualSelectedParentChainFromBlockResponseMessage copyWith(
          void Function(GetVirtualSelectedParentChainFromBlockResponseMessage)
              updates) =>
      super.copyWith((message) => updates(
              message as GetVirtualSelectedParentChainFromBlockResponseMessage))
          as GetVirtualSelectedParentChainFromBlockResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetVirtualSelectedParentChainFromBlockResponseMessage create() =>
      GetVirtualSelectedParentChainFromBlockResponseMessage._();
  GetVirtualSelectedParentChainFromBlockResponseMessage createEmptyInstance() =>
      create();
  static $pb.PbList<GetVirtualSelectedParentChainFromBlockResponseMessage>
      createRepeated() =>
          $pb.PbList<GetVirtualSelectedParentChainFromBlockResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetVirtualSelectedParentChainFromBlockResponseMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          GetVirtualSelectedParentChainFromBlockResponseMessage>(create);
  static GetVirtualSelectedParentChainFromBlockResponseMessage?
      _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get removedChainBlockHashes => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<AcceptedTransactionIds> get acceptedTransactionIds => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.String> get addedChainBlockHashes => $_getList(2);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(3);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(3);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(3);
}

class GetBlocksRequestMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetBlocksRequestMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'lowHash',
        protoName: 'lowHash')
    ..aOB(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'includeBlocks',
        protoName: 'includeBlocks')
    ..aOB(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'includeTransactions',
        protoName: 'includeTransactions')
    ..hasRequiredFields = false;

  GetBlocksRequestMessage._() : super();
  factory GetBlocksRequestMessage({
    $core.String? lowHash,
    $core.bool? includeBlocks,
    $core.bool? includeTransactions,
  }) {
    final _result = create();
    if (lowHash != null) {
      _result.lowHash = lowHash;
    }
    if (includeBlocks != null) {
      _result.includeBlocks = includeBlocks;
    }
    if (includeTransactions != null) {
      _result.includeTransactions = includeTransactions;
    }
    return _result;
  }
  factory GetBlocksRequestMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetBlocksRequestMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetBlocksRequestMessage clone() =>
      GetBlocksRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetBlocksRequestMessage copyWith(
          void Function(GetBlocksRequestMessage) updates) =>
      super.copyWith((message) => updates(message as GetBlocksRequestMessage))
          as GetBlocksRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBlocksRequestMessage create() => GetBlocksRequestMessage._();
  GetBlocksRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetBlocksRequestMessage> createRepeated() =>
      $pb.PbList<GetBlocksRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetBlocksRequestMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetBlocksRequestMessage>(create);
  static GetBlocksRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get lowHash => $_getSZ(0);
  @$pb.TagNumber(1)
  set lowHash($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLowHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearLowHash() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get includeBlocks => $_getBF(1);
  @$pb.TagNumber(2)
  set includeBlocks($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasIncludeBlocks() => $_has(1);
  @$pb.TagNumber(2)
  void clearIncludeBlocks() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get includeTransactions => $_getBF(2);
  @$pb.TagNumber(3)
  set includeTransactions($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasIncludeTransactions() => $_has(2);
  @$pb.TagNumber(3)
  void clearIncludeTransactions() => clearField(3);
}

class GetBlocksResponseMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetBlocksResponseMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..pc<RpcBlock>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'blocks',
        $pb.PbFieldType.PM,
        subBuilder: RpcBlock.create)
    ..pPS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'blockHashes',
        protoName: 'blockHashes')
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  GetBlocksResponseMessage._() : super();
  factory GetBlocksResponseMessage({
    $core.Iterable<RpcBlock>? blocks,
    $core.Iterable<$core.String>? blockHashes,
    RPCError? error,
  }) {
    final _result = create();
    if (blocks != null) {
      _result.blocks.addAll(blocks);
    }
    if (blockHashes != null) {
      _result.blockHashes.addAll(blockHashes);
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory GetBlocksResponseMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetBlocksResponseMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetBlocksResponseMessage clone() =>
      GetBlocksResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetBlocksResponseMessage copyWith(
          void Function(GetBlocksResponseMessage) updates) =>
      super.copyWith((message) => updates(message as GetBlocksResponseMessage))
          as GetBlocksResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBlocksResponseMessage create() => GetBlocksResponseMessage._();
  GetBlocksResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetBlocksResponseMessage> createRepeated() =>
      $pb.PbList<GetBlocksResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetBlocksResponseMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetBlocksResponseMessage>(create);
  static GetBlocksResponseMessage? _defaultInstance;

  @$pb.TagNumber(3)
  $core.List<RpcBlock> get blocks => $_getList(0);

  @$pb.TagNumber(4)
  $core.List<$core.String> get blockHashes => $_getList(1);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(2);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(2);
}

class GetBlockCountRequestMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetBlockCountRequestMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  GetBlockCountRequestMessage._() : super();
  factory GetBlockCountRequestMessage() => create();
  factory GetBlockCountRequestMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetBlockCountRequestMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetBlockCountRequestMessage clone() =>
      GetBlockCountRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetBlockCountRequestMessage copyWith(
          void Function(GetBlockCountRequestMessage) updates) =>
      super.copyWith(
              (message) => updates(message as GetBlockCountRequestMessage))
          as GetBlockCountRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBlockCountRequestMessage create() =>
      GetBlockCountRequestMessage._();
  GetBlockCountRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetBlockCountRequestMessage> createRepeated() =>
      $pb.PbList<GetBlockCountRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetBlockCountRequestMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetBlockCountRequestMessage>(create);
  static GetBlockCountRequestMessage? _defaultInstance;
}

class GetBlockCountResponseMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetBlockCountResponseMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'blockCount',
        $pb.PbFieldType.OU6,
        protoName: 'blockCount',
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'headerCount',
        $pb.PbFieldType.OU6,
        protoName: 'headerCount',
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  GetBlockCountResponseMessage._() : super();
  factory GetBlockCountResponseMessage({
    $fixnum.Int64? blockCount,
    $fixnum.Int64? headerCount,
    RPCError? error,
  }) {
    final _result = create();
    if (blockCount != null) {
      _result.blockCount = blockCount;
    }
    if (headerCount != null) {
      _result.headerCount = headerCount;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory GetBlockCountResponseMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetBlockCountResponseMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetBlockCountResponseMessage clone() =>
      GetBlockCountResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetBlockCountResponseMessage copyWith(
          void Function(GetBlockCountResponseMessage) updates) =>
      super.copyWith(
              (message) => updates(message as GetBlockCountResponseMessage))
          as GetBlockCountResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBlockCountResponseMessage create() =>
      GetBlockCountResponseMessage._();
  GetBlockCountResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetBlockCountResponseMessage> createRepeated() =>
      $pb.PbList<GetBlockCountResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetBlockCountResponseMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetBlockCountResponseMessage>(create);
  static GetBlockCountResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get blockCount => $_getI64(0);
  @$pb.TagNumber(1)
  set blockCount($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBlockCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearBlockCount() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get headerCount => $_getI64(1);
  @$pb.TagNumber(2)
  set headerCount($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasHeaderCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearHeaderCount() => clearField(2);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(2);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(2);
}

class GetBlockDagInfoRequestMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetBlockDagInfoRequestMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  GetBlockDagInfoRequestMessage._() : super();
  factory GetBlockDagInfoRequestMessage() => create();
  factory GetBlockDagInfoRequestMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetBlockDagInfoRequestMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetBlockDagInfoRequestMessage clone() =>
      GetBlockDagInfoRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetBlockDagInfoRequestMessage copyWith(
          void Function(GetBlockDagInfoRequestMessage) updates) =>
      super.copyWith(
              (message) => updates(message as GetBlockDagInfoRequestMessage))
          as GetBlockDagInfoRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBlockDagInfoRequestMessage create() =>
      GetBlockDagInfoRequestMessage._();
  GetBlockDagInfoRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetBlockDagInfoRequestMessage> createRepeated() =>
      $pb.PbList<GetBlockDagInfoRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetBlockDagInfoRequestMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetBlockDagInfoRequestMessage>(create);
  static GetBlockDagInfoRequestMessage? _defaultInstance;
}

class GetBlockDagInfoResponseMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetBlockDagInfoResponseMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'networkName',
        protoName: 'networkName')
    ..a<$fixnum.Int64>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'blockCount',
        $pb.PbFieldType.OU6,
        protoName: 'blockCount',
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'headerCount',
        $pb.PbFieldType.OU6,
        protoName: 'headerCount',
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..pPS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'tipHashes',
        protoName: 'tipHashes')
    ..a<$core.double>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'difficulty',
        $pb.PbFieldType.OD)
    ..aInt64(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'pastMedianTime',
        protoName: 'pastMedianTime')
    ..pPS(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'virtualParentHashes',
        protoName: 'virtualParentHashes')
    ..aOS(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'pruningPointHash',
        protoName: 'pruningPointHash')
    ..a<$fixnum.Int64>(
        9,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'virtualDaaScore',
        $pb.PbFieldType.OU6,
        protoName: 'virtualDaaScore',
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  GetBlockDagInfoResponseMessage._() : super();
  factory GetBlockDagInfoResponseMessage({
    $core.String? networkName,
    $fixnum.Int64? blockCount,
    $fixnum.Int64? headerCount,
    $core.Iterable<$core.String>? tipHashes,
    $core.double? difficulty,
    $fixnum.Int64? pastMedianTime,
    $core.Iterable<$core.String>? virtualParentHashes,
    $core.String? pruningPointHash,
    $fixnum.Int64? virtualDaaScore,
    RPCError? error,
  }) {
    final _result = create();
    if (networkName != null) {
      _result.networkName = networkName;
    }
    if (blockCount != null) {
      _result.blockCount = blockCount;
    }
    if (headerCount != null) {
      _result.headerCount = headerCount;
    }
    if (tipHashes != null) {
      _result.tipHashes.addAll(tipHashes);
    }
    if (difficulty != null) {
      _result.difficulty = difficulty;
    }
    if (pastMedianTime != null) {
      _result.pastMedianTime = pastMedianTime;
    }
    if (virtualParentHashes != null) {
      _result.virtualParentHashes.addAll(virtualParentHashes);
    }
    if (pruningPointHash != null) {
      _result.pruningPointHash = pruningPointHash;
    }
    if (virtualDaaScore != null) {
      _result.virtualDaaScore = virtualDaaScore;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory GetBlockDagInfoResponseMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetBlockDagInfoResponseMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetBlockDagInfoResponseMessage clone() =>
      GetBlockDagInfoResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetBlockDagInfoResponseMessage copyWith(
          void Function(GetBlockDagInfoResponseMessage) updates) =>
      super.copyWith(
              (message) => updates(message as GetBlockDagInfoResponseMessage))
          as GetBlockDagInfoResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBlockDagInfoResponseMessage create() =>
      GetBlockDagInfoResponseMessage._();
  GetBlockDagInfoResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetBlockDagInfoResponseMessage> createRepeated() =>
      $pb.PbList<GetBlockDagInfoResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetBlockDagInfoResponseMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetBlockDagInfoResponseMessage>(create);
  static GetBlockDagInfoResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get networkName => $_getSZ(0);
  @$pb.TagNumber(1)
  set networkName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasNetworkName() => $_has(0);
  @$pb.TagNumber(1)
  void clearNetworkName() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get blockCount => $_getI64(1);
  @$pb.TagNumber(2)
  set blockCount($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasBlockCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearBlockCount() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get headerCount => $_getI64(2);
  @$pb.TagNumber(3)
  set headerCount($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasHeaderCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearHeaderCount() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.String> get tipHashes => $_getList(3);

  @$pb.TagNumber(5)
  $core.double get difficulty => $_getN(4);
  @$pb.TagNumber(5)
  set difficulty($core.double v) {
    $_setDouble(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasDifficulty() => $_has(4);
  @$pb.TagNumber(5)
  void clearDifficulty() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get pastMedianTime => $_getI64(5);
  @$pb.TagNumber(6)
  set pastMedianTime($fixnum.Int64 v) {
    $_setInt64(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasPastMedianTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearPastMedianTime() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.String> get virtualParentHashes => $_getList(6);

  @$pb.TagNumber(8)
  $core.String get pruningPointHash => $_getSZ(7);
  @$pb.TagNumber(8)
  set pruningPointHash($core.String v) {
    $_setString(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasPruningPointHash() => $_has(7);
  @$pb.TagNumber(8)
  void clearPruningPointHash() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get virtualDaaScore => $_getI64(8);
  @$pb.TagNumber(9)
  set virtualDaaScore($fixnum.Int64 v) {
    $_setInt64(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasVirtualDaaScore() => $_has(8);
  @$pb.TagNumber(9)
  void clearVirtualDaaScore() => clearField(9);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(9);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(9);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(9);
}

class ResolveFinalityConflictRequestMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ResolveFinalityConflictRequestMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'finalityBlockHash',
        protoName: 'finalityBlockHash')
    ..hasRequiredFields = false;

  ResolveFinalityConflictRequestMessage._() : super();
  factory ResolveFinalityConflictRequestMessage({
    $core.String? finalityBlockHash,
  }) {
    final _result = create();
    if (finalityBlockHash != null) {
      _result.finalityBlockHash = finalityBlockHash;
    }
    return _result;
  }
  factory ResolveFinalityConflictRequestMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ResolveFinalityConflictRequestMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ResolveFinalityConflictRequestMessage clone() =>
      ResolveFinalityConflictRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ResolveFinalityConflictRequestMessage copyWith(
          void Function(ResolveFinalityConflictRequestMessage) updates) =>
      super.copyWith((message) =>
              updates(message as ResolveFinalityConflictRequestMessage))
          as ResolveFinalityConflictRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResolveFinalityConflictRequestMessage create() =>
      ResolveFinalityConflictRequestMessage._();
  ResolveFinalityConflictRequestMessage createEmptyInstance() => create();
  static $pb.PbList<ResolveFinalityConflictRequestMessage> createRepeated() =>
      $pb.PbList<ResolveFinalityConflictRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static ResolveFinalityConflictRequestMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          ResolveFinalityConflictRequestMessage>(create);
  static ResolveFinalityConflictRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get finalityBlockHash => $_getSZ(0);
  @$pb.TagNumber(1)
  set finalityBlockHash($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFinalityBlockHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearFinalityBlockHash() => clearField(1);
}

class ResolveFinalityConflictResponseMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ResolveFinalityConflictResponseMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  ResolveFinalityConflictResponseMessage._() : super();
  factory ResolveFinalityConflictResponseMessage({
    RPCError? error,
  }) {
    final _result = create();
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory ResolveFinalityConflictResponseMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ResolveFinalityConflictResponseMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ResolveFinalityConflictResponseMessage clone() =>
      ResolveFinalityConflictResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ResolveFinalityConflictResponseMessage copyWith(
          void Function(ResolveFinalityConflictResponseMessage) updates) =>
      super.copyWith((message) =>
              updates(message as ResolveFinalityConflictResponseMessage))
          as ResolveFinalityConflictResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResolveFinalityConflictResponseMessage create() =>
      ResolveFinalityConflictResponseMessage._();
  ResolveFinalityConflictResponseMessage createEmptyInstance() => create();
  static $pb.PbList<ResolveFinalityConflictResponseMessage> createRepeated() =>
      $pb.PbList<ResolveFinalityConflictResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static ResolveFinalityConflictResponseMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          ResolveFinalityConflictResponseMessage>(create);
  static ResolveFinalityConflictResponseMessage? _defaultInstance;

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(0);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(0);
}

class NotifyFinalityConflictsRequestMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'NotifyFinalityConflictsRequestMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  NotifyFinalityConflictsRequestMessage._() : super();
  factory NotifyFinalityConflictsRequestMessage() => create();
  factory NotifyFinalityConflictsRequestMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NotifyFinalityConflictsRequestMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NotifyFinalityConflictsRequestMessage clone() =>
      NotifyFinalityConflictsRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NotifyFinalityConflictsRequestMessage copyWith(
          void Function(NotifyFinalityConflictsRequestMessage) updates) =>
      super.copyWith((message) =>
              updates(message as NotifyFinalityConflictsRequestMessage))
          as NotifyFinalityConflictsRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NotifyFinalityConflictsRequestMessage create() =>
      NotifyFinalityConflictsRequestMessage._();
  NotifyFinalityConflictsRequestMessage createEmptyInstance() => create();
  static $pb.PbList<NotifyFinalityConflictsRequestMessage> createRepeated() =>
      $pb.PbList<NotifyFinalityConflictsRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static NotifyFinalityConflictsRequestMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          NotifyFinalityConflictsRequestMessage>(create);
  static NotifyFinalityConflictsRequestMessage? _defaultInstance;
}

class NotifyFinalityConflictsResponseMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'NotifyFinalityConflictsResponseMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  NotifyFinalityConflictsResponseMessage._() : super();
  factory NotifyFinalityConflictsResponseMessage({
    RPCError? error,
  }) {
    final _result = create();
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory NotifyFinalityConflictsResponseMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NotifyFinalityConflictsResponseMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NotifyFinalityConflictsResponseMessage clone() =>
      NotifyFinalityConflictsResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NotifyFinalityConflictsResponseMessage copyWith(
          void Function(NotifyFinalityConflictsResponseMessage) updates) =>
      super.copyWith((message) =>
              updates(message as NotifyFinalityConflictsResponseMessage))
          as NotifyFinalityConflictsResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NotifyFinalityConflictsResponseMessage create() =>
      NotifyFinalityConflictsResponseMessage._();
  NotifyFinalityConflictsResponseMessage createEmptyInstance() => create();
  static $pb.PbList<NotifyFinalityConflictsResponseMessage> createRepeated() =>
      $pb.PbList<NotifyFinalityConflictsResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static NotifyFinalityConflictsResponseMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          NotifyFinalityConflictsResponseMessage>(create);
  static NotifyFinalityConflictsResponseMessage? _defaultInstance;

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(0);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(0);
}

class FinalityConflictNotificationMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'FinalityConflictNotificationMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'violatingBlockHash',
        protoName: 'violatingBlockHash')
    ..hasRequiredFields = false;

  FinalityConflictNotificationMessage._() : super();
  factory FinalityConflictNotificationMessage({
    $core.String? violatingBlockHash,
  }) {
    final _result = create();
    if (violatingBlockHash != null) {
      _result.violatingBlockHash = violatingBlockHash;
    }
    return _result;
  }
  factory FinalityConflictNotificationMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FinalityConflictNotificationMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  FinalityConflictNotificationMessage clone() =>
      FinalityConflictNotificationMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  FinalityConflictNotificationMessage copyWith(
          void Function(FinalityConflictNotificationMessage) updates) =>
      super.copyWith((message) =>
              updates(message as FinalityConflictNotificationMessage))
          as FinalityConflictNotificationMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FinalityConflictNotificationMessage create() =>
      FinalityConflictNotificationMessage._();
  FinalityConflictNotificationMessage createEmptyInstance() => create();
  static $pb.PbList<FinalityConflictNotificationMessage> createRepeated() =>
      $pb.PbList<FinalityConflictNotificationMessage>();
  @$core.pragma('dart2js:noInline')
  static FinalityConflictNotificationMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          FinalityConflictNotificationMessage>(create);
  static FinalityConflictNotificationMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get violatingBlockHash => $_getSZ(0);
  @$pb.TagNumber(1)
  set violatingBlockHash($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasViolatingBlockHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearViolatingBlockHash() => clearField(1);
}

class FinalityConflictResolvedNotificationMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'FinalityConflictResolvedNotificationMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'finalityBlockHash',
        protoName: 'finalityBlockHash')
    ..hasRequiredFields = false;

  FinalityConflictResolvedNotificationMessage._() : super();
  factory FinalityConflictResolvedNotificationMessage({
    $core.String? finalityBlockHash,
  }) {
    final _result = create();
    if (finalityBlockHash != null) {
      _result.finalityBlockHash = finalityBlockHash;
    }
    return _result;
  }
  factory FinalityConflictResolvedNotificationMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FinalityConflictResolvedNotificationMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  FinalityConflictResolvedNotificationMessage clone() =>
      FinalityConflictResolvedNotificationMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  FinalityConflictResolvedNotificationMessage copyWith(
          void Function(FinalityConflictResolvedNotificationMessage) updates) =>
      super.copyWith((message) =>
              updates(message as FinalityConflictResolvedNotificationMessage))
          as FinalityConflictResolvedNotificationMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FinalityConflictResolvedNotificationMessage create() =>
      FinalityConflictResolvedNotificationMessage._();
  FinalityConflictResolvedNotificationMessage createEmptyInstance() => create();
  static $pb.PbList<FinalityConflictResolvedNotificationMessage>
      createRepeated() =>
          $pb.PbList<FinalityConflictResolvedNotificationMessage>();
  @$core.pragma('dart2js:noInline')
  static FinalityConflictResolvedNotificationMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          FinalityConflictResolvedNotificationMessage>(create);
  static FinalityConflictResolvedNotificationMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get finalityBlockHash => $_getSZ(0);
  @$pb.TagNumber(1)
  set finalityBlockHash($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFinalityBlockHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearFinalityBlockHash() => clearField(1);
}

class ShutDownRequestMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ShutDownRequestMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  ShutDownRequestMessage._() : super();
  factory ShutDownRequestMessage() => create();
  factory ShutDownRequestMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ShutDownRequestMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ShutDownRequestMessage clone() =>
      ShutDownRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ShutDownRequestMessage copyWith(
          void Function(ShutDownRequestMessage) updates) =>
      super.copyWith((message) => updates(message as ShutDownRequestMessage))
          as ShutDownRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ShutDownRequestMessage create() => ShutDownRequestMessage._();
  ShutDownRequestMessage createEmptyInstance() => create();
  static $pb.PbList<ShutDownRequestMessage> createRepeated() =>
      $pb.PbList<ShutDownRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static ShutDownRequestMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ShutDownRequestMessage>(create);
  static ShutDownRequestMessage? _defaultInstance;
}

class ShutDownResponseMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ShutDownResponseMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  ShutDownResponseMessage._() : super();
  factory ShutDownResponseMessage({
    RPCError? error,
  }) {
    final _result = create();
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory ShutDownResponseMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ShutDownResponseMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ShutDownResponseMessage clone() =>
      ShutDownResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ShutDownResponseMessage copyWith(
          void Function(ShutDownResponseMessage) updates) =>
      super.copyWith((message) => updates(message as ShutDownResponseMessage))
          as ShutDownResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ShutDownResponseMessage create() => ShutDownResponseMessage._();
  ShutDownResponseMessage createEmptyInstance() => create();
  static $pb.PbList<ShutDownResponseMessage> createRepeated() =>
      $pb.PbList<ShutDownResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static ShutDownResponseMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ShutDownResponseMessage>(create);
  static ShutDownResponseMessage? _defaultInstance;

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(0);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(0);
}

class GetHeadersRequestMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetHeadersRequestMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'startHash',
        protoName: 'startHash')
    ..a<$fixnum.Int64>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'limit',
        $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isAscending',
        protoName: 'isAscending')
    ..hasRequiredFields = false;

  GetHeadersRequestMessage._() : super();
  factory GetHeadersRequestMessage({
    $core.String? startHash,
    $fixnum.Int64? limit,
    $core.bool? isAscending,
  }) {
    final _result = create();
    if (startHash != null) {
      _result.startHash = startHash;
    }
    if (limit != null) {
      _result.limit = limit;
    }
    if (isAscending != null) {
      _result.isAscending = isAscending;
    }
    return _result;
  }
  factory GetHeadersRequestMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetHeadersRequestMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetHeadersRequestMessage clone() =>
      GetHeadersRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetHeadersRequestMessage copyWith(
          void Function(GetHeadersRequestMessage) updates) =>
      super.copyWith((message) => updates(message as GetHeadersRequestMessage))
          as GetHeadersRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetHeadersRequestMessage create() => GetHeadersRequestMessage._();
  GetHeadersRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetHeadersRequestMessage> createRepeated() =>
      $pb.PbList<GetHeadersRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetHeadersRequestMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetHeadersRequestMessage>(create);
  static GetHeadersRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get startHash => $_getSZ(0);
  @$pb.TagNumber(1)
  set startHash($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStartHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartHash() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get limit => $_getI64(1);
  @$pb.TagNumber(2)
  set limit($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLimit() => $_has(1);
  @$pb.TagNumber(2)
  void clearLimit() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isAscending => $_getBF(2);
  @$pb.TagNumber(3)
  set isAscending($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasIsAscending() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsAscending() => clearField(3);
}

class GetHeadersResponseMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetHeadersResponseMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..pPS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'headers')
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  GetHeadersResponseMessage._() : super();
  factory GetHeadersResponseMessage({
    $core.Iterable<$core.String>? headers,
    RPCError? error,
  }) {
    final _result = create();
    if (headers != null) {
      _result.headers.addAll(headers);
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory GetHeadersResponseMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetHeadersResponseMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetHeadersResponseMessage clone() =>
      GetHeadersResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetHeadersResponseMessage copyWith(
          void Function(GetHeadersResponseMessage) updates) =>
      super.copyWith((message) => updates(message as GetHeadersResponseMessage))
          as GetHeadersResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetHeadersResponseMessage create() => GetHeadersResponseMessage._();
  GetHeadersResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetHeadersResponseMessage> createRepeated() =>
      $pb.PbList<GetHeadersResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetHeadersResponseMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetHeadersResponseMessage>(create);
  static GetHeadersResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get headers => $_getList(0);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(1);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(1);
}

class NotifyUtxosChangedRequestMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'NotifyUtxosChangedRequestMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..pPS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'addresses')
    ..hasRequiredFields = false;

  NotifyUtxosChangedRequestMessage._() : super();
  factory NotifyUtxosChangedRequestMessage({
    $core.Iterable<$core.String>? addresses,
  }) {
    final _result = create();
    if (addresses != null) {
      _result.addresses.addAll(addresses);
    }
    return _result;
  }
  factory NotifyUtxosChangedRequestMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NotifyUtxosChangedRequestMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NotifyUtxosChangedRequestMessage clone() =>
      NotifyUtxosChangedRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NotifyUtxosChangedRequestMessage copyWith(
          void Function(NotifyUtxosChangedRequestMessage) updates) =>
      super.copyWith(
              (message) => updates(message as NotifyUtxosChangedRequestMessage))
          as NotifyUtxosChangedRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NotifyUtxosChangedRequestMessage create() =>
      NotifyUtxosChangedRequestMessage._();
  NotifyUtxosChangedRequestMessage createEmptyInstance() => create();
  static $pb.PbList<NotifyUtxosChangedRequestMessage> createRepeated() =>
      $pb.PbList<NotifyUtxosChangedRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static NotifyUtxosChangedRequestMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NotifyUtxosChangedRequestMessage>(
          create);
  static NotifyUtxosChangedRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get addresses => $_getList(0);
}

class NotifyUtxosChangedResponseMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'NotifyUtxosChangedResponseMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  NotifyUtxosChangedResponseMessage._() : super();
  factory NotifyUtxosChangedResponseMessage({
    RPCError? error,
  }) {
    final _result = create();
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory NotifyUtxosChangedResponseMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NotifyUtxosChangedResponseMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NotifyUtxosChangedResponseMessage clone() =>
      NotifyUtxosChangedResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NotifyUtxosChangedResponseMessage copyWith(
          void Function(NotifyUtxosChangedResponseMessage) updates) =>
      super.copyWith((message) =>
              updates(message as NotifyUtxosChangedResponseMessage))
          as NotifyUtxosChangedResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NotifyUtxosChangedResponseMessage create() =>
      NotifyUtxosChangedResponseMessage._();
  NotifyUtxosChangedResponseMessage createEmptyInstance() => create();
  static $pb.PbList<NotifyUtxosChangedResponseMessage> createRepeated() =>
      $pb.PbList<NotifyUtxosChangedResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static NotifyUtxosChangedResponseMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NotifyUtxosChangedResponseMessage>(
          create);
  static NotifyUtxosChangedResponseMessage? _defaultInstance;

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(0);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(0);
}

class UtxosChangedNotificationMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'UtxosChangedNotificationMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..pc<UtxosByAddressesEntry>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'added',
        $pb.PbFieldType.PM,
        subBuilder: UtxosByAddressesEntry.create)
    ..pc<UtxosByAddressesEntry>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'removed',
        $pb.PbFieldType.PM,
        subBuilder: UtxosByAddressesEntry.create)
    ..hasRequiredFields = false;

  UtxosChangedNotificationMessage._() : super();
  factory UtxosChangedNotificationMessage({
    $core.Iterable<UtxosByAddressesEntry>? added,
    $core.Iterable<UtxosByAddressesEntry>? removed,
  }) {
    final _result = create();
    if (added != null) {
      _result.added.addAll(added);
    }
    if (removed != null) {
      _result.removed.addAll(removed);
    }
    return _result;
  }
  factory UtxosChangedNotificationMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UtxosChangedNotificationMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UtxosChangedNotificationMessage clone() =>
      UtxosChangedNotificationMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UtxosChangedNotificationMessage copyWith(
          void Function(UtxosChangedNotificationMessage) updates) =>
      super.copyWith(
              (message) => updates(message as UtxosChangedNotificationMessage))
          as UtxosChangedNotificationMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UtxosChangedNotificationMessage create() =>
      UtxosChangedNotificationMessage._();
  UtxosChangedNotificationMessage createEmptyInstance() => create();
  static $pb.PbList<UtxosChangedNotificationMessage> createRepeated() =>
      $pb.PbList<UtxosChangedNotificationMessage>();
  @$core.pragma('dart2js:noInline')
  static UtxosChangedNotificationMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UtxosChangedNotificationMessage>(
          create);
  static UtxosChangedNotificationMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<UtxosByAddressesEntry> get added => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<UtxosByAddressesEntry> get removed => $_getList(1);
}

class UtxosByAddressesEntry extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'UtxosByAddressesEntry',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'address')
    ..aOM<RpcOutpoint>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'outpoint',
        subBuilder: RpcOutpoint.create)
    ..aOM<RpcUtxoEntry>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'utxoEntry',
        protoName: 'utxoEntry',
        subBuilder: RpcUtxoEntry.create)
    ..hasRequiredFields = false;

  UtxosByAddressesEntry._() : super();
  factory UtxosByAddressesEntry({
    $core.String? address,
    RpcOutpoint? outpoint,
    RpcUtxoEntry? utxoEntry,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (outpoint != null) {
      _result.outpoint = outpoint;
    }
    if (utxoEntry != null) {
      _result.utxoEntry = utxoEntry;
    }
    return _result;
  }
  factory UtxosByAddressesEntry.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UtxosByAddressesEntry.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UtxosByAddressesEntry clone() =>
      UtxosByAddressesEntry()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UtxosByAddressesEntry copyWith(
          void Function(UtxosByAddressesEntry) updates) =>
      super.copyWith((message) => updates(message as UtxosByAddressesEntry))
          as UtxosByAddressesEntry; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UtxosByAddressesEntry create() => UtxosByAddressesEntry._();
  UtxosByAddressesEntry createEmptyInstance() => create();
  static $pb.PbList<UtxosByAddressesEntry> createRepeated() =>
      $pb.PbList<UtxosByAddressesEntry>();
  @$core.pragma('dart2js:noInline')
  static UtxosByAddressesEntry getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UtxosByAddressesEntry>(create);
  static UtxosByAddressesEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  RpcOutpoint get outpoint => $_getN(1);
  @$pb.TagNumber(2)
  set outpoint(RpcOutpoint v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasOutpoint() => $_has(1);
  @$pb.TagNumber(2)
  void clearOutpoint() => clearField(2);
  @$pb.TagNumber(2)
  RpcOutpoint ensureOutpoint() => $_ensure(1);

  @$pb.TagNumber(3)
  RpcUtxoEntry get utxoEntry => $_getN(2);
  @$pb.TagNumber(3)
  set utxoEntry(RpcUtxoEntry v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUtxoEntry() => $_has(2);
  @$pb.TagNumber(3)
  void clearUtxoEntry() => clearField(3);
  @$pb.TagNumber(3)
  RpcUtxoEntry ensureUtxoEntry() => $_ensure(2);
}

class StopNotifyingUtxosChangedRequestMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'StopNotifyingUtxosChangedRequestMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..pPS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'addresses')
    ..hasRequiredFields = false;

  StopNotifyingUtxosChangedRequestMessage._() : super();
  factory StopNotifyingUtxosChangedRequestMessage({
    $core.Iterable<$core.String>? addresses,
  }) {
    final _result = create();
    if (addresses != null) {
      _result.addresses.addAll(addresses);
    }
    return _result;
  }
  factory StopNotifyingUtxosChangedRequestMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StopNotifyingUtxosChangedRequestMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StopNotifyingUtxosChangedRequestMessage clone() =>
      StopNotifyingUtxosChangedRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StopNotifyingUtxosChangedRequestMessage copyWith(
          void Function(StopNotifyingUtxosChangedRequestMessage) updates) =>
      super.copyWith((message) =>
              updates(message as StopNotifyingUtxosChangedRequestMessage))
          as StopNotifyingUtxosChangedRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StopNotifyingUtxosChangedRequestMessage create() =>
      StopNotifyingUtxosChangedRequestMessage._();
  StopNotifyingUtxosChangedRequestMessage createEmptyInstance() => create();
  static $pb.PbList<StopNotifyingUtxosChangedRequestMessage> createRepeated() =>
      $pb.PbList<StopNotifyingUtxosChangedRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static StopNotifyingUtxosChangedRequestMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          StopNotifyingUtxosChangedRequestMessage>(create);
  static StopNotifyingUtxosChangedRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get addresses => $_getList(0);
}

class StopNotifyingUtxosChangedResponseMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'StopNotifyingUtxosChangedResponseMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  StopNotifyingUtxosChangedResponseMessage._() : super();
  factory StopNotifyingUtxosChangedResponseMessage({
    RPCError? error,
  }) {
    final _result = create();
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory StopNotifyingUtxosChangedResponseMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StopNotifyingUtxosChangedResponseMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StopNotifyingUtxosChangedResponseMessage clone() =>
      StopNotifyingUtxosChangedResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StopNotifyingUtxosChangedResponseMessage copyWith(
          void Function(StopNotifyingUtxosChangedResponseMessage) updates) =>
      super.copyWith((message) =>
              updates(message as StopNotifyingUtxosChangedResponseMessage))
          as StopNotifyingUtxosChangedResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StopNotifyingUtxosChangedResponseMessage create() =>
      StopNotifyingUtxosChangedResponseMessage._();
  StopNotifyingUtxosChangedResponseMessage createEmptyInstance() => create();
  static $pb.PbList<StopNotifyingUtxosChangedResponseMessage>
      createRepeated() =>
          $pb.PbList<StopNotifyingUtxosChangedResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static StopNotifyingUtxosChangedResponseMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          StopNotifyingUtxosChangedResponseMessage>(create);
  static StopNotifyingUtxosChangedResponseMessage? _defaultInstance;

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(0);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(0);
}

class GetUtxosByAddressesRequestMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetUtxosByAddressesRequestMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..pPS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'addresses')
    ..hasRequiredFields = false;

  GetUtxosByAddressesRequestMessage._() : super();
  factory GetUtxosByAddressesRequestMessage({
    $core.Iterable<$core.String>? addresses,
  }) {
    final _result = create();
    if (addresses != null) {
      _result.addresses.addAll(addresses);
    }
    return _result;
  }
  factory GetUtxosByAddressesRequestMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetUtxosByAddressesRequestMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetUtxosByAddressesRequestMessage clone() =>
      GetUtxosByAddressesRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetUtxosByAddressesRequestMessage copyWith(
          void Function(GetUtxosByAddressesRequestMessage) updates) =>
      super.copyWith((message) =>
              updates(message as GetUtxosByAddressesRequestMessage))
          as GetUtxosByAddressesRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetUtxosByAddressesRequestMessage create() =>
      GetUtxosByAddressesRequestMessage._();
  GetUtxosByAddressesRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetUtxosByAddressesRequestMessage> createRepeated() =>
      $pb.PbList<GetUtxosByAddressesRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetUtxosByAddressesRequestMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetUtxosByAddressesRequestMessage>(
          create);
  static GetUtxosByAddressesRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get addresses => $_getList(0);
}

class GetUtxosByAddressesResponseMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetUtxosByAddressesResponseMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..pc<UtxosByAddressesEntry>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'entries',
        $pb.PbFieldType.PM,
        subBuilder: UtxosByAddressesEntry.create)
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  GetUtxosByAddressesResponseMessage._() : super();
  factory GetUtxosByAddressesResponseMessage({
    $core.Iterable<UtxosByAddressesEntry>? entries,
    RPCError? error,
  }) {
    final _result = create();
    if (entries != null) {
      _result.entries.addAll(entries);
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory GetUtxosByAddressesResponseMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetUtxosByAddressesResponseMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetUtxosByAddressesResponseMessage clone() =>
      GetUtxosByAddressesResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetUtxosByAddressesResponseMessage copyWith(
          void Function(GetUtxosByAddressesResponseMessage) updates) =>
      super.copyWith((message) =>
              updates(message as GetUtxosByAddressesResponseMessage))
          as GetUtxosByAddressesResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetUtxosByAddressesResponseMessage create() =>
      GetUtxosByAddressesResponseMessage._();
  GetUtxosByAddressesResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetUtxosByAddressesResponseMessage> createRepeated() =>
      $pb.PbList<GetUtxosByAddressesResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetUtxosByAddressesResponseMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetUtxosByAddressesResponseMessage>(
          create);
  static GetUtxosByAddressesResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<UtxosByAddressesEntry> get entries => $_getList(0);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(1);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(1);
}

class GetBalanceByAddressRequestMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetBalanceByAddressRequestMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'address')
    ..hasRequiredFields = false;

  GetBalanceByAddressRequestMessage._() : super();
  factory GetBalanceByAddressRequestMessage({
    $core.String? address,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    return _result;
  }
  factory GetBalanceByAddressRequestMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetBalanceByAddressRequestMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetBalanceByAddressRequestMessage clone() =>
      GetBalanceByAddressRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetBalanceByAddressRequestMessage copyWith(
          void Function(GetBalanceByAddressRequestMessage) updates) =>
      super.copyWith((message) =>
              updates(message as GetBalanceByAddressRequestMessage))
          as GetBalanceByAddressRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBalanceByAddressRequestMessage create() =>
      GetBalanceByAddressRequestMessage._();
  GetBalanceByAddressRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetBalanceByAddressRequestMessage> createRepeated() =>
      $pb.PbList<GetBalanceByAddressRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetBalanceByAddressRequestMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetBalanceByAddressRequestMessage>(
          create);
  static GetBalanceByAddressRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);
}

class GetBalanceByAddressResponseMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetBalanceByAddressResponseMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'balance',
        $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  GetBalanceByAddressResponseMessage._() : super();
  factory GetBalanceByAddressResponseMessage({
    $fixnum.Int64? balance,
    RPCError? error,
  }) {
    final _result = create();
    if (balance != null) {
      _result.balance = balance;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory GetBalanceByAddressResponseMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetBalanceByAddressResponseMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetBalanceByAddressResponseMessage clone() =>
      GetBalanceByAddressResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetBalanceByAddressResponseMessage copyWith(
          void Function(GetBalanceByAddressResponseMessage) updates) =>
      super.copyWith((message) =>
              updates(message as GetBalanceByAddressResponseMessage))
          as GetBalanceByAddressResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBalanceByAddressResponseMessage create() =>
      GetBalanceByAddressResponseMessage._();
  GetBalanceByAddressResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetBalanceByAddressResponseMessage> createRepeated() =>
      $pb.PbList<GetBalanceByAddressResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetBalanceByAddressResponseMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetBalanceByAddressResponseMessage>(
          create);
  static GetBalanceByAddressResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get balance => $_getI64(0);
  @$pb.TagNumber(1)
  set balance($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBalance() => $_has(0);
  @$pb.TagNumber(1)
  void clearBalance() => clearField(1);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(1);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(1);
}

class GetBalancesByAddressesRequestMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetBalancesByAddressesRequestMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..pPS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'addresses')
    ..hasRequiredFields = false;

  GetBalancesByAddressesRequestMessage._() : super();
  factory GetBalancesByAddressesRequestMessage({
    $core.Iterable<$core.String>? addresses,
  }) {
    final _result = create();
    if (addresses != null) {
      _result.addresses.addAll(addresses);
    }
    return _result;
  }
  factory GetBalancesByAddressesRequestMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetBalancesByAddressesRequestMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetBalancesByAddressesRequestMessage clone() =>
      GetBalancesByAddressesRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetBalancesByAddressesRequestMessage copyWith(
          void Function(GetBalancesByAddressesRequestMessage) updates) =>
      super.copyWith((message) =>
              updates(message as GetBalancesByAddressesRequestMessage))
          as GetBalancesByAddressesRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBalancesByAddressesRequestMessage create() =>
      GetBalancesByAddressesRequestMessage._();
  GetBalancesByAddressesRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetBalancesByAddressesRequestMessage> createRepeated() =>
      $pb.PbList<GetBalancesByAddressesRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetBalancesByAddressesRequestMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          GetBalancesByAddressesRequestMessage>(create);
  static GetBalancesByAddressesRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get addresses => $_getList(0);
}

class BalancesByAddressEntry extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'BalancesByAddressEntry',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'address')
    ..a<$fixnum.Int64>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'balance',
        $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  BalancesByAddressEntry._() : super();
  factory BalancesByAddressEntry({
    $core.String? address,
    $fixnum.Int64? balance,
    RPCError? error,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (balance != null) {
      _result.balance = balance;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory BalancesByAddressEntry.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BalancesByAddressEntry.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BalancesByAddressEntry clone() =>
      BalancesByAddressEntry()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BalancesByAddressEntry copyWith(
          void Function(BalancesByAddressEntry) updates) =>
      super.copyWith((message) => updates(message as BalancesByAddressEntry))
          as BalancesByAddressEntry; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BalancesByAddressEntry create() => BalancesByAddressEntry._();
  BalancesByAddressEntry createEmptyInstance() => create();
  static $pb.PbList<BalancesByAddressEntry> createRepeated() =>
      $pb.PbList<BalancesByAddressEntry>();
  @$core.pragma('dart2js:noInline')
  static BalancesByAddressEntry getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BalancesByAddressEntry>(create);
  static BalancesByAddressEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get balance => $_getI64(1);
  @$pb.TagNumber(2)
  set balance($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasBalance() => $_has(1);
  @$pb.TagNumber(2)
  void clearBalance() => clearField(2);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(2);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(2);
}

class GetBalancesByAddressesResponseMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetBalancesByAddressesResponseMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..pc<BalancesByAddressEntry>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'entries',
        $pb.PbFieldType.PM,
        subBuilder: BalancesByAddressEntry.create)
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  GetBalancesByAddressesResponseMessage._() : super();
  factory GetBalancesByAddressesResponseMessage({
    $core.Iterable<BalancesByAddressEntry>? entries,
    RPCError? error,
  }) {
    final _result = create();
    if (entries != null) {
      _result.entries.addAll(entries);
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory GetBalancesByAddressesResponseMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetBalancesByAddressesResponseMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetBalancesByAddressesResponseMessage clone() =>
      GetBalancesByAddressesResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetBalancesByAddressesResponseMessage copyWith(
          void Function(GetBalancesByAddressesResponseMessage) updates) =>
      super.copyWith((message) =>
              updates(message as GetBalancesByAddressesResponseMessage))
          as GetBalancesByAddressesResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBalancesByAddressesResponseMessage create() =>
      GetBalancesByAddressesResponseMessage._();
  GetBalancesByAddressesResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetBalancesByAddressesResponseMessage> createRepeated() =>
      $pb.PbList<GetBalancesByAddressesResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetBalancesByAddressesResponseMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          GetBalancesByAddressesResponseMessage>(create);
  static GetBalancesByAddressesResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<BalancesByAddressEntry> get entries => $_getList(0);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(1);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(1);
}

class GetVirtualSelectedParentBlueScoreRequestMessage
    extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetVirtualSelectedParentBlueScoreRequestMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  GetVirtualSelectedParentBlueScoreRequestMessage._() : super();
  factory GetVirtualSelectedParentBlueScoreRequestMessage() => create();
  factory GetVirtualSelectedParentBlueScoreRequestMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetVirtualSelectedParentBlueScoreRequestMessage.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetVirtualSelectedParentBlueScoreRequestMessage clone() =>
      GetVirtualSelectedParentBlueScoreRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetVirtualSelectedParentBlueScoreRequestMessage copyWith(
          void Function(GetVirtualSelectedParentBlueScoreRequestMessage)
              updates) =>
      super.copyWith((message) => updates(
              message as GetVirtualSelectedParentBlueScoreRequestMessage))
          as GetVirtualSelectedParentBlueScoreRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetVirtualSelectedParentBlueScoreRequestMessage create() =>
      GetVirtualSelectedParentBlueScoreRequestMessage._();
  GetVirtualSelectedParentBlueScoreRequestMessage createEmptyInstance() =>
      create();
  static $pb.PbList<GetVirtualSelectedParentBlueScoreRequestMessage>
      createRepeated() =>
          $pb.PbList<GetVirtualSelectedParentBlueScoreRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetVirtualSelectedParentBlueScoreRequestMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          GetVirtualSelectedParentBlueScoreRequestMessage>(create);
  static GetVirtualSelectedParentBlueScoreRequestMessage? _defaultInstance;
}

class GetVirtualSelectedParentBlueScoreResponseMessage
    extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetVirtualSelectedParentBlueScoreResponseMessage',
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
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  GetVirtualSelectedParentBlueScoreResponseMessage._() : super();
  factory GetVirtualSelectedParentBlueScoreResponseMessage({
    $fixnum.Int64? blueScore,
    RPCError? error,
  }) {
    final _result = create();
    if (blueScore != null) {
      _result.blueScore = blueScore;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory GetVirtualSelectedParentBlueScoreResponseMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetVirtualSelectedParentBlueScoreResponseMessage.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetVirtualSelectedParentBlueScoreResponseMessage clone() =>
      GetVirtualSelectedParentBlueScoreResponseMessage()
        ..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetVirtualSelectedParentBlueScoreResponseMessage copyWith(
          void Function(GetVirtualSelectedParentBlueScoreResponseMessage)
              updates) =>
      super.copyWith((message) => updates(
              message as GetVirtualSelectedParentBlueScoreResponseMessage))
          as GetVirtualSelectedParentBlueScoreResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetVirtualSelectedParentBlueScoreResponseMessage create() =>
      GetVirtualSelectedParentBlueScoreResponseMessage._();
  GetVirtualSelectedParentBlueScoreResponseMessage createEmptyInstance() =>
      create();
  static $pb.PbList<GetVirtualSelectedParentBlueScoreResponseMessage>
      createRepeated() =>
          $pb.PbList<GetVirtualSelectedParentBlueScoreResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetVirtualSelectedParentBlueScoreResponseMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          GetVirtualSelectedParentBlueScoreResponseMessage>(create);
  static GetVirtualSelectedParentBlueScoreResponseMessage? _defaultInstance;

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

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(1);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(1);
}

class NotifyVirtualSelectedParentBlueScoreChangedRequestMessage
    extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'NotifyVirtualSelectedParentBlueScoreChangedRequestMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  NotifyVirtualSelectedParentBlueScoreChangedRequestMessage._() : super();
  factory NotifyVirtualSelectedParentBlueScoreChangedRequestMessage() =>
      create();
  factory NotifyVirtualSelectedParentBlueScoreChangedRequestMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NotifyVirtualSelectedParentBlueScoreChangedRequestMessage.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NotifyVirtualSelectedParentBlueScoreChangedRequestMessage clone() =>
      NotifyVirtualSelectedParentBlueScoreChangedRequestMessage()
        ..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NotifyVirtualSelectedParentBlueScoreChangedRequestMessage copyWith(
          void Function(
                  NotifyVirtualSelectedParentBlueScoreChangedRequestMessage)
              updates) =>
      super.copyWith((message) => updates(message
              as NotifyVirtualSelectedParentBlueScoreChangedRequestMessage))
          as NotifyVirtualSelectedParentBlueScoreChangedRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NotifyVirtualSelectedParentBlueScoreChangedRequestMessage create() =>
      NotifyVirtualSelectedParentBlueScoreChangedRequestMessage._();
  NotifyVirtualSelectedParentBlueScoreChangedRequestMessage
      createEmptyInstance() => create();
  static $pb.PbList<NotifyVirtualSelectedParentBlueScoreChangedRequestMessage>
      createRepeated() => $pb.PbList<
          NotifyVirtualSelectedParentBlueScoreChangedRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static NotifyVirtualSelectedParentBlueScoreChangedRequestMessage
      getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          NotifyVirtualSelectedParentBlueScoreChangedRequestMessage>(create);
  static NotifyVirtualSelectedParentBlueScoreChangedRequestMessage?
      _defaultInstance;
}

class NotifyVirtualSelectedParentBlueScoreChangedResponseMessage
    extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'NotifyVirtualSelectedParentBlueScoreChangedResponseMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  NotifyVirtualSelectedParentBlueScoreChangedResponseMessage._() : super();
  factory NotifyVirtualSelectedParentBlueScoreChangedResponseMessage({
    RPCError? error,
  }) {
    final _result = create();
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory NotifyVirtualSelectedParentBlueScoreChangedResponseMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NotifyVirtualSelectedParentBlueScoreChangedResponseMessage.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NotifyVirtualSelectedParentBlueScoreChangedResponseMessage clone() =>
      NotifyVirtualSelectedParentBlueScoreChangedResponseMessage()
        ..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NotifyVirtualSelectedParentBlueScoreChangedResponseMessage copyWith(
          void Function(
                  NotifyVirtualSelectedParentBlueScoreChangedResponseMessage)
              updates) =>
      super.copyWith((message) => updates(message
              as NotifyVirtualSelectedParentBlueScoreChangedResponseMessage))
          as NotifyVirtualSelectedParentBlueScoreChangedResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NotifyVirtualSelectedParentBlueScoreChangedResponseMessage create() =>
      NotifyVirtualSelectedParentBlueScoreChangedResponseMessage._();
  NotifyVirtualSelectedParentBlueScoreChangedResponseMessage
      createEmptyInstance() => create();
  static $pb.PbList<NotifyVirtualSelectedParentBlueScoreChangedResponseMessage>
      createRepeated() => $pb.PbList<
          NotifyVirtualSelectedParentBlueScoreChangedResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static NotifyVirtualSelectedParentBlueScoreChangedResponseMessage
      getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          NotifyVirtualSelectedParentBlueScoreChangedResponseMessage>(create);
  static NotifyVirtualSelectedParentBlueScoreChangedResponseMessage?
      _defaultInstance;

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(0);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(0);
}

class VirtualSelectedParentBlueScoreChangedNotificationMessage
    extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'VirtualSelectedParentBlueScoreChangedNotificationMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'virtualSelectedParentBlueScore',
        $pb.PbFieldType.OU6,
        protoName: 'virtualSelectedParentBlueScore',
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  VirtualSelectedParentBlueScoreChangedNotificationMessage._() : super();
  factory VirtualSelectedParentBlueScoreChangedNotificationMessage({
    $fixnum.Int64? virtualSelectedParentBlueScore,
  }) {
    final _result = create();
    if (virtualSelectedParentBlueScore != null) {
      _result.virtualSelectedParentBlueScore = virtualSelectedParentBlueScore;
    }
    return _result;
  }
  factory VirtualSelectedParentBlueScoreChangedNotificationMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VirtualSelectedParentBlueScoreChangedNotificationMessage.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VirtualSelectedParentBlueScoreChangedNotificationMessage clone() =>
      VirtualSelectedParentBlueScoreChangedNotificationMessage()
        ..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VirtualSelectedParentBlueScoreChangedNotificationMessage copyWith(
          void Function(
                  VirtualSelectedParentBlueScoreChangedNotificationMessage)
              updates) =>
      super.copyWith((message) => updates(message
              as VirtualSelectedParentBlueScoreChangedNotificationMessage))
          as VirtualSelectedParentBlueScoreChangedNotificationMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VirtualSelectedParentBlueScoreChangedNotificationMessage create() =>
      VirtualSelectedParentBlueScoreChangedNotificationMessage._();
  VirtualSelectedParentBlueScoreChangedNotificationMessage
      createEmptyInstance() => create();
  static $pb.PbList<VirtualSelectedParentBlueScoreChangedNotificationMessage>
      createRepeated() => $pb.PbList<
          VirtualSelectedParentBlueScoreChangedNotificationMessage>();
  @$core.pragma('dart2js:noInline')
  static VirtualSelectedParentBlueScoreChangedNotificationMessage
      getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          VirtualSelectedParentBlueScoreChangedNotificationMessage>(create);
  static VirtualSelectedParentBlueScoreChangedNotificationMessage?
      _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get virtualSelectedParentBlueScore => $_getI64(0);
  @$pb.TagNumber(1)
  set virtualSelectedParentBlueScore($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasVirtualSelectedParentBlueScore() => $_has(0);
  @$pb.TagNumber(1)
  void clearVirtualSelectedParentBlueScore() => clearField(1);
}

class NotifyVirtualDaaScoreChangedRequestMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'NotifyVirtualDaaScoreChangedRequestMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  NotifyVirtualDaaScoreChangedRequestMessage._() : super();
  factory NotifyVirtualDaaScoreChangedRequestMessage() => create();
  factory NotifyVirtualDaaScoreChangedRequestMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NotifyVirtualDaaScoreChangedRequestMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NotifyVirtualDaaScoreChangedRequestMessage clone() =>
      NotifyVirtualDaaScoreChangedRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NotifyVirtualDaaScoreChangedRequestMessage copyWith(
          void Function(NotifyVirtualDaaScoreChangedRequestMessage) updates) =>
      super.copyWith((message) =>
              updates(message as NotifyVirtualDaaScoreChangedRequestMessage))
          as NotifyVirtualDaaScoreChangedRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NotifyVirtualDaaScoreChangedRequestMessage create() =>
      NotifyVirtualDaaScoreChangedRequestMessage._();
  NotifyVirtualDaaScoreChangedRequestMessage createEmptyInstance() => create();
  static $pb.PbList<NotifyVirtualDaaScoreChangedRequestMessage>
      createRepeated() =>
          $pb.PbList<NotifyVirtualDaaScoreChangedRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static NotifyVirtualDaaScoreChangedRequestMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          NotifyVirtualDaaScoreChangedRequestMessage>(create);
  static NotifyVirtualDaaScoreChangedRequestMessage? _defaultInstance;
}

class NotifyVirtualDaaScoreChangedResponseMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'NotifyVirtualDaaScoreChangedResponseMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  NotifyVirtualDaaScoreChangedResponseMessage._() : super();
  factory NotifyVirtualDaaScoreChangedResponseMessage({
    RPCError? error,
  }) {
    final _result = create();
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory NotifyVirtualDaaScoreChangedResponseMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NotifyVirtualDaaScoreChangedResponseMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NotifyVirtualDaaScoreChangedResponseMessage clone() =>
      NotifyVirtualDaaScoreChangedResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NotifyVirtualDaaScoreChangedResponseMessage copyWith(
          void Function(NotifyVirtualDaaScoreChangedResponseMessage) updates) =>
      super.copyWith((message) =>
              updates(message as NotifyVirtualDaaScoreChangedResponseMessage))
          as NotifyVirtualDaaScoreChangedResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NotifyVirtualDaaScoreChangedResponseMessage create() =>
      NotifyVirtualDaaScoreChangedResponseMessage._();
  NotifyVirtualDaaScoreChangedResponseMessage createEmptyInstance() => create();
  static $pb.PbList<NotifyVirtualDaaScoreChangedResponseMessage>
      createRepeated() =>
          $pb.PbList<NotifyVirtualDaaScoreChangedResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static NotifyVirtualDaaScoreChangedResponseMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          NotifyVirtualDaaScoreChangedResponseMessage>(create);
  static NotifyVirtualDaaScoreChangedResponseMessage? _defaultInstance;

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(0);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(0);
}

class VirtualDaaScoreChangedNotificationMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'VirtualDaaScoreChangedNotificationMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'virtualDaaScore',
        $pb.PbFieldType.OU6,
        protoName: 'virtualDaaScore',
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  VirtualDaaScoreChangedNotificationMessage._() : super();
  factory VirtualDaaScoreChangedNotificationMessage({
    $fixnum.Int64? virtualDaaScore,
  }) {
    final _result = create();
    if (virtualDaaScore != null) {
      _result.virtualDaaScore = virtualDaaScore;
    }
    return _result;
  }
  factory VirtualDaaScoreChangedNotificationMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VirtualDaaScoreChangedNotificationMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VirtualDaaScoreChangedNotificationMessage clone() =>
      VirtualDaaScoreChangedNotificationMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VirtualDaaScoreChangedNotificationMessage copyWith(
          void Function(VirtualDaaScoreChangedNotificationMessage) updates) =>
      super.copyWith((message) =>
              updates(message as VirtualDaaScoreChangedNotificationMessage))
          as VirtualDaaScoreChangedNotificationMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VirtualDaaScoreChangedNotificationMessage create() =>
      VirtualDaaScoreChangedNotificationMessage._();
  VirtualDaaScoreChangedNotificationMessage createEmptyInstance() => create();
  static $pb.PbList<VirtualDaaScoreChangedNotificationMessage>
      createRepeated() =>
          $pb.PbList<VirtualDaaScoreChangedNotificationMessage>();
  @$core.pragma('dart2js:noInline')
  static VirtualDaaScoreChangedNotificationMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          VirtualDaaScoreChangedNotificationMessage>(create);
  static VirtualDaaScoreChangedNotificationMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get virtualDaaScore => $_getI64(0);
  @$pb.TagNumber(1)
  set virtualDaaScore($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasVirtualDaaScore() => $_has(0);
  @$pb.TagNumber(1)
  void clearVirtualDaaScore() => clearField(1);
}

class NotifyPruningPointUTXOSetOverrideRequestMessage
    extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'NotifyPruningPointUTXOSetOverrideRequestMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  NotifyPruningPointUTXOSetOverrideRequestMessage._() : super();
  factory NotifyPruningPointUTXOSetOverrideRequestMessage() => create();
  factory NotifyPruningPointUTXOSetOverrideRequestMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NotifyPruningPointUTXOSetOverrideRequestMessage.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NotifyPruningPointUTXOSetOverrideRequestMessage clone() =>
      NotifyPruningPointUTXOSetOverrideRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NotifyPruningPointUTXOSetOverrideRequestMessage copyWith(
          void Function(NotifyPruningPointUTXOSetOverrideRequestMessage)
              updates) =>
      super.copyWith((message) => updates(
              message as NotifyPruningPointUTXOSetOverrideRequestMessage))
          as NotifyPruningPointUTXOSetOverrideRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NotifyPruningPointUTXOSetOverrideRequestMessage create() =>
      NotifyPruningPointUTXOSetOverrideRequestMessage._();
  NotifyPruningPointUTXOSetOverrideRequestMessage createEmptyInstance() =>
      create();
  static $pb.PbList<NotifyPruningPointUTXOSetOverrideRequestMessage>
      createRepeated() =>
          $pb.PbList<NotifyPruningPointUTXOSetOverrideRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static NotifyPruningPointUTXOSetOverrideRequestMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          NotifyPruningPointUTXOSetOverrideRequestMessage>(create);
  static NotifyPruningPointUTXOSetOverrideRequestMessage? _defaultInstance;
}

class NotifyPruningPointUTXOSetOverrideResponseMessage
    extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'NotifyPruningPointUTXOSetOverrideResponseMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  NotifyPruningPointUTXOSetOverrideResponseMessage._() : super();
  factory NotifyPruningPointUTXOSetOverrideResponseMessage({
    RPCError? error,
  }) {
    final _result = create();
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory NotifyPruningPointUTXOSetOverrideResponseMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NotifyPruningPointUTXOSetOverrideResponseMessage.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NotifyPruningPointUTXOSetOverrideResponseMessage clone() =>
      NotifyPruningPointUTXOSetOverrideResponseMessage()
        ..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NotifyPruningPointUTXOSetOverrideResponseMessage copyWith(
          void Function(NotifyPruningPointUTXOSetOverrideResponseMessage)
              updates) =>
      super.copyWith((message) => updates(
              message as NotifyPruningPointUTXOSetOverrideResponseMessage))
          as NotifyPruningPointUTXOSetOverrideResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NotifyPruningPointUTXOSetOverrideResponseMessage create() =>
      NotifyPruningPointUTXOSetOverrideResponseMessage._();
  NotifyPruningPointUTXOSetOverrideResponseMessage createEmptyInstance() =>
      create();
  static $pb.PbList<NotifyPruningPointUTXOSetOverrideResponseMessage>
      createRepeated() =>
          $pb.PbList<NotifyPruningPointUTXOSetOverrideResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static NotifyPruningPointUTXOSetOverrideResponseMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          NotifyPruningPointUTXOSetOverrideResponseMessage>(create);
  static NotifyPruningPointUTXOSetOverrideResponseMessage? _defaultInstance;

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(0);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(0);
}

class PruningPointUTXOSetOverrideNotificationMessage
    extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PruningPointUTXOSetOverrideNotificationMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  PruningPointUTXOSetOverrideNotificationMessage._() : super();
  factory PruningPointUTXOSetOverrideNotificationMessage() => create();
  factory PruningPointUTXOSetOverrideNotificationMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PruningPointUTXOSetOverrideNotificationMessage.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PruningPointUTXOSetOverrideNotificationMessage clone() =>
      PruningPointUTXOSetOverrideNotificationMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PruningPointUTXOSetOverrideNotificationMessage copyWith(
          void Function(PruningPointUTXOSetOverrideNotificationMessage)
              updates) =>
      super.copyWith((message) => updates(
              message as PruningPointUTXOSetOverrideNotificationMessage))
          as PruningPointUTXOSetOverrideNotificationMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PruningPointUTXOSetOverrideNotificationMessage create() =>
      PruningPointUTXOSetOverrideNotificationMessage._();
  PruningPointUTXOSetOverrideNotificationMessage createEmptyInstance() =>
      create();
  static $pb.PbList<PruningPointUTXOSetOverrideNotificationMessage>
      createRepeated() =>
          $pb.PbList<PruningPointUTXOSetOverrideNotificationMessage>();
  @$core.pragma('dart2js:noInline')
  static PruningPointUTXOSetOverrideNotificationMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PruningPointUTXOSetOverrideNotificationMessage>(create);
  static PruningPointUTXOSetOverrideNotificationMessage? _defaultInstance;
}

class StopNotifyingPruningPointUTXOSetOverrideRequestMessage
    extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'StopNotifyingPruningPointUTXOSetOverrideRequestMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  StopNotifyingPruningPointUTXOSetOverrideRequestMessage._() : super();
  factory StopNotifyingPruningPointUTXOSetOverrideRequestMessage() => create();
  factory StopNotifyingPruningPointUTXOSetOverrideRequestMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StopNotifyingPruningPointUTXOSetOverrideRequestMessage.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StopNotifyingPruningPointUTXOSetOverrideRequestMessage clone() =>
      StopNotifyingPruningPointUTXOSetOverrideRequestMessage()
        ..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StopNotifyingPruningPointUTXOSetOverrideRequestMessage copyWith(
          void Function(StopNotifyingPruningPointUTXOSetOverrideRequestMessage)
              updates) =>
      super.copyWith((message) => updates(message
              as StopNotifyingPruningPointUTXOSetOverrideRequestMessage))
          as StopNotifyingPruningPointUTXOSetOverrideRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StopNotifyingPruningPointUTXOSetOverrideRequestMessage create() =>
      StopNotifyingPruningPointUTXOSetOverrideRequestMessage._();
  StopNotifyingPruningPointUTXOSetOverrideRequestMessage
      createEmptyInstance() => create();
  static $pb.PbList<StopNotifyingPruningPointUTXOSetOverrideRequestMessage>
      createRepeated() =>
          $pb.PbList<StopNotifyingPruningPointUTXOSetOverrideRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static StopNotifyingPruningPointUTXOSetOverrideRequestMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          StopNotifyingPruningPointUTXOSetOverrideRequestMessage>(create);
  static StopNotifyingPruningPointUTXOSetOverrideRequestMessage?
      _defaultInstance;
}

class StopNotifyingPruningPointUTXOSetOverrideResponseMessage
    extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'StopNotifyingPruningPointUTXOSetOverrideResponseMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  StopNotifyingPruningPointUTXOSetOverrideResponseMessage._() : super();
  factory StopNotifyingPruningPointUTXOSetOverrideResponseMessage({
    RPCError? error,
  }) {
    final _result = create();
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory StopNotifyingPruningPointUTXOSetOverrideResponseMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StopNotifyingPruningPointUTXOSetOverrideResponseMessage.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StopNotifyingPruningPointUTXOSetOverrideResponseMessage clone() =>
      StopNotifyingPruningPointUTXOSetOverrideResponseMessage()
        ..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StopNotifyingPruningPointUTXOSetOverrideResponseMessage copyWith(
          void Function(StopNotifyingPruningPointUTXOSetOverrideResponseMessage)
              updates) =>
      super.copyWith((message) => updates(message
              as StopNotifyingPruningPointUTXOSetOverrideResponseMessage))
          as StopNotifyingPruningPointUTXOSetOverrideResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StopNotifyingPruningPointUTXOSetOverrideResponseMessage create() =>
      StopNotifyingPruningPointUTXOSetOverrideResponseMessage._();
  StopNotifyingPruningPointUTXOSetOverrideResponseMessage
      createEmptyInstance() => create();
  static $pb.PbList<StopNotifyingPruningPointUTXOSetOverrideResponseMessage>
      createRepeated() =>
          $pb.PbList<StopNotifyingPruningPointUTXOSetOverrideResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static StopNotifyingPruningPointUTXOSetOverrideResponseMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          StopNotifyingPruningPointUTXOSetOverrideResponseMessage>(create);
  static StopNotifyingPruningPointUTXOSetOverrideResponseMessage?
      _defaultInstance;

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(0);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(0);
}

class BanRequestMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'BanRequestMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ip')
    ..hasRequiredFields = false;

  BanRequestMessage._() : super();
  factory BanRequestMessage({
    $core.String? ip,
  }) {
    final _result = create();
    if (ip != null) {
      _result.ip = ip;
    }
    return _result;
  }
  factory BanRequestMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BanRequestMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BanRequestMessage clone() => BanRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BanRequestMessage copyWith(void Function(BanRequestMessage) updates) =>
      super.copyWith((message) => updates(message as BanRequestMessage))
          as BanRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BanRequestMessage create() => BanRequestMessage._();
  BanRequestMessage createEmptyInstance() => create();
  static $pb.PbList<BanRequestMessage> createRepeated() =>
      $pb.PbList<BanRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static BanRequestMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BanRequestMessage>(create);
  static BanRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ip => $_getSZ(0);
  @$pb.TagNumber(1)
  set ip($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIp() => $_has(0);
  @$pb.TagNumber(1)
  void clearIp() => clearField(1);
}

class BanResponseMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'BanResponseMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  BanResponseMessage._() : super();
  factory BanResponseMessage({
    RPCError? error,
  }) {
    final _result = create();
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory BanResponseMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BanResponseMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BanResponseMessage clone() => BanResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BanResponseMessage copyWith(void Function(BanResponseMessage) updates) =>
      super.copyWith((message) => updates(message as BanResponseMessage))
          as BanResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BanResponseMessage create() => BanResponseMessage._();
  BanResponseMessage createEmptyInstance() => create();
  static $pb.PbList<BanResponseMessage> createRepeated() =>
      $pb.PbList<BanResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static BanResponseMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BanResponseMessage>(create);
  static BanResponseMessage? _defaultInstance;

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(0);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(0);
}

class UnbanRequestMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'UnbanRequestMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ip')
    ..hasRequiredFields = false;

  UnbanRequestMessage._() : super();
  factory UnbanRequestMessage({
    $core.String? ip,
  }) {
    final _result = create();
    if (ip != null) {
      _result.ip = ip;
    }
    return _result;
  }
  factory UnbanRequestMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UnbanRequestMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UnbanRequestMessage clone() => UnbanRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UnbanRequestMessage copyWith(void Function(UnbanRequestMessage) updates) =>
      super.copyWith((message) => updates(message as UnbanRequestMessage))
          as UnbanRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnbanRequestMessage create() => UnbanRequestMessage._();
  UnbanRequestMessage createEmptyInstance() => create();
  static $pb.PbList<UnbanRequestMessage> createRepeated() =>
      $pb.PbList<UnbanRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static UnbanRequestMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UnbanRequestMessage>(create);
  static UnbanRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ip => $_getSZ(0);
  @$pb.TagNumber(1)
  set ip($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIp() => $_has(0);
  @$pb.TagNumber(1)
  void clearIp() => clearField(1);
}

class UnbanResponseMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'UnbanResponseMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  UnbanResponseMessage._() : super();
  factory UnbanResponseMessage({
    RPCError? error,
  }) {
    final _result = create();
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory UnbanResponseMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UnbanResponseMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UnbanResponseMessage clone() =>
      UnbanResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UnbanResponseMessage copyWith(void Function(UnbanResponseMessage) updates) =>
      super.copyWith((message) => updates(message as UnbanResponseMessage))
          as UnbanResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnbanResponseMessage create() => UnbanResponseMessage._();
  UnbanResponseMessage createEmptyInstance() => create();
  static $pb.PbList<UnbanResponseMessage> createRepeated() =>
      $pb.PbList<UnbanResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static UnbanResponseMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UnbanResponseMessage>(create);
  static UnbanResponseMessage? _defaultInstance;

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(0);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(0);
}

class GetInfoRequestMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetInfoRequestMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  GetInfoRequestMessage._() : super();
  factory GetInfoRequestMessage() => create();
  factory GetInfoRequestMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetInfoRequestMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetInfoRequestMessage clone() =>
      GetInfoRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetInfoRequestMessage copyWith(
          void Function(GetInfoRequestMessage) updates) =>
      super.copyWith((message) => updates(message as GetInfoRequestMessage))
          as GetInfoRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetInfoRequestMessage create() => GetInfoRequestMessage._();
  GetInfoRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetInfoRequestMessage> createRepeated() =>
      $pb.PbList<GetInfoRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetInfoRequestMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetInfoRequestMessage>(create);
  static GetInfoRequestMessage? _defaultInstance;
}

class GetInfoResponseMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetInfoResponseMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'p2pId',
        protoName: 'p2pId')
    ..a<$fixnum.Int64>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'mempoolSize',
        $pb.PbFieldType.OU6,
        protoName: 'mempoolSize',
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'serverVersion',
        protoName: 'serverVersion')
    ..aOB(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isUtxoIndexed',
        protoName: 'isUtxoIndexed')
    ..aOB(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isSynced',
        protoName: 'isSynced')
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  GetInfoResponseMessage._() : super();
  factory GetInfoResponseMessage({
    $core.String? p2pId,
    $fixnum.Int64? mempoolSize,
    $core.String? serverVersion,
    $core.bool? isUtxoIndexed,
    $core.bool? isSynced,
    RPCError? error,
  }) {
    final _result = create();
    if (p2pId != null) {
      _result.p2pId = p2pId;
    }
    if (mempoolSize != null) {
      _result.mempoolSize = mempoolSize;
    }
    if (serverVersion != null) {
      _result.serverVersion = serverVersion;
    }
    if (isUtxoIndexed != null) {
      _result.isUtxoIndexed = isUtxoIndexed;
    }
    if (isSynced != null) {
      _result.isSynced = isSynced;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory GetInfoResponseMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetInfoResponseMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetInfoResponseMessage clone() =>
      GetInfoResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetInfoResponseMessage copyWith(
          void Function(GetInfoResponseMessage) updates) =>
      super.copyWith((message) => updates(message as GetInfoResponseMessage))
          as GetInfoResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetInfoResponseMessage create() => GetInfoResponseMessage._();
  GetInfoResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetInfoResponseMessage> createRepeated() =>
      $pb.PbList<GetInfoResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetInfoResponseMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetInfoResponseMessage>(create);
  static GetInfoResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get p2pId => $_getSZ(0);
  @$pb.TagNumber(1)
  set p2pId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasP2pId() => $_has(0);
  @$pb.TagNumber(1)
  void clearP2pId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get mempoolSize => $_getI64(1);
  @$pb.TagNumber(2)
  set mempoolSize($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMempoolSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearMempoolSize() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get serverVersion => $_getSZ(2);
  @$pb.TagNumber(3)
  set serverVersion($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasServerVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearServerVersion() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isUtxoIndexed => $_getBF(3);
  @$pb.TagNumber(4)
  set isUtxoIndexed($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasIsUtxoIndexed() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsUtxoIndexed() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get isSynced => $_getBF(4);
  @$pb.TagNumber(5)
  set isSynced($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasIsSynced() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsSynced() => clearField(5);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(5);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(5);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(5);
}

class EstimateNetworkHashesPerSecondRequestMessage
    extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'EstimateNetworkHashesPerSecondRequestMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'windowSize',
        $pb.PbFieldType.OU3,
        protoName: 'windowSize')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'startHash',
        protoName: 'startHash')
    ..hasRequiredFields = false;

  EstimateNetworkHashesPerSecondRequestMessage._() : super();
  factory EstimateNetworkHashesPerSecondRequestMessage({
    $core.int? windowSize,
    $core.String? startHash,
  }) {
    final _result = create();
    if (windowSize != null) {
      _result.windowSize = windowSize;
    }
    if (startHash != null) {
      _result.startHash = startHash;
    }
    return _result;
  }
  factory EstimateNetworkHashesPerSecondRequestMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EstimateNetworkHashesPerSecondRequestMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  EstimateNetworkHashesPerSecondRequestMessage clone() =>
      EstimateNetworkHashesPerSecondRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  EstimateNetworkHashesPerSecondRequestMessage copyWith(
          void Function(EstimateNetworkHashesPerSecondRequestMessage)
              updates) =>
      super.copyWith((message) =>
              updates(message as EstimateNetworkHashesPerSecondRequestMessage))
          as EstimateNetworkHashesPerSecondRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EstimateNetworkHashesPerSecondRequestMessage create() =>
      EstimateNetworkHashesPerSecondRequestMessage._();
  EstimateNetworkHashesPerSecondRequestMessage createEmptyInstance() =>
      create();
  static $pb.PbList<EstimateNetworkHashesPerSecondRequestMessage>
      createRepeated() =>
          $pb.PbList<EstimateNetworkHashesPerSecondRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static EstimateNetworkHashesPerSecondRequestMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EstimateNetworkHashesPerSecondRequestMessage>(create);
  static EstimateNetworkHashesPerSecondRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get windowSize => $_getIZ(0);
  @$pb.TagNumber(1)
  set windowSize($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasWindowSize() => $_has(0);
  @$pb.TagNumber(1)
  void clearWindowSize() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get startHash => $_getSZ(1);
  @$pb.TagNumber(2)
  set startHash($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStartHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearStartHash() => clearField(2);
}

class EstimateNetworkHashesPerSecondResponseMessage
    extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'EstimateNetworkHashesPerSecondResponseMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'networkHashesPerSecond',
        $pb.PbFieldType.OU6,
        protoName: 'networkHashesPerSecond',
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  EstimateNetworkHashesPerSecondResponseMessage._() : super();
  factory EstimateNetworkHashesPerSecondResponseMessage({
    $fixnum.Int64? networkHashesPerSecond,
    RPCError? error,
  }) {
    final _result = create();
    if (networkHashesPerSecond != null) {
      _result.networkHashesPerSecond = networkHashesPerSecond;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory EstimateNetworkHashesPerSecondResponseMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EstimateNetworkHashesPerSecondResponseMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  EstimateNetworkHashesPerSecondResponseMessage clone() =>
      EstimateNetworkHashesPerSecondResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  EstimateNetworkHashesPerSecondResponseMessage copyWith(
          void Function(EstimateNetworkHashesPerSecondResponseMessage)
              updates) =>
      super.copyWith((message) =>
              updates(message as EstimateNetworkHashesPerSecondResponseMessage))
          as EstimateNetworkHashesPerSecondResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EstimateNetworkHashesPerSecondResponseMessage create() =>
      EstimateNetworkHashesPerSecondResponseMessage._();
  EstimateNetworkHashesPerSecondResponseMessage createEmptyInstance() =>
      create();
  static $pb.PbList<EstimateNetworkHashesPerSecondResponseMessage>
      createRepeated() =>
          $pb.PbList<EstimateNetworkHashesPerSecondResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static EstimateNetworkHashesPerSecondResponseMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EstimateNetworkHashesPerSecondResponseMessage>(create);
  static EstimateNetworkHashesPerSecondResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get networkHashesPerSecond => $_getI64(0);
  @$pb.TagNumber(1)
  set networkHashesPerSecond($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasNetworkHashesPerSecond() => $_has(0);
  @$pb.TagNumber(1)
  void clearNetworkHashesPerSecond() => clearField(1);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(1);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(1);
}

class NotifyNewBlockTemplateRequestMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'NotifyNewBlockTemplateRequestMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  NotifyNewBlockTemplateRequestMessage._() : super();
  factory NotifyNewBlockTemplateRequestMessage() => create();
  factory NotifyNewBlockTemplateRequestMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NotifyNewBlockTemplateRequestMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NotifyNewBlockTemplateRequestMessage clone() =>
      NotifyNewBlockTemplateRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NotifyNewBlockTemplateRequestMessage copyWith(
          void Function(NotifyNewBlockTemplateRequestMessage) updates) =>
      super.copyWith((message) =>
              updates(message as NotifyNewBlockTemplateRequestMessage))
          as NotifyNewBlockTemplateRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NotifyNewBlockTemplateRequestMessage create() =>
      NotifyNewBlockTemplateRequestMessage._();
  NotifyNewBlockTemplateRequestMessage createEmptyInstance() => create();
  static $pb.PbList<NotifyNewBlockTemplateRequestMessage> createRepeated() =>
      $pb.PbList<NotifyNewBlockTemplateRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static NotifyNewBlockTemplateRequestMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          NotifyNewBlockTemplateRequestMessage>(create);
  static NotifyNewBlockTemplateRequestMessage? _defaultInstance;
}

class NotifyNewBlockTemplateResponseMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'NotifyNewBlockTemplateResponseMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  NotifyNewBlockTemplateResponseMessage._() : super();
  factory NotifyNewBlockTemplateResponseMessage({
    RPCError? error,
  }) {
    final _result = create();
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory NotifyNewBlockTemplateResponseMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NotifyNewBlockTemplateResponseMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NotifyNewBlockTemplateResponseMessage clone() =>
      NotifyNewBlockTemplateResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NotifyNewBlockTemplateResponseMessage copyWith(
          void Function(NotifyNewBlockTemplateResponseMessage) updates) =>
      super.copyWith((message) =>
              updates(message as NotifyNewBlockTemplateResponseMessage))
          as NotifyNewBlockTemplateResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NotifyNewBlockTemplateResponseMessage create() =>
      NotifyNewBlockTemplateResponseMessage._();
  NotifyNewBlockTemplateResponseMessage createEmptyInstance() => create();
  static $pb.PbList<NotifyNewBlockTemplateResponseMessage> createRepeated() =>
      $pb.PbList<NotifyNewBlockTemplateResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static NotifyNewBlockTemplateResponseMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          NotifyNewBlockTemplateResponseMessage>(create);
  static NotifyNewBlockTemplateResponseMessage? _defaultInstance;

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(0);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(0);
}

class NewBlockTemplateNotificationMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'NewBlockTemplateNotificationMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  NewBlockTemplateNotificationMessage._() : super();
  factory NewBlockTemplateNotificationMessage() => create();
  factory NewBlockTemplateNotificationMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NewBlockTemplateNotificationMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NewBlockTemplateNotificationMessage clone() =>
      NewBlockTemplateNotificationMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NewBlockTemplateNotificationMessage copyWith(
          void Function(NewBlockTemplateNotificationMessage) updates) =>
      super.copyWith((message) =>
              updates(message as NewBlockTemplateNotificationMessage))
          as NewBlockTemplateNotificationMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NewBlockTemplateNotificationMessage create() =>
      NewBlockTemplateNotificationMessage._();
  NewBlockTemplateNotificationMessage createEmptyInstance() => create();
  static $pb.PbList<NewBlockTemplateNotificationMessage> createRepeated() =>
      $pb.PbList<NewBlockTemplateNotificationMessage>();
  @$core.pragma('dart2js:noInline')
  static NewBlockTemplateNotificationMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          NewBlockTemplateNotificationMessage>(create);
  static NewBlockTemplateNotificationMessage? _defaultInstance;
}

class MempoolEntryByAddress extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'MempoolEntryByAddress',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'address')
    ..pc<MempoolEntry>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'sending',
        $pb.PbFieldType.PM,
        subBuilder: MempoolEntry.create)
    ..pc<MempoolEntry>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'receiving',
        $pb.PbFieldType.PM,
        subBuilder: MempoolEntry.create)
    ..hasRequiredFields = false;

  MempoolEntryByAddress._() : super();
  factory MempoolEntryByAddress({
    $core.String? address,
    $core.Iterable<MempoolEntry>? sending,
    $core.Iterable<MempoolEntry>? receiving,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (sending != null) {
      _result.sending.addAll(sending);
    }
    if (receiving != null) {
      _result.receiving.addAll(receiving);
    }
    return _result;
  }
  factory MempoolEntryByAddress.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MempoolEntryByAddress.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MempoolEntryByAddress clone() =>
      MempoolEntryByAddress()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MempoolEntryByAddress copyWith(
          void Function(MempoolEntryByAddress) updates) =>
      super.copyWith((message) => updates(message as MempoolEntryByAddress))
          as MempoolEntryByAddress; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MempoolEntryByAddress create() => MempoolEntryByAddress._();
  MempoolEntryByAddress createEmptyInstance() => create();
  static $pb.PbList<MempoolEntryByAddress> createRepeated() =>
      $pb.PbList<MempoolEntryByAddress>();
  @$core.pragma('dart2js:noInline')
  static MempoolEntryByAddress getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MempoolEntryByAddress>(create);
  static MempoolEntryByAddress? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<MempoolEntry> get sending => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<MempoolEntry> get receiving => $_getList(2);
}

class GetMempoolEntriesByAddressesRequestMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetMempoolEntriesByAddressesRequestMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..pPS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'addresses')
    ..aOB(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'includeOrphanPool',
        protoName: 'includeOrphanPool')
    ..aOB(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'filterTransactionPool',
        protoName: 'filterTransactionPool')
    ..hasRequiredFields = false;

  GetMempoolEntriesByAddressesRequestMessage._() : super();
  factory GetMempoolEntriesByAddressesRequestMessage({
    $core.Iterable<$core.String>? addresses,
    $core.bool? includeOrphanPool,
    $core.bool? filterTransactionPool,
  }) {
    final _result = create();
    if (addresses != null) {
      _result.addresses.addAll(addresses);
    }
    if (includeOrphanPool != null) {
      _result.includeOrphanPool = includeOrphanPool;
    }
    if (filterTransactionPool != null) {
      _result.filterTransactionPool = filterTransactionPool;
    }
    return _result;
  }
  factory GetMempoolEntriesByAddressesRequestMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetMempoolEntriesByAddressesRequestMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetMempoolEntriesByAddressesRequestMessage clone() =>
      GetMempoolEntriesByAddressesRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetMempoolEntriesByAddressesRequestMessage copyWith(
          void Function(GetMempoolEntriesByAddressesRequestMessage) updates) =>
      super.copyWith((message) =>
              updates(message as GetMempoolEntriesByAddressesRequestMessage))
          as GetMempoolEntriesByAddressesRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetMempoolEntriesByAddressesRequestMessage create() =>
      GetMempoolEntriesByAddressesRequestMessage._();
  GetMempoolEntriesByAddressesRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetMempoolEntriesByAddressesRequestMessage>
      createRepeated() =>
          $pb.PbList<GetMempoolEntriesByAddressesRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetMempoolEntriesByAddressesRequestMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          GetMempoolEntriesByAddressesRequestMessage>(create);
  static GetMempoolEntriesByAddressesRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get addresses => $_getList(0);

  @$pb.TagNumber(2)
  $core.bool get includeOrphanPool => $_getBF(1);
  @$pb.TagNumber(2)
  set includeOrphanPool($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasIncludeOrphanPool() => $_has(1);
  @$pb.TagNumber(2)
  void clearIncludeOrphanPool() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get filterTransactionPool => $_getBF(2);
  @$pb.TagNumber(3)
  set filterTransactionPool($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasFilterTransactionPool() => $_has(2);
  @$pb.TagNumber(3)
  void clearFilterTransactionPool() => clearField(3);
}

class GetMempoolEntriesByAddressesResponseMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetMempoolEntriesByAddressesResponseMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..pc<MempoolEntryByAddress>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'entries',
        $pb.PbFieldType.PM,
        subBuilder: MempoolEntryByAddress.create)
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  GetMempoolEntriesByAddressesResponseMessage._() : super();
  factory GetMempoolEntriesByAddressesResponseMessage({
    $core.Iterable<MempoolEntryByAddress>? entries,
    RPCError? error,
  }) {
    final _result = create();
    if (entries != null) {
      _result.entries.addAll(entries);
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory GetMempoolEntriesByAddressesResponseMessage.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetMempoolEntriesByAddressesResponseMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetMempoolEntriesByAddressesResponseMessage clone() =>
      GetMempoolEntriesByAddressesResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetMempoolEntriesByAddressesResponseMessage copyWith(
          void Function(GetMempoolEntriesByAddressesResponseMessage) updates) =>
      super.copyWith((message) =>
              updates(message as GetMempoolEntriesByAddressesResponseMessage))
          as GetMempoolEntriesByAddressesResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetMempoolEntriesByAddressesResponseMessage create() =>
      GetMempoolEntriesByAddressesResponseMessage._();
  GetMempoolEntriesByAddressesResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetMempoolEntriesByAddressesResponseMessage>
      createRepeated() =>
          $pb.PbList<GetMempoolEntriesByAddressesResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetMempoolEntriesByAddressesResponseMessage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          GetMempoolEntriesByAddressesResponseMessage>(create);
  static GetMempoolEntriesByAddressesResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<MempoolEntryByAddress> get entries => $_getList(0);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(1);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(1);
}

class GetCoinSupplyRequestMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetCoinSupplyRequestMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  GetCoinSupplyRequestMessage._() : super();
  factory GetCoinSupplyRequestMessage() => create();
  factory GetCoinSupplyRequestMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetCoinSupplyRequestMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetCoinSupplyRequestMessage clone() =>
      GetCoinSupplyRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetCoinSupplyRequestMessage copyWith(
          void Function(GetCoinSupplyRequestMessage) updates) =>
      super.copyWith(
              (message) => updates(message as GetCoinSupplyRequestMessage))
          as GetCoinSupplyRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetCoinSupplyRequestMessage create() =>
      GetCoinSupplyRequestMessage._();
  GetCoinSupplyRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetCoinSupplyRequestMessage> createRepeated() =>
      $pb.PbList<GetCoinSupplyRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetCoinSupplyRequestMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetCoinSupplyRequestMessage>(create);
  static GetCoinSupplyRequestMessage? _defaultInstance;
}

class GetCoinSupplyResponseMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetCoinSupplyResponseMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'protowire'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'maxSompi',
        $pb.PbFieldType.OU6,
        protoName: 'maxSompi',
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'circulatingSompi',
        $pb.PbFieldType.OU6,
        protoName: 'circulatingSompi',
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<RPCError>(
        1000,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: RPCError.create)
    ..hasRequiredFields = false;

  GetCoinSupplyResponseMessage._() : super();
  factory GetCoinSupplyResponseMessage({
    $fixnum.Int64? maxSompi,
    $fixnum.Int64? circulatingSompi,
    RPCError? error,
  }) {
    final _result = create();
    if (maxSompi != null) {
      _result.maxSompi = maxSompi;
    }
    if (circulatingSompi != null) {
      _result.circulatingSompi = circulatingSompi;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory GetCoinSupplyResponseMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetCoinSupplyResponseMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetCoinSupplyResponseMessage clone() =>
      GetCoinSupplyResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetCoinSupplyResponseMessage copyWith(
          void Function(GetCoinSupplyResponseMessage) updates) =>
      super.copyWith(
              (message) => updates(message as GetCoinSupplyResponseMessage))
          as GetCoinSupplyResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetCoinSupplyResponseMessage create() =>
      GetCoinSupplyResponseMessage._();
  GetCoinSupplyResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetCoinSupplyResponseMessage> createRepeated() =>
      $pb.PbList<GetCoinSupplyResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetCoinSupplyResponseMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetCoinSupplyResponseMessage>(create);
  static GetCoinSupplyResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get maxSompi => $_getI64(0);
  @$pb.TagNumber(1)
  set maxSompi($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMaxSompi() => $_has(0);
  @$pb.TagNumber(1)
  void clearMaxSompi() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get circulatingSompi => $_getI64(1);
  @$pb.TagNumber(2)
  set circulatingSompi($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCirculatingSompi() => $_has(1);
  @$pb.TagNumber(2)
  void clearCirculatingSompi() => clearField(2);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(2);
  @$pb.TagNumber(1000)
  set error(RPCError v) {
    setField(1000, v);
  }

  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(2);
}
