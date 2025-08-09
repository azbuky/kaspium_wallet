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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'rpc.pbenum.dart';

export 'rpc.pbenum.dart';

///  RPCError represents a generic non-internal error.
///
///  Receivers of any ResponseMessage are expected to check whether its error field is not null.
class RPCError extends $pb.GeneratedMessage {
  factory RPCError({
    $core.String? message,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  RPCError._() : super();
  factory RPCError.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RPCError.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RPCError', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RPCError clone() => RPCError()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RPCError copyWith(void Function(RPCError) updates) => super.copyWith((message) => updates(message as RPCError)) as RPCError;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RPCError create() => RPCError._();
  RPCError createEmptyInstance() => create();
  static $pb.PbList<RPCError> createRepeated() => $pb.PbList<RPCError>();
  @$core.pragma('dart2js:noInline')
  static RPCError getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RPCError>(create);
  static RPCError? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

class RpcBlock extends $pb.GeneratedMessage {
  factory RpcBlock({
    RpcBlockHeader? header,
    $core.Iterable<RpcTransaction>? transactions,
    RpcBlockVerboseData? verboseData,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    if (transactions != null) {
      $result.transactions.addAll(transactions);
    }
    if (verboseData != null) {
      $result.verboseData = verboseData;
    }
    return $result;
  }
  RpcBlock._() : super();
  factory RpcBlock.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpcBlock.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RpcBlock', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOM<RpcBlockHeader>(1, _omitFieldNames ? '' : 'header', subBuilder: RpcBlockHeader.create)
    ..pc<RpcTransaction>(2, _omitFieldNames ? '' : 'transactions', $pb.PbFieldType.PM, subBuilder: RpcTransaction.create)
    ..aOM<RpcBlockVerboseData>(3, _omitFieldNames ? '' : 'verboseData', protoName: 'verboseData', subBuilder: RpcBlockVerboseData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RpcBlock clone() => RpcBlock()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RpcBlock copyWith(void Function(RpcBlock) updates) => super.copyWith((message) => updates(message as RpcBlock)) as RpcBlock;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RpcBlock create() => RpcBlock._();
  RpcBlock createEmptyInstance() => create();
  static $pb.PbList<RpcBlock> createRepeated() => $pb.PbList<RpcBlock>();
  @$core.pragma('dart2js:noInline')
  static RpcBlock getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpcBlock>(create);
  static RpcBlock? _defaultInstance;

  @$pb.TagNumber(1)
  RpcBlockHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(RpcBlockHeader v) { setField(1, v); }
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
  set verboseData(RpcBlockVerboseData v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasVerboseData() => $_has(2);
  @$pb.TagNumber(3)
  void clearVerboseData() => clearField(3);
  @$pb.TagNumber(3)
  RpcBlockVerboseData ensureVerboseData() => $_ensure(2);
}

class RpcBlockHeader extends $pb.GeneratedMessage {
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
    final $result = create();
    if (version != null) {
      $result.version = version;
    }
    if (hashMerkleRoot != null) {
      $result.hashMerkleRoot = hashMerkleRoot;
    }
    if (acceptedIdMerkleRoot != null) {
      $result.acceptedIdMerkleRoot = acceptedIdMerkleRoot;
    }
    if (utxoCommitment != null) {
      $result.utxoCommitment = utxoCommitment;
    }
    if (timestamp != null) {
      $result.timestamp = timestamp;
    }
    if (bits != null) {
      $result.bits = bits;
    }
    if (nonce != null) {
      $result.nonce = nonce;
    }
    if (daaScore != null) {
      $result.daaScore = daaScore;
    }
    if (blueWork != null) {
      $result.blueWork = blueWork;
    }
    if (parents != null) {
      $result.parents.addAll(parents);
    }
    if (blueScore != null) {
      $result.blueScore = blueScore;
    }
    if (pruningPoint != null) {
      $result.pruningPoint = pruningPoint;
    }
    return $result;
  }
  RpcBlockHeader._() : super();
  factory RpcBlockHeader.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpcBlockHeader.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RpcBlockHeader', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'version', $pb.PbFieldType.OU3)
    ..aOS(3, _omitFieldNames ? '' : 'hashMerkleRoot', protoName: 'hashMerkleRoot')
    ..aOS(4, _omitFieldNames ? '' : 'acceptedIdMerkleRoot', protoName: 'acceptedIdMerkleRoot')
    ..aOS(5, _omitFieldNames ? '' : 'utxoCommitment', protoName: 'utxoCommitment')
    ..aInt64(6, _omitFieldNames ? '' : 'timestamp')
    ..a<$core.int>(7, _omitFieldNames ? '' : 'bits', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(8, _omitFieldNames ? '' : 'nonce', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(9, _omitFieldNames ? '' : 'daaScore', $pb.PbFieldType.OU6, protoName: 'daaScore', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(10, _omitFieldNames ? '' : 'blueWork', protoName: 'blueWork')
    ..pc<RpcBlockLevelParents>(12, _omitFieldNames ? '' : 'parents', $pb.PbFieldType.PM, subBuilder: RpcBlockLevelParents.create)
    ..a<$fixnum.Int64>(13, _omitFieldNames ? '' : 'blueScore', $pb.PbFieldType.OU6, protoName: 'blueScore', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(14, _omitFieldNames ? '' : 'pruningPoint', protoName: 'pruningPoint')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RpcBlockHeader clone() => RpcBlockHeader()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RpcBlockHeader copyWith(void Function(RpcBlockHeader) updates) => super.copyWith((message) => updates(message as RpcBlockHeader)) as RpcBlockHeader;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RpcBlockHeader create() => RpcBlockHeader._();
  RpcBlockHeader createEmptyInstance() => create();
  static $pb.PbList<RpcBlockHeader> createRepeated() => $pb.PbList<RpcBlockHeader>();
  @$core.pragma('dart2js:noInline')
  static RpcBlockHeader getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpcBlockHeader>(create);
  static RpcBlockHeader? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get version => $_getIZ(0);
  @$pb.TagNumber(1)
  set version($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);

  @$pb.TagNumber(3)
  $core.String get hashMerkleRoot => $_getSZ(1);
  @$pb.TagNumber(3)
  set hashMerkleRoot($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasHashMerkleRoot() => $_has(1);
  @$pb.TagNumber(3)
  void clearHashMerkleRoot() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get acceptedIdMerkleRoot => $_getSZ(2);
  @$pb.TagNumber(4)
  set acceptedIdMerkleRoot($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasAcceptedIdMerkleRoot() => $_has(2);
  @$pb.TagNumber(4)
  void clearAcceptedIdMerkleRoot() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get utxoCommitment => $_getSZ(3);
  @$pb.TagNumber(5)
  set utxoCommitment($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasUtxoCommitment() => $_has(3);
  @$pb.TagNumber(5)
  void clearUtxoCommitment() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get timestamp => $_getI64(4);
  @$pb.TagNumber(6)
  set timestamp($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasTimestamp() => $_has(4);
  @$pb.TagNumber(6)
  void clearTimestamp() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get bits => $_getIZ(5);
  @$pb.TagNumber(7)
  set bits($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasBits() => $_has(5);
  @$pb.TagNumber(7)
  void clearBits() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get nonce => $_getI64(6);
  @$pb.TagNumber(8)
  set nonce($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasNonce() => $_has(6);
  @$pb.TagNumber(8)
  void clearNonce() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get daaScore => $_getI64(7);
  @$pb.TagNumber(9)
  set daaScore($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasDaaScore() => $_has(7);
  @$pb.TagNumber(9)
  void clearDaaScore() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get blueWork => $_getSZ(8);
  @$pb.TagNumber(10)
  set blueWork($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasBlueWork() => $_has(8);
  @$pb.TagNumber(10)
  void clearBlueWork() => clearField(10);

  @$pb.TagNumber(12)
  $core.List<RpcBlockLevelParents> get parents => $_getList(9);

  @$pb.TagNumber(13)
  $fixnum.Int64 get blueScore => $_getI64(10);
  @$pb.TagNumber(13)
  set blueScore($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(13)
  $core.bool hasBlueScore() => $_has(10);
  @$pb.TagNumber(13)
  void clearBlueScore() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get pruningPoint => $_getSZ(11);
  @$pb.TagNumber(14)
  set pruningPoint($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(14)
  $core.bool hasPruningPoint() => $_has(11);
  @$pb.TagNumber(14)
  void clearPruningPoint() => clearField(14);
}

class RpcBlockLevelParents extends $pb.GeneratedMessage {
  factory RpcBlockLevelParents({
    $core.Iterable<$core.String>? parentHashes,
  }) {
    final $result = create();
    if (parentHashes != null) {
      $result.parentHashes.addAll(parentHashes);
    }
    return $result;
  }
  RpcBlockLevelParents._() : super();
  factory RpcBlockLevelParents.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpcBlockLevelParents.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RpcBlockLevelParents', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'parentHashes', protoName: 'parentHashes')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RpcBlockLevelParents clone() => RpcBlockLevelParents()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RpcBlockLevelParents copyWith(void Function(RpcBlockLevelParents) updates) => super.copyWith((message) => updates(message as RpcBlockLevelParents)) as RpcBlockLevelParents;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RpcBlockLevelParents create() => RpcBlockLevelParents._();
  RpcBlockLevelParents createEmptyInstance() => create();
  static $pb.PbList<RpcBlockLevelParents> createRepeated() => $pb.PbList<RpcBlockLevelParents>();
  @$core.pragma('dart2js:noInline')
  static RpcBlockLevelParents getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpcBlockLevelParents>(create);
  static RpcBlockLevelParents? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get parentHashes => $_getList(0);
}

class RpcBlockVerboseData extends $pb.GeneratedMessage {
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
    final $result = create();
    if (hash != null) {
      $result.hash = hash;
    }
    if (difficulty != null) {
      $result.difficulty = difficulty;
    }
    if (selectedParentHash != null) {
      $result.selectedParentHash = selectedParentHash;
    }
    if (transactionIds != null) {
      $result.transactionIds.addAll(transactionIds);
    }
    if (isHeaderOnly != null) {
      $result.isHeaderOnly = isHeaderOnly;
    }
    if (blueScore != null) {
      $result.blueScore = blueScore;
    }
    if (childrenHashes != null) {
      $result.childrenHashes.addAll(childrenHashes);
    }
    if (mergeSetBluesHashes != null) {
      $result.mergeSetBluesHashes.addAll(mergeSetBluesHashes);
    }
    if (mergeSetRedsHashes != null) {
      $result.mergeSetRedsHashes.addAll(mergeSetRedsHashes);
    }
    if (isChainBlock != null) {
      $result.isChainBlock = isChainBlock;
    }
    return $result;
  }
  RpcBlockVerboseData._() : super();
  factory RpcBlockVerboseData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpcBlockVerboseData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RpcBlockVerboseData', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'hash')
    ..a<$core.double>(11, _omitFieldNames ? '' : 'difficulty', $pb.PbFieldType.OD)
    ..aOS(13, _omitFieldNames ? '' : 'selectedParentHash', protoName: 'selectedParentHash')
    ..pPS(14, _omitFieldNames ? '' : 'transactionIds', protoName: 'transactionIds')
    ..aOB(15, _omitFieldNames ? '' : 'isHeaderOnly', protoName: 'isHeaderOnly')
    ..a<$fixnum.Int64>(16, _omitFieldNames ? '' : 'blueScore', $pb.PbFieldType.OU6, protoName: 'blueScore', defaultOrMaker: $fixnum.Int64.ZERO)
    ..pPS(17, _omitFieldNames ? '' : 'childrenHashes', protoName: 'childrenHashes')
    ..pPS(18, _omitFieldNames ? '' : 'mergeSetBluesHashes', protoName: 'mergeSetBluesHashes')
    ..pPS(19, _omitFieldNames ? '' : 'mergeSetRedsHashes', protoName: 'mergeSetRedsHashes')
    ..aOB(20, _omitFieldNames ? '' : 'isChainBlock', protoName: 'isChainBlock')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RpcBlockVerboseData clone() => RpcBlockVerboseData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RpcBlockVerboseData copyWith(void Function(RpcBlockVerboseData) updates) => super.copyWith((message) => updates(message as RpcBlockVerboseData)) as RpcBlockVerboseData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RpcBlockVerboseData create() => RpcBlockVerboseData._();
  RpcBlockVerboseData createEmptyInstance() => create();
  static $pb.PbList<RpcBlockVerboseData> createRepeated() => $pb.PbList<RpcBlockVerboseData>();
  @$core.pragma('dart2js:noInline')
  static RpcBlockVerboseData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpcBlockVerboseData>(create);
  static RpcBlockVerboseData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get hash => $_getSZ(0);
  @$pb.TagNumber(1)
  set hash($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearHash() => clearField(1);

  @$pb.TagNumber(11)
  $core.double get difficulty => $_getN(1);
  @$pb.TagNumber(11)
  set difficulty($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(11)
  $core.bool hasDifficulty() => $_has(1);
  @$pb.TagNumber(11)
  void clearDifficulty() => clearField(11);

  @$pb.TagNumber(13)
  $core.String get selectedParentHash => $_getSZ(2);
  @$pb.TagNumber(13)
  set selectedParentHash($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(13)
  $core.bool hasSelectedParentHash() => $_has(2);
  @$pb.TagNumber(13)
  void clearSelectedParentHash() => clearField(13);

  @$pb.TagNumber(14)
  $core.List<$core.String> get transactionIds => $_getList(3);

  @$pb.TagNumber(15)
  $core.bool get isHeaderOnly => $_getBF(4);
  @$pb.TagNumber(15)
  set isHeaderOnly($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(15)
  $core.bool hasIsHeaderOnly() => $_has(4);
  @$pb.TagNumber(15)
  void clearIsHeaderOnly() => clearField(15);

  @$pb.TagNumber(16)
  $fixnum.Int64 get blueScore => $_getI64(5);
  @$pb.TagNumber(16)
  set blueScore($fixnum.Int64 v) { $_setInt64(5, v); }
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
  set isChainBlock($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(20)
  $core.bool hasIsChainBlock() => $_has(9);
  @$pb.TagNumber(20)
  void clearIsChainBlock() => clearField(20);
}

class RpcTransaction extends $pb.GeneratedMessage {
  factory RpcTransaction({
    $core.int? version,
    $core.Iterable<RpcTransactionInput>? inputs,
    $core.Iterable<RpcTransactionOutput>? outputs,
    $fixnum.Int64? lockTime,
    $core.String? subnetworkId,
    $fixnum.Int64? gas,
    $core.String? payload,
    RpcTransactionVerboseData? verboseData,
    $fixnum.Int64? mass,
  }) {
    final $result = create();
    if (version != null) {
      $result.version = version;
    }
    if (inputs != null) {
      $result.inputs.addAll(inputs);
    }
    if (outputs != null) {
      $result.outputs.addAll(outputs);
    }
    if (lockTime != null) {
      $result.lockTime = lockTime;
    }
    if (subnetworkId != null) {
      $result.subnetworkId = subnetworkId;
    }
    if (gas != null) {
      $result.gas = gas;
    }
    if (payload != null) {
      $result.payload = payload;
    }
    if (verboseData != null) {
      $result.verboseData = verboseData;
    }
    if (mass != null) {
      $result.mass = mass;
    }
    return $result;
  }
  RpcTransaction._() : super();
  factory RpcTransaction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpcTransaction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RpcTransaction', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'version', $pb.PbFieldType.OU3)
    ..pc<RpcTransactionInput>(2, _omitFieldNames ? '' : 'inputs', $pb.PbFieldType.PM, subBuilder: RpcTransactionInput.create)
    ..pc<RpcTransactionOutput>(3, _omitFieldNames ? '' : 'outputs', $pb.PbFieldType.PM, subBuilder: RpcTransactionOutput.create)
    ..a<$fixnum.Int64>(4, _omitFieldNames ? '' : 'lockTime', $pb.PbFieldType.OU6, protoName: 'lockTime', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(5, _omitFieldNames ? '' : 'subnetworkId', protoName: 'subnetworkId')
    ..a<$fixnum.Int64>(6, _omitFieldNames ? '' : 'gas', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(8, _omitFieldNames ? '' : 'payload')
    ..aOM<RpcTransactionVerboseData>(9, _omitFieldNames ? '' : 'verboseData', protoName: 'verboseData', subBuilder: RpcTransactionVerboseData.create)
    ..a<$fixnum.Int64>(10, _omitFieldNames ? '' : 'mass', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RpcTransaction clone() => RpcTransaction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RpcTransaction copyWith(void Function(RpcTransaction) updates) => super.copyWith((message) => updates(message as RpcTransaction)) as RpcTransaction;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RpcTransaction create() => RpcTransaction._();
  RpcTransaction createEmptyInstance() => create();
  static $pb.PbList<RpcTransaction> createRepeated() => $pb.PbList<RpcTransaction>();
  @$core.pragma('dart2js:noInline')
  static RpcTransaction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpcTransaction>(create);
  static RpcTransaction? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get version => $_getIZ(0);
  @$pb.TagNumber(1)
  set version($core.int v) { $_setUnsignedInt32(0, v); }
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
  set lockTime($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLockTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearLockTime() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get subnetworkId => $_getSZ(4);
  @$pb.TagNumber(5)
  set subnetworkId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSubnetworkId() => $_has(4);
  @$pb.TagNumber(5)
  void clearSubnetworkId() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get gas => $_getI64(5);
  @$pb.TagNumber(6)
  set gas($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasGas() => $_has(5);
  @$pb.TagNumber(6)
  void clearGas() => clearField(6);

  @$pb.TagNumber(8)
  $core.String get payload => $_getSZ(6);
  @$pb.TagNumber(8)
  set payload($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasPayload() => $_has(6);
  @$pb.TagNumber(8)
  void clearPayload() => clearField(8);

  @$pb.TagNumber(9)
  RpcTransactionVerboseData get verboseData => $_getN(7);
  @$pb.TagNumber(9)
  set verboseData(RpcTransactionVerboseData v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasVerboseData() => $_has(7);
  @$pb.TagNumber(9)
  void clearVerboseData() => clearField(9);
  @$pb.TagNumber(9)
  RpcTransactionVerboseData ensureVerboseData() => $_ensure(7);

  @$pb.TagNumber(10)
  $fixnum.Int64 get mass => $_getI64(8);
  @$pb.TagNumber(10)
  set mass($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasMass() => $_has(8);
  @$pb.TagNumber(10)
  void clearMass() => clearField(10);
}

class RpcTransactionInput extends $pb.GeneratedMessage {
  factory RpcTransactionInput({
    RpcOutpoint? previousOutpoint,
    $core.String? signatureScript,
    $fixnum.Int64? sequence,
    RpcTransactionInputVerboseData? verboseData,
    $core.int? sigOpCount,
  }) {
    final $result = create();
    if (previousOutpoint != null) {
      $result.previousOutpoint = previousOutpoint;
    }
    if (signatureScript != null) {
      $result.signatureScript = signatureScript;
    }
    if (sequence != null) {
      $result.sequence = sequence;
    }
    if (verboseData != null) {
      $result.verboseData = verboseData;
    }
    if (sigOpCount != null) {
      $result.sigOpCount = sigOpCount;
    }
    return $result;
  }
  RpcTransactionInput._() : super();
  factory RpcTransactionInput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpcTransactionInput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RpcTransactionInput', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOM<RpcOutpoint>(1, _omitFieldNames ? '' : 'previousOutpoint', protoName: 'previousOutpoint', subBuilder: RpcOutpoint.create)
    ..aOS(2, _omitFieldNames ? '' : 'signatureScript', protoName: 'signatureScript')
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'sequence', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<RpcTransactionInputVerboseData>(4, _omitFieldNames ? '' : 'verboseData', protoName: 'verboseData', subBuilder: RpcTransactionInputVerboseData.create)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'sigOpCount', $pb.PbFieldType.OU3, protoName: 'sigOpCount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RpcTransactionInput clone() => RpcTransactionInput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RpcTransactionInput copyWith(void Function(RpcTransactionInput) updates) => super.copyWith((message) => updates(message as RpcTransactionInput)) as RpcTransactionInput;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RpcTransactionInput create() => RpcTransactionInput._();
  RpcTransactionInput createEmptyInstance() => create();
  static $pb.PbList<RpcTransactionInput> createRepeated() => $pb.PbList<RpcTransactionInput>();
  @$core.pragma('dart2js:noInline')
  static RpcTransactionInput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpcTransactionInput>(create);
  static RpcTransactionInput? _defaultInstance;

  @$pb.TagNumber(1)
  RpcOutpoint get previousOutpoint => $_getN(0);
  @$pb.TagNumber(1)
  set previousOutpoint(RpcOutpoint v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPreviousOutpoint() => $_has(0);
  @$pb.TagNumber(1)
  void clearPreviousOutpoint() => clearField(1);
  @$pb.TagNumber(1)
  RpcOutpoint ensurePreviousOutpoint() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get signatureScript => $_getSZ(1);
  @$pb.TagNumber(2)
  set signatureScript($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSignatureScript() => $_has(1);
  @$pb.TagNumber(2)
  void clearSignatureScript() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get sequence => $_getI64(2);
  @$pb.TagNumber(3)
  set sequence($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSequence() => $_has(2);
  @$pb.TagNumber(3)
  void clearSequence() => clearField(3);

  @$pb.TagNumber(4)
  RpcTransactionInputVerboseData get verboseData => $_getN(3);
  @$pb.TagNumber(4)
  set verboseData(RpcTransactionInputVerboseData v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasVerboseData() => $_has(3);
  @$pb.TagNumber(4)
  void clearVerboseData() => clearField(4);
  @$pb.TagNumber(4)
  RpcTransactionInputVerboseData ensureVerboseData() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.int get sigOpCount => $_getIZ(4);
  @$pb.TagNumber(5)
  set sigOpCount($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSigOpCount() => $_has(4);
  @$pb.TagNumber(5)
  void clearSigOpCount() => clearField(5);
}

class RpcScriptPublicKey extends $pb.GeneratedMessage {
  factory RpcScriptPublicKey({
    $core.int? version,
    $core.String? scriptPublicKey,
  }) {
    final $result = create();
    if (version != null) {
      $result.version = version;
    }
    if (scriptPublicKey != null) {
      $result.scriptPublicKey = scriptPublicKey;
    }
    return $result;
  }
  RpcScriptPublicKey._() : super();
  factory RpcScriptPublicKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpcScriptPublicKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RpcScriptPublicKey', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'version', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'scriptPublicKey', protoName: 'scriptPublicKey')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RpcScriptPublicKey clone() => RpcScriptPublicKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RpcScriptPublicKey copyWith(void Function(RpcScriptPublicKey) updates) => super.copyWith((message) => updates(message as RpcScriptPublicKey)) as RpcScriptPublicKey;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RpcScriptPublicKey create() => RpcScriptPublicKey._();
  RpcScriptPublicKey createEmptyInstance() => create();
  static $pb.PbList<RpcScriptPublicKey> createRepeated() => $pb.PbList<RpcScriptPublicKey>();
  @$core.pragma('dart2js:noInline')
  static RpcScriptPublicKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpcScriptPublicKey>(create);
  static RpcScriptPublicKey? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get version => $_getIZ(0);
  @$pb.TagNumber(1)
  set version($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get scriptPublicKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set scriptPublicKey($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasScriptPublicKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearScriptPublicKey() => clearField(2);
}

class RpcTransactionOutput extends $pb.GeneratedMessage {
  factory RpcTransactionOutput({
    $fixnum.Int64? amount,
    RpcScriptPublicKey? scriptPublicKey,
    RpcTransactionOutputVerboseData? verboseData,
  }) {
    final $result = create();
    if (amount != null) {
      $result.amount = amount;
    }
    if (scriptPublicKey != null) {
      $result.scriptPublicKey = scriptPublicKey;
    }
    if (verboseData != null) {
      $result.verboseData = verboseData;
    }
    return $result;
  }
  RpcTransactionOutput._() : super();
  factory RpcTransactionOutput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpcTransactionOutput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RpcTransactionOutput', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'amount', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<RpcScriptPublicKey>(2, _omitFieldNames ? '' : 'scriptPublicKey', protoName: 'scriptPublicKey', subBuilder: RpcScriptPublicKey.create)
    ..aOM<RpcTransactionOutputVerboseData>(3, _omitFieldNames ? '' : 'verboseData', protoName: 'verboseData', subBuilder: RpcTransactionOutputVerboseData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RpcTransactionOutput clone() => RpcTransactionOutput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RpcTransactionOutput copyWith(void Function(RpcTransactionOutput) updates) => super.copyWith((message) => updates(message as RpcTransactionOutput)) as RpcTransactionOutput;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RpcTransactionOutput create() => RpcTransactionOutput._();
  RpcTransactionOutput createEmptyInstance() => create();
  static $pb.PbList<RpcTransactionOutput> createRepeated() => $pb.PbList<RpcTransactionOutput>();
  @$core.pragma('dart2js:noInline')
  static RpcTransactionOutput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpcTransactionOutput>(create);
  static RpcTransactionOutput? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get amount => $_getI64(0);
  @$pb.TagNumber(1)
  set amount($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAmount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAmount() => clearField(1);

  @$pb.TagNumber(2)
  RpcScriptPublicKey get scriptPublicKey => $_getN(1);
  @$pb.TagNumber(2)
  set scriptPublicKey(RpcScriptPublicKey v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasScriptPublicKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearScriptPublicKey() => clearField(2);
  @$pb.TagNumber(2)
  RpcScriptPublicKey ensureScriptPublicKey() => $_ensure(1);

  @$pb.TagNumber(3)
  RpcTransactionOutputVerboseData get verboseData => $_getN(2);
  @$pb.TagNumber(3)
  set verboseData(RpcTransactionOutputVerboseData v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasVerboseData() => $_has(2);
  @$pb.TagNumber(3)
  void clearVerboseData() => clearField(3);
  @$pb.TagNumber(3)
  RpcTransactionOutputVerboseData ensureVerboseData() => $_ensure(2);
}

class RpcOutpoint extends $pb.GeneratedMessage {
  factory RpcOutpoint({
    $core.String? transactionId,
    $core.int? index,
  }) {
    final $result = create();
    if (transactionId != null) {
      $result.transactionId = transactionId;
    }
    if (index != null) {
      $result.index = index;
    }
    return $result;
  }
  RpcOutpoint._() : super();
  factory RpcOutpoint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpcOutpoint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RpcOutpoint', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'transactionId', protoName: 'transactionId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'index', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RpcOutpoint clone() => RpcOutpoint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RpcOutpoint copyWith(void Function(RpcOutpoint) updates) => super.copyWith((message) => updates(message as RpcOutpoint)) as RpcOutpoint;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RpcOutpoint create() => RpcOutpoint._();
  RpcOutpoint createEmptyInstance() => create();
  static $pb.PbList<RpcOutpoint> createRepeated() => $pb.PbList<RpcOutpoint>();
  @$core.pragma('dart2js:noInline')
  static RpcOutpoint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpcOutpoint>(create);
  static RpcOutpoint? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get transactionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set transactionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTransactionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransactionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get index => $_getIZ(1);
  @$pb.TagNumber(2)
  set index($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearIndex() => clearField(2);
}

class RpcUtxoEntry extends $pb.GeneratedMessage {
  factory RpcUtxoEntry({
    $fixnum.Int64? amount,
    RpcScriptPublicKey? scriptPublicKey,
    $fixnum.Int64? blockDaaScore,
    $core.bool? isCoinbase,
  }) {
    final $result = create();
    if (amount != null) {
      $result.amount = amount;
    }
    if (scriptPublicKey != null) {
      $result.scriptPublicKey = scriptPublicKey;
    }
    if (blockDaaScore != null) {
      $result.blockDaaScore = blockDaaScore;
    }
    if (isCoinbase != null) {
      $result.isCoinbase = isCoinbase;
    }
    return $result;
  }
  RpcUtxoEntry._() : super();
  factory RpcUtxoEntry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpcUtxoEntry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RpcUtxoEntry', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'amount', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<RpcScriptPublicKey>(2, _omitFieldNames ? '' : 'scriptPublicKey', protoName: 'scriptPublicKey', subBuilder: RpcScriptPublicKey.create)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'blockDaaScore', $pb.PbFieldType.OU6, protoName: 'blockDaaScore', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(4, _omitFieldNames ? '' : 'isCoinbase', protoName: 'isCoinbase')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RpcUtxoEntry clone() => RpcUtxoEntry()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RpcUtxoEntry copyWith(void Function(RpcUtxoEntry) updates) => super.copyWith((message) => updates(message as RpcUtxoEntry)) as RpcUtxoEntry;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RpcUtxoEntry create() => RpcUtxoEntry._();
  RpcUtxoEntry createEmptyInstance() => create();
  static $pb.PbList<RpcUtxoEntry> createRepeated() => $pb.PbList<RpcUtxoEntry>();
  @$core.pragma('dart2js:noInline')
  static RpcUtxoEntry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpcUtxoEntry>(create);
  static RpcUtxoEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get amount => $_getI64(0);
  @$pb.TagNumber(1)
  set amount($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAmount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAmount() => clearField(1);

  @$pb.TagNumber(2)
  RpcScriptPublicKey get scriptPublicKey => $_getN(1);
  @$pb.TagNumber(2)
  set scriptPublicKey(RpcScriptPublicKey v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasScriptPublicKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearScriptPublicKey() => clearField(2);
  @$pb.TagNumber(2)
  RpcScriptPublicKey ensureScriptPublicKey() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get blockDaaScore => $_getI64(2);
  @$pb.TagNumber(3)
  set blockDaaScore($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBlockDaaScore() => $_has(2);
  @$pb.TagNumber(3)
  void clearBlockDaaScore() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isCoinbase => $_getBF(3);
  @$pb.TagNumber(4)
  set isCoinbase($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsCoinbase() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsCoinbase() => clearField(4);
}

class RpcTransactionVerboseData extends $pb.GeneratedMessage {
  factory RpcTransactionVerboseData({
    $core.String? transactionId,
    $core.String? hash,
    $fixnum.Int64? mass,
    $core.String? blockHash,
    $fixnum.Int64? blockTime,
  }) {
    final $result = create();
    if (transactionId != null) {
      $result.transactionId = transactionId;
    }
    if (hash != null) {
      $result.hash = hash;
    }
    if (mass != null) {
      $result.mass = mass;
    }
    if (blockHash != null) {
      $result.blockHash = blockHash;
    }
    if (blockTime != null) {
      $result.blockTime = blockTime;
    }
    return $result;
  }
  RpcTransactionVerboseData._() : super();
  factory RpcTransactionVerboseData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpcTransactionVerboseData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RpcTransactionVerboseData', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'transactionId', protoName: 'transactionId')
    ..aOS(2, _omitFieldNames ? '' : 'hash')
    ..a<$fixnum.Int64>(4, _omitFieldNames ? '' : 'mass', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(12, _omitFieldNames ? '' : 'blockHash', protoName: 'blockHash')
    ..a<$fixnum.Int64>(14, _omitFieldNames ? '' : 'blockTime', $pb.PbFieldType.OU6, protoName: 'blockTime', defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RpcTransactionVerboseData clone() => RpcTransactionVerboseData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RpcTransactionVerboseData copyWith(void Function(RpcTransactionVerboseData) updates) => super.copyWith((message) => updates(message as RpcTransactionVerboseData)) as RpcTransactionVerboseData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RpcTransactionVerboseData create() => RpcTransactionVerboseData._();
  RpcTransactionVerboseData createEmptyInstance() => create();
  static $pb.PbList<RpcTransactionVerboseData> createRepeated() => $pb.PbList<RpcTransactionVerboseData>();
  @$core.pragma('dart2js:noInline')
  static RpcTransactionVerboseData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpcTransactionVerboseData>(create);
  static RpcTransactionVerboseData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get transactionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set transactionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTransactionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransactionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get hash => $_getSZ(1);
  @$pb.TagNumber(2)
  set hash($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearHash() => clearField(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get mass => $_getI64(2);
  @$pb.TagNumber(4)
  set mass($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasMass() => $_has(2);
  @$pb.TagNumber(4)
  void clearMass() => clearField(4);

  @$pb.TagNumber(12)
  $core.String get blockHash => $_getSZ(3);
  @$pb.TagNumber(12)
  set blockHash($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(12)
  $core.bool hasBlockHash() => $_has(3);
  @$pb.TagNumber(12)
  void clearBlockHash() => clearField(12);

  @$pb.TagNumber(14)
  $fixnum.Int64 get blockTime => $_getI64(4);
  @$pb.TagNumber(14)
  set blockTime($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(14)
  $core.bool hasBlockTime() => $_has(4);
  @$pb.TagNumber(14)
  void clearBlockTime() => clearField(14);
}

class RpcTransactionInputVerboseData extends $pb.GeneratedMessage {
  factory RpcTransactionInputVerboseData() => create();
  RpcTransactionInputVerboseData._() : super();
  factory RpcTransactionInputVerboseData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpcTransactionInputVerboseData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RpcTransactionInputVerboseData', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RpcTransactionInputVerboseData clone() => RpcTransactionInputVerboseData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RpcTransactionInputVerboseData copyWith(void Function(RpcTransactionInputVerboseData) updates) => super.copyWith((message) => updates(message as RpcTransactionInputVerboseData)) as RpcTransactionInputVerboseData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RpcTransactionInputVerboseData create() => RpcTransactionInputVerboseData._();
  RpcTransactionInputVerboseData createEmptyInstance() => create();
  static $pb.PbList<RpcTransactionInputVerboseData> createRepeated() => $pb.PbList<RpcTransactionInputVerboseData>();
  @$core.pragma('dart2js:noInline')
  static RpcTransactionInputVerboseData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpcTransactionInputVerboseData>(create);
  static RpcTransactionInputVerboseData? _defaultInstance;
}

class RpcTransactionOutputVerboseData extends $pb.GeneratedMessage {
  factory RpcTransactionOutputVerboseData({
    $core.String? scriptPublicKeyType,
    $core.String? scriptPublicKeyAddress,
  }) {
    final $result = create();
    if (scriptPublicKeyType != null) {
      $result.scriptPublicKeyType = scriptPublicKeyType;
    }
    if (scriptPublicKeyAddress != null) {
      $result.scriptPublicKeyAddress = scriptPublicKeyAddress;
    }
    return $result;
  }
  RpcTransactionOutputVerboseData._() : super();
  factory RpcTransactionOutputVerboseData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpcTransactionOutputVerboseData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RpcTransactionOutputVerboseData', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOS(5, _omitFieldNames ? '' : 'scriptPublicKeyType', protoName: 'scriptPublicKeyType')
    ..aOS(6, _omitFieldNames ? '' : 'scriptPublicKeyAddress', protoName: 'scriptPublicKeyAddress')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RpcTransactionOutputVerboseData clone() => RpcTransactionOutputVerboseData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RpcTransactionOutputVerboseData copyWith(void Function(RpcTransactionOutputVerboseData) updates) => super.copyWith((message) => updates(message as RpcTransactionOutputVerboseData)) as RpcTransactionOutputVerboseData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RpcTransactionOutputVerboseData create() => RpcTransactionOutputVerboseData._();
  RpcTransactionOutputVerboseData createEmptyInstance() => create();
  static $pb.PbList<RpcTransactionOutputVerboseData> createRepeated() => $pb.PbList<RpcTransactionOutputVerboseData>();
  @$core.pragma('dart2js:noInline')
  static RpcTransactionOutputVerboseData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpcTransactionOutputVerboseData>(create);
  static RpcTransactionOutputVerboseData? _defaultInstance;

  @$pb.TagNumber(5)
  $core.String get scriptPublicKeyType => $_getSZ(0);
  @$pb.TagNumber(5)
  set scriptPublicKeyType($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(5)
  $core.bool hasScriptPublicKeyType() => $_has(0);
  @$pb.TagNumber(5)
  void clearScriptPublicKeyType() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get scriptPublicKeyAddress => $_getSZ(1);
  @$pb.TagNumber(6)
  set scriptPublicKeyAddress($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(6)
  $core.bool hasScriptPublicKeyAddress() => $_has(1);
  @$pb.TagNumber(6)
  void clearScriptPublicKeyAddress() => clearField(6);
}

///  GetCurrentNetworkRequestMessage requests the network kaspad is currently running against.
///
///  Possible networks are: Mainnet, Testnet, Simnet, Devnet
class GetCurrentNetworkRequestMessage extends $pb.GeneratedMessage {
  factory GetCurrentNetworkRequestMessage() => create();
  GetCurrentNetworkRequestMessage._() : super();
  factory GetCurrentNetworkRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCurrentNetworkRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetCurrentNetworkRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCurrentNetworkRequestMessage clone() => GetCurrentNetworkRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCurrentNetworkRequestMessage copyWith(void Function(GetCurrentNetworkRequestMessage) updates) => super.copyWith((message) => updates(message as GetCurrentNetworkRequestMessage)) as GetCurrentNetworkRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetCurrentNetworkRequestMessage create() => GetCurrentNetworkRequestMessage._();
  GetCurrentNetworkRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetCurrentNetworkRequestMessage> createRepeated() => $pb.PbList<GetCurrentNetworkRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetCurrentNetworkRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCurrentNetworkRequestMessage>(create);
  static GetCurrentNetworkRequestMessage? _defaultInstance;
}

class GetCurrentNetworkResponseMessage extends $pb.GeneratedMessage {
  factory GetCurrentNetworkResponseMessage({
    $core.String? currentNetwork,
    RPCError? error,
  }) {
    final $result = create();
    if (currentNetwork != null) {
      $result.currentNetwork = currentNetwork;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  GetCurrentNetworkResponseMessage._() : super();
  factory GetCurrentNetworkResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCurrentNetworkResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetCurrentNetworkResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'currentNetwork', protoName: 'currentNetwork')
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCurrentNetworkResponseMessage clone() => GetCurrentNetworkResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCurrentNetworkResponseMessage copyWith(void Function(GetCurrentNetworkResponseMessage) updates) => super.copyWith((message) => updates(message as GetCurrentNetworkResponseMessage)) as GetCurrentNetworkResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetCurrentNetworkResponseMessage create() => GetCurrentNetworkResponseMessage._();
  GetCurrentNetworkResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetCurrentNetworkResponseMessage> createRepeated() => $pb.PbList<GetCurrentNetworkResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetCurrentNetworkResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCurrentNetworkResponseMessage>(create);
  static GetCurrentNetworkResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get currentNetwork => $_getSZ(0);
  @$pb.TagNumber(1)
  set currentNetwork($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCurrentNetwork() => $_has(0);
  @$pb.TagNumber(1)
  void clearCurrentNetwork() => clearField(1);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(1);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(1);
}

///  SubmitBlockRequestMessage requests to submit a block into the DAG.
///  Blocks are generally expected to have been generated using the getBlockTemplate call.
///
///  See: GetBlockTemplateRequestMessage
class SubmitBlockRequestMessage extends $pb.GeneratedMessage {
  factory SubmitBlockRequestMessage({
    RpcBlock? block,
    $core.bool? allowNonDAABlocks,
  }) {
    final $result = create();
    if (block != null) {
      $result.block = block;
    }
    if (allowNonDAABlocks != null) {
      $result.allowNonDAABlocks = allowNonDAABlocks;
    }
    return $result;
  }
  SubmitBlockRequestMessage._() : super();
  factory SubmitBlockRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubmitBlockRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SubmitBlockRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOM<RpcBlock>(2, _omitFieldNames ? '' : 'block', subBuilder: RpcBlock.create)
    ..aOB(3, _omitFieldNames ? '' : 'allowNonDAABlocks', protoName: 'allowNonDAABlocks')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubmitBlockRequestMessage clone() => SubmitBlockRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubmitBlockRequestMessage copyWith(void Function(SubmitBlockRequestMessage) updates) => super.copyWith((message) => updates(message as SubmitBlockRequestMessage)) as SubmitBlockRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SubmitBlockRequestMessage create() => SubmitBlockRequestMessage._();
  SubmitBlockRequestMessage createEmptyInstance() => create();
  static $pb.PbList<SubmitBlockRequestMessage> createRepeated() => $pb.PbList<SubmitBlockRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static SubmitBlockRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubmitBlockRequestMessage>(create);
  static SubmitBlockRequestMessage? _defaultInstance;

  @$pb.TagNumber(2)
  RpcBlock get block => $_getN(0);
  @$pb.TagNumber(2)
  set block(RpcBlock v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasBlock() => $_has(0);
  @$pb.TagNumber(2)
  void clearBlock() => clearField(2);
  @$pb.TagNumber(2)
  RpcBlock ensureBlock() => $_ensure(0);

  @$pb.TagNumber(3)
  $core.bool get allowNonDAABlocks => $_getBF(1);
  @$pb.TagNumber(3)
  set allowNonDAABlocks($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasAllowNonDAABlocks() => $_has(1);
  @$pb.TagNumber(3)
  void clearAllowNonDAABlocks() => clearField(3);
}

class SubmitBlockResponseMessage extends $pb.GeneratedMessage {
  factory SubmitBlockResponseMessage({
    SubmitBlockResponseMessage_RejectReason? rejectReason,
    RPCError? error,
  }) {
    final $result = create();
    if (rejectReason != null) {
      $result.rejectReason = rejectReason;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  SubmitBlockResponseMessage._() : super();
  factory SubmitBlockResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubmitBlockResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SubmitBlockResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..e<SubmitBlockResponseMessage_RejectReason>(1, _omitFieldNames ? '' : 'rejectReason', $pb.PbFieldType.OE, protoName: 'rejectReason', defaultOrMaker: SubmitBlockResponseMessage_RejectReason.NONE, valueOf: SubmitBlockResponseMessage_RejectReason.valueOf, enumValues: SubmitBlockResponseMessage_RejectReason.values)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubmitBlockResponseMessage clone() => SubmitBlockResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubmitBlockResponseMessage copyWith(void Function(SubmitBlockResponseMessage) updates) => super.copyWith((message) => updates(message as SubmitBlockResponseMessage)) as SubmitBlockResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SubmitBlockResponseMessage create() => SubmitBlockResponseMessage._();
  SubmitBlockResponseMessage createEmptyInstance() => create();
  static $pb.PbList<SubmitBlockResponseMessage> createRepeated() => $pb.PbList<SubmitBlockResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static SubmitBlockResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubmitBlockResponseMessage>(create);
  static SubmitBlockResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  SubmitBlockResponseMessage_RejectReason get rejectReason => $_getN(0);
  @$pb.TagNumber(1)
  set rejectReason(SubmitBlockResponseMessage_RejectReason v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRejectReason() => $_has(0);
  @$pb.TagNumber(1)
  void clearRejectReason() => clearField(1);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(1);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(1);
}

///  GetBlockTemplateRequestMessage requests a current block template.
///  Callers are expected to solve the block template and submit it using the submitBlock call
///
///  See: SubmitBlockRequestMessage
class GetBlockTemplateRequestMessage extends $pb.GeneratedMessage {
  factory GetBlockTemplateRequestMessage({
    $core.String? payAddress,
    $core.String? extraData,
  }) {
    final $result = create();
    if (payAddress != null) {
      $result.payAddress = payAddress;
    }
    if (extraData != null) {
      $result.extraData = extraData;
    }
    return $result;
  }
  GetBlockTemplateRequestMessage._() : super();
  factory GetBlockTemplateRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBlockTemplateRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBlockTemplateRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'payAddress', protoName: 'payAddress')
    ..aOS(2, _omitFieldNames ? '' : 'extraData', protoName: 'extraData')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBlockTemplateRequestMessage clone() => GetBlockTemplateRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBlockTemplateRequestMessage copyWith(void Function(GetBlockTemplateRequestMessage) updates) => super.copyWith((message) => updates(message as GetBlockTemplateRequestMessage)) as GetBlockTemplateRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBlockTemplateRequestMessage create() => GetBlockTemplateRequestMessage._();
  GetBlockTemplateRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetBlockTemplateRequestMessage> createRepeated() => $pb.PbList<GetBlockTemplateRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetBlockTemplateRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBlockTemplateRequestMessage>(create);
  static GetBlockTemplateRequestMessage? _defaultInstance;

  /// Which kaspa address should the coinbase block reward transaction pay into
  @$pb.TagNumber(1)
  $core.String get payAddress => $_getSZ(0);
  @$pb.TagNumber(1)
  set payAddress($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get extraData => $_getSZ(1);
  @$pb.TagNumber(2)
  set extraData($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasExtraData() => $_has(1);
  @$pb.TagNumber(2)
  void clearExtraData() => clearField(2);
}

class GetBlockTemplateResponseMessage extends $pb.GeneratedMessage {
  factory GetBlockTemplateResponseMessage({
    $core.bool? isSynced,
    RpcBlock? block,
    RPCError? error,
  }) {
    final $result = create();
    if (isSynced != null) {
      $result.isSynced = isSynced;
    }
    if (block != null) {
      $result.block = block;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  GetBlockTemplateResponseMessage._() : super();
  factory GetBlockTemplateResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBlockTemplateResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBlockTemplateResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOB(2, _omitFieldNames ? '' : 'isSynced', protoName: 'isSynced')
    ..aOM<RpcBlock>(3, _omitFieldNames ? '' : 'block', subBuilder: RpcBlock.create)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBlockTemplateResponseMessage clone() => GetBlockTemplateResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBlockTemplateResponseMessage copyWith(void Function(GetBlockTemplateResponseMessage) updates) => super.copyWith((message) => updates(message as GetBlockTemplateResponseMessage)) as GetBlockTemplateResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBlockTemplateResponseMessage create() => GetBlockTemplateResponseMessage._();
  GetBlockTemplateResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetBlockTemplateResponseMessage> createRepeated() => $pb.PbList<GetBlockTemplateResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetBlockTemplateResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBlockTemplateResponseMessage>(create);
  static GetBlockTemplateResponseMessage? _defaultInstance;

  /// Whether kaspad thinks that it's synced.
  /// Callers are discouraged (but not forbidden) from solving blocks when kaspad is not synced.
  /// That is because when kaspad isn't in sync with the rest of the network there's a high
  /// chance the block will never be accepted, thus the solving effort would have been wasted.
  @$pb.TagNumber(2)
  $core.bool get isSynced => $_getBF(0);
  @$pb.TagNumber(2)
  set isSynced($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsSynced() => $_has(0);
  @$pb.TagNumber(2)
  void clearIsSynced() => clearField(2);

  @$pb.TagNumber(3)
  RpcBlock get block => $_getN(1);
  @$pb.TagNumber(3)
  set block(RpcBlock v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasBlock() => $_has(1);
  @$pb.TagNumber(3)
  void clearBlock() => clearField(3);
  @$pb.TagNumber(3)
  RpcBlock ensureBlock() => $_ensure(1);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(2);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(2);
}

///  NotifyBlockAddedRequestMessage registers this connection for blockAdded notifications.
///
///  See: BlockAddedNotificationMessage
class NotifyBlockAddedRequestMessage extends $pb.GeneratedMessage {
  factory NotifyBlockAddedRequestMessage({
    RpcNotifyCommand? command,
  }) {
    final $result = create();
    if (command != null) {
      $result.command = command;
    }
    return $result;
  }
  NotifyBlockAddedRequestMessage._() : super();
  factory NotifyBlockAddedRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NotifyBlockAddedRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NotifyBlockAddedRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..e<RpcNotifyCommand>(101, _omitFieldNames ? '' : 'command', $pb.PbFieldType.OE, defaultOrMaker: RpcNotifyCommand.NOTIFY_START, valueOf: RpcNotifyCommand.valueOf, enumValues: RpcNotifyCommand.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NotifyBlockAddedRequestMessage clone() => NotifyBlockAddedRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NotifyBlockAddedRequestMessage copyWith(void Function(NotifyBlockAddedRequestMessage) updates) => super.copyWith((message) => updates(message as NotifyBlockAddedRequestMessage)) as NotifyBlockAddedRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NotifyBlockAddedRequestMessage create() => NotifyBlockAddedRequestMessage._();
  NotifyBlockAddedRequestMessage createEmptyInstance() => create();
  static $pb.PbList<NotifyBlockAddedRequestMessage> createRepeated() => $pb.PbList<NotifyBlockAddedRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static NotifyBlockAddedRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NotifyBlockAddedRequestMessage>(create);
  static NotifyBlockAddedRequestMessage? _defaultInstance;

  @$pb.TagNumber(101)
  RpcNotifyCommand get command => $_getN(0);
  @$pb.TagNumber(101)
  set command(RpcNotifyCommand v) { setField(101, v); }
  @$pb.TagNumber(101)
  $core.bool hasCommand() => $_has(0);
  @$pb.TagNumber(101)
  void clearCommand() => clearField(101);
}

class NotifyBlockAddedResponseMessage extends $pb.GeneratedMessage {
  factory NotifyBlockAddedResponseMessage({
    RPCError? error,
  }) {
    final $result = create();
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  NotifyBlockAddedResponseMessage._() : super();
  factory NotifyBlockAddedResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NotifyBlockAddedResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NotifyBlockAddedResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NotifyBlockAddedResponseMessage clone() => NotifyBlockAddedResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NotifyBlockAddedResponseMessage copyWith(void Function(NotifyBlockAddedResponseMessage) updates) => super.copyWith((message) => updates(message as NotifyBlockAddedResponseMessage)) as NotifyBlockAddedResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NotifyBlockAddedResponseMessage create() => NotifyBlockAddedResponseMessage._();
  NotifyBlockAddedResponseMessage createEmptyInstance() => create();
  static $pb.PbList<NotifyBlockAddedResponseMessage> createRepeated() => $pb.PbList<NotifyBlockAddedResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static NotifyBlockAddedResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NotifyBlockAddedResponseMessage>(create);
  static NotifyBlockAddedResponseMessage? _defaultInstance;

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(0);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(0);
}

///  BlockAddedNotificationMessage is sent whenever a blocks has been added (NOT accepted)
///  into the DAG.
///
///  See: NotifyBlockAddedRequestMessage
class BlockAddedNotificationMessage extends $pb.GeneratedMessage {
  factory BlockAddedNotificationMessage({
    RpcBlock? block,
  }) {
    final $result = create();
    if (block != null) {
      $result.block = block;
    }
    return $result;
  }
  BlockAddedNotificationMessage._() : super();
  factory BlockAddedNotificationMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlockAddedNotificationMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BlockAddedNotificationMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOM<RpcBlock>(3, _omitFieldNames ? '' : 'block', subBuilder: RpcBlock.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BlockAddedNotificationMessage clone() => BlockAddedNotificationMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BlockAddedNotificationMessage copyWith(void Function(BlockAddedNotificationMessage) updates) => super.copyWith((message) => updates(message as BlockAddedNotificationMessage)) as BlockAddedNotificationMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BlockAddedNotificationMessage create() => BlockAddedNotificationMessage._();
  BlockAddedNotificationMessage createEmptyInstance() => create();
  static $pb.PbList<BlockAddedNotificationMessage> createRepeated() => $pb.PbList<BlockAddedNotificationMessage>();
  @$core.pragma('dart2js:noInline')
  static BlockAddedNotificationMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlockAddedNotificationMessage>(create);
  static BlockAddedNotificationMessage? _defaultInstance;

  @$pb.TagNumber(3)
  RpcBlock get block => $_getN(0);
  @$pb.TagNumber(3)
  set block(RpcBlock v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasBlock() => $_has(0);
  @$pb.TagNumber(3)
  void clearBlock() => clearField(3);
  @$pb.TagNumber(3)
  RpcBlock ensureBlock() => $_ensure(0);
}

/// GetPeerAddressesRequestMessage requests the list of known kaspad addresses in the
/// current network. (mainnet, testnet, etc.)
class GetPeerAddressesRequestMessage extends $pb.GeneratedMessage {
  factory GetPeerAddressesRequestMessage() => create();
  GetPeerAddressesRequestMessage._() : super();
  factory GetPeerAddressesRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPeerAddressesRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPeerAddressesRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPeerAddressesRequestMessage clone() => GetPeerAddressesRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPeerAddressesRequestMessage copyWith(void Function(GetPeerAddressesRequestMessage) updates) => super.copyWith((message) => updates(message as GetPeerAddressesRequestMessage)) as GetPeerAddressesRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPeerAddressesRequestMessage create() => GetPeerAddressesRequestMessage._();
  GetPeerAddressesRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetPeerAddressesRequestMessage> createRepeated() => $pb.PbList<GetPeerAddressesRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetPeerAddressesRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPeerAddressesRequestMessage>(create);
  static GetPeerAddressesRequestMessage? _defaultInstance;
}

class GetPeerAddressesResponseMessage extends $pb.GeneratedMessage {
  factory GetPeerAddressesResponseMessage({
    $core.Iterable<GetPeerAddressesKnownAddressMessage>? addresses,
    $core.Iterable<GetPeerAddressesKnownAddressMessage>? bannedAddresses,
    RPCError? error,
  }) {
    final $result = create();
    if (addresses != null) {
      $result.addresses.addAll(addresses);
    }
    if (bannedAddresses != null) {
      $result.bannedAddresses.addAll(bannedAddresses);
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  GetPeerAddressesResponseMessage._() : super();
  factory GetPeerAddressesResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPeerAddressesResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPeerAddressesResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..pc<GetPeerAddressesKnownAddressMessage>(1, _omitFieldNames ? '' : 'addresses', $pb.PbFieldType.PM, subBuilder: GetPeerAddressesKnownAddressMessage.create)
    ..pc<GetPeerAddressesKnownAddressMessage>(2, _omitFieldNames ? '' : 'bannedAddresses', $pb.PbFieldType.PM, protoName: 'bannedAddresses', subBuilder: GetPeerAddressesKnownAddressMessage.create)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPeerAddressesResponseMessage clone() => GetPeerAddressesResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPeerAddressesResponseMessage copyWith(void Function(GetPeerAddressesResponseMessage) updates) => super.copyWith((message) => updates(message as GetPeerAddressesResponseMessage)) as GetPeerAddressesResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPeerAddressesResponseMessage create() => GetPeerAddressesResponseMessage._();
  GetPeerAddressesResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetPeerAddressesResponseMessage> createRepeated() => $pb.PbList<GetPeerAddressesResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetPeerAddressesResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPeerAddressesResponseMessage>(create);
  static GetPeerAddressesResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetPeerAddressesKnownAddressMessage> get addresses => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<GetPeerAddressesKnownAddressMessage> get bannedAddresses => $_getList(1);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(2);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(2);
}

class GetPeerAddressesKnownAddressMessage extends $pb.GeneratedMessage {
  factory GetPeerAddressesKnownAddressMessage({
    $core.String? addr,
  }) {
    final $result = create();
    if (addr != null) {
      $result.addr = addr;
    }
    return $result;
  }
  GetPeerAddressesKnownAddressMessage._() : super();
  factory GetPeerAddressesKnownAddressMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPeerAddressesKnownAddressMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPeerAddressesKnownAddressMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'Addr', protoName: 'Addr')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPeerAddressesKnownAddressMessage clone() => GetPeerAddressesKnownAddressMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPeerAddressesKnownAddressMessage copyWith(void Function(GetPeerAddressesKnownAddressMessage) updates) => super.copyWith((message) => updates(message as GetPeerAddressesKnownAddressMessage)) as GetPeerAddressesKnownAddressMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPeerAddressesKnownAddressMessage create() => GetPeerAddressesKnownAddressMessage._();
  GetPeerAddressesKnownAddressMessage createEmptyInstance() => create();
  static $pb.PbList<GetPeerAddressesKnownAddressMessage> createRepeated() => $pb.PbList<GetPeerAddressesKnownAddressMessage>();
  @$core.pragma('dart2js:noInline')
  static GetPeerAddressesKnownAddressMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPeerAddressesKnownAddressMessage>(create);
  static GetPeerAddressesKnownAddressMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get addr => $_getSZ(0);
  @$pb.TagNumber(1)
  set addr($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddr() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddr() => clearField(1);
}

/// GetSinkRequestMessage requests the hash of the current virtual's
/// selected parent.
class GetSinkRequestMessage extends $pb.GeneratedMessage {
  factory GetSinkRequestMessage() => create();
  GetSinkRequestMessage._() : super();
  factory GetSinkRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSinkRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSinkRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSinkRequestMessage clone() => GetSinkRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSinkRequestMessage copyWith(void Function(GetSinkRequestMessage) updates) => super.copyWith((message) => updates(message as GetSinkRequestMessage)) as GetSinkRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSinkRequestMessage create() => GetSinkRequestMessage._();
  GetSinkRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetSinkRequestMessage> createRepeated() => $pb.PbList<GetSinkRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetSinkRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSinkRequestMessage>(create);
  static GetSinkRequestMessage? _defaultInstance;
}

class GetSinkResponseMessage extends $pb.GeneratedMessage {
  factory GetSinkResponseMessage({
    $core.String? sink,
    RPCError? error,
  }) {
    final $result = create();
    if (sink != null) {
      $result.sink = sink;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  GetSinkResponseMessage._() : super();
  factory GetSinkResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSinkResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSinkResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sink')
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSinkResponseMessage clone() => GetSinkResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSinkResponseMessage copyWith(void Function(GetSinkResponseMessage) updates) => super.copyWith((message) => updates(message as GetSinkResponseMessage)) as GetSinkResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSinkResponseMessage create() => GetSinkResponseMessage._();
  GetSinkResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetSinkResponseMessage> createRepeated() => $pb.PbList<GetSinkResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetSinkResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSinkResponseMessage>(create);
  static GetSinkResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sink => $_getSZ(0);
  @$pb.TagNumber(1)
  set sink($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSink() => $_has(0);
  @$pb.TagNumber(1)
  void clearSink() => clearField(1);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(1);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(1);
}

/// GetMempoolEntryRequestMessage requests information about a specific transaction
/// in the mempool.
class GetMempoolEntryRequestMessage extends $pb.GeneratedMessage {
  factory GetMempoolEntryRequestMessage({
    $core.String? txId,
    $core.bool? includeOrphanPool,
    $core.bool? filterTransactionPool,
  }) {
    final $result = create();
    if (txId != null) {
      $result.txId = txId;
    }
    if (includeOrphanPool != null) {
      $result.includeOrphanPool = includeOrphanPool;
    }
    if (filterTransactionPool != null) {
      $result.filterTransactionPool = filterTransactionPool;
    }
    return $result;
  }
  GetMempoolEntryRequestMessage._() : super();
  factory GetMempoolEntryRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMempoolEntryRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetMempoolEntryRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'txId', protoName: 'txId')
    ..aOB(2, _omitFieldNames ? '' : 'includeOrphanPool', protoName: 'includeOrphanPool')
    ..aOB(3, _omitFieldNames ? '' : 'filterTransactionPool', protoName: 'filterTransactionPool')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMempoolEntryRequestMessage clone() => GetMempoolEntryRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMempoolEntryRequestMessage copyWith(void Function(GetMempoolEntryRequestMessage) updates) => super.copyWith((message) => updates(message as GetMempoolEntryRequestMessage)) as GetMempoolEntryRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMempoolEntryRequestMessage create() => GetMempoolEntryRequestMessage._();
  GetMempoolEntryRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetMempoolEntryRequestMessage> createRepeated() => $pb.PbList<GetMempoolEntryRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetMempoolEntryRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMempoolEntryRequestMessage>(create);
  static GetMempoolEntryRequestMessage? _defaultInstance;

  /// The transaction's TransactionID.
  @$pb.TagNumber(1)
  $core.String get txId => $_getSZ(0);
  @$pb.TagNumber(1)
  set txId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTxId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTxId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get includeOrphanPool => $_getBF(1);
  @$pb.TagNumber(2)
  set includeOrphanPool($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIncludeOrphanPool() => $_has(1);
  @$pb.TagNumber(2)
  void clearIncludeOrphanPool() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get filterTransactionPool => $_getBF(2);
  @$pb.TagNumber(3)
  set filterTransactionPool($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFilterTransactionPool() => $_has(2);
  @$pb.TagNumber(3)
  void clearFilterTransactionPool() => clearField(3);
}

class GetMempoolEntryResponseMessage extends $pb.GeneratedMessage {
  factory GetMempoolEntryResponseMessage({
    RpcMempoolEntry? entry,
    RPCError? error,
  }) {
    final $result = create();
    if (entry != null) {
      $result.entry = entry;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  GetMempoolEntryResponseMessage._() : super();
  factory GetMempoolEntryResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMempoolEntryResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetMempoolEntryResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOM<RpcMempoolEntry>(1, _omitFieldNames ? '' : 'entry', subBuilder: RpcMempoolEntry.create)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMempoolEntryResponseMessage clone() => GetMempoolEntryResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMempoolEntryResponseMessage copyWith(void Function(GetMempoolEntryResponseMessage) updates) => super.copyWith((message) => updates(message as GetMempoolEntryResponseMessage)) as GetMempoolEntryResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMempoolEntryResponseMessage create() => GetMempoolEntryResponseMessage._();
  GetMempoolEntryResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetMempoolEntryResponseMessage> createRepeated() => $pb.PbList<GetMempoolEntryResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetMempoolEntryResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMempoolEntryResponseMessage>(create);
  static GetMempoolEntryResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  RpcMempoolEntry get entry => $_getN(0);
  @$pb.TagNumber(1)
  set entry(RpcMempoolEntry v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEntry() => $_has(0);
  @$pb.TagNumber(1)
  void clearEntry() => clearField(1);
  @$pb.TagNumber(1)
  RpcMempoolEntry ensureEntry() => $_ensure(0);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(1);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(1);
}

/// GetMempoolEntriesRequestMessage requests information about all the transactions
/// currently in the mempool.
class GetMempoolEntriesRequestMessage extends $pb.GeneratedMessage {
  factory GetMempoolEntriesRequestMessage({
    $core.bool? includeOrphanPool,
    $core.bool? filterTransactionPool,
  }) {
    final $result = create();
    if (includeOrphanPool != null) {
      $result.includeOrphanPool = includeOrphanPool;
    }
    if (filterTransactionPool != null) {
      $result.filterTransactionPool = filterTransactionPool;
    }
    return $result;
  }
  GetMempoolEntriesRequestMessage._() : super();
  factory GetMempoolEntriesRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMempoolEntriesRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetMempoolEntriesRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'includeOrphanPool', protoName: 'includeOrphanPool')
    ..aOB(2, _omitFieldNames ? '' : 'filterTransactionPool', protoName: 'filterTransactionPool')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMempoolEntriesRequestMessage clone() => GetMempoolEntriesRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMempoolEntriesRequestMessage copyWith(void Function(GetMempoolEntriesRequestMessage) updates) => super.copyWith((message) => updates(message as GetMempoolEntriesRequestMessage)) as GetMempoolEntriesRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMempoolEntriesRequestMessage create() => GetMempoolEntriesRequestMessage._();
  GetMempoolEntriesRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetMempoolEntriesRequestMessage> createRepeated() => $pb.PbList<GetMempoolEntriesRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetMempoolEntriesRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMempoolEntriesRequestMessage>(create);
  static GetMempoolEntriesRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get includeOrphanPool => $_getBF(0);
  @$pb.TagNumber(1)
  set includeOrphanPool($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIncludeOrphanPool() => $_has(0);
  @$pb.TagNumber(1)
  void clearIncludeOrphanPool() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get filterTransactionPool => $_getBF(1);
  @$pb.TagNumber(2)
  set filterTransactionPool($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFilterTransactionPool() => $_has(1);
  @$pb.TagNumber(2)
  void clearFilterTransactionPool() => clearField(2);
}

class GetMempoolEntriesResponseMessage extends $pb.GeneratedMessage {
  factory GetMempoolEntriesResponseMessage({
    $core.Iterable<RpcMempoolEntry>? entries,
    RPCError? error,
  }) {
    final $result = create();
    if (entries != null) {
      $result.entries.addAll(entries);
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  GetMempoolEntriesResponseMessage._() : super();
  factory GetMempoolEntriesResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMempoolEntriesResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetMempoolEntriesResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..pc<RpcMempoolEntry>(1, _omitFieldNames ? '' : 'entries', $pb.PbFieldType.PM, subBuilder: RpcMempoolEntry.create)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMempoolEntriesResponseMessage clone() => GetMempoolEntriesResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMempoolEntriesResponseMessage copyWith(void Function(GetMempoolEntriesResponseMessage) updates) => super.copyWith((message) => updates(message as GetMempoolEntriesResponseMessage)) as GetMempoolEntriesResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMempoolEntriesResponseMessage create() => GetMempoolEntriesResponseMessage._();
  GetMempoolEntriesResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetMempoolEntriesResponseMessage> createRepeated() => $pb.PbList<GetMempoolEntriesResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetMempoolEntriesResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMempoolEntriesResponseMessage>(create);
  static GetMempoolEntriesResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RpcMempoolEntry> get entries => $_getList(0);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(1);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(1);
}

class RpcMempoolEntry extends $pb.GeneratedMessage {
  factory RpcMempoolEntry({
    $fixnum.Int64? fee,
    RpcTransaction? transaction,
    $core.bool? isOrphan,
  }) {
    final $result = create();
    if (fee != null) {
      $result.fee = fee;
    }
    if (transaction != null) {
      $result.transaction = transaction;
    }
    if (isOrphan != null) {
      $result.isOrphan = isOrphan;
    }
    return $result;
  }
  RpcMempoolEntry._() : super();
  factory RpcMempoolEntry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpcMempoolEntry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RpcMempoolEntry', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'fee', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<RpcTransaction>(3, _omitFieldNames ? '' : 'transaction', subBuilder: RpcTransaction.create)
    ..aOB(4, _omitFieldNames ? '' : 'isOrphan', protoName: 'isOrphan')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RpcMempoolEntry clone() => RpcMempoolEntry()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RpcMempoolEntry copyWith(void Function(RpcMempoolEntry) updates) => super.copyWith((message) => updates(message as RpcMempoolEntry)) as RpcMempoolEntry;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RpcMempoolEntry create() => RpcMempoolEntry._();
  RpcMempoolEntry createEmptyInstance() => create();
  static $pb.PbList<RpcMempoolEntry> createRepeated() => $pb.PbList<RpcMempoolEntry>();
  @$core.pragma('dart2js:noInline')
  static RpcMempoolEntry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpcMempoolEntry>(create);
  static RpcMempoolEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get fee => $_getI64(0);
  @$pb.TagNumber(1)
  set fee($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFee() => $_has(0);
  @$pb.TagNumber(1)
  void clearFee() => clearField(1);

  @$pb.TagNumber(3)
  RpcTransaction get transaction => $_getN(1);
  @$pb.TagNumber(3)
  set transaction(RpcTransaction v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTransaction() => $_has(1);
  @$pb.TagNumber(3)
  void clearTransaction() => clearField(3);
  @$pb.TagNumber(3)
  RpcTransaction ensureTransaction() => $_ensure(1);

  @$pb.TagNumber(4)
  $core.bool get isOrphan => $_getBF(2);
  @$pb.TagNumber(4)
  set isOrphan($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsOrphan() => $_has(2);
  @$pb.TagNumber(4)
  void clearIsOrphan() => clearField(4);
}

/// GetConnectedPeerInfoRequestMessage requests information about all the p2p peers
/// currently connected to this kaspad.
class GetConnectedPeerInfoRequestMessage extends $pb.GeneratedMessage {
  factory GetConnectedPeerInfoRequestMessage() => create();
  GetConnectedPeerInfoRequestMessage._() : super();
  factory GetConnectedPeerInfoRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetConnectedPeerInfoRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetConnectedPeerInfoRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetConnectedPeerInfoRequestMessage clone() => GetConnectedPeerInfoRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetConnectedPeerInfoRequestMessage copyWith(void Function(GetConnectedPeerInfoRequestMessage) updates) => super.copyWith((message) => updates(message as GetConnectedPeerInfoRequestMessage)) as GetConnectedPeerInfoRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetConnectedPeerInfoRequestMessage create() => GetConnectedPeerInfoRequestMessage._();
  GetConnectedPeerInfoRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetConnectedPeerInfoRequestMessage> createRepeated() => $pb.PbList<GetConnectedPeerInfoRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetConnectedPeerInfoRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetConnectedPeerInfoRequestMessage>(create);
  static GetConnectedPeerInfoRequestMessage? _defaultInstance;
}

class GetConnectedPeerInfoResponseMessage extends $pb.GeneratedMessage {
  factory GetConnectedPeerInfoResponseMessage({
    $core.Iterable<GetConnectedPeerInfoMessage>? infos,
    RPCError? error,
  }) {
    final $result = create();
    if (infos != null) {
      $result.infos.addAll(infos);
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  GetConnectedPeerInfoResponseMessage._() : super();
  factory GetConnectedPeerInfoResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetConnectedPeerInfoResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetConnectedPeerInfoResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..pc<GetConnectedPeerInfoMessage>(1, _omitFieldNames ? '' : 'infos', $pb.PbFieldType.PM, subBuilder: GetConnectedPeerInfoMessage.create)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetConnectedPeerInfoResponseMessage clone() => GetConnectedPeerInfoResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetConnectedPeerInfoResponseMessage copyWith(void Function(GetConnectedPeerInfoResponseMessage) updates) => super.copyWith((message) => updates(message as GetConnectedPeerInfoResponseMessage)) as GetConnectedPeerInfoResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetConnectedPeerInfoResponseMessage create() => GetConnectedPeerInfoResponseMessage._();
  GetConnectedPeerInfoResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetConnectedPeerInfoResponseMessage> createRepeated() => $pb.PbList<GetConnectedPeerInfoResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetConnectedPeerInfoResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetConnectedPeerInfoResponseMessage>(create);
  static GetConnectedPeerInfoResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetConnectedPeerInfoMessage> get infos => $_getList(0);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(1);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(1);
}

class GetConnectedPeerInfoMessage extends $pb.GeneratedMessage {
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
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (address != null) {
      $result.address = address;
    }
    if (lastPingDuration != null) {
      $result.lastPingDuration = lastPingDuration;
    }
    if (isOutbound != null) {
      $result.isOutbound = isOutbound;
    }
    if (timeOffset != null) {
      $result.timeOffset = timeOffset;
    }
    if (userAgent != null) {
      $result.userAgent = userAgent;
    }
    if (advertisedProtocolVersion != null) {
      $result.advertisedProtocolVersion = advertisedProtocolVersion;
    }
    if (timeConnected != null) {
      $result.timeConnected = timeConnected;
    }
    if (isIbdPeer != null) {
      $result.isIbdPeer = isIbdPeer;
    }
    return $result;
  }
  GetConnectedPeerInfoMessage._() : super();
  factory GetConnectedPeerInfoMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetConnectedPeerInfoMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetConnectedPeerInfoMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'address')
    ..aInt64(3, _omitFieldNames ? '' : 'lastPingDuration', protoName: 'lastPingDuration')
    ..aOB(6, _omitFieldNames ? '' : 'isOutbound', protoName: 'isOutbound')
    ..aInt64(7, _omitFieldNames ? '' : 'timeOffset', protoName: 'timeOffset')
    ..aOS(8, _omitFieldNames ? '' : 'userAgent', protoName: 'userAgent')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'advertisedProtocolVersion', $pb.PbFieldType.OU3, protoName: 'advertisedProtocolVersion')
    ..aInt64(10, _omitFieldNames ? '' : 'timeConnected', protoName: 'timeConnected')
    ..aOB(11, _omitFieldNames ? '' : 'isIbdPeer', protoName: 'isIbdPeer')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetConnectedPeerInfoMessage clone() => GetConnectedPeerInfoMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetConnectedPeerInfoMessage copyWith(void Function(GetConnectedPeerInfoMessage) updates) => super.copyWith((message) => updates(message as GetConnectedPeerInfoMessage)) as GetConnectedPeerInfoMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetConnectedPeerInfoMessage create() => GetConnectedPeerInfoMessage._();
  GetConnectedPeerInfoMessage createEmptyInstance() => create();
  static $pb.PbList<GetConnectedPeerInfoMessage> createRepeated() => $pb.PbList<GetConnectedPeerInfoMessage>();
  @$core.pragma('dart2js:noInline')
  static GetConnectedPeerInfoMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetConnectedPeerInfoMessage>(create);
  static GetConnectedPeerInfoMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get address => $_getSZ(1);
  @$pb.TagNumber(2)
  set address($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddress() => clearField(2);

  /// How long did the last ping/pong exchange take
  @$pb.TagNumber(3)
  $fixnum.Int64 get lastPingDuration => $_getI64(2);
  @$pb.TagNumber(3)
  set lastPingDuration($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastPingDuration() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastPingDuration() => clearField(3);

  /// Whether this kaspad initiated the connection
  @$pb.TagNumber(6)
  $core.bool get isOutbound => $_getBF(3);
  @$pb.TagNumber(6)
  set isOutbound($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(6)
  $core.bool hasIsOutbound() => $_has(3);
  @$pb.TagNumber(6)
  void clearIsOutbound() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get timeOffset => $_getI64(4);
  @$pb.TagNumber(7)
  set timeOffset($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(7)
  $core.bool hasTimeOffset() => $_has(4);
  @$pb.TagNumber(7)
  void clearTimeOffset() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get userAgent => $_getSZ(5);
  @$pb.TagNumber(8)
  set userAgent($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(8)
  $core.bool hasUserAgent() => $_has(5);
  @$pb.TagNumber(8)
  void clearUserAgent() => clearField(8);

  /// The protocol version that this peer claims to support
  @$pb.TagNumber(9)
  $core.int get advertisedProtocolVersion => $_getIZ(6);
  @$pb.TagNumber(9)
  set advertisedProtocolVersion($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(9)
  $core.bool hasAdvertisedProtocolVersion() => $_has(6);
  @$pb.TagNumber(9)
  void clearAdvertisedProtocolVersion() => clearField(9);

  /// The timestamp of when this peer connected to this kaspad
  @$pb.TagNumber(10)
  $fixnum.Int64 get timeConnected => $_getI64(7);
  @$pb.TagNumber(10)
  set timeConnected($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(10)
  $core.bool hasTimeConnected() => $_has(7);
  @$pb.TagNumber(10)
  void clearTimeConnected() => clearField(10);

  /// Whether this peer is the IBD peer (if IBD is running)
  @$pb.TagNumber(11)
  $core.bool get isIbdPeer => $_getBF(8);
  @$pb.TagNumber(11)
  set isIbdPeer($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(11)
  $core.bool hasIsIbdPeer() => $_has(8);
  @$pb.TagNumber(11)
  void clearIsIbdPeer() => clearField(11);
}

/// AddPeerRequestMessage adds a peer to kaspad's outgoing connection list.
/// This will, in most cases, result in kaspad connecting to said peer.
class AddPeerRequestMessage extends $pb.GeneratedMessage {
  factory AddPeerRequestMessage({
    $core.String? address,
    $core.bool? isPermanent,
  }) {
    final $result = create();
    if (address != null) {
      $result.address = address;
    }
    if (isPermanent != null) {
      $result.isPermanent = isPermanent;
    }
    return $result;
  }
  AddPeerRequestMessage._() : super();
  factory AddPeerRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddPeerRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddPeerRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'address')
    ..aOB(2, _omitFieldNames ? '' : 'isPermanent', protoName: 'isPermanent')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddPeerRequestMessage clone() => AddPeerRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddPeerRequestMessage copyWith(void Function(AddPeerRequestMessage) updates) => super.copyWith((message) => updates(message as AddPeerRequestMessage)) as AddPeerRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddPeerRequestMessage create() => AddPeerRequestMessage._();
  AddPeerRequestMessage createEmptyInstance() => create();
  static $pb.PbList<AddPeerRequestMessage> createRepeated() => $pb.PbList<AddPeerRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static AddPeerRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddPeerRequestMessage>(create);
  static AddPeerRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  /// Whether to keep attempting to connect to this peer after disconnection
  @$pb.TagNumber(2)
  $core.bool get isPermanent => $_getBF(1);
  @$pb.TagNumber(2)
  set isPermanent($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsPermanent() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsPermanent() => clearField(2);
}

class AddPeerResponseMessage extends $pb.GeneratedMessage {
  factory AddPeerResponseMessage({
    RPCError? error,
  }) {
    final $result = create();
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  AddPeerResponseMessage._() : super();
  factory AddPeerResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddPeerResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddPeerResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddPeerResponseMessage clone() => AddPeerResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddPeerResponseMessage copyWith(void Function(AddPeerResponseMessage) updates) => super.copyWith((message) => updates(message as AddPeerResponseMessage)) as AddPeerResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddPeerResponseMessage create() => AddPeerResponseMessage._();
  AddPeerResponseMessage createEmptyInstance() => create();
  static $pb.PbList<AddPeerResponseMessage> createRepeated() => $pb.PbList<AddPeerResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static AddPeerResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddPeerResponseMessage>(create);
  static AddPeerResponseMessage? _defaultInstance;

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(0);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(0);
}

/// SubmitTransactionRequestMessage submits a transaction to the mempool
class SubmitTransactionRequestMessage extends $pb.GeneratedMessage {
  factory SubmitTransactionRequestMessage({
    RpcTransaction? transaction,
    $core.bool? allowOrphan,
  }) {
    final $result = create();
    if (transaction != null) {
      $result.transaction = transaction;
    }
    if (allowOrphan != null) {
      $result.allowOrphan = allowOrphan;
    }
    return $result;
  }
  SubmitTransactionRequestMessage._() : super();
  factory SubmitTransactionRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubmitTransactionRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SubmitTransactionRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOM<RpcTransaction>(1, _omitFieldNames ? '' : 'transaction', subBuilder: RpcTransaction.create)
    ..aOB(2, _omitFieldNames ? '' : 'allowOrphan', protoName: 'allowOrphan')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubmitTransactionRequestMessage clone() => SubmitTransactionRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubmitTransactionRequestMessage copyWith(void Function(SubmitTransactionRequestMessage) updates) => super.copyWith((message) => updates(message as SubmitTransactionRequestMessage)) as SubmitTransactionRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SubmitTransactionRequestMessage create() => SubmitTransactionRequestMessage._();
  SubmitTransactionRequestMessage createEmptyInstance() => create();
  static $pb.PbList<SubmitTransactionRequestMessage> createRepeated() => $pb.PbList<SubmitTransactionRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static SubmitTransactionRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubmitTransactionRequestMessage>(create);
  static SubmitTransactionRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  RpcTransaction get transaction => $_getN(0);
  @$pb.TagNumber(1)
  set transaction(RpcTransaction v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTransaction() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransaction() => clearField(1);
  @$pb.TagNumber(1)
  RpcTransaction ensureTransaction() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get allowOrphan => $_getBF(1);
  @$pb.TagNumber(2)
  set allowOrphan($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAllowOrphan() => $_has(1);
  @$pb.TagNumber(2)
  void clearAllowOrphan() => clearField(2);
}

class SubmitTransactionResponseMessage extends $pb.GeneratedMessage {
  factory SubmitTransactionResponseMessage({
    $core.String? transactionId,
    RPCError? error,
  }) {
    final $result = create();
    if (transactionId != null) {
      $result.transactionId = transactionId;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  SubmitTransactionResponseMessage._() : super();
  factory SubmitTransactionResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubmitTransactionResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SubmitTransactionResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'transactionId', protoName: 'transactionId')
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubmitTransactionResponseMessage clone() => SubmitTransactionResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubmitTransactionResponseMessage copyWith(void Function(SubmitTransactionResponseMessage) updates) => super.copyWith((message) => updates(message as SubmitTransactionResponseMessage)) as SubmitTransactionResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SubmitTransactionResponseMessage create() => SubmitTransactionResponseMessage._();
  SubmitTransactionResponseMessage createEmptyInstance() => create();
  static $pb.PbList<SubmitTransactionResponseMessage> createRepeated() => $pb.PbList<SubmitTransactionResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static SubmitTransactionResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubmitTransactionResponseMessage>(create);
  static SubmitTransactionResponseMessage? _defaultInstance;

  /// The transaction ID of the submitted transaction
  @$pb.TagNumber(1)
  $core.String get transactionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set transactionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTransactionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransactionId() => clearField(1);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(1);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(1);
}

/// SubmitTransactionReplacementRequestMessage submits a transaction to the mempool, applying a mandatory Replace by Fee policy
class SubmitTransactionReplacementRequestMessage extends $pb.GeneratedMessage {
  factory SubmitTransactionReplacementRequestMessage({
    RpcTransaction? transaction,
  }) {
    final $result = create();
    if (transaction != null) {
      $result.transaction = transaction;
    }
    return $result;
  }
  SubmitTransactionReplacementRequestMessage._() : super();
  factory SubmitTransactionReplacementRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubmitTransactionReplacementRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SubmitTransactionReplacementRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOM<RpcTransaction>(1, _omitFieldNames ? '' : 'transaction', subBuilder: RpcTransaction.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubmitTransactionReplacementRequestMessage clone() => SubmitTransactionReplacementRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubmitTransactionReplacementRequestMessage copyWith(void Function(SubmitTransactionReplacementRequestMessage) updates) => super.copyWith((message) => updates(message as SubmitTransactionReplacementRequestMessage)) as SubmitTransactionReplacementRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SubmitTransactionReplacementRequestMessage create() => SubmitTransactionReplacementRequestMessage._();
  SubmitTransactionReplacementRequestMessage createEmptyInstance() => create();
  static $pb.PbList<SubmitTransactionReplacementRequestMessage> createRepeated() => $pb.PbList<SubmitTransactionReplacementRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static SubmitTransactionReplacementRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubmitTransactionReplacementRequestMessage>(create);
  static SubmitTransactionReplacementRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  RpcTransaction get transaction => $_getN(0);
  @$pb.TagNumber(1)
  set transaction(RpcTransaction v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTransaction() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransaction() => clearField(1);
  @$pb.TagNumber(1)
  RpcTransaction ensureTransaction() => $_ensure(0);
}

class SubmitTransactionReplacementResponseMessage extends $pb.GeneratedMessage {
  factory SubmitTransactionReplacementResponseMessage({
    $core.String? transactionId,
    RpcTransaction? replacedTransaction,
    RPCError? error,
  }) {
    final $result = create();
    if (transactionId != null) {
      $result.transactionId = transactionId;
    }
    if (replacedTransaction != null) {
      $result.replacedTransaction = replacedTransaction;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  SubmitTransactionReplacementResponseMessage._() : super();
  factory SubmitTransactionReplacementResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubmitTransactionReplacementResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SubmitTransactionReplacementResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'transactionId', protoName: 'transactionId')
    ..aOM<RpcTransaction>(2, _omitFieldNames ? '' : 'replacedTransaction', protoName: 'replacedTransaction', subBuilder: RpcTransaction.create)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubmitTransactionReplacementResponseMessage clone() => SubmitTransactionReplacementResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubmitTransactionReplacementResponseMessage copyWith(void Function(SubmitTransactionReplacementResponseMessage) updates) => super.copyWith((message) => updates(message as SubmitTransactionReplacementResponseMessage)) as SubmitTransactionReplacementResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SubmitTransactionReplacementResponseMessage create() => SubmitTransactionReplacementResponseMessage._();
  SubmitTransactionReplacementResponseMessage createEmptyInstance() => create();
  static $pb.PbList<SubmitTransactionReplacementResponseMessage> createRepeated() => $pb.PbList<SubmitTransactionReplacementResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static SubmitTransactionReplacementResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubmitTransactionReplacementResponseMessage>(create);
  static SubmitTransactionReplacementResponseMessage? _defaultInstance;

  /// The transaction ID of the submitted transaction
  @$pb.TagNumber(1)
  $core.String get transactionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set transactionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTransactionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransactionId() => clearField(1);

  /// The previous transaction replaced in the mempool by the newly submitted one
  @$pb.TagNumber(2)
  RpcTransaction get replacedTransaction => $_getN(1);
  @$pb.TagNumber(2)
  set replacedTransaction(RpcTransaction v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasReplacedTransaction() => $_has(1);
  @$pb.TagNumber(2)
  void clearReplacedTransaction() => clearField(2);
  @$pb.TagNumber(2)
  RpcTransaction ensureReplacedTransaction() => $_ensure(1);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(2);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(2);
}

///  NotifyVirtualChainChangedRequestMessage registers this connection for virtualChainChanged notifications.
///
///  See: VirtualChainChangedNotificationMessage
class NotifyVirtualChainChangedRequestMessage extends $pb.GeneratedMessage {
  factory NotifyVirtualChainChangedRequestMessage({
    $core.bool? includeAcceptedTransactionIds,
    RpcNotifyCommand? command,
  }) {
    final $result = create();
    if (includeAcceptedTransactionIds != null) {
      $result.includeAcceptedTransactionIds = includeAcceptedTransactionIds;
    }
    if (command != null) {
      $result.command = command;
    }
    return $result;
  }
  NotifyVirtualChainChangedRequestMessage._() : super();
  factory NotifyVirtualChainChangedRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NotifyVirtualChainChangedRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NotifyVirtualChainChangedRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'includeAcceptedTransactionIds', protoName: 'includeAcceptedTransactionIds')
    ..e<RpcNotifyCommand>(101, _omitFieldNames ? '' : 'command', $pb.PbFieldType.OE, defaultOrMaker: RpcNotifyCommand.NOTIFY_START, valueOf: RpcNotifyCommand.valueOf, enumValues: RpcNotifyCommand.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NotifyVirtualChainChangedRequestMessage clone() => NotifyVirtualChainChangedRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NotifyVirtualChainChangedRequestMessage copyWith(void Function(NotifyVirtualChainChangedRequestMessage) updates) => super.copyWith((message) => updates(message as NotifyVirtualChainChangedRequestMessage)) as NotifyVirtualChainChangedRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NotifyVirtualChainChangedRequestMessage create() => NotifyVirtualChainChangedRequestMessage._();
  NotifyVirtualChainChangedRequestMessage createEmptyInstance() => create();
  static $pb.PbList<NotifyVirtualChainChangedRequestMessage> createRepeated() => $pb.PbList<NotifyVirtualChainChangedRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static NotifyVirtualChainChangedRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NotifyVirtualChainChangedRequestMessage>(create);
  static NotifyVirtualChainChangedRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get includeAcceptedTransactionIds => $_getBF(0);
  @$pb.TagNumber(1)
  set includeAcceptedTransactionIds($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIncludeAcceptedTransactionIds() => $_has(0);
  @$pb.TagNumber(1)
  void clearIncludeAcceptedTransactionIds() => clearField(1);

  @$pb.TagNumber(101)
  RpcNotifyCommand get command => $_getN(1);
  @$pb.TagNumber(101)
  set command(RpcNotifyCommand v) { setField(101, v); }
  @$pb.TagNumber(101)
  $core.bool hasCommand() => $_has(1);
  @$pb.TagNumber(101)
  void clearCommand() => clearField(101);
}

class NotifyVirtualChainChangedResponseMessage extends $pb.GeneratedMessage {
  factory NotifyVirtualChainChangedResponseMessage({
    RPCError? error,
  }) {
    final $result = create();
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  NotifyVirtualChainChangedResponseMessage._() : super();
  factory NotifyVirtualChainChangedResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NotifyVirtualChainChangedResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NotifyVirtualChainChangedResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NotifyVirtualChainChangedResponseMessage clone() => NotifyVirtualChainChangedResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NotifyVirtualChainChangedResponseMessage copyWith(void Function(NotifyVirtualChainChangedResponseMessage) updates) => super.copyWith((message) => updates(message as NotifyVirtualChainChangedResponseMessage)) as NotifyVirtualChainChangedResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NotifyVirtualChainChangedResponseMessage create() => NotifyVirtualChainChangedResponseMessage._();
  NotifyVirtualChainChangedResponseMessage createEmptyInstance() => create();
  static $pb.PbList<NotifyVirtualChainChangedResponseMessage> createRepeated() => $pb.PbList<NotifyVirtualChainChangedResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static NotifyVirtualChainChangedResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NotifyVirtualChainChangedResponseMessage>(create);
  static NotifyVirtualChainChangedResponseMessage? _defaultInstance;

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(0);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(0);
}

///  VirtualChainChangedNotificationMessage is sent whenever the DAG's selected parent
///  chain had changed.
///
///  See: NotifyVirtualChainChangedRequestMessage
class VirtualChainChangedNotificationMessage extends $pb.GeneratedMessage {
  factory VirtualChainChangedNotificationMessage({
    $core.Iterable<$core.String>? removedChainBlockHashes,
    $core.Iterable<RpcAcceptedTransactionIds>? acceptedTransactionIds,
    $core.Iterable<$core.String>? addedChainBlockHashes,
  }) {
    final $result = create();
    if (removedChainBlockHashes != null) {
      $result.removedChainBlockHashes.addAll(removedChainBlockHashes);
    }
    if (acceptedTransactionIds != null) {
      $result.acceptedTransactionIds.addAll(acceptedTransactionIds);
    }
    if (addedChainBlockHashes != null) {
      $result.addedChainBlockHashes.addAll(addedChainBlockHashes);
    }
    return $result;
  }
  VirtualChainChangedNotificationMessage._() : super();
  factory VirtualChainChangedNotificationMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VirtualChainChangedNotificationMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VirtualChainChangedNotificationMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'removedChainBlockHashes', protoName: 'removedChainBlockHashes')
    ..pc<RpcAcceptedTransactionIds>(2, _omitFieldNames ? '' : 'acceptedTransactionIds', $pb.PbFieldType.PM, protoName: 'acceptedTransactionIds', subBuilder: RpcAcceptedTransactionIds.create)
    ..pPS(3, _omitFieldNames ? '' : 'addedChainBlockHashes', protoName: 'addedChainBlockHashes')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VirtualChainChangedNotificationMessage clone() => VirtualChainChangedNotificationMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VirtualChainChangedNotificationMessage copyWith(void Function(VirtualChainChangedNotificationMessage) updates) => super.copyWith((message) => updates(message as VirtualChainChangedNotificationMessage)) as VirtualChainChangedNotificationMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VirtualChainChangedNotificationMessage create() => VirtualChainChangedNotificationMessage._();
  VirtualChainChangedNotificationMessage createEmptyInstance() => create();
  static $pb.PbList<VirtualChainChangedNotificationMessage> createRepeated() => $pb.PbList<VirtualChainChangedNotificationMessage>();
  @$core.pragma('dart2js:noInline')
  static VirtualChainChangedNotificationMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VirtualChainChangedNotificationMessage>(create);
  static VirtualChainChangedNotificationMessage? _defaultInstance;

  /// The chain blocks that were removed, in high-to-low order
  @$pb.TagNumber(1)
  $core.List<$core.String> get removedChainBlockHashes => $_getList(0);

  /// Will be filled only if `includeAcceptedTransactionIds = true` in the notify request.
  @$pb.TagNumber(2)
  $core.List<RpcAcceptedTransactionIds> get acceptedTransactionIds => $_getList(1);

  /// The chain blocks that were added, in low-to-high order
  @$pb.TagNumber(3)
  $core.List<$core.String> get addedChainBlockHashes => $_getList(2);
}

/// GetBlockRequestMessage requests information about a specific block
class GetBlockRequestMessage extends $pb.GeneratedMessage {
  factory GetBlockRequestMessage({
    $core.String? hash,
    $core.bool? includeTransactions,
  }) {
    final $result = create();
    if (hash != null) {
      $result.hash = hash;
    }
    if (includeTransactions != null) {
      $result.includeTransactions = includeTransactions;
    }
    return $result;
  }
  GetBlockRequestMessage._() : super();
  factory GetBlockRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBlockRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBlockRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'hash')
    ..aOB(3, _omitFieldNames ? '' : 'includeTransactions', protoName: 'includeTransactions')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBlockRequestMessage clone() => GetBlockRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBlockRequestMessage copyWith(void Function(GetBlockRequestMessage) updates) => super.copyWith((message) => updates(message as GetBlockRequestMessage)) as GetBlockRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBlockRequestMessage create() => GetBlockRequestMessage._();
  GetBlockRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetBlockRequestMessage> createRepeated() => $pb.PbList<GetBlockRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetBlockRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBlockRequestMessage>(create);
  static GetBlockRequestMessage? _defaultInstance;

  /// The hash of the requested block
  @$pb.TagNumber(1)
  $core.String get hash => $_getSZ(0);
  @$pb.TagNumber(1)
  set hash($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearHash() => clearField(1);

  /// Whether to include transaction data in the response
  @$pb.TagNumber(3)
  $core.bool get includeTransactions => $_getBF(1);
  @$pb.TagNumber(3)
  set includeTransactions($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasIncludeTransactions() => $_has(1);
  @$pb.TagNumber(3)
  void clearIncludeTransactions() => clearField(3);
}

class GetBlockResponseMessage extends $pb.GeneratedMessage {
  factory GetBlockResponseMessage({
    RpcBlock? block,
    RPCError? error,
  }) {
    final $result = create();
    if (block != null) {
      $result.block = block;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  GetBlockResponseMessage._() : super();
  factory GetBlockResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBlockResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBlockResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOM<RpcBlock>(3, _omitFieldNames ? '' : 'block', subBuilder: RpcBlock.create)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBlockResponseMessage clone() => GetBlockResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBlockResponseMessage copyWith(void Function(GetBlockResponseMessage) updates) => super.copyWith((message) => updates(message as GetBlockResponseMessage)) as GetBlockResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBlockResponseMessage create() => GetBlockResponseMessage._();
  GetBlockResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetBlockResponseMessage> createRepeated() => $pb.PbList<GetBlockResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetBlockResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBlockResponseMessage>(create);
  static GetBlockResponseMessage? _defaultInstance;

  @$pb.TagNumber(3)
  RpcBlock get block => $_getN(0);
  @$pb.TagNumber(3)
  set block(RpcBlock v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasBlock() => $_has(0);
  @$pb.TagNumber(3)
  void clearBlock() => clearField(3);
  @$pb.TagNumber(3)
  RpcBlock ensureBlock() => $_ensure(0);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(1);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(1);
}

///  GetSubnetworkRequestMessage requests information about a specific subnetwork
///
///  Currently unimplemented
class GetSubnetworkRequestMessage extends $pb.GeneratedMessage {
  factory GetSubnetworkRequestMessage({
    $core.String? subnetworkId,
  }) {
    final $result = create();
    if (subnetworkId != null) {
      $result.subnetworkId = subnetworkId;
    }
    return $result;
  }
  GetSubnetworkRequestMessage._() : super();
  factory GetSubnetworkRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSubnetworkRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSubnetworkRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'subnetworkId', protoName: 'subnetworkId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSubnetworkRequestMessage clone() => GetSubnetworkRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSubnetworkRequestMessage copyWith(void Function(GetSubnetworkRequestMessage) updates) => super.copyWith((message) => updates(message as GetSubnetworkRequestMessage)) as GetSubnetworkRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSubnetworkRequestMessage create() => GetSubnetworkRequestMessage._();
  GetSubnetworkRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetSubnetworkRequestMessage> createRepeated() => $pb.PbList<GetSubnetworkRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetSubnetworkRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSubnetworkRequestMessage>(create);
  static GetSubnetworkRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get subnetworkId => $_getSZ(0);
  @$pb.TagNumber(1)
  set subnetworkId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSubnetworkId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubnetworkId() => clearField(1);
}

class GetSubnetworkResponseMessage extends $pb.GeneratedMessage {
  factory GetSubnetworkResponseMessage({
    $fixnum.Int64? gasLimit,
    RPCError? error,
  }) {
    final $result = create();
    if (gasLimit != null) {
      $result.gasLimit = gasLimit;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  GetSubnetworkResponseMessage._() : super();
  factory GetSubnetworkResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSubnetworkResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSubnetworkResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'gasLimit', $pb.PbFieldType.OU6, protoName: 'gasLimit', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSubnetworkResponseMessage clone() => GetSubnetworkResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSubnetworkResponseMessage copyWith(void Function(GetSubnetworkResponseMessage) updates) => super.copyWith((message) => updates(message as GetSubnetworkResponseMessage)) as GetSubnetworkResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSubnetworkResponseMessage create() => GetSubnetworkResponseMessage._();
  GetSubnetworkResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetSubnetworkResponseMessage> createRepeated() => $pb.PbList<GetSubnetworkResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetSubnetworkResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSubnetworkResponseMessage>(create);
  static GetSubnetworkResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get gasLimit => $_getI64(0);
  @$pb.TagNumber(1)
  set gasLimit($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGasLimit() => $_has(0);
  @$pb.TagNumber(1)
  void clearGasLimit() => clearField(1);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(1);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(1);
}

/// GetVirtualChainFromBlockRequestMessage requests the virtual selected
/// parent chain from some startHash to this kaspad's current virtual
class GetVirtualChainFromBlockRequestMessage extends $pb.GeneratedMessage {
  factory GetVirtualChainFromBlockRequestMessage({
    $core.String? startHash,
    $core.bool? includeAcceptedTransactionIds,
  }) {
    final $result = create();
    if (startHash != null) {
      $result.startHash = startHash;
    }
    if (includeAcceptedTransactionIds != null) {
      $result.includeAcceptedTransactionIds = includeAcceptedTransactionIds;
    }
    return $result;
  }
  GetVirtualChainFromBlockRequestMessage._() : super();
  factory GetVirtualChainFromBlockRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetVirtualChainFromBlockRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetVirtualChainFromBlockRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'startHash', protoName: 'startHash')
    ..aOB(2, _omitFieldNames ? '' : 'includeAcceptedTransactionIds', protoName: 'includeAcceptedTransactionIds')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetVirtualChainFromBlockRequestMessage clone() => GetVirtualChainFromBlockRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetVirtualChainFromBlockRequestMessage copyWith(void Function(GetVirtualChainFromBlockRequestMessage) updates) => super.copyWith((message) => updates(message as GetVirtualChainFromBlockRequestMessage)) as GetVirtualChainFromBlockRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetVirtualChainFromBlockRequestMessage create() => GetVirtualChainFromBlockRequestMessage._();
  GetVirtualChainFromBlockRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetVirtualChainFromBlockRequestMessage> createRepeated() => $pb.PbList<GetVirtualChainFromBlockRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetVirtualChainFromBlockRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetVirtualChainFromBlockRequestMessage>(create);
  static GetVirtualChainFromBlockRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get startHash => $_getSZ(0);
  @$pb.TagNumber(1)
  set startHash($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStartHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartHash() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get includeAcceptedTransactionIds => $_getBF(1);
  @$pb.TagNumber(2)
  set includeAcceptedTransactionIds($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIncludeAcceptedTransactionIds() => $_has(1);
  @$pb.TagNumber(2)
  void clearIncludeAcceptedTransactionIds() => clearField(2);
}

class RpcAcceptedTransactionIds extends $pb.GeneratedMessage {
  factory RpcAcceptedTransactionIds({
    $core.String? acceptingBlockHash,
    $core.Iterable<$core.String>? acceptedTransactionIds,
  }) {
    final $result = create();
    if (acceptingBlockHash != null) {
      $result.acceptingBlockHash = acceptingBlockHash;
    }
    if (acceptedTransactionIds != null) {
      $result.acceptedTransactionIds.addAll(acceptedTransactionIds);
    }
    return $result;
  }
  RpcAcceptedTransactionIds._() : super();
  factory RpcAcceptedTransactionIds.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpcAcceptedTransactionIds.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RpcAcceptedTransactionIds', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'acceptingBlockHash', protoName: 'acceptingBlockHash')
    ..pPS(2, _omitFieldNames ? '' : 'acceptedTransactionIds', protoName: 'acceptedTransactionIds')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RpcAcceptedTransactionIds clone() => RpcAcceptedTransactionIds()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RpcAcceptedTransactionIds copyWith(void Function(RpcAcceptedTransactionIds) updates) => super.copyWith((message) => updates(message as RpcAcceptedTransactionIds)) as RpcAcceptedTransactionIds;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RpcAcceptedTransactionIds create() => RpcAcceptedTransactionIds._();
  RpcAcceptedTransactionIds createEmptyInstance() => create();
  static $pb.PbList<RpcAcceptedTransactionIds> createRepeated() => $pb.PbList<RpcAcceptedTransactionIds>();
  @$core.pragma('dart2js:noInline')
  static RpcAcceptedTransactionIds getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpcAcceptedTransactionIds>(create);
  static RpcAcceptedTransactionIds? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get acceptingBlockHash => $_getSZ(0);
  @$pb.TagNumber(1)
  set acceptingBlockHash($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAcceptingBlockHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearAcceptingBlockHash() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get acceptedTransactionIds => $_getList(1);
}

class GetVirtualChainFromBlockResponseMessage extends $pb.GeneratedMessage {
  factory GetVirtualChainFromBlockResponseMessage({
    $core.Iterable<$core.String>? removedChainBlockHashes,
    $core.Iterable<RpcAcceptedTransactionIds>? acceptedTransactionIds,
    $core.Iterable<$core.String>? addedChainBlockHashes,
    RPCError? error,
  }) {
    final $result = create();
    if (removedChainBlockHashes != null) {
      $result.removedChainBlockHashes.addAll(removedChainBlockHashes);
    }
    if (acceptedTransactionIds != null) {
      $result.acceptedTransactionIds.addAll(acceptedTransactionIds);
    }
    if (addedChainBlockHashes != null) {
      $result.addedChainBlockHashes.addAll(addedChainBlockHashes);
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  GetVirtualChainFromBlockResponseMessage._() : super();
  factory GetVirtualChainFromBlockResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetVirtualChainFromBlockResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetVirtualChainFromBlockResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'removedChainBlockHashes', protoName: 'removedChainBlockHashes')
    ..pc<RpcAcceptedTransactionIds>(2, _omitFieldNames ? '' : 'acceptedTransactionIds', $pb.PbFieldType.PM, protoName: 'acceptedTransactionIds', subBuilder: RpcAcceptedTransactionIds.create)
    ..pPS(3, _omitFieldNames ? '' : 'addedChainBlockHashes', protoName: 'addedChainBlockHashes')
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetVirtualChainFromBlockResponseMessage clone() => GetVirtualChainFromBlockResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetVirtualChainFromBlockResponseMessage copyWith(void Function(GetVirtualChainFromBlockResponseMessage) updates) => super.copyWith((message) => updates(message as GetVirtualChainFromBlockResponseMessage)) as GetVirtualChainFromBlockResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetVirtualChainFromBlockResponseMessage create() => GetVirtualChainFromBlockResponseMessage._();
  GetVirtualChainFromBlockResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetVirtualChainFromBlockResponseMessage> createRepeated() => $pb.PbList<GetVirtualChainFromBlockResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetVirtualChainFromBlockResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetVirtualChainFromBlockResponseMessage>(create);
  static GetVirtualChainFromBlockResponseMessage? _defaultInstance;

  /// The chain blocks that were removed, in high-to-low order
  @$pb.TagNumber(1)
  $core.List<$core.String> get removedChainBlockHashes => $_getList(0);

  /// The transactions accepted by each block in addedChainBlockHashes.
  /// Will be filled only if `includeAcceptedTransactionIds = true` in the request.
  @$pb.TagNumber(2)
  $core.List<RpcAcceptedTransactionIds> get acceptedTransactionIds => $_getList(1);

  /// The chain blocks that were added, in low-to-high order
  @$pb.TagNumber(3)
  $core.List<$core.String> get addedChainBlockHashes => $_getList(2);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(3);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(3);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(3);
}

/// GetBlocksRequestMessage requests blocks between a certain block lowHash up to this
/// kaspad's current virtual.
class GetBlocksRequestMessage extends $pb.GeneratedMessage {
  factory GetBlocksRequestMessage({
    $core.String? lowHash,
    $core.bool? includeBlocks,
    $core.bool? includeTransactions,
  }) {
    final $result = create();
    if (lowHash != null) {
      $result.lowHash = lowHash;
    }
    if (includeBlocks != null) {
      $result.includeBlocks = includeBlocks;
    }
    if (includeTransactions != null) {
      $result.includeTransactions = includeTransactions;
    }
    return $result;
  }
  GetBlocksRequestMessage._() : super();
  factory GetBlocksRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBlocksRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBlocksRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'lowHash', protoName: 'lowHash')
    ..aOB(2, _omitFieldNames ? '' : 'includeBlocks', protoName: 'includeBlocks')
    ..aOB(3, _omitFieldNames ? '' : 'includeTransactions', protoName: 'includeTransactions')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBlocksRequestMessage clone() => GetBlocksRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBlocksRequestMessage copyWith(void Function(GetBlocksRequestMessage) updates) => super.copyWith((message) => updates(message as GetBlocksRequestMessage)) as GetBlocksRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBlocksRequestMessage create() => GetBlocksRequestMessage._();
  GetBlocksRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetBlocksRequestMessage> createRepeated() => $pb.PbList<GetBlocksRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetBlocksRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBlocksRequestMessage>(create);
  static GetBlocksRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get lowHash => $_getSZ(0);
  @$pb.TagNumber(1)
  set lowHash($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLowHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearLowHash() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get includeBlocks => $_getBF(1);
  @$pb.TagNumber(2)
  set includeBlocks($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIncludeBlocks() => $_has(1);
  @$pb.TagNumber(2)
  void clearIncludeBlocks() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get includeTransactions => $_getBF(2);
  @$pb.TagNumber(3)
  set includeTransactions($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIncludeTransactions() => $_has(2);
  @$pb.TagNumber(3)
  void clearIncludeTransactions() => clearField(3);
}

class GetBlocksResponseMessage extends $pb.GeneratedMessage {
  factory GetBlocksResponseMessage({
    $core.Iterable<RpcBlock>? blocks,
    $core.Iterable<$core.String>? blockHashes,
    RPCError? error,
  }) {
    final $result = create();
    if (blocks != null) {
      $result.blocks.addAll(blocks);
    }
    if (blockHashes != null) {
      $result.blockHashes.addAll(blockHashes);
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  GetBlocksResponseMessage._() : super();
  factory GetBlocksResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBlocksResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBlocksResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..pc<RpcBlock>(3, _omitFieldNames ? '' : 'blocks', $pb.PbFieldType.PM, subBuilder: RpcBlock.create)
    ..pPS(4, _omitFieldNames ? '' : 'blockHashes', protoName: 'blockHashes')
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBlocksResponseMessage clone() => GetBlocksResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBlocksResponseMessage copyWith(void Function(GetBlocksResponseMessage) updates) => super.copyWith((message) => updates(message as GetBlocksResponseMessage)) as GetBlocksResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBlocksResponseMessage create() => GetBlocksResponseMessage._();
  GetBlocksResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetBlocksResponseMessage> createRepeated() => $pb.PbList<GetBlocksResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetBlocksResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBlocksResponseMessage>(create);
  static GetBlocksResponseMessage? _defaultInstance;

  @$pb.TagNumber(3)
  $core.List<RpcBlock> get blocks => $_getList(0);

  @$pb.TagNumber(4)
  $core.List<$core.String> get blockHashes => $_getList(1);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(2);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(2);
}

/// GetBlockCountRequestMessage requests the current number of blocks in this kaspad.
/// Note that this number may decrease as pruning occurs.
class GetBlockCountRequestMessage extends $pb.GeneratedMessage {
  factory GetBlockCountRequestMessage() => create();
  GetBlockCountRequestMessage._() : super();
  factory GetBlockCountRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBlockCountRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBlockCountRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBlockCountRequestMessage clone() => GetBlockCountRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBlockCountRequestMessage copyWith(void Function(GetBlockCountRequestMessage) updates) => super.copyWith((message) => updates(message as GetBlockCountRequestMessage)) as GetBlockCountRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBlockCountRequestMessage create() => GetBlockCountRequestMessage._();
  GetBlockCountRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetBlockCountRequestMessage> createRepeated() => $pb.PbList<GetBlockCountRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetBlockCountRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBlockCountRequestMessage>(create);
  static GetBlockCountRequestMessage? _defaultInstance;
}

class GetBlockCountResponseMessage extends $pb.GeneratedMessage {
  factory GetBlockCountResponseMessage({
    $fixnum.Int64? blockCount,
    $fixnum.Int64? headerCount,
    RPCError? error,
  }) {
    final $result = create();
    if (blockCount != null) {
      $result.blockCount = blockCount;
    }
    if (headerCount != null) {
      $result.headerCount = headerCount;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  GetBlockCountResponseMessage._() : super();
  factory GetBlockCountResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBlockCountResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBlockCountResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'blockCount', $pb.PbFieldType.OU6, protoName: 'blockCount', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'headerCount', $pb.PbFieldType.OU6, protoName: 'headerCount', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBlockCountResponseMessage clone() => GetBlockCountResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBlockCountResponseMessage copyWith(void Function(GetBlockCountResponseMessage) updates) => super.copyWith((message) => updates(message as GetBlockCountResponseMessage)) as GetBlockCountResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBlockCountResponseMessage create() => GetBlockCountResponseMessage._();
  GetBlockCountResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetBlockCountResponseMessage> createRepeated() => $pb.PbList<GetBlockCountResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetBlockCountResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBlockCountResponseMessage>(create);
  static GetBlockCountResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get blockCount => $_getI64(0);
  @$pb.TagNumber(1)
  set blockCount($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBlockCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearBlockCount() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get headerCount => $_getI64(1);
  @$pb.TagNumber(2)
  set headerCount($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHeaderCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearHeaderCount() => clearField(2);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(2);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(2);
}

/// GetBlockDagInfoRequestMessage requests general information about the current state
/// of this kaspad's DAG.
class GetBlockDagInfoRequestMessage extends $pb.GeneratedMessage {
  factory GetBlockDagInfoRequestMessage() => create();
  GetBlockDagInfoRequestMessage._() : super();
  factory GetBlockDagInfoRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBlockDagInfoRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBlockDagInfoRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBlockDagInfoRequestMessage clone() => GetBlockDagInfoRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBlockDagInfoRequestMessage copyWith(void Function(GetBlockDagInfoRequestMessage) updates) => super.copyWith((message) => updates(message as GetBlockDagInfoRequestMessage)) as GetBlockDagInfoRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBlockDagInfoRequestMessage create() => GetBlockDagInfoRequestMessage._();
  GetBlockDagInfoRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetBlockDagInfoRequestMessage> createRepeated() => $pb.PbList<GetBlockDagInfoRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetBlockDagInfoRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBlockDagInfoRequestMessage>(create);
  static GetBlockDagInfoRequestMessage? _defaultInstance;
}

class GetBlockDagInfoResponseMessage extends $pb.GeneratedMessage {
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
    $core.String? sink,
    RPCError? error,
  }) {
    final $result = create();
    if (networkName != null) {
      $result.networkName = networkName;
    }
    if (blockCount != null) {
      $result.blockCount = blockCount;
    }
    if (headerCount != null) {
      $result.headerCount = headerCount;
    }
    if (tipHashes != null) {
      $result.tipHashes.addAll(tipHashes);
    }
    if (difficulty != null) {
      $result.difficulty = difficulty;
    }
    if (pastMedianTime != null) {
      $result.pastMedianTime = pastMedianTime;
    }
    if (virtualParentHashes != null) {
      $result.virtualParentHashes.addAll(virtualParentHashes);
    }
    if (pruningPointHash != null) {
      $result.pruningPointHash = pruningPointHash;
    }
    if (virtualDaaScore != null) {
      $result.virtualDaaScore = virtualDaaScore;
    }
    if (sink != null) {
      $result.sink = sink;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  GetBlockDagInfoResponseMessage._() : super();
  factory GetBlockDagInfoResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBlockDagInfoResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBlockDagInfoResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'networkName', protoName: 'networkName')
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'blockCount', $pb.PbFieldType.OU6, protoName: 'blockCount', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'headerCount', $pb.PbFieldType.OU6, protoName: 'headerCount', defaultOrMaker: $fixnum.Int64.ZERO)
    ..pPS(4, _omitFieldNames ? '' : 'tipHashes', protoName: 'tipHashes')
    ..a<$core.double>(5, _omitFieldNames ? '' : 'difficulty', $pb.PbFieldType.OD)
    ..aInt64(6, _omitFieldNames ? '' : 'pastMedianTime', protoName: 'pastMedianTime')
    ..pPS(7, _omitFieldNames ? '' : 'virtualParentHashes', protoName: 'virtualParentHashes')
    ..aOS(8, _omitFieldNames ? '' : 'pruningPointHash', protoName: 'pruningPointHash')
    ..a<$fixnum.Int64>(9, _omitFieldNames ? '' : 'virtualDaaScore', $pb.PbFieldType.OU6, protoName: 'virtualDaaScore', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(10, _omitFieldNames ? '' : 'sink')
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBlockDagInfoResponseMessage clone() => GetBlockDagInfoResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBlockDagInfoResponseMessage copyWith(void Function(GetBlockDagInfoResponseMessage) updates) => super.copyWith((message) => updates(message as GetBlockDagInfoResponseMessage)) as GetBlockDagInfoResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBlockDagInfoResponseMessage create() => GetBlockDagInfoResponseMessage._();
  GetBlockDagInfoResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetBlockDagInfoResponseMessage> createRepeated() => $pb.PbList<GetBlockDagInfoResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetBlockDagInfoResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBlockDagInfoResponseMessage>(create);
  static GetBlockDagInfoResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get networkName => $_getSZ(0);
  @$pb.TagNumber(1)
  set networkName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNetworkName() => $_has(0);
  @$pb.TagNumber(1)
  void clearNetworkName() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get blockCount => $_getI64(1);
  @$pb.TagNumber(2)
  set blockCount($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBlockCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearBlockCount() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get headerCount => $_getI64(2);
  @$pb.TagNumber(3)
  set headerCount($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHeaderCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearHeaderCount() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.String> get tipHashes => $_getList(3);

  @$pb.TagNumber(5)
  $core.double get difficulty => $_getN(4);
  @$pb.TagNumber(5)
  set difficulty($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDifficulty() => $_has(4);
  @$pb.TagNumber(5)
  void clearDifficulty() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get pastMedianTime => $_getI64(5);
  @$pb.TagNumber(6)
  set pastMedianTime($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPastMedianTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearPastMedianTime() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.String> get virtualParentHashes => $_getList(6);

  @$pb.TagNumber(8)
  $core.String get pruningPointHash => $_getSZ(7);
  @$pb.TagNumber(8)
  set pruningPointHash($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasPruningPointHash() => $_has(7);
  @$pb.TagNumber(8)
  void clearPruningPointHash() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get virtualDaaScore => $_getI64(8);
  @$pb.TagNumber(9)
  set virtualDaaScore($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasVirtualDaaScore() => $_has(8);
  @$pb.TagNumber(9)
  void clearVirtualDaaScore() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get sink => $_getSZ(9);
  @$pb.TagNumber(10)
  set sink($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasSink() => $_has(9);
  @$pb.TagNumber(10)
  void clearSink() => clearField(10);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(10);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(10);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(10);
}

class ResolveFinalityConflictRequestMessage extends $pb.GeneratedMessage {
  factory ResolveFinalityConflictRequestMessage({
    $core.String? finalityBlockHash,
  }) {
    final $result = create();
    if (finalityBlockHash != null) {
      $result.finalityBlockHash = finalityBlockHash;
    }
    return $result;
  }
  ResolveFinalityConflictRequestMessage._() : super();
  factory ResolveFinalityConflictRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResolveFinalityConflictRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResolveFinalityConflictRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'finalityBlockHash', protoName: 'finalityBlockHash')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResolveFinalityConflictRequestMessage clone() => ResolveFinalityConflictRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResolveFinalityConflictRequestMessage copyWith(void Function(ResolveFinalityConflictRequestMessage) updates) => super.copyWith((message) => updates(message as ResolveFinalityConflictRequestMessage)) as ResolveFinalityConflictRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResolveFinalityConflictRequestMessage create() => ResolveFinalityConflictRequestMessage._();
  ResolveFinalityConflictRequestMessage createEmptyInstance() => create();
  static $pb.PbList<ResolveFinalityConflictRequestMessage> createRepeated() => $pb.PbList<ResolveFinalityConflictRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static ResolveFinalityConflictRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResolveFinalityConflictRequestMessage>(create);
  static ResolveFinalityConflictRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get finalityBlockHash => $_getSZ(0);
  @$pb.TagNumber(1)
  set finalityBlockHash($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFinalityBlockHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearFinalityBlockHash() => clearField(1);
}

class ResolveFinalityConflictResponseMessage extends $pb.GeneratedMessage {
  factory ResolveFinalityConflictResponseMessage({
    RPCError? error,
  }) {
    final $result = create();
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  ResolveFinalityConflictResponseMessage._() : super();
  factory ResolveFinalityConflictResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResolveFinalityConflictResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResolveFinalityConflictResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResolveFinalityConflictResponseMessage clone() => ResolveFinalityConflictResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResolveFinalityConflictResponseMessage copyWith(void Function(ResolveFinalityConflictResponseMessage) updates) => super.copyWith((message) => updates(message as ResolveFinalityConflictResponseMessage)) as ResolveFinalityConflictResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResolveFinalityConflictResponseMessage create() => ResolveFinalityConflictResponseMessage._();
  ResolveFinalityConflictResponseMessage createEmptyInstance() => create();
  static $pb.PbList<ResolveFinalityConflictResponseMessage> createRepeated() => $pb.PbList<ResolveFinalityConflictResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static ResolveFinalityConflictResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResolveFinalityConflictResponseMessage>(create);
  static ResolveFinalityConflictResponseMessage? _defaultInstance;

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(0);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(0);
}

class NotifyFinalityConflictRequestMessage extends $pb.GeneratedMessage {
  factory NotifyFinalityConflictRequestMessage({
    RpcNotifyCommand? command,
  }) {
    final $result = create();
    if (command != null) {
      $result.command = command;
    }
    return $result;
  }
  NotifyFinalityConflictRequestMessage._() : super();
  factory NotifyFinalityConflictRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NotifyFinalityConflictRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NotifyFinalityConflictRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..e<RpcNotifyCommand>(101, _omitFieldNames ? '' : 'command', $pb.PbFieldType.OE, defaultOrMaker: RpcNotifyCommand.NOTIFY_START, valueOf: RpcNotifyCommand.valueOf, enumValues: RpcNotifyCommand.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NotifyFinalityConflictRequestMessage clone() => NotifyFinalityConflictRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NotifyFinalityConflictRequestMessage copyWith(void Function(NotifyFinalityConflictRequestMessage) updates) => super.copyWith((message) => updates(message as NotifyFinalityConflictRequestMessage)) as NotifyFinalityConflictRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NotifyFinalityConflictRequestMessage create() => NotifyFinalityConflictRequestMessage._();
  NotifyFinalityConflictRequestMessage createEmptyInstance() => create();
  static $pb.PbList<NotifyFinalityConflictRequestMessage> createRepeated() => $pb.PbList<NotifyFinalityConflictRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static NotifyFinalityConflictRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NotifyFinalityConflictRequestMessage>(create);
  static NotifyFinalityConflictRequestMessage? _defaultInstance;

  @$pb.TagNumber(101)
  RpcNotifyCommand get command => $_getN(0);
  @$pb.TagNumber(101)
  set command(RpcNotifyCommand v) { setField(101, v); }
  @$pb.TagNumber(101)
  $core.bool hasCommand() => $_has(0);
  @$pb.TagNumber(101)
  void clearCommand() => clearField(101);
}

class NotifyFinalityConflictResponseMessage extends $pb.GeneratedMessage {
  factory NotifyFinalityConflictResponseMessage({
    RPCError? error,
  }) {
    final $result = create();
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  NotifyFinalityConflictResponseMessage._() : super();
  factory NotifyFinalityConflictResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NotifyFinalityConflictResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NotifyFinalityConflictResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NotifyFinalityConflictResponseMessage clone() => NotifyFinalityConflictResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NotifyFinalityConflictResponseMessage copyWith(void Function(NotifyFinalityConflictResponseMessage) updates) => super.copyWith((message) => updates(message as NotifyFinalityConflictResponseMessage)) as NotifyFinalityConflictResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NotifyFinalityConflictResponseMessage create() => NotifyFinalityConflictResponseMessage._();
  NotifyFinalityConflictResponseMessage createEmptyInstance() => create();
  static $pb.PbList<NotifyFinalityConflictResponseMessage> createRepeated() => $pb.PbList<NotifyFinalityConflictResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static NotifyFinalityConflictResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NotifyFinalityConflictResponseMessage>(create);
  static NotifyFinalityConflictResponseMessage? _defaultInstance;

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(0);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(0);
}

class FinalityConflictNotificationMessage extends $pb.GeneratedMessage {
  factory FinalityConflictNotificationMessage({
    $core.String? violatingBlockHash,
  }) {
    final $result = create();
    if (violatingBlockHash != null) {
      $result.violatingBlockHash = violatingBlockHash;
    }
    return $result;
  }
  FinalityConflictNotificationMessage._() : super();
  factory FinalityConflictNotificationMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FinalityConflictNotificationMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FinalityConflictNotificationMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'violatingBlockHash', protoName: 'violatingBlockHash')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FinalityConflictNotificationMessage clone() => FinalityConflictNotificationMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FinalityConflictNotificationMessage copyWith(void Function(FinalityConflictNotificationMessage) updates) => super.copyWith((message) => updates(message as FinalityConflictNotificationMessage)) as FinalityConflictNotificationMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FinalityConflictNotificationMessage create() => FinalityConflictNotificationMessage._();
  FinalityConflictNotificationMessage createEmptyInstance() => create();
  static $pb.PbList<FinalityConflictNotificationMessage> createRepeated() => $pb.PbList<FinalityConflictNotificationMessage>();
  @$core.pragma('dart2js:noInline')
  static FinalityConflictNotificationMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FinalityConflictNotificationMessage>(create);
  static FinalityConflictNotificationMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get violatingBlockHash => $_getSZ(0);
  @$pb.TagNumber(1)
  set violatingBlockHash($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasViolatingBlockHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearViolatingBlockHash() => clearField(1);
}

class FinalityConflictResolvedNotificationMessage extends $pb.GeneratedMessage {
  factory FinalityConflictResolvedNotificationMessage({
    $core.String? finalityBlockHash,
  }) {
    final $result = create();
    if (finalityBlockHash != null) {
      $result.finalityBlockHash = finalityBlockHash;
    }
    return $result;
  }
  FinalityConflictResolvedNotificationMessage._() : super();
  factory FinalityConflictResolvedNotificationMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FinalityConflictResolvedNotificationMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FinalityConflictResolvedNotificationMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'finalityBlockHash', protoName: 'finalityBlockHash')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FinalityConflictResolvedNotificationMessage clone() => FinalityConflictResolvedNotificationMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FinalityConflictResolvedNotificationMessage copyWith(void Function(FinalityConflictResolvedNotificationMessage) updates) => super.copyWith((message) => updates(message as FinalityConflictResolvedNotificationMessage)) as FinalityConflictResolvedNotificationMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FinalityConflictResolvedNotificationMessage create() => FinalityConflictResolvedNotificationMessage._();
  FinalityConflictResolvedNotificationMessage createEmptyInstance() => create();
  static $pb.PbList<FinalityConflictResolvedNotificationMessage> createRepeated() => $pb.PbList<FinalityConflictResolvedNotificationMessage>();
  @$core.pragma('dart2js:noInline')
  static FinalityConflictResolvedNotificationMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FinalityConflictResolvedNotificationMessage>(create);
  static FinalityConflictResolvedNotificationMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get finalityBlockHash => $_getSZ(0);
  @$pb.TagNumber(1)
  set finalityBlockHash($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFinalityBlockHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearFinalityBlockHash() => clearField(1);
}

/// ShutdownRequestMessage shuts down this kaspad.
class ShutdownRequestMessage extends $pb.GeneratedMessage {
  factory ShutdownRequestMessage() => create();
  ShutdownRequestMessage._() : super();
  factory ShutdownRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShutdownRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ShutdownRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ShutdownRequestMessage clone() => ShutdownRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ShutdownRequestMessage copyWith(void Function(ShutdownRequestMessage) updates) => super.copyWith((message) => updates(message as ShutdownRequestMessage)) as ShutdownRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShutdownRequestMessage create() => ShutdownRequestMessage._();
  ShutdownRequestMessage createEmptyInstance() => create();
  static $pb.PbList<ShutdownRequestMessage> createRepeated() => $pb.PbList<ShutdownRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static ShutdownRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShutdownRequestMessage>(create);
  static ShutdownRequestMessage? _defaultInstance;
}

class ShutdownResponseMessage extends $pb.GeneratedMessage {
  factory ShutdownResponseMessage({
    RPCError? error,
  }) {
    final $result = create();
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  ShutdownResponseMessage._() : super();
  factory ShutdownResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShutdownResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ShutdownResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ShutdownResponseMessage clone() => ShutdownResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ShutdownResponseMessage copyWith(void Function(ShutdownResponseMessage) updates) => super.copyWith((message) => updates(message as ShutdownResponseMessage)) as ShutdownResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShutdownResponseMessage create() => ShutdownResponseMessage._();
  ShutdownResponseMessage createEmptyInstance() => create();
  static $pb.PbList<ShutdownResponseMessage> createRepeated() => $pb.PbList<ShutdownResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static ShutdownResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShutdownResponseMessage>(create);
  static ShutdownResponseMessage? _defaultInstance;

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(0);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(0);
}

/// GetHeadersRequestMessage requests headers between the given startHash and the
/// current virtual, up to the given limit.
class GetHeadersRequestMessage extends $pb.GeneratedMessage {
  factory GetHeadersRequestMessage({
    $core.String? startHash,
    $fixnum.Int64? limit,
    $core.bool? isAscending,
  }) {
    final $result = create();
    if (startHash != null) {
      $result.startHash = startHash;
    }
    if (limit != null) {
      $result.limit = limit;
    }
    if (isAscending != null) {
      $result.isAscending = isAscending;
    }
    return $result;
  }
  GetHeadersRequestMessage._() : super();
  factory GetHeadersRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetHeadersRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetHeadersRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'startHash', protoName: 'startHash')
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'limit', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(3, _omitFieldNames ? '' : 'isAscending', protoName: 'isAscending')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetHeadersRequestMessage clone() => GetHeadersRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetHeadersRequestMessage copyWith(void Function(GetHeadersRequestMessage) updates) => super.copyWith((message) => updates(message as GetHeadersRequestMessage)) as GetHeadersRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetHeadersRequestMessage create() => GetHeadersRequestMessage._();
  GetHeadersRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetHeadersRequestMessage> createRepeated() => $pb.PbList<GetHeadersRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetHeadersRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetHeadersRequestMessage>(create);
  static GetHeadersRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get startHash => $_getSZ(0);
  @$pb.TagNumber(1)
  set startHash($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStartHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartHash() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get limit => $_getI64(1);
  @$pb.TagNumber(2)
  set limit($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLimit() => $_has(1);
  @$pb.TagNumber(2)
  void clearLimit() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isAscending => $_getBF(2);
  @$pb.TagNumber(3)
  set isAscending($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsAscending() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsAscending() => clearField(3);
}

class GetHeadersResponseMessage extends $pb.GeneratedMessage {
  factory GetHeadersResponseMessage({
    $core.Iterable<$core.String>? headers,
    RPCError? error,
  }) {
    final $result = create();
    if (headers != null) {
      $result.headers.addAll(headers);
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  GetHeadersResponseMessage._() : super();
  factory GetHeadersResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetHeadersResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetHeadersResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'headers')
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetHeadersResponseMessage clone() => GetHeadersResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetHeadersResponseMessage copyWith(void Function(GetHeadersResponseMessage) updates) => super.copyWith((message) => updates(message as GetHeadersResponseMessage)) as GetHeadersResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetHeadersResponseMessage create() => GetHeadersResponseMessage._();
  GetHeadersResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetHeadersResponseMessage> createRepeated() => $pb.PbList<GetHeadersResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetHeadersResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetHeadersResponseMessage>(create);
  static GetHeadersResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get headers => $_getList(0);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(1);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(1);
}

///  NotifyUtxosChangedRequestMessage registers this connection for utxoChanged notifications
///  for the given addresses.
///
///  This call is only available when this kaspad was started with `--utxoindex`
///
///  See: UtxosChangedNotificationMessage
class NotifyUtxosChangedRequestMessage extends $pb.GeneratedMessage {
  factory NotifyUtxosChangedRequestMessage({
    $core.Iterable<$core.String>? addresses,
    RpcNotifyCommand? command,
  }) {
    final $result = create();
    if (addresses != null) {
      $result.addresses.addAll(addresses);
    }
    if (command != null) {
      $result.command = command;
    }
    return $result;
  }
  NotifyUtxosChangedRequestMessage._() : super();
  factory NotifyUtxosChangedRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NotifyUtxosChangedRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NotifyUtxosChangedRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'addresses')
    ..e<RpcNotifyCommand>(101, _omitFieldNames ? '' : 'command', $pb.PbFieldType.OE, defaultOrMaker: RpcNotifyCommand.NOTIFY_START, valueOf: RpcNotifyCommand.valueOf, enumValues: RpcNotifyCommand.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NotifyUtxosChangedRequestMessage clone() => NotifyUtxosChangedRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NotifyUtxosChangedRequestMessage copyWith(void Function(NotifyUtxosChangedRequestMessage) updates) => super.copyWith((message) => updates(message as NotifyUtxosChangedRequestMessage)) as NotifyUtxosChangedRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NotifyUtxosChangedRequestMessage create() => NotifyUtxosChangedRequestMessage._();
  NotifyUtxosChangedRequestMessage createEmptyInstance() => create();
  static $pb.PbList<NotifyUtxosChangedRequestMessage> createRepeated() => $pb.PbList<NotifyUtxosChangedRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static NotifyUtxosChangedRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NotifyUtxosChangedRequestMessage>(create);
  static NotifyUtxosChangedRequestMessage? _defaultInstance;

  /// UTXOs addresses to start/stop getting notified about
  /// Leave empty to start/stop all updates
  @$pb.TagNumber(1)
  $core.List<$core.String> get addresses => $_getList(0);

  @$pb.TagNumber(101)
  RpcNotifyCommand get command => $_getN(1);
  @$pb.TagNumber(101)
  set command(RpcNotifyCommand v) { setField(101, v); }
  @$pb.TagNumber(101)
  $core.bool hasCommand() => $_has(1);
  @$pb.TagNumber(101)
  void clearCommand() => clearField(101);
}

class NotifyUtxosChangedResponseMessage extends $pb.GeneratedMessage {
  factory NotifyUtxosChangedResponseMessage({
    RPCError? error,
  }) {
    final $result = create();
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  NotifyUtxosChangedResponseMessage._() : super();
  factory NotifyUtxosChangedResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NotifyUtxosChangedResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NotifyUtxosChangedResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NotifyUtxosChangedResponseMessage clone() => NotifyUtxosChangedResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NotifyUtxosChangedResponseMessage copyWith(void Function(NotifyUtxosChangedResponseMessage) updates) => super.copyWith((message) => updates(message as NotifyUtxosChangedResponseMessage)) as NotifyUtxosChangedResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NotifyUtxosChangedResponseMessage create() => NotifyUtxosChangedResponseMessage._();
  NotifyUtxosChangedResponseMessage createEmptyInstance() => create();
  static $pb.PbList<NotifyUtxosChangedResponseMessage> createRepeated() => $pb.PbList<NotifyUtxosChangedResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static NotifyUtxosChangedResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NotifyUtxosChangedResponseMessage>(create);
  static NotifyUtxosChangedResponseMessage? _defaultInstance;

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(0);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(0);
}

///  UtxosChangedNotificationMessage is sent whenever the UTXO index had been updated.
///
///  See: NotifyUtxosChangedRequestMessage
class UtxosChangedNotificationMessage extends $pb.GeneratedMessage {
  factory UtxosChangedNotificationMessage({
    $core.Iterable<RpcUtxosByAddressesEntry>? added,
    $core.Iterable<RpcUtxosByAddressesEntry>? removed,
  }) {
    final $result = create();
    if (added != null) {
      $result.added.addAll(added);
    }
    if (removed != null) {
      $result.removed.addAll(removed);
    }
    return $result;
  }
  UtxosChangedNotificationMessage._() : super();
  factory UtxosChangedNotificationMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UtxosChangedNotificationMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UtxosChangedNotificationMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..pc<RpcUtxosByAddressesEntry>(1, _omitFieldNames ? '' : 'added', $pb.PbFieldType.PM, subBuilder: RpcUtxosByAddressesEntry.create)
    ..pc<RpcUtxosByAddressesEntry>(2, _omitFieldNames ? '' : 'removed', $pb.PbFieldType.PM, subBuilder: RpcUtxosByAddressesEntry.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UtxosChangedNotificationMessage clone() => UtxosChangedNotificationMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UtxosChangedNotificationMessage copyWith(void Function(UtxosChangedNotificationMessage) updates) => super.copyWith((message) => updates(message as UtxosChangedNotificationMessage)) as UtxosChangedNotificationMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UtxosChangedNotificationMessage create() => UtxosChangedNotificationMessage._();
  UtxosChangedNotificationMessage createEmptyInstance() => create();
  static $pb.PbList<UtxosChangedNotificationMessage> createRepeated() => $pb.PbList<UtxosChangedNotificationMessage>();
  @$core.pragma('dart2js:noInline')
  static UtxosChangedNotificationMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UtxosChangedNotificationMessage>(create);
  static UtxosChangedNotificationMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RpcUtxosByAddressesEntry> get added => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<RpcUtxosByAddressesEntry> get removed => $_getList(1);
}

class RpcUtxosByAddressesEntry extends $pb.GeneratedMessage {
  factory RpcUtxosByAddressesEntry({
    $core.String? address,
    RpcOutpoint? outpoint,
    RpcUtxoEntry? utxoEntry,
  }) {
    final $result = create();
    if (address != null) {
      $result.address = address;
    }
    if (outpoint != null) {
      $result.outpoint = outpoint;
    }
    if (utxoEntry != null) {
      $result.utxoEntry = utxoEntry;
    }
    return $result;
  }
  RpcUtxosByAddressesEntry._() : super();
  factory RpcUtxosByAddressesEntry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpcUtxosByAddressesEntry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RpcUtxosByAddressesEntry', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'address')
    ..aOM<RpcOutpoint>(2, _omitFieldNames ? '' : 'outpoint', subBuilder: RpcOutpoint.create)
    ..aOM<RpcUtxoEntry>(3, _omitFieldNames ? '' : 'utxoEntry', protoName: 'utxoEntry', subBuilder: RpcUtxoEntry.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RpcUtxosByAddressesEntry clone() => RpcUtxosByAddressesEntry()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RpcUtxosByAddressesEntry copyWith(void Function(RpcUtxosByAddressesEntry) updates) => super.copyWith((message) => updates(message as RpcUtxosByAddressesEntry)) as RpcUtxosByAddressesEntry;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RpcUtxosByAddressesEntry create() => RpcUtxosByAddressesEntry._();
  RpcUtxosByAddressesEntry createEmptyInstance() => create();
  static $pb.PbList<RpcUtxosByAddressesEntry> createRepeated() => $pb.PbList<RpcUtxosByAddressesEntry>();
  @$core.pragma('dart2js:noInline')
  static RpcUtxosByAddressesEntry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpcUtxosByAddressesEntry>(create);
  static RpcUtxosByAddressesEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  RpcOutpoint get outpoint => $_getN(1);
  @$pb.TagNumber(2)
  set outpoint(RpcOutpoint v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOutpoint() => $_has(1);
  @$pb.TagNumber(2)
  void clearOutpoint() => clearField(2);
  @$pb.TagNumber(2)
  RpcOutpoint ensureOutpoint() => $_ensure(1);

  @$pb.TagNumber(3)
  RpcUtxoEntry get utxoEntry => $_getN(2);
  @$pb.TagNumber(3)
  set utxoEntry(RpcUtxoEntry v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUtxoEntry() => $_has(2);
  @$pb.TagNumber(3)
  void clearUtxoEntry() => clearField(3);
  @$pb.TagNumber(3)
  RpcUtxoEntry ensureUtxoEntry() => $_ensure(2);
}

///  StopNotifyingUtxosChangedRequestMessage unregisters this connection for utxoChanged notifications
///  for the given addresses.
///
///  This call is only available when this kaspad was started with `--utxoindex`
///
///  See: UtxosChangedNotificationMessage
///
///  This message only exists for backward compatibility reason with kaspad and is deprecated.
///  Use instead UtxosChangedNotificationMessage with command = NOTIFY_STOP.
class StopNotifyingUtxosChangedRequestMessage extends $pb.GeneratedMessage {
  factory StopNotifyingUtxosChangedRequestMessage({
    $core.Iterable<$core.String>? addresses,
  }) {
    final $result = create();
    if (addresses != null) {
      $result.addresses.addAll(addresses);
    }
    return $result;
  }
  StopNotifyingUtxosChangedRequestMessage._() : super();
  factory StopNotifyingUtxosChangedRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StopNotifyingUtxosChangedRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StopNotifyingUtxosChangedRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'addresses')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StopNotifyingUtxosChangedRequestMessage clone() => StopNotifyingUtxosChangedRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StopNotifyingUtxosChangedRequestMessage copyWith(void Function(StopNotifyingUtxosChangedRequestMessage) updates) => super.copyWith((message) => updates(message as StopNotifyingUtxosChangedRequestMessage)) as StopNotifyingUtxosChangedRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StopNotifyingUtxosChangedRequestMessage create() => StopNotifyingUtxosChangedRequestMessage._();
  StopNotifyingUtxosChangedRequestMessage createEmptyInstance() => create();
  static $pb.PbList<StopNotifyingUtxosChangedRequestMessage> createRepeated() => $pb.PbList<StopNotifyingUtxosChangedRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static StopNotifyingUtxosChangedRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StopNotifyingUtxosChangedRequestMessage>(create);
  static StopNotifyingUtxosChangedRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get addresses => $_getList(0);
}

class StopNotifyingUtxosChangedResponseMessage extends $pb.GeneratedMessage {
  factory StopNotifyingUtxosChangedResponseMessage({
    RPCError? error,
  }) {
    final $result = create();
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  StopNotifyingUtxosChangedResponseMessage._() : super();
  factory StopNotifyingUtxosChangedResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StopNotifyingUtxosChangedResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StopNotifyingUtxosChangedResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StopNotifyingUtxosChangedResponseMessage clone() => StopNotifyingUtxosChangedResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StopNotifyingUtxosChangedResponseMessage copyWith(void Function(StopNotifyingUtxosChangedResponseMessage) updates) => super.copyWith((message) => updates(message as StopNotifyingUtxosChangedResponseMessage)) as StopNotifyingUtxosChangedResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StopNotifyingUtxosChangedResponseMessage create() => StopNotifyingUtxosChangedResponseMessage._();
  StopNotifyingUtxosChangedResponseMessage createEmptyInstance() => create();
  static $pb.PbList<StopNotifyingUtxosChangedResponseMessage> createRepeated() => $pb.PbList<StopNotifyingUtxosChangedResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static StopNotifyingUtxosChangedResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StopNotifyingUtxosChangedResponseMessage>(create);
  static StopNotifyingUtxosChangedResponseMessage? _defaultInstance;

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(0);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(0);
}

///  GetUtxosByAddressesRequestMessage requests all current UTXOs for the given kaspad addresses
///
///  This call is only available when this kaspad was started with `--utxoindex`
class GetUtxosByAddressesRequestMessage extends $pb.GeneratedMessage {
  factory GetUtxosByAddressesRequestMessage({
    $core.Iterable<$core.String>? addresses,
  }) {
    final $result = create();
    if (addresses != null) {
      $result.addresses.addAll(addresses);
    }
    return $result;
  }
  GetUtxosByAddressesRequestMessage._() : super();
  factory GetUtxosByAddressesRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUtxosByAddressesRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetUtxosByAddressesRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'addresses')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetUtxosByAddressesRequestMessage clone() => GetUtxosByAddressesRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetUtxosByAddressesRequestMessage copyWith(void Function(GetUtxosByAddressesRequestMessage) updates) => super.copyWith((message) => updates(message as GetUtxosByAddressesRequestMessage)) as GetUtxosByAddressesRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetUtxosByAddressesRequestMessage create() => GetUtxosByAddressesRequestMessage._();
  GetUtxosByAddressesRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetUtxosByAddressesRequestMessage> createRepeated() => $pb.PbList<GetUtxosByAddressesRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetUtxosByAddressesRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUtxosByAddressesRequestMessage>(create);
  static GetUtxosByAddressesRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get addresses => $_getList(0);
}

class GetUtxosByAddressesResponseMessage extends $pb.GeneratedMessage {
  factory GetUtxosByAddressesResponseMessage({
    $core.Iterable<RpcUtxosByAddressesEntry>? entries,
    RPCError? error,
  }) {
    final $result = create();
    if (entries != null) {
      $result.entries.addAll(entries);
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  GetUtxosByAddressesResponseMessage._() : super();
  factory GetUtxosByAddressesResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUtxosByAddressesResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetUtxosByAddressesResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..pc<RpcUtxosByAddressesEntry>(1, _omitFieldNames ? '' : 'entries', $pb.PbFieldType.PM, subBuilder: RpcUtxosByAddressesEntry.create)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetUtxosByAddressesResponseMessage clone() => GetUtxosByAddressesResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetUtxosByAddressesResponseMessage copyWith(void Function(GetUtxosByAddressesResponseMessage) updates) => super.copyWith((message) => updates(message as GetUtxosByAddressesResponseMessage)) as GetUtxosByAddressesResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetUtxosByAddressesResponseMessage create() => GetUtxosByAddressesResponseMessage._();
  GetUtxosByAddressesResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetUtxosByAddressesResponseMessage> createRepeated() => $pb.PbList<GetUtxosByAddressesResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetUtxosByAddressesResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUtxosByAddressesResponseMessage>(create);
  static GetUtxosByAddressesResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RpcUtxosByAddressesEntry> get entries => $_getList(0);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(1);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(1);
}

/// GetBalanceByAddressRequest returns the total balance in unspent transactions towards a given address
///
/// This call is only available when this kaspad was started with `--utxoindex`
class GetBalanceByAddressRequestMessage extends $pb.GeneratedMessage {
  factory GetBalanceByAddressRequestMessage({
    $core.String? address,
  }) {
    final $result = create();
    if (address != null) {
      $result.address = address;
    }
    return $result;
  }
  GetBalanceByAddressRequestMessage._() : super();
  factory GetBalanceByAddressRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBalanceByAddressRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBalanceByAddressRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'address')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBalanceByAddressRequestMessage clone() => GetBalanceByAddressRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBalanceByAddressRequestMessage copyWith(void Function(GetBalanceByAddressRequestMessage) updates) => super.copyWith((message) => updates(message as GetBalanceByAddressRequestMessage)) as GetBalanceByAddressRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBalanceByAddressRequestMessage create() => GetBalanceByAddressRequestMessage._();
  GetBalanceByAddressRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetBalanceByAddressRequestMessage> createRepeated() => $pb.PbList<GetBalanceByAddressRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetBalanceByAddressRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBalanceByAddressRequestMessage>(create);
  static GetBalanceByAddressRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);
}

class GetBalanceByAddressResponseMessage extends $pb.GeneratedMessage {
  factory GetBalanceByAddressResponseMessage({
    $fixnum.Int64? balance,
    RPCError? error,
  }) {
    final $result = create();
    if (balance != null) {
      $result.balance = balance;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  GetBalanceByAddressResponseMessage._() : super();
  factory GetBalanceByAddressResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBalanceByAddressResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBalanceByAddressResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'balance', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBalanceByAddressResponseMessage clone() => GetBalanceByAddressResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBalanceByAddressResponseMessage copyWith(void Function(GetBalanceByAddressResponseMessage) updates) => super.copyWith((message) => updates(message as GetBalanceByAddressResponseMessage)) as GetBalanceByAddressResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBalanceByAddressResponseMessage create() => GetBalanceByAddressResponseMessage._();
  GetBalanceByAddressResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetBalanceByAddressResponseMessage> createRepeated() => $pb.PbList<GetBalanceByAddressResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetBalanceByAddressResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBalanceByAddressResponseMessage>(create);
  static GetBalanceByAddressResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get balance => $_getI64(0);
  @$pb.TagNumber(1)
  set balance($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBalance() => $_has(0);
  @$pb.TagNumber(1)
  void clearBalance() => clearField(1);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(1);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(1);
}

class GetBalancesByAddressesRequestMessage extends $pb.GeneratedMessage {
  factory GetBalancesByAddressesRequestMessage({
    $core.Iterable<$core.String>? addresses,
  }) {
    final $result = create();
    if (addresses != null) {
      $result.addresses.addAll(addresses);
    }
    return $result;
  }
  GetBalancesByAddressesRequestMessage._() : super();
  factory GetBalancesByAddressesRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBalancesByAddressesRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBalancesByAddressesRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'addresses')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBalancesByAddressesRequestMessage clone() => GetBalancesByAddressesRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBalancesByAddressesRequestMessage copyWith(void Function(GetBalancesByAddressesRequestMessage) updates) => super.copyWith((message) => updates(message as GetBalancesByAddressesRequestMessage)) as GetBalancesByAddressesRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBalancesByAddressesRequestMessage create() => GetBalancesByAddressesRequestMessage._();
  GetBalancesByAddressesRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetBalancesByAddressesRequestMessage> createRepeated() => $pb.PbList<GetBalancesByAddressesRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetBalancesByAddressesRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBalancesByAddressesRequestMessage>(create);
  static GetBalancesByAddressesRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get addresses => $_getList(0);
}

class RpcBalancesByAddressesEntry extends $pb.GeneratedMessage {
  factory RpcBalancesByAddressesEntry({
    $core.String? address,
    $fixnum.Int64? balance,
    RPCError? error,
  }) {
    final $result = create();
    if (address != null) {
      $result.address = address;
    }
    if (balance != null) {
      $result.balance = balance;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  RpcBalancesByAddressesEntry._() : super();
  factory RpcBalancesByAddressesEntry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpcBalancesByAddressesEntry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RpcBalancesByAddressesEntry', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'address')
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'balance', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RpcBalancesByAddressesEntry clone() => RpcBalancesByAddressesEntry()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RpcBalancesByAddressesEntry copyWith(void Function(RpcBalancesByAddressesEntry) updates) => super.copyWith((message) => updates(message as RpcBalancesByAddressesEntry)) as RpcBalancesByAddressesEntry;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RpcBalancesByAddressesEntry create() => RpcBalancesByAddressesEntry._();
  RpcBalancesByAddressesEntry createEmptyInstance() => create();
  static $pb.PbList<RpcBalancesByAddressesEntry> createRepeated() => $pb.PbList<RpcBalancesByAddressesEntry>();
  @$core.pragma('dart2js:noInline')
  static RpcBalancesByAddressesEntry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpcBalancesByAddressesEntry>(create);
  static RpcBalancesByAddressesEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get balance => $_getI64(1);
  @$pb.TagNumber(2)
  set balance($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBalance() => $_has(1);
  @$pb.TagNumber(2)
  void clearBalance() => clearField(2);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(2);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(2);
}

class GetBalancesByAddressesResponseMessage extends $pb.GeneratedMessage {
  factory GetBalancesByAddressesResponseMessage({
    $core.Iterable<RpcBalancesByAddressesEntry>? entries,
    RPCError? error,
  }) {
    final $result = create();
    if (entries != null) {
      $result.entries.addAll(entries);
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  GetBalancesByAddressesResponseMessage._() : super();
  factory GetBalancesByAddressesResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBalancesByAddressesResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBalancesByAddressesResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..pc<RpcBalancesByAddressesEntry>(1, _omitFieldNames ? '' : 'entries', $pb.PbFieldType.PM, subBuilder: RpcBalancesByAddressesEntry.create)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBalancesByAddressesResponseMessage clone() => GetBalancesByAddressesResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBalancesByAddressesResponseMessage copyWith(void Function(GetBalancesByAddressesResponseMessage) updates) => super.copyWith((message) => updates(message as GetBalancesByAddressesResponseMessage)) as GetBalancesByAddressesResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBalancesByAddressesResponseMessage create() => GetBalancesByAddressesResponseMessage._();
  GetBalancesByAddressesResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetBalancesByAddressesResponseMessage> createRepeated() => $pb.PbList<GetBalancesByAddressesResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetBalancesByAddressesResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBalancesByAddressesResponseMessage>(create);
  static GetBalancesByAddressesResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RpcBalancesByAddressesEntry> get entries => $_getList(0);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(1);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(1);
}

/// GetSinkBlueScoreRequestMessage requests the blue score of the current selected parent
/// of the virtual block.
class GetSinkBlueScoreRequestMessage extends $pb.GeneratedMessage {
  factory GetSinkBlueScoreRequestMessage() => create();
  GetSinkBlueScoreRequestMessage._() : super();
  factory GetSinkBlueScoreRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSinkBlueScoreRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSinkBlueScoreRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSinkBlueScoreRequestMessage clone() => GetSinkBlueScoreRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSinkBlueScoreRequestMessage copyWith(void Function(GetSinkBlueScoreRequestMessage) updates) => super.copyWith((message) => updates(message as GetSinkBlueScoreRequestMessage)) as GetSinkBlueScoreRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSinkBlueScoreRequestMessage create() => GetSinkBlueScoreRequestMessage._();
  GetSinkBlueScoreRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetSinkBlueScoreRequestMessage> createRepeated() => $pb.PbList<GetSinkBlueScoreRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetSinkBlueScoreRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSinkBlueScoreRequestMessage>(create);
  static GetSinkBlueScoreRequestMessage? _defaultInstance;
}

class GetSinkBlueScoreResponseMessage extends $pb.GeneratedMessage {
  factory GetSinkBlueScoreResponseMessage({
    $fixnum.Int64? blueScore,
    RPCError? error,
  }) {
    final $result = create();
    if (blueScore != null) {
      $result.blueScore = blueScore;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  GetSinkBlueScoreResponseMessage._() : super();
  factory GetSinkBlueScoreResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSinkBlueScoreResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSinkBlueScoreResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'blueScore', $pb.PbFieldType.OU6, protoName: 'blueScore', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSinkBlueScoreResponseMessage clone() => GetSinkBlueScoreResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSinkBlueScoreResponseMessage copyWith(void Function(GetSinkBlueScoreResponseMessage) updates) => super.copyWith((message) => updates(message as GetSinkBlueScoreResponseMessage)) as GetSinkBlueScoreResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSinkBlueScoreResponseMessage create() => GetSinkBlueScoreResponseMessage._();
  GetSinkBlueScoreResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetSinkBlueScoreResponseMessage> createRepeated() => $pb.PbList<GetSinkBlueScoreResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetSinkBlueScoreResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSinkBlueScoreResponseMessage>(create);
  static GetSinkBlueScoreResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get blueScore => $_getI64(0);
  @$pb.TagNumber(1)
  set blueScore($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBlueScore() => $_has(0);
  @$pb.TagNumber(1)
  void clearBlueScore() => clearField(1);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(1);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(1);
}

///  NotifySinkBlueScoreChangedRequestMessage registers this connection for
///  sinkBlueScoreChanged notifications.
///
///  See: SinkBlueScoreChangedNotificationMessage
class NotifySinkBlueScoreChangedRequestMessage extends $pb.GeneratedMessage {
  factory NotifySinkBlueScoreChangedRequestMessage({
    RpcNotifyCommand? command,
  }) {
    final $result = create();
    if (command != null) {
      $result.command = command;
    }
    return $result;
  }
  NotifySinkBlueScoreChangedRequestMessage._() : super();
  factory NotifySinkBlueScoreChangedRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NotifySinkBlueScoreChangedRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NotifySinkBlueScoreChangedRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..e<RpcNotifyCommand>(101, _omitFieldNames ? '' : 'command', $pb.PbFieldType.OE, defaultOrMaker: RpcNotifyCommand.NOTIFY_START, valueOf: RpcNotifyCommand.valueOf, enumValues: RpcNotifyCommand.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NotifySinkBlueScoreChangedRequestMessage clone() => NotifySinkBlueScoreChangedRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NotifySinkBlueScoreChangedRequestMessage copyWith(void Function(NotifySinkBlueScoreChangedRequestMessage) updates) => super.copyWith((message) => updates(message as NotifySinkBlueScoreChangedRequestMessage)) as NotifySinkBlueScoreChangedRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NotifySinkBlueScoreChangedRequestMessage create() => NotifySinkBlueScoreChangedRequestMessage._();
  NotifySinkBlueScoreChangedRequestMessage createEmptyInstance() => create();
  static $pb.PbList<NotifySinkBlueScoreChangedRequestMessage> createRepeated() => $pb.PbList<NotifySinkBlueScoreChangedRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static NotifySinkBlueScoreChangedRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NotifySinkBlueScoreChangedRequestMessage>(create);
  static NotifySinkBlueScoreChangedRequestMessage? _defaultInstance;

  @$pb.TagNumber(101)
  RpcNotifyCommand get command => $_getN(0);
  @$pb.TagNumber(101)
  set command(RpcNotifyCommand v) { setField(101, v); }
  @$pb.TagNumber(101)
  $core.bool hasCommand() => $_has(0);
  @$pb.TagNumber(101)
  void clearCommand() => clearField(101);
}

class NotifySinkBlueScoreChangedResponseMessage extends $pb.GeneratedMessage {
  factory NotifySinkBlueScoreChangedResponseMessage({
    RPCError? error,
  }) {
    final $result = create();
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  NotifySinkBlueScoreChangedResponseMessage._() : super();
  factory NotifySinkBlueScoreChangedResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NotifySinkBlueScoreChangedResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NotifySinkBlueScoreChangedResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NotifySinkBlueScoreChangedResponseMessage clone() => NotifySinkBlueScoreChangedResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NotifySinkBlueScoreChangedResponseMessage copyWith(void Function(NotifySinkBlueScoreChangedResponseMessage) updates) => super.copyWith((message) => updates(message as NotifySinkBlueScoreChangedResponseMessage)) as NotifySinkBlueScoreChangedResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NotifySinkBlueScoreChangedResponseMessage create() => NotifySinkBlueScoreChangedResponseMessage._();
  NotifySinkBlueScoreChangedResponseMessage createEmptyInstance() => create();
  static $pb.PbList<NotifySinkBlueScoreChangedResponseMessage> createRepeated() => $pb.PbList<NotifySinkBlueScoreChangedResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static NotifySinkBlueScoreChangedResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NotifySinkBlueScoreChangedResponseMessage>(create);
  static NotifySinkBlueScoreChangedResponseMessage? _defaultInstance;

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(0);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(0);
}

///  SinkBlueScoreChangedNotificationMessage is sent whenever the blue score
///  of the virtual's selected parent changes.
///
///  See NotifySinkBlueScoreChangedRequestMessage
class SinkBlueScoreChangedNotificationMessage extends $pb.GeneratedMessage {
  factory SinkBlueScoreChangedNotificationMessage({
    $fixnum.Int64? sinkBlueScore,
  }) {
    final $result = create();
    if (sinkBlueScore != null) {
      $result.sinkBlueScore = sinkBlueScore;
    }
    return $result;
  }
  SinkBlueScoreChangedNotificationMessage._() : super();
  factory SinkBlueScoreChangedNotificationMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SinkBlueScoreChangedNotificationMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SinkBlueScoreChangedNotificationMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'sinkBlueScore', $pb.PbFieldType.OU6, protoName: 'sinkBlueScore', defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SinkBlueScoreChangedNotificationMessage clone() => SinkBlueScoreChangedNotificationMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SinkBlueScoreChangedNotificationMessage copyWith(void Function(SinkBlueScoreChangedNotificationMessage) updates) => super.copyWith((message) => updates(message as SinkBlueScoreChangedNotificationMessage)) as SinkBlueScoreChangedNotificationMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SinkBlueScoreChangedNotificationMessage create() => SinkBlueScoreChangedNotificationMessage._();
  SinkBlueScoreChangedNotificationMessage createEmptyInstance() => create();
  static $pb.PbList<SinkBlueScoreChangedNotificationMessage> createRepeated() => $pb.PbList<SinkBlueScoreChangedNotificationMessage>();
  @$core.pragma('dart2js:noInline')
  static SinkBlueScoreChangedNotificationMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SinkBlueScoreChangedNotificationMessage>(create);
  static SinkBlueScoreChangedNotificationMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get sinkBlueScore => $_getI64(0);
  @$pb.TagNumber(1)
  set sinkBlueScore($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSinkBlueScore() => $_has(0);
  @$pb.TagNumber(1)
  void clearSinkBlueScore() => clearField(1);
}

///  NotifyVirtualDaaScoreChangedRequestMessage registers this connection for
///  virtualDaaScoreChanged notifications.
///
///  See: VirtualDaaScoreChangedNotificationMessage
class NotifyVirtualDaaScoreChangedRequestMessage extends $pb.GeneratedMessage {
  factory NotifyVirtualDaaScoreChangedRequestMessage({
    RpcNotifyCommand? command,
  }) {
    final $result = create();
    if (command != null) {
      $result.command = command;
    }
    return $result;
  }
  NotifyVirtualDaaScoreChangedRequestMessage._() : super();
  factory NotifyVirtualDaaScoreChangedRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NotifyVirtualDaaScoreChangedRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NotifyVirtualDaaScoreChangedRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..e<RpcNotifyCommand>(101, _omitFieldNames ? '' : 'command', $pb.PbFieldType.OE, defaultOrMaker: RpcNotifyCommand.NOTIFY_START, valueOf: RpcNotifyCommand.valueOf, enumValues: RpcNotifyCommand.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NotifyVirtualDaaScoreChangedRequestMessage clone() => NotifyVirtualDaaScoreChangedRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NotifyVirtualDaaScoreChangedRequestMessage copyWith(void Function(NotifyVirtualDaaScoreChangedRequestMessage) updates) => super.copyWith((message) => updates(message as NotifyVirtualDaaScoreChangedRequestMessage)) as NotifyVirtualDaaScoreChangedRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NotifyVirtualDaaScoreChangedRequestMessage create() => NotifyVirtualDaaScoreChangedRequestMessage._();
  NotifyVirtualDaaScoreChangedRequestMessage createEmptyInstance() => create();
  static $pb.PbList<NotifyVirtualDaaScoreChangedRequestMessage> createRepeated() => $pb.PbList<NotifyVirtualDaaScoreChangedRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static NotifyVirtualDaaScoreChangedRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NotifyVirtualDaaScoreChangedRequestMessage>(create);
  static NotifyVirtualDaaScoreChangedRequestMessage? _defaultInstance;

  @$pb.TagNumber(101)
  RpcNotifyCommand get command => $_getN(0);
  @$pb.TagNumber(101)
  set command(RpcNotifyCommand v) { setField(101, v); }
  @$pb.TagNumber(101)
  $core.bool hasCommand() => $_has(0);
  @$pb.TagNumber(101)
  void clearCommand() => clearField(101);
}

class NotifyVirtualDaaScoreChangedResponseMessage extends $pb.GeneratedMessage {
  factory NotifyVirtualDaaScoreChangedResponseMessage({
    RPCError? error,
  }) {
    final $result = create();
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  NotifyVirtualDaaScoreChangedResponseMessage._() : super();
  factory NotifyVirtualDaaScoreChangedResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NotifyVirtualDaaScoreChangedResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NotifyVirtualDaaScoreChangedResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NotifyVirtualDaaScoreChangedResponseMessage clone() => NotifyVirtualDaaScoreChangedResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NotifyVirtualDaaScoreChangedResponseMessage copyWith(void Function(NotifyVirtualDaaScoreChangedResponseMessage) updates) => super.copyWith((message) => updates(message as NotifyVirtualDaaScoreChangedResponseMessage)) as NotifyVirtualDaaScoreChangedResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NotifyVirtualDaaScoreChangedResponseMessage create() => NotifyVirtualDaaScoreChangedResponseMessage._();
  NotifyVirtualDaaScoreChangedResponseMessage createEmptyInstance() => create();
  static $pb.PbList<NotifyVirtualDaaScoreChangedResponseMessage> createRepeated() => $pb.PbList<NotifyVirtualDaaScoreChangedResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static NotifyVirtualDaaScoreChangedResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NotifyVirtualDaaScoreChangedResponseMessage>(create);
  static NotifyVirtualDaaScoreChangedResponseMessage? _defaultInstance;

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(0);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(0);
}

///  VirtualDaaScoreChangedNotificationMessage is sent whenever the DAA score
///  of the virtual changes.
///
///  See NotifyVirtualDaaScoreChangedRequestMessage
class VirtualDaaScoreChangedNotificationMessage extends $pb.GeneratedMessage {
  factory VirtualDaaScoreChangedNotificationMessage({
    $fixnum.Int64? virtualDaaScore,
  }) {
    final $result = create();
    if (virtualDaaScore != null) {
      $result.virtualDaaScore = virtualDaaScore;
    }
    return $result;
  }
  VirtualDaaScoreChangedNotificationMessage._() : super();
  factory VirtualDaaScoreChangedNotificationMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VirtualDaaScoreChangedNotificationMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VirtualDaaScoreChangedNotificationMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'virtualDaaScore', $pb.PbFieldType.OU6, protoName: 'virtualDaaScore', defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VirtualDaaScoreChangedNotificationMessage clone() => VirtualDaaScoreChangedNotificationMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VirtualDaaScoreChangedNotificationMessage copyWith(void Function(VirtualDaaScoreChangedNotificationMessage) updates) => super.copyWith((message) => updates(message as VirtualDaaScoreChangedNotificationMessage)) as VirtualDaaScoreChangedNotificationMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VirtualDaaScoreChangedNotificationMessage create() => VirtualDaaScoreChangedNotificationMessage._();
  VirtualDaaScoreChangedNotificationMessage createEmptyInstance() => create();
  static $pb.PbList<VirtualDaaScoreChangedNotificationMessage> createRepeated() => $pb.PbList<VirtualDaaScoreChangedNotificationMessage>();
  @$core.pragma('dart2js:noInline')
  static VirtualDaaScoreChangedNotificationMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VirtualDaaScoreChangedNotificationMessage>(create);
  static VirtualDaaScoreChangedNotificationMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get virtualDaaScore => $_getI64(0);
  @$pb.TagNumber(1)
  set virtualDaaScore($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVirtualDaaScore() => $_has(0);
  @$pb.TagNumber(1)
  void clearVirtualDaaScore() => clearField(1);
}

///  NotifyPruningPointUtxoSetOverrideRequestMessage registers this connection for
///  pruning point UTXO set override notifications.
///
///  This call is only available when this kaspad was started with `--utxoindex`
///
///  See: NotifyPruningPointUtxoSetOverrideResponseMessage
class NotifyPruningPointUtxoSetOverrideRequestMessage extends $pb.GeneratedMessage {
  factory NotifyPruningPointUtxoSetOverrideRequestMessage({
    RpcNotifyCommand? command,
  }) {
    final $result = create();
    if (command != null) {
      $result.command = command;
    }
    return $result;
  }
  NotifyPruningPointUtxoSetOverrideRequestMessage._() : super();
  factory NotifyPruningPointUtxoSetOverrideRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NotifyPruningPointUtxoSetOverrideRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NotifyPruningPointUtxoSetOverrideRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..e<RpcNotifyCommand>(101, _omitFieldNames ? '' : 'command', $pb.PbFieldType.OE, defaultOrMaker: RpcNotifyCommand.NOTIFY_START, valueOf: RpcNotifyCommand.valueOf, enumValues: RpcNotifyCommand.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NotifyPruningPointUtxoSetOverrideRequestMessage clone() => NotifyPruningPointUtxoSetOverrideRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NotifyPruningPointUtxoSetOverrideRequestMessage copyWith(void Function(NotifyPruningPointUtxoSetOverrideRequestMessage) updates) => super.copyWith((message) => updates(message as NotifyPruningPointUtxoSetOverrideRequestMessage)) as NotifyPruningPointUtxoSetOverrideRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NotifyPruningPointUtxoSetOverrideRequestMessage create() => NotifyPruningPointUtxoSetOverrideRequestMessage._();
  NotifyPruningPointUtxoSetOverrideRequestMessage createEmptyInstance() => create();
  static $pb.PbList<NotifyPruningPointUtxoSetOverrideRequestMessage> createRepeated() => $pb.PbList<NotifyPruningPointUtxoSetOverrideRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static NotifyPruningPointUtxoSetOverrideRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NotifyPruningPointUtxoSetOverrideRequestMessage>(create);
  static NotifyPruningPointUtxoSetOverrideRequestMessage? _defaultInstance;

  @$pb.TagNumber(101)
  RpcNotifyCommand get command => $_getN(0);
  @$pb.TagNumber(101)
  set command(RpcNotifyCommand v) { setField(101, v); }
  @$pb.TagNumber(101)
  $core.bool hasCommand() => $_has(0);
  @$pb.TagNumber(101)
  void clearCommand() => clearField(101);
}

class NotifyPruningPointUtxoSetOverrideResponseMessage extends $pb.GeneratedMessage {
  factory NotifyPruningPointUtxoSetOverrideResponseMessage({
    RPCError? error,
  }) {
    final $result = create();
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  NotifyPruningPointUtxoSetOverrideResponseMessage._() : super();
  factory NotifyPruningPointUtxoSetOverrideResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NotifyPruningPointUtxoSetOverrideResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NotifyPruningPointUtxoSetOverrideResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NotifyPruningPointUtxoSetOverrideResponseMessage clone() => NotifyPruningPointUtxoSetOverrideResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NotifyPruningPointUtxoSetOverrideResponseMessage copyWith(void Function(NotifyPruningPointUtxoSetOverrideResponseMessage) updates) => super.copyWith((message) => updates(message as NotifyPruningPointUtxoSetOverrideResponseMessage)) as NotifyPruningPointUtxoSetOverrideResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NotifyPruningPointUtxoSetOverrideResponseMessage create() => NotifyPruningPointUtxoSetOverrideResponseMessage._();
  NotifyPruningPointUtxoSetOverrideResponseMessage createEmptyInstance() => create();
  static $pb.PbList<NotifyPruningPointUtxoSetOverrideResponseMessage> createRepeated() => $pb.PbList<NotifyPruningPointUtxoSetOverrideResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static NotifyPruningPointUtxoSetOverrideResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NotifyPruningPointUtxoSetOverrideResponseMessage>(create);
  static NotifyPruningPointUtxoSetOverrideResponseMessage? _defaultInstance;

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(0);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(0);
}

///  PruningPointUtxoSetOverrideNotificationMessage is sent whenever the UTXO index
///  resets due to pruning point change via IBD.
///
///  See NotifyPruningPointUtxoSetOverrideRequestMessage
class PruningPointUtxoSetOverrideNotificationMessage extends $pb.GeneratedMessage {
  factory PruningPointUtxoSetOverrideNotificationMessage() => create();
  PruningPointUtxoSetOverrideNotificationMessage._() : super();
  factory PruningPointUtxoSetOverrideNotificationMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PruningPointUtxoSetOverrideNotificationMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PruningPointUtxoSetOverrideNotificationMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PruningPointUtxoSetOverrideNotificationMessage clone() => PruningPointUtxoSetOverrideNotificationMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PruningPointUtxoSetOverrideNotificationMessage copyWith(void Function(PruningPointUtxoSetOverrideNotificationMessage) updates) => super.copyWith((message) => updates(message as PruningPointUtxoSetOverrideNotificationMessage)) as PruningPointUtxoSetOverrideNotificationMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PruningPointUtxoSetOverrideNotificationMessage create() => PruningPointUtxoSetOverrideNotificationMessage._();
  PruningPointUtxoSetOverrideNotificationMessage createEmptyInstance() => create();
  static $pb.PbList<PruningPointUtxoSetOverrideNotificationMessage> createRepeated() => $pb.PbList<PruningPointUtxoSetOverrideNotificationMessage>();
  @$core.pragma('dart2js:noInline')
  static PruningPointUtxoSetOverrideNotificationMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PruningPointUtxoSetOverrideNotificationMessage>(create);
  static PruningPointUtxoSetOverrideNotificationMessage? _defaultInstance;
}

///  StopNotifyingPruningPointUtxoSetOverrideRequestMessage unregisters this connection for
///  pruning point UTXO set override notifications.
///
///  This call is only available when this kaspad was started with `--utxoindex`
///
///  See: PruningPointUtxoSetOverrideNotificationMessage
///
///  This message only exists for backward compatibility reason with kaspad and is deprecated.
///  Use instead NotifyPruningPointUtxoSetOverrideRequestMessage with command = NOTIFY_STOP.
class StopNotifyingPruningPointUtxoSetOverrideRequestMessage extends $pb.GeneratedMessage {
  factory StopNotifyingPruningPointUtxoSetOverrideRequestMessage() => create();
  StopNotifyingPruningPointUtxoSetOverrideRequestMessage._() : super();
  factory StopNotifyingPruningPointUtxoSetOverrideRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StopNotifyingPruningPointUtxoSetOverrideRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StopNotifyingPruningPointUtxoSetOverrideRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StopNotifyingPruningPointUtxoSetOverrideRequestMessage clone() => StopNotifyingPruningPointUtxoSetOverrideRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StopNotifyingPruningPointUtxoSetOverrideRequestMessage copyWith(void Function(StopNotifyingPruningPointUtxoSetOverrideRequestMessage) updates) => super.copyWith((message) => updates(message as StopNotifyingPruningPointUtxoSetOverrideRequestMessage)) as StopNotifyingPruningPointUtxoSetOverrideRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StopNotifyingPruningPointUtxoSetOverrideRequestMessage create() => StopNotifyingPruningPointUtxoSetOverrideRequestMessage._();
  StopNotifyingPruningPointUtxoSetOverrideRequestMessage createEmptyInstance() => create();
  static $pb.PbList<StopNotifyingPruningPointUtxoSetOverrideRequestMessage> createRepeated() => $pb.PbList<StopNotifyingPruningPointUtxoSetOverrideRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static StopNotifyingPruningPointUtxoSetOverrideRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StopNotifyingPruningPointUtxoSetOverrideRequestMessage>(create);
  static StopNotifyingPruningPointUtxoSetOverrideRequestMessage? _defaultInstance;
}

class StopNotifyingPruningPointUtxoSetOverrideResponseMessage extends $pb.GeneratedMessage {
  factory StopNotifyingPruningPointUtxoSetOverrideResponseMessage({
    RPCError? error,
  }) {
    final $result = create();
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  StopNotifyingPruningPointUtxoSetOverrideResponseMessage._() : super();
  factory StopNotifyingPruningPointUtxoSetOverrideResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StopNotifyingPruningPointUtxoSetOverrideResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StopNotifyingPruningPointUtxoSetOverrideResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StopNotifyingPruningPointUtxoSetOverrideResponseMessage clone() => StopNotifyingPruningPointUtxoSetOverrideResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StopNotifyingPruningPointUtxoSetOverrideResponseMessage copyWith(void Function(StopNotifyingPruningPointUtxoSetOverrideResponseMessage) updates) => super.copyWith((message) => updates(message as StopNotifyingPruningPointUtxoSetOverrideResponseMessage)) as StopNotifyingPruningPointUtxoSetOverrideResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StopNotifyingPruningPointUtxoSetOverrideResponseMessage create() => StopNotifyingPruningPointUtxoSetOverrideResponseMessage._();
  StopNotifyingPruningPointUtxoSetOverrideResponseMessage createEmptyInstance() => create();
  static $pb.PbList<StopNotifyingPruningPointUtxoSetOverrideResponseMessage> createRepeated() => $pb.PbList<StopNotifyingPruningPointUtxoSetOverrideResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static StopNotifyingPruningPointUtxoSetOverrideResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StopNotifyingPruningPointUtxoSetOverrideResponseMessage>(create);
  static StopNotifyingPruningPointUtxoSetOverrideResponseMessage? _defaultInstance;

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(0);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(0);
}

/// BanRequestMessage bans the given ip.
class BanRequestMessage extends $pb.GeneratedMessage {
  factory BanRequestMessage({
    $core.String? ip,
  }) {
    final $result = create();
    if (ip != null) {
      $result.ip = ip;
    }
    return $result;
  }
  BanRequestMessage._() : super();
  factory BanRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BanRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BanRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ip')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BanRequestMessage clone() => BanRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BanRequestMessage copyWith(void Function(BanRequestMessage) updates) => super.copyWith((message) => updates(message as BanRequestMessage)) as BanRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BanRequestMessage create() => BanRequestMessage._();
  BanRequestMessage createEmptyInstance() => create();
  static $pb.PbList<BanRequestMessage> createRepeated() => $pb.PbList<BanRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static BanRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BanRequestMessage>(create);
  static BanRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ip => $_getSZ(0);
  @$pb.TagNumber(1)
  set ip($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIp() => $_has(0);
  @$pb.TagNumber(1)
  void clearIp() => clearField(1);
}

class BanResponseMessage extends $pb.GeneratedMessage {
  factory BanResponseMessage({
    RPCError? error,
  }) {
    final $result = create();
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  BanResponseMessage._() : super();
  factory BanResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BanResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BanResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BanResponseMessage clone() => BanResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BanResponseMessage copyWith(void Function(BanResponseMessage) updates) => super.copyWith((message) => updates(message as BanResponseMessage)) as BanResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BanResponseMessage create() => BanResponseMessage._();
  BanResponseMessage createEmptyInstance() => create();
  static $pb.PbList<BanResponseMessage> createRepeated() => $pb.PbList<BanResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static BanResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BanResponseMessage>(create);
  static BanResponseMessage? _defaultInstance;

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(0);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(0);
}

/// UnbanRequestMessage unbans the given ip.
class UnbanRequestMessage extends $pb.GeneratedMessage {
  factory UnbanRequestMessage({
    $core.String? ip,
  }) {
    final $result = create();
    if (ip != null) {
      $result.ip = ip;
    }
    return $result;
  }
  UnbanRequestMessage._() : super();
  factory UnbanRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnbanRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UnbanRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ip')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnbanRequestMessage clone() => UnbanRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnbanRequestMessage copyWith(void Function(UnbanRequestMessage) updates) => super.copyWith((message) => updates(message as UnbanRequestMessage)) as UnbanRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UnbanRequestMessage create() => UnbanRequestMessage._();
  UnbanRequestMessage createEmptyInstance() => create();
  static $pb.PbList<UnbanRequestMessage> createRepeated() => $pb.PbList<UnbanRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static UnbanRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnbanRequestMessage>(create);
  static UnbanRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ip => $_getSZ(0);
  @$pb.TagNumber(1)
  set ip($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIp() => $_has(0);
  @$pb.TagNumber(1)
  void clearIp() => clearField(1);
}

class UnbanResponseMessage extends $pb.GeneratedMessage {
  factory UnbanResponseMessage({
    RPCError? error,
  }) {
    final $result = create();
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  UnbanResponseMessage._() : super();
  factory UnbanResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnbanResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UnbanResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnbanResponseMessage clone() => UnbanResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnbanResponseMessage copyWith(void Function(UnbanResponseMessage) updates) => super.copyWith((message) => updates(message as UnbanResponseMessage)) as UnbanResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UnbanResponseMessage create() => UnbanResponseMessage._();
  UnbanResponseMessage createEmptyInstance() => create();
  static $pb.PbList<UnbanResponseMessage> createRepeated() => $pb.PbList<UnbanResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static UnbanResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnbanResponseMessage>(create);
  static UnbanResponseMessage? _defaultInstance;

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(0);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(0);
}

/// GetInfoRequestMessage returns info about the node.
class GetInfoRequestMessage extends $pb.GeneratedMessage {
  factory GetInfoRequestMessage() => create();
  GetInfoRequestMessage._() : super();
  factory GetInfoRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetInfoRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetInfoRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetInfoRequestMessage clone() => GetInfoRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetInfoRequestMessage copyWith(void Function(GetInfoRequestMessage) updates) => super.copyWith((message) => updates(message as GetInfoRequestMessage)) as GetInfoRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetInfoRequestMessage create() => GetInfoRequestMessage._();
  GetInfoRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetInfoRequestMessage> createRepeated() => $pb.PbList<GetInfoRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetInfoRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetInfoRequestMessage>(create);
  static GetInfoRequestMessage? _defaultInstance;
}

class GetInfoResponseMessage extends $pb.GeneratedMessage {
  factory GetInfoResponseMessage({
    $core.String? p2pId,
    $fixnum.Int64? mempoolSize,
    $core.String? serverVersion,
    $core.bool? isUtxoIndexed,
    $core.bool? isSynced,
    $core.bool? hasNotifyCommand,
    $core.bool? hasMessageId,
    RPCError? error,
  }) {
    final $result = create();
    if (p2pId != null) {
      $result.p2pId = p2pId;
    }
    if (mempoolSize != null) {
      $result.mempoolSize = mempoolSize;
    }
    if (serverVersion != null) {
      $result.serverVersion = serverVersion;
    }
    if (isUtxoIndexed != null) {
      $result.isUtxoIndexed = isUtxoIndexed;
    }
    if (isSynced != null) {
      $result.isSynced = isSynced;
    }
    if (hasNotifyCommand != null) {
      $result.hasNotifyCommand = hasNotifyCommand;
    }
    if (hasMessageId != null) {
      $result.hasMessageId = hasMessageId;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  GetInfoResponseMessage._() : super();
  factory GetInfoResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetInfoResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetInfoResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'p2pId', protoName: 'p2pId')
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'mempoolSize', $pb.PbFieldType.OU6, protoName: 'mempoolSize', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(3, _omitFieldNames ? '' : 'serverVersion', protoName: 'serverVersion')
    ..aOB(4, _omitFieldNames ? '' : 'isUtxoIndexed', protoName: 'isUtxoIndexed')
    ..aOB(5, _omitFieldNames ? '' : 'isSynced', protoName: 'isSynced')
    ..aOB(11, _omitFieldNames ? '' : 'hasNotifyCommand', protoName: 'hasNotifyCommand')
    ..aOB(12, _omitFieldNames ? '' : 'hasMessageId', protoName: 'hasMessageId')
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetInfoResponseMessage clone() => GetInfoResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetInfoResponseMessage copyWith(void Function(GetInfoResponseMessage) updates) => super.copyWith((message) => updates(message as GetInfoResponseMessage)) as GetInfoResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetInfoResponseMessage create() => GetInfoResponseMessage._();
  GetInfoResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetInfoResponseMessage> createRepeated() => $pb.PbList<GetInfoResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetInfoResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetInfoResponseMessage>(create);
  static GetInfoResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get p2pId => $_getSZ(0);
  @$pb.TagNumber(1)
  set p2pId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasP2pId() => $_has(0);
  @$pb.TagNumber(1)
  void clearP2pId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get mempoolSize => $_getI64(1);
  @$pb.TagNumber(2)
  set mempoolSize($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMempoolSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearMempoolSize() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get serverVersion => $_getSZ(2);
  @$pb.TagNumber(3)
  set serverVersion($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasServerVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearServerVersion() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isUtxoIndexed => $_getBF(3);
  @$pb.TagNumber(4)
  set isUtxoIndexed($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsUtxoIndexed() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsUtxoIndexed() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get isSynced => $_getBF(4);
  @$pb.TagNumber(5)
  set isSynced($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIsSynced() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsSynced() => clearField(5);

  @$pb.TagNumber(11)
  $core.bool get hasNotifyCommand => $_getBF(5);
  @$pb.TagNumber(11)
  set hasNotifyCommand($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(11)
  $core.bool hasHasNotifyCommand() => $_has(5);
  @$pb.TagNumber(11)
  void clearHasNotifyCommand() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get hasMessageId => $_getBF(6);
  @$pb.TagNumber(12)
  set hasMessageId($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(12)
  $core.bool hasHasMessageId() => $_has(6);
  @$pb.TagNumber(12)
  void clearHasMessageId() => clearField(12);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(7);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(7);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(7);
}

class EstimateNetworkHashesPerSecondRequestMessage extends $pb.GeneratedMessage {
  factory EstimateNetworkHashesPerSecondRequestMessage({
    $core.int? windowSize,
    $core.String? startHash,
  }) {
    final $result = create();
    if (windowSize != null) {
      $result.windowSize = windowSize;
    }
    if (startHash != null) {
      $result.startHash = startHash;
    }
    return $result;
  }
  EstimateNetworkHashesPerSecondRequestMessage._() : super();
  factory EstimateNetworkHashesPerSecondRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EstimateNetworkHashesPerSecondRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EstimateNetworkHashesPerSecondRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'windowSize', $pb.PbFieldType.OU3, protoName: 'windowSize')
    ..aOS(2, _omitFieldNames ? '' : 'startHash', protoName: 'startHash')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EstimateNetworkHashesPerSecondRequestMessage clone() => EstimateNetworkHashesPerSecondRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EstimateNetworkHashesPerSecondRequestMessage copyWith(void Function(EstimateNetworkHashesPerSecondRequestMessage) updates) => super.copyWith((message) => updates(message as EstimateNetworkHashesPerSecondRequestMessage)) as EstimateNetworkHashesPerSecondRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EstimateNetworkHashesPerSecondRequestMessage create() => EstimateNetworkHashesPerSecondRequestMessage._();
  EstimateNetworkHashesPerSecondRequestMessage createEmptyInstance() => create();
  static $pb.PbList<EstimateNetworkHashesPerSecondRequestMessage> createRepeated() => $pb.PbList<EstimateNetworkHashesPerSecondRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static EstimateNetworkHashesPerSecondRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EstimateNetworkHashesPerSecondRequestMessage>(create);
  static EstimateNetworkHashesPerSecondRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get windowSize => $_getIZ(0);
  @$pb.TagNumber(1)
  set windowSize($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWindowSize() => $_has(0);
  @$pb.TagNumber(1)
  void clearWindowSize() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get startHash => $_getSZ(1);
  @$pb.TagNumber(2)
  set startHash($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStartHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearStartHash() => clearField(2);
}

class EstimateNetworkHashesPerSecondResponseMessage extends $pb.GeneratedMessage {
  factory EstimateNetworkHashesPerSecondResponseMessage({
    $fixnum.Int64? networkHashesPerSecond,
    RPCError? error,
  }) {
    final $result = create();
    if (networkHashesPerSecond != null) {
      $result.networkHashesPerSecond = networkHashesPerSecond;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  EstimateNetworkHashesPerSecondResponseMessage._() : super();
  factory EstimateNetworkHashesPerSecondResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EstimateNetworkHashesPerSecondResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EstimateNetworkHashesPerSecondResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'networkHashesPerSecond', $pb.PbFieldType.OU6, protoName: 'networkHashesPerSecond', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EstimateNetworkHashesPerSecondResponseMessage clone() => EstimateNetworkHashesPerSecondResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EstimateNetworkHashesPerSecondResponseMessage copyWith(void Function(EstimateNetworkHashesPerSecondResponseMessage) updates) => super.copyWith((message) => updates(message as EstimateNetworkHashesPerSecondResponseMessage)) as EstimateNetworkHashesPerSecondResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EstimateNetworkHashesPerSecondResponseMessage create() => EstimateNetworkHashesPerSecondResponseMessage._();
  EstimateNetworkHashesPerSecondResponseMessage createEmptyInstance() => create();
  static $pb.PbList<EstimateNetworkHashesPerSecondResponseMessage> createRepeated() => $pb.PbList<EstimateNetworkHashesPerSecondResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static EstimateNetworkHashesPerSecondResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EstimateNetworkHashesPerSecondResponseMessage>(create);
  static EstimateNetworkHashesPerSecondResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get networkHashesPerSecond => $_getI64(0);
  @$pb.TagNumber(1)
  set networkHashesPerSecond($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNetworkHashesPerSecond() => $_has(0);
  @$pb.TagNumber(1)
  void clearNetworkHashesPerSecond() => clearField(1);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(1);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(1);
}

///  NotifyNewBlockTemplateRequestMessage registers this connection for
///  NewBlockTemplate notifications.
///
///  See: NewBlockTemplateNotificationMessage
class NotifyNewBlockTemplateRequestMessage extends $pb.GeneratedMessage {
  factory NotifyNewBlockTemplateRequestMessage({
    RpcNotifyCommand? command,
  }) {
    final $result = create();
    if (command != null) {
      $result.command = command;
    }
    return $result;
  }
  NotifyNewBlockTemplateRequestMessage._() : super();
  factory NotifyNewBlockTemplateRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NotifyNewBlockTemplateRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NotifyNewBlockTemplateRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..e<RpcNotifyCommand>(101, _omitFieldNames ? '' : 'command', $pb.PbFieldType.OE, defaultOrMaker: RpcNotifyCommand.NOTIFY_START, valueOf: RpcNotifyCommand.valueOf, enumValues: RpcNotifyCommand.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NotifyNewBlockTemplateRequestMessage clone() => NotifyNewBlockTemplateRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NotifyNewBlockTemplateRequestMessage copyWith(void Function(NotifyNewBlockTemplateRequestMessage) updates) => super.copyWith((message) => updates(message as NotifyNewBlockTemplateRequestMessage)) as NotifyNewBlockTemplateRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NotifyNewBlockTemplateRequestMessage create() => NotifyNewBlockTemplateRequestMessage._();
  NotifyNewBlockTemplateRequestMessage createEmptyInstance() => create();
  static $pb.PbList<NotifyNewBlockTemplateRequestMessage> createRepeated() => $pb.PbList<NotifyNewBlockTemplateRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static NotifyNewBlockTemplateRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NotifyNewBlockTemplateRequestMessage>(create);
  static NotifyNewBlockTemplateRequestMessage? _defaultInstance;

  @$pb.TagNumber(101)
  RpcNotifyCommand get command => $_getN(0);
  @$pb.TagNumber(101)
  set command(RpcNotifyCommand v) { setField(101, v); }
  @$pb.TagNumber(101)
  $core.bool hasCommand() => $_has(0);
  @$pb.TagNumber(101)
  void clearCommand() => clearField(101);
}

class NotifyNewBlockTemplateResponseMessage extends $pb.GeneratedMessage {
  factory NotifyNewBlockTemplateResponseMessage({
    RPCError? error,
  }) {
    final $result = create();
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  NotifyNewBlockTemplateResponseMessage._() : super();
  factory NotifyNewBlockTemplateResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NotifyNewBlockTemplateResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NotifyNewBlockTemplateResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NotifyNewBlockTemplateResponseMessage clone() => NotifyNewBlockTemplateResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NotifyNewBlockTemplateResponseMessage copyWith(void Function(NotifyNewBlockTemplateResponseMessage) updates) => super.copyWith((message) => updates(message as NotifyNewBlockTemplateResponseMessage)) as NotifyNewBlockTemplateResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NotifyNewBlockTemplateResponseMessage create() => NotifyNewBlockTemplateResponseMessage._();
  NotifyNewBlockTemplateResponseMessage createEmptyInstance() => create();
  static $pb.PbList<NotifyNewBlockTemplateResponseMessage> createRepeated() => $pb.PbList<NotifyNewBlockTemplateResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static NotifyNewBlockTemplateResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NotifyNewBlockTemplateResponseMessage>(create);
  static NotifyNewBlockTemplateResponseMessage? _defaultInstance;

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(0);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(0);
}

///  NewBlockTemplateNotificationMessage is sent whenever a new updated block template is
///  available for miners.
///
///  See NotifyNewBlockTemplateRequestMessage
class NewBlockTemplateNotificationMessage extends $pb.GeneratedMessage {
  factory NewBlockTemplateNotificationMessage() => create();
  NewBlockTemplateNotificationMessage._() : super();
  factory NewBlockTemplateNotificationMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewBlockTemplateNotificationMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NewBlockTemplateNotificationMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NewBlockTemplateNotificationMessage clone() => NewBlockTemplateNotificationMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NewBlockTemplateNotificationMessage copyWith(void Function(NewBlockTemplateNotificationMessage) updates) => super.copyWith((message) => updates(message as NewBlockTemplateNotificationMessage)) as NewBlockTemplateNotificationMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NewBlockTemplateNotificationMessage create() => NewBlockTemplateNotificationMessage._();
  NewBlockTemplateNotificationMessage createEmptyInstance() => create();
  static $pb.PbList<NewBlockTemplateNotificationMessage> createRepeated() => $pb.PbList<NewBlockTemplateNotificationMessage>();
  @$core.pragma('dart2js:noInline')
  static NewBlockTemplateNotificationMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewBlockTemplateNotificationMessage>(create);
  static NewBlockTemplateNotificationMessage? _defaultInstance;
}

class RpcMempoolEntryByAddress extends $pb.GeneratedMessage {
  factory RpcMempoolEntryByAddress({
    $core.String? address,
    $core.Iterable<RpcMempoolEntry>? sending,
    $core.Iterable<RpcMempoolEntry>? receiving,
  }) {
    final $result = create();
    if (address != null) {
      $result.address = address;
    }
    if (sending != null) {
      $result.sending.addAll(sending);
    }
    if (receiving != null) {
      $result.receiving.addAll(receiving);
    }
    return $result;
  }
  RpcMempoolEntryByAddress._() : super();
  factory RpcMempoolEntryByAddress.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpcMempoolEntryByAddress.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RpcMempoolEntryByAddress', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'address')
    ..pc<RpcMempoolEntry>(2, _omitFieldNames ? '' : 'sending', $pb.PbFieldType.PM, subBuilder: RpcMempoolEntry.create)
    ..pc<RpcMempoolEntry>(3, _omitFieldNames ? '' : 'receiving', $pb.PbFieldType.PM, subBuilder: RpcMempoolEntry.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RpcMempoolEntryByAddress clone() => RpcMempoolEntryByAddress()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RpcMempoolEntryByAddress copyWith(void Function(RpcMempoolEntryByAddress) updates) => super.copyWith((message) => updates(message as RpcMempoolEntryByAddress)) as RpcMempoolEntryByAddress;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RpcMempoolEntryByAddress create() => RpcMempoolEntryByAddress._();
  RpcMempoolEntryByAddress createEmptyInstance() => create();
  static $pb.PbList<RpcMempoolEntryByAddress> createRepeated() => $pb.PbList<RpcMempoolEntryByAddress>();
  @$core.pragma('dart2js:noInline')
  static RpcMempoolEntryByAddress getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpcMempoolEntryByAddress>(create);
  static RpcMempoolEntryByAddress? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<RpcMempoolEntry> get sending => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<RpcMempoolEntry> get receiving => $_getList(2);
}

class GetMempoolEntriesByAddressesRequestMessage extends $pb.GeneratedMessage {
  factory GetMempoolEntriesByAddressesRequestMessage({
    $core.Iterable<$core.String>? addresses,
    $core.bool? includeOrphanPool,
    $core.bool? filterTransactionPool,
  }) {
    final $result = create();
    if (addresses != null) {
      $result.addresses.addAll(addresses);
    }
    if (includeOrphanPool != null) {
      $result.includeOrphanPool = includeOrphanPool;
    }
    if (filterTransactionPool != null) {
      $result.filterTransactionPool = filterTransactionPool;
    }
    return $result;
  }
  GetMempoolEntriesByAddressesRequestMessage._() : super();
  factory GetMempoolEntriesByAddressesRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMempoolEntriesByAddressesRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetMempoolEntriesByAddressesRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'addresses')
    ..aOB(2, _omitFieldNames ? '' : 'includeOrphanPool', protoName: 'includeOrphanPool')
    ..aOB(3, _omitFieldNames ? '' : 'filterTransactionPool', protoName: 'filterTransactionPool')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMempoolEntriesByAddressesRequestMessage clone() => GetMempoolEntriesByAddressesRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMempoolEntriesByAddressesRequestMessage copyWith(void Function(GetMempoolEntriesByAddressesRequestMessage) updates) => super.copyWith((message) => updates(message as GetMempoolEntriesByAddressesRequestMessage)) as GetMempoolEntriesByAddressesRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMempoolEntriesByAddressesRequestMessage create() => GetMempoolEntriesByAddressesRequestMessage._();
  GetMempoolEntriesByAddressesRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetMempoolEntriesByAddressesRequestMessage> createRepeated() => $pb.PbList<GetMempoolEntriesByAddressesRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetMempoolEntriesByAddressesRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMempoolEntriesByAddressesRequestMessage>(create);
  static GetMempoolEntriesByAddressesRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get addresses => $_getList(0);

  @$pb.TagNumber(2)
  $core.bool get includeOrphanPool => $_getBF(1);
  @$pb.TagNumber(2)
  set includeOrphanPool($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIncludeOrphanPool() => $_has(1);
  @$pb.TagNumber(2)
  void clearIncludeOrphanPool() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get filterTransactionPool => $_getBF(2);
  @$pb.TagNumber(3)
  set filterTransactionPool($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFilterTransactionPool() => $_has(2);
  @$pb.TagNumber(3)
  void clearFilterTransactionPool() => clearField(3);
}

class GetMempoolEntriesByAddressesResponseMessage extends $pb.GeneratedMessage {
  factory GetMempoolEntriesByAddressesResponseMessage({
    $core.Iterable<RpcMempoolEntryByAddress>? entries,
    RPCError? error,
  }) {
    final $result = create();
    if (entries != null) {
      $result.entries.addAll(entries);
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  GetMempoolEntriesByAddressesResponseMessage._() : super();
  factory GetMempoolEntriesByAddressesResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMempoolEntriesByAddressesResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetMempoolEntriesByAddressesResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..pc<RpcMempoolEntryByAddress>(1, _omitFieldNames ? '' : 'entries', $pb.PbFieldType.PM, subBuilder: RpcMempoolEntryByAddress.create)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMempoolEntriesByAddressesResponseMessage clone() => GetMempoolEntriesByAddressesResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMempoolEntriesByAddressesResponseMessage copyWith(void Function(GetMempoolEntriesByAddressesResponseMessage) updates) => super.copyWith((message) => updates(message as GetMempoolEntriesByAddressesResponseMessage)) as GetMempoolEntriesByAddressesResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMempoolEntriesByAddressesResponseMessage create() => GetMempoolEntriesByAddressesResponseMessage._();
  GetMempoolEntriesByAddressesResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetMempoolEntriesByAddressesResponseMessage> createRepeated() => $pb.PbList<GetMempoolEntriesByAddressesResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetMempoolEntriesByAddressesResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMempoolEntriesByAddressesResponseMessage>(create);
  static GetMempoolEntriesByAddressesResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RpcMempoolEntryByAddress> get entries => $_getList(0);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(1);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(1);
}

class GetCoinSupplyRequestMessage extends $pb.GeneratedMessage {
  factory GetCoinSupplyRequestMessage() => create();
  GetCoinSupplyRequestMessage._() : super();
  factory GetCoinSupplyRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCoinSupplyRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetCoinSupplyRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCoinSupplyRequestMessage clone() => GetCoinSupplyRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCoinSupplyRequestMessage copyWith(void Function(GetCoinSupplyRequestMessage) updates) => super.copyWith((message) => updates(message as GetCoinSupplyRequestMessage)) as GetCoinSupplyRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetCoinSupplyRequestMessage create() => GetCoinSupplyRequestMessage._();
  GetCoinSupplyRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetCoinSupplyRequestMessage> createRepeated() => $pb.PbList<GetCoinSupplyRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetCoinSupplyRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCoinSupplyRequestMessage>(create);
  static GetCoinSupplyRequestMessage? _defaultInstance;
}

class GetCoinSupplyResponseMessage extends $pb.GeneratedMessage {
  factory GetCoinSupplyResponseMessage({
    $fixnum.Int64? maxSompi,
    $fixnum.Int64? circulatingSompi,
    RPCError? error,
  }) {
    final $result = create();
    if (maxSompi != null) {
      $result.maxSompi = maxSompi;
    }
    if (circulatingSompi != null) {
      $result.circulatingSompi = circulatingSompi;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  GetCoinSupplyResponseMessage._() : super();
  factory GetCoinSupplyResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCoinSupplyResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetCoinSupplyResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'maxSompi', $pb.PbFieldType.OU6, protoName: 'maxSompi', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'circulatingSompi', $pb.PbFieldType.OU6, protoName: 'circulatingSompi', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCoinSupplyResponseMessage clone() => GetCoinSupplyResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCoinSupplyResponseMessage copyWith(void Function(GetCoinSupplyResponseMessage) updates) => super.copyWith((message) => updates(message as GetCoinSupplyResponseMessage)) as GetCoinSupplyResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetCoinSupplyResponseMessage create() => GetCoinSupplyResponseMessage._();
  GetCoinSupplyResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetCoinSupplyResponseMessage> createRepeated() => $pb.PbList<GetCoinSupplyResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetCoinSupplyResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCoinSupplyResponseMessage>(create);
  static GetCoinSupplyResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get maxSompi => $_getI64(0);
  @$pb.TagNumber(1)
  set maxSompi($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMaxSompi() => $_has(0);
  @$pb.TagNumber(1)
  void clearMaxSompi() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get circulatingSompi => $_getI64(1);
  @$pb.TagNumber(2)
  set circulatingSompi($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCirculatingSompi() => $_has(1);
  @$pb.TagNumber(2)
  void clearCirculatingSompi() => clearField(2);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(2);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(2);
}

class PingRequestMessage extends $pb.GeneratedMessage {
  factory PingRequestMessage() => create();
  PingRequestMessage._() : super();
  factory PingRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PingRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PingRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PingRequestMessage clone() => PingRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PingRequestMessage copyWith(void Function(PingRequestMessage) updates) => super.copyWith((message) => updates(message as PingRequestMessage)) as PingRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PingRequestMessage create() => PingRequestMessage._();
  PingRequestMessage createEmptyInstance() => create();
  static $pb.PbList<PingRequestMessage> createRepeated() => $pb.PbList<PingRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static PingRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PingRequestMessage>(create);
  static PingRequestMessage? _defaultInstance;
}

class PingResponseMessage extends $pb.GeneratedMessage {
  factory PingResponseMessage({
    RPCError? error,
  }) {
    final $result = create();
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  PingResponseMessage._() : super();
  factory PingResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PingResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PingResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PingResponseMessage clone() => PingResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PingResponseMessage copyWith(void Function(PingResponseMessage) updates) => super.copyWith((message) => updates(message as PingResponseMessage)) as PingResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PingResponseMessage create() => PingResponseMessage._();
  PingResponseMessage createEmptyInstance() => create();
  static $pb.PbList<PingResponseMessage> createRepeated() => $pb.PbList<PingResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static PingResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PingResponseMessage>(create);
  static PingResponseMessage? _defaultInstance;

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(0);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(0);
}

class ProcessMetrics extends $pb.GeneratedMessage {
  factory ProcessMetrics({
    $fixnum.Int64? residentSetSize,
    $fixnum.Int64? virtualMemorySize,
    $core.int? coreNum,
    $core.double? cpuUsage,
    $core.int? fdNum,
    $fixnum.Int64? diskIoReadBytes,
    $fixnum.Int64? diskIoWriteBytes,
    $core.double? diskIoReadPerSec,
    $core.double? diskIoWritePerSec,
  }) {
    final $result = create();
    if (residentSetSize != null) {
      $result.residentSetSize = residentSetSize;
    }
    if (virtualMemorySize != null) {
      $result.virtualMemorySize = virtualMemorySize;
    }
    if (coreNum != null) {
      $result.coreNum = coreNum;
    }
    if (cpuUsage != null) {
      $result.cpuUsage = cpuUsage;
    }
    if (fdNum != null) {
      $result.fdNum = fdNum;
    }
    if (diskIoReadBytes != null) {
      $result.diskIoReadBytes = diskIoReadBytes;
    }
    if (diskIoWriteBytes != null) {
      $result.diskIoWriteBytes = diskIoWriteBytes;
    }
    if (diskIoReadPerSec != null) {
      $result.diskIoReadPerSec = diskIoReadPerSec;
    }
    if (diskIoWritePerSec != null) {
      $result.diskIoWritePerSec = diskIoWritePerSec;
    }
    return $result;
  }
  ProcessMetrics._() : super();
  factory ProcessMetrics.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProcessMetrics.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProcessMetrics', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'residentSetSize', $pb.PbFieldType.OU6, protoName: 'residentSetSize', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'virtualMemorySize', $pb.PbFieldType.OU6, protoName: 'virtualMemorySize', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'coreNum', $pb.PbFieldType.OU3, protoName: 'coreNum')
    ..a<$core.double>(4, _omitFieldNames ? '' : 'cpuUsage', $pb.PbFieldType.OF, protoName: 'cpuUsage')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'fdNum', $pb.PbFieldType.OU3, protoName: 'fdNum')
    ..a<$fixnum.Int64>(6, _omitFieldNames ? '' : 'diskIoReadBytes', $pb.PbFieldType.OU6, protoName: 'diskIoReadBytes', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(7, _omitFieldNames ? '' : 'diskIoWriteBytes', $pb.PbFieldType.OU6, protoName: 'diskIoWriteBytes', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.double>(8, _omitFieldNames ? '' : 'diskIoReadPerSec', $pb.PbFieldType.OF, protoName: 'diskIoReadPerSec')
    ..a<$core.double>(9, _omitFieldNames ? '' : 'diskIoWritePerSec', $pb.PbFieldType.OF, protoName: 'diskIoWritePerSec')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProcessMetrics clone() => ProcessMetrics()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProcessMetrics copyWith(void Function(ProcessMetrics) updates) => super.copyWith((message) => updates(message as ProcessMetrics)) as ProcessMetrics;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProcessMetrics create() => ProcessMetrics._();
  ProcessMetrics createEmptyInstance() => create();
  static $pb.PbList<ProcessMetrics> createRepeated() => $pb.PbList<ProcessMetrics>();
  @$core.pragma('dart2js:noInline')
  static ProcessMetrics getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProcessMetrics>(create);
  static ProcessMetrics? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get residentSetSize => $_getI64(0);
  @$pb.TagNumber(1)
  set residentSetSize($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResidentSetSize() => $_has(0);
  @$pb.TagNumber(1)
  void clearResidentSetSize() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get virtualMemorySize => $_getI64(1);
  @$pb.TagNumber(2)
  set virtualMemorySize($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVirtualMemorySize() => $_has(1);
  @$pb.TagNumber(2)
  void clearVirtualMemorySize() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get coreNum => $_getIZ(2);
  @$pb.TagNumber(3)
  set coreNum($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCoreNum() => $_has(2);
  @$pb.TagNumber(3)
  void clearCoreNum() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get cpuUsage => $_getN(3);
  @$pb.TagNumber(4)
  set cpuUsage($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCpuUsage() => $_has(3);
  @$pb.TagNumber(4)
  void clearCpuUsage() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get fdNum => $_getIZ(4);
  @$pb.TagNumber(5)
  set fdNum($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFdNum() => $_has(4);
  @$pb.TagNumber(5)
  void clearFdNum() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get diskIoReadBytes => $_getI64(5);
  @$pb.TagNumber(6)
  set diskIoReadBytes($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDiskIoReadBytes() => $_has(5);
  @$pb.TagNumber(6)
  void clearDiskIoReadBytes() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get diskIoWriteBytes => $_getI64(6);
  @$pb.TagNumber(7)
  set diskIoWriteBytes($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDiskIoWriteBytes() => $_has(6);
  @$pb.TagNumber(7)
  void clearDiskIoWriteBytes() => clearField(7);

  @$pb.TagNumber(8)
  $core.double get diskIoReadPerSec => $_getN(7);
  @$pb.TagNumber(8)
  set diskIoReadPerSec($core.double v) { $_setFloat(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDiskIoReadPerSec() => $_has(7);
  @$pb.TagNumber(8)
  void clearDiskIoReadPerSec() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get diskIoWritePerSec => $_getN(8);
  @$pb.TagNumber(9)
  set diskIoWritePerSec($core.double v) { $_setFloat(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasDiskIoWritePerSec() => $_has(8);
  @$pb.TagNumber(9)
  void clearDiskIoWritePerSec() => clearField(9);
}

class ConnectionMetrics extends $pb.GeneratedMessage {
  factory ConnectionMetrics({
    $core.int? borshLiveConnections,
    $fixnum.Int64? borshConnectionAttempts,
    $fixnum.Int64? borshHandshakeFailures,
    $core.int? jsonLiveConnections,
    $fixnum.Int64? jsonConnectionAttempts,
    $fixnum.Int64? jsonHandshakeFailures,
    $core.int? activePeers,
  }) {
    final $result = create();
    if (borshLiveConnections != null) {
      $result.borshLiveConnections = borshLiveConnections;
    }
    if (borshConnectionAttempts != null) {
      $result.borshConnectionAttempts = borshConnectionAttempts;
    }
    if (borshHandshakeFailures != null) {
      $result.borshHandshakeFailures = borshHandshakeFailures;
    }
    if (jsonLiveConnections != null) {
      $result.jsonLiveConnections = jsonLiveConnections;
    }
    if (jsonConnectionAttempts != null) {
      $result.jsonConnectionAttempts = jsonConnectionAttempts;
    }
    if (jsonHandshakeFailures != null) {
      $result.jsonHandshakeFailures = jsonHandshakeFailures;
    }
    if (activePeers != null) {
      $result.activePeers = activePeers;
    }
    return $result;
  }
  ConnectionMetrics._() : super();
  factory ConnectionMetrics.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConnectionMetrics.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ConnectionMetrics', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..a<$core.int>(31, _omitFieldNames ? '' : 'borshLiveConnections', $pb.PbFieldType.OU3, protoName: 'borshLiveConnections')
    ..a<$fixnum.Int64>(32, _omitFieldNames ? '' : 'borshConnectionAttempts', $pb.PbFieldType.OU6, protoName: 'borshConnectionAttempts', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(33, _omitFieldNames ? '' : 'borshHandshakeFailures', $pb.PbFieldType.OU6, protoName: 'borshHandshakeFailures', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(41, _omitFieldNames ? '' : 'jsonLiveConnections', $pb.PbFieldType.OU3, protoName: 'jsonLiveConnections')
    ..a<$fixnum.Int64>(42, _omitFieldNames ? '' : 'jsonConnectionAttempts', $pb.PbFieldType.OU6, protoName: 'jsonConnectionAttempts', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(43, _omitFieldNames ? '' : 'jsonHandshakeFailures', $pb.PbFieldType.OU6, protoName: 'jsonHandshakeFailures', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(51, _omitFieldNames ? '' : 'activePeers', $pb.PbFieldType.OU3, protoName: 'activePeers')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConnectionMetrics clone() => ConnectionMetrics()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConnectionMetrics copyWith(void Function(ConnectionMetrics) updates) => super.copyWith((message) => updates(message as ConnectionMetrics)) as ConnectionMetrics;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConnectionMetrics create() => ConnectionMetrics._();
  ConnectionMetrics createEmptyInstance() => create();
  static $pb.PbList<ConnectionMetrics> createRepeated() => $pb.PbList<ConnectionMetrics>();
  @$core.pragma('dart2js:noInline')
  static ConnectionMetrics getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConnectionMetrics>(create);
  static ConnectionMetrics? _defaultInstance;

  @$pb.TagNumber(31)
  $core.int get borshLiveConnections => $_getIZ(0);
  @$pb.TagNumber(31)
  set borshLiveConnections($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(31)
  $core.bool hasBorshLiveConnections() => $_has(0);
  @$pb.TagNumber(31)
  void clearBorshLiveConnections() => clearField(31);

  @$pb.TagNumber(32)
  $fixnum.Int64 get borshConnectionAttempts => $_getI64(1);
  @$pb.TagNumber(32)
  set borshConnectionAttempts($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(32)
  $core.bool hasBorshConnectionAttempts() => $_has(1);
  @$pb.TagNumber(32)
  void clearBorshConnectionAttempts() => clearField(32);

  @$pb.TagNumber(33)
  $fixnum.Int64 get borshHandshakeFailures => $_getI64(2);
  @$pb.TagNumber(33)
  set borshHandshakeFailures($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(33)
  $core.bool hasBorshHandshakeFailures() => $_has(2);
  @$pb.TagNumber(33)
  void clearBorshHandshakeFailures() => clearField(33);

  @$pb.TagNumber(41)
  $core.int get jsonLiveConnections => $_getIZ(3);
  @$pb.TagNumber(41)
  set jsonLiveConnections($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(41)
  $core.bool hasJsonLiveConnections() => $_has(3);
  @$pb.TagNumber(41)
  void clearJsonLiveConnections() => clearField(41);

  @$pb.TagNumber(42)
  $fixnum.Int64 get jsonConnectionAttempts => $_getI64(4);
  @$pb.TagNumber(42)
  set jsonConnectionAttempts($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(42)
  $core.bool hasJsonConnectionAttempts() => $_has(4);
  @$pb.TagNumber(42)
  void clearJsonConnectionAttempts() => clearField(42);

  @$pb.TagNumber(43)
  $fixnum.Int64 get jsonHandshakeFailures => $_getI64(5);
  @$pb.TagNumber(43)
  set jsonHandshakeFailures($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(43)
  $core.bool hasJsonHandshakeFailures() => $_has(5);
  @$pb.TagNumber(43)
  void clearJsonHandshakeFailures() => clearField(43);

  @$pb.TagNumber(51)
  $core.int get activePeers => $_getIZ(6);
  @$pb.TagNumber(51)
  set activePeers($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(51)
  $core.bool hasActivePeers() => $_has(6);
  @$pb.TagNumber(51)
  void clearActivePeers() => clearField(51);
}

class BandwidthMetrics extends $pb.GeneratedMessage {
  factory BandwidthMetrics({
    $fixnum.Int64? borshBytesTx,
    $fixnum.Int64? borshBytesRx,
    $fixnum.Int64? jsonBytesTx,
    $fixnum.Int64? jsonBytesRx,
    $fixnum.Int64? grpcP2pBytesTx,
    $fixnum.Int64? grpcP2pBytesRx,
    $fixnum.Int64? grpcUserBytesTx,
    $fixnum.Int64? grpcUserBytesRx,
  }) {
    final $result = create();
    if (borshBytesTx != null) {
      $result.borshBytesTx = borshBytesTx;
    }
    if (borshBytesRx != null) {
      $result.borshBytesRx = borshBytesRx;
    }
    if (jsonBytesTx != null) {
      $result.jsonBytesTx = jsonBytesTx;
    }
    if (jsonBytesRx != null) {
      $result.jsonBytesRx = jsonBytesRx;
    }
    if (grpcP2pBytesTx != null) {
      $result.grpcP2pBytesTx = grpcP2pBytesTx;
    }
    if (grpcP2pBytesRx != null) {
      $result.grpcP2pBytesRx = grpcP2pBytesRx;
    }
    if (grpcUserBytesTx != null) {
      $result.grpcUserBytesTx = grpcUserBytesTx;
    }
    if (grpcUserBytesRx != null) {
      $result.grpcUserBytesRx = grpcUserBytesRx;
    }
    return $result;
  }
  BandwidthMetrics._() : super();
  factory BandwidthMetrics.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BandwidthMetrics.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BandwidthMetrics', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(61, _omitFieldNames ? '' : 'borshBytesTx', $pb.PbFieldType.OU6, protoName: 'borshBytesTx', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(62, _omitFieldNames ? '' : 'borshBytesRx', $pb.PbFieldType.OU6, protoName: 'borshBytesRx', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(63, _omitFieldNames ? '' : 'jsonBytesTx', $pb.PbFieldType.OU6, protoName: 'jsonBytesTx', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(64, _omitFieldNames ? '' : 'jsonBytesRx', $pb.PbFieldType.OU6, protoName: 'jsonBytesRx', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(65, _omitFieldNames ? '' : 'grpcP2pBytesTx', $pb.PbFieldType.OU6, protoName: 'grpcP2pBytesTx', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(66, _omitFieldNames ? '' : 'grpcP2pBytesRx', $pb.PbFieldType.OU6, protoName: 'grpcP2pBytesRx', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(67, _omitFieldNames ? '' : 'grpcUserBytesTx', $pb.PbFieldType.OU6, protoName: 'grpcUserBytesTx', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(68, _omitFieldNames ? '' : 'grpcUserBytesRx', $pb.PbFieldType.OU6, protoName: 'grpcUserBytesRx', defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BandwidthMetrics clone() => BandwidthMetrics()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BandwidthMetrics copyWith(void Function(BandwidthMetrics) updates) => super.copyWith((message) => updates(message as BandwidthMetrics)) as BandwidthMetrics;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BandwidthMetrics create() => BandwidthMetrics._();
  BandwidthMetrics createEmptyInstance() => create();
  static $pb.PbList<BandwidthMetrics> createRepeated() => $pb.PbList<BandwidthMetrics>();
  @$core.pragma('dart2js:noInline')
  static BandwidthMetrics getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BandwidthMetrics>(create);
  static BandwidthMetrics? _defaultInstance;

  @$pb.TagNumber(61)
  $fixnum.Int64 get borshBytesTx => $_getI64(0);
  @$pb.TagNumber(61)
  set borshBytesTx($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(61)
  $core.bool hasBorshBytesTx() => $_has(0);
  @$pb.TagNumber(61)
  void clearBorshBytesTx() => clearField(61);

  @$pb.TagNumber(62)
  $fixnum.Int64 get borshBytesRx => $_getI64(1);
  @$pb.TagNumber(62)
  set borshBytesRx($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(62)
  $core.bool hasBorshBytesRx() => $_has(1);
  @$pb.TagNumber(62)
  void clearBorshBytesRx() => clearField(62);

  @$pb.TagNumber(63)
  $fixnum.Int64 get jsonBytesTx => $_getI64(2);
  @$pb.TagNumber(63)
  set jsonBytesTx($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(63)
  $core.bool hasJsonBytesTx() => $_has(2);
  @$pb.TagNumber(63)
  void clearJsonBytesTx() => clearField(63);

  @$pb.TagNumber(64)
  $fixnum.Int64 get jsonBytesRx => $_getI64(3);
  @$pb.TagNumber(64)
  set jsonBytesRx($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(64)
  $core.bool hasJsonBytesRx() => $_has(3);
  @$pb.TagNumber(64)
  void clearJsonBytesRx() => clearField(64);

  @$pb.TagNumber(65)
  $fixnum.Int64 get grpcP2pBytesTx => $_getI64(4);
  @$pb.TagNumber(65)
  set grpcP2pBytesTx($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(65)
  $core.bool hasGrpcP2pBytesTx() => $_has(4);
  @$pb.TagNumber(65)
  void clearGrpcP2pBytesTx() => clearField(65);

  @$pb.TagNumber(66)
  $fixnum.Int64 get grpcP2pBytesRx => $_getI64(5);
  @$pb.TagNumber(66)
  set grpcP2pBytesRx($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(66)
  $core.bool hasGrpcP2pBytesRx() => $_has(5);
  @$pb.TagNumber(66)
  void clearGrpcP2pBytesRx() => clearField(66);

  @$pb.TagNumber(67)
  $fixnum.Int64 get grpcUserBytesTx => $_getI64(6);
  @$pb.TagNumber(67)
  set grpcUserBytesTx($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(67)
  $core.bool hasGrpcUserBytesTx() => $_has(6);
  @$pb.TagNumber(67)
  void clearGrpcUserBytesTx() => clearField(67);

  @$pb.TagNumber(68)
  $fixnum.Int64 get grpcUserBytesRx => $_getI64(7);
  @$pb.TagNumber(68)
  set grpcUserBytesRx($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(68)
  $core.bool hasGrpcUserBytesRx() => $_has(7);
  @$pb.TagNumber(68)
  void clearGrpcUserBytesRx() => clearField(68);
}

class ConsensusMetrics extends $pb.GeneratedMessage {
  factory ConsensusMetrics({
    $fixnum.Int64? blocksSubmitted,
    $fixnum.Int64? headerCounts,
    $fixnum.Int64? depCounts,
    $fixnum.Int64? bodyCounts,
    $fixnum.Int64? txsCounts,
    $fixnum.Int64? chainBlockCounts,
    $fixnum.Int64? massCounts,
    $fixnum.Int64? blockCount,
    $fixnum.Int64? headerCount,
    $fixnum.Int64? mempoolSize,
    $core.int? tipHashesCount,
    $core.double? difficulty,
    $fixnum.Int64? pastMedianTime,
    $core.int? virtualParentHashesCount,
    $fixnum.Int64? virtualDaaScore,
  }) {
    final $result = create();
    if (blocksSubmitted != null) {
      $result.blocksSubmitted = blocksSubmitted;
    }
    if (headerCounts != null) {
      $result.headerCounts = headerCounts;
    }
    if (depCounts != null) {
      $result.depCounts = depCounts;
    }
    if (bodyCounts != null) {
      $result.bodyCounts = bodyCounts;
    }
    if (txsCounts != null) {
      $result.txsCounts = txsCounts;
    }
    if (chainBlockCounts != null) {
      $result.chainBlockCounts = chainBlockCounts;
    }
    if (massCounts != null) {
      $result.massCounts = massCounts;
    }
    if (blockCount != null) {
      $result.blockCount = blockCount;
    }
    if (headerCount != null) {
      $result.headerCount = headerCount;
    }
    if (mempoolSize != null) {
      $result.mempoolSize = mempoolSize;
    }
    if (tipHashesCount != null) {
      $result.tipHashesCount = tipHashesCount;
    }
    if (difficulty != null) {
      $result.difficulty = difficulty;
    }
    if (pastMedianTime != null) {
      $result.pastMedianTime = pastMedianTime;
    }
    if (virtualParentHashesCount != null) {
      $result.virtualParentHashesCount = virtualParentHashesCount;
    }
    if (virtualDaaScore != null) {
      $result.virtualDaaScore = virtualDaaScore;
    }
    return $result;
  }
  ConsensusMetrics._() : super();
  factory ConsensusMetrics.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConsensusMetrics.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ConsensusMetrics', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'blocksSubmitted', $pb.PbFieldType.OU6, protoName: 'blocksSubmitted', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'headerCounts', $pb.PbFieldType.OU6, protoName: 'headerCounts', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'depCounts', $pb.PbFieldType.OU6, protoName: 'depCounts', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, _omitFieldNames ? '' : 'bodyCounts', $pb.PbFieldType.OU6, protoName: 'bodyCounts', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(5, _omitFieldNames ? '' : 'txsCounts', $pb.PbFieldType.OU6, protoName: 'txsCounts', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(6, _omitFieldNames ? '' : 'chainBlockCounts', $pb.PbFieldType.OU6, protoName: 'chainBlockCounts', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(7, _omitFieldNames ? '' : 'massCounts', $pb.PbFieldType.OU6, protoName: 'massCounts', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(11, _omitFieldNames ? '' : 'blockCount', $pb.PbFieldType.OU6, protoName: 'blockCount', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(12, _omitFieldNames ? '' : 'headerCount', $pb.PbFieldType.OU6, protoName: 'headerCount', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(13, _omitFieldNames ? '' : 'mempoolSize', $pb.PbFieldType.OU6, protoName: 'mempoolSize', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(14, _omitFieldNames ? '' : 'tipHashesCount', $pb.PbFieldType.OU3, protoName: 'tipHashesCount')
    ..a<$core.double>(15, _omitFieldNames ? '' : 'difficulty', $pb.PbFieldType.OD)
    ..a<$fixnum.Int64>(16, _omitFieldNames ? '' : 'pastMedianTime', $pb.PbFieldType.OU6, protoName: 'pastMedianTime', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(17, _omitFieldNames ? '' : 'virtualParentHashesCount', $pb.PbFieldType.OU3, protoName: 'virtualParentHashesCount')
    ..a<$fixnum.Int64>(18, _omitFieldNames ? '' : 'virtualDaaScore', $pb.PbFieldType.OU6, protoName: 'virtualDaaScore', defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConsensusMetrics clone() => ConsensusMetrics()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConsensusMetrics copyWith(void Function(ConsensusMetrics) updates) => super.copyWith((message) => updates(message as ConsensusMetrics)) as ConsensusMetrics;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConsensusMetrics create() => ConsensusMetrics._();
  ConsensusMetrics createEmptyInstance() => create();
  static $pb.PbList<ConsensusMetrics> createRepeated() => $pb.PbList<ConsensusMetrics>();
  @$core.pragma('dart2js:noInline')
  static ConsensusMetrics getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConsensusMetrics>(create);
  static ConsensusMetrics? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get blocksSubmitted => $_getI64(0);
  @$pb.TagNumber(1)
  set blocksSubmitted($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBlocksSubmitted() => $_has(0);
  @$pb.TagNumber(1)
  void clearBlocksSubmitted() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get headerCounts => $_getI64(1);
  @$pb.TagNumber(2)
  set headerCounts($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHeaderCounts() => $_has(1);
  @$pb.TagNumber(2)
  void clearHeaderCounts() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get depCounts => $_getI64(2);
  @$pb.TagNumber(3)
  set depCounts($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDepCounts() => $_has(2);
  @$pb.TagNumber(3)
  void clearDepCounts() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get bodyCounts => $_getI64(3);
  @$pb.TagNumber(4)
  set bodyCounts($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBodyCounts() => $_has(3);
  @$pb.TagNumber(4)
  void clearBodyCounts() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get txsCounts => $_getI64(4);
  @$pb.TagNumber(5)
  set txsCounts($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTxsCounts() => $_has(4);
  @$pb.TagNumber(5)
  void clearTxsCounts() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get chainBlockCounts => $_getI64(5);
  @$pb.TagNumber(6)
  set chainBlockCounts($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasChainBlockCounts() => $_has(5);
  @$pb.TagNumber(6)
  void clearChainBlockCounts() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get massCounts => $_getI64(6);
  @$pb.TagNumber(7)
  set massCounts($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasMassCounts() => $_has(6);
  @$pb.TagNumber(7)
  void clearMassCounts() => clearField(7);

  @$pb.TagNumber(11)
  $fixnum.Int64 get blockCount => $_getI64(7);
  @$pb.TagNumber(11)
  set blockCount($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(11)
  $core.bool hasBlockCount() => $_has(7);
  @$pb.TagNumber(11)
  void clearBlockCount() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get headerCount => $_getI64(8);
  @$pb.TagNumber(12)
  set headerCount($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(12)
  $core.bool hasHeaderCount() => $_has(8);
  @$pb.TagNumber(12)
  void clearHeaderCount() => clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get mempoolSize => $_getI64(9);
  @$pb.TagNumber(13)
  set mempoolSize($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(13)
  $core.bool hasMempoolSize() => $_has(9);
  @$pb.TagNumber(13)
  void clearMempoolSize() => clearField(13);

  @$pb.TagNumber(14)
  $core.int get tipHashesCount => $_getIZ(10);
  @$pb.TagNumber(14)
  set tipHashesCount($core.int v) { $_setUnsignedInt32(10, v); }
  @$pb.TagNumber(14)
  $core.bool hasTipHashesCount() => $_has(10);
  @$pb.TagNumber(14)
  void clearTipHashesCount() => clearField(14);

  @$pb.TagNumber(15)
  $core.double get difficulty => $_getN(11);
  @$pb.TagNumber(15)
  set difficulty($core.double v) { $_setDouble(11, v); }
  @$pb.TagNumber(15)
  $core.bool hasDifficulty() => $_has(11);
  @$pb.TagNumber(15)
  void clearDifficulty() => clearField(15);

  @$pb.TagNumber(16)
  $fixnum.Int64 get pastMedianTime => $_getI64(12);
  @$pb.TagNumber(16)
  set pastMedianTime($fixnum.Int64 v) { $_setInt64(12, v); }
  @$pb.TagNumber(16)
  $core.bool hasPastMedianTime() => $_has(12);
  @$pb.TagNumber(16)
  void clearPastMedianTime() => clearField(16);

  @$pb.TagNumber(17)
  $core.int get virtualParentHashesCount => $_getIZ(13);
  @$pb.TagNumber(17)
  set virtualParentHashesCount($core.int v) { $_setUnsignedInt32(13, v); }
  @$pb.TagNumber(17)
  $core.bool hasVirtualParentHashesCount() => $_has(13);
  @$pb.TagNumber(17)
  void clearVirtualParentHashesCount() => clearField(17);

  @$pb.TagNumber(18)
  $fixnum.Int64 get virtualDaaScore => $_getI64(14);
  @$pb.TagNumber(18)
  set virtualDaaScore($fixnum.Int64 v) { $_setInt64(14, v); }
  @$pb.TagNumber(18)
  $core.bool hasVirtualDaaScore() => $_has(14);
  @$pb.TagNumber(18)
  void clearVirtualDaaScore() => clearField(18);
}

class StorageMetrics extends $pb.GeneratedMessage {
  factory StorageMetrics({
    $fixnum.Int64? storageSizeBytes,
  }) {
    final $result = create();
    if (storageSizeBytes != null) {
      $result.storageSizeBytes = storageSizeBytes;
    }
    return $result;
  }
  StorageMetrics._() : super();
  factory StorageMetrics.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StorageMetrics.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StorageMetrics', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'storageSizeBytes', $pb.PbFieldType.OU6, protoName: 'storageSizeBytes', defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StorageMetrics clone() => StorageMetrics()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StorageMetrics copyWith(void Function(StorageMetrics) updates) => super.copyWith((message) => updates(message as StorageMetrics)) as StorageMetrics;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StorageMetrics create() => StorageMetrics._();
  StorageMetrics createEmptyInstance() => create();
  static $pb.PbList<StorageMetrics> createRepeated() => $pb.PbList<StorageMetrics>();
  @$core.pragma('dart2js:noInline')
  static StorageMetrics getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StorageMetrics>(create);
  static StorageMetrics? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get storageSizeBytes => $_getI64(0);
  @$pb.TagNumber(1)
  set storageSizeBytes($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStorageSizeBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearStorageSizeBytes() => clearField(1);
}

class GetConnectionsRequestMessage extends $pb.GeneratedMessage {
  factory GetConnectionsRequestMessage({
    $core.bool? includeProfileData,
  }) {
    final $result = create();
    if (includeProfileData != null) {
      $result.includeProfileData = includeProfileData;
    }
    return $result;
  }
  GetConnectionsRequestMessage._() : super();
  factory GetConnectionsRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetConnectionsRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetConnectionsRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'includeProfileData', protoName: 'includeProfileData')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetConnectionsRequestMessage clone() => GetConnectionsRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetConnectionsRequestMessage copyWith(void Function(GetConnectionsRequestMessage) updates) => super.copyWith((message) => updates(message as GetConnectionsRequestMessage)) as GetConnectionsRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetConnectionsRequestMessage create() => GetConnectionsRequestMessage._();
  GetConnectionsRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetConnectionsRequestMessage> createRepeated() => $pb.PbList<GetConnectionsRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetConnectionsRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetConnectionsRequestMessage>(create);
  static GetConnectionsRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get includeProfileData => $_getBF(0);
  @$pb.TagNumber(1)
  set includeProfileData($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIncludeProfileData() => $_has(0);
  @$pb.TagNumber(1)
  void clearIncludeProfileData() => clearField(1);
}

class ConnectionsProfileData extends $pb.GeneratedMessage {
  factory ConnectionsProfileData({
    $core.double? cpuUsage,
    $fixnum.Int64? memoryUsage,
  }) {
    final $result = create();
    if (cpuUsage != null) {
      $result.cpuUsage = cpuUsage;
    }
    if (memoryUsage != null) {
      $result.memoryUsage = memoryUsage;
    }
    return $result;
  }
  ConnectionsProfileData._() : super();
  factory ConnectionsProfileData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConnectionsProfileData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ConnectionsProfileData', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'cpuUsage', $pb.PbFieldType.OD, protoName: 'cpuUsage')
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'memoryUsage', $pb.PbFieldType.OU6, protoName: 'memoryUsage', defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConnectionsProfileData clone() => ConnectionsProfileData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConnectionsProfileData copyWith(void Function(ConnectionsProfileData) updates) => super.copyWith((message) => updates(message as ConnectionsProfileData)) as ConnectionsProfileData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConnectionsProfileData create() => ConnectionsProfileData._();
  ConnectionsProfileData createEmptyInstance() => create();
  static $pb.PbList<ConnectionsProfileData> createRepeated() => $pb.PbList<ConnectionsProfileData>();
  @$core.pragma('dart2js:noInline')
  static ConnectionsProfileData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConnectionsProfileData>(create);
  static ConnectionsProfileData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get cpuUsage => $_getN(0);
  @$pb.TagNumber(1)
  set cpuUsage($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCpuUsage() => $_has(0);
  @$pb.TagNumber(1)
  void clearCpuUsage() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get memoryUsage => $_getI64(1);
  @$pb.TagNumber(2)
  set memoryUsage($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMemoryUsage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMemoryUsage() => clearField(2);
}

class GetConnectionsResponseMessage extends $pb.GeneratedMessage {
  factory GetConnectionsResponseMessage({
    $core.int? clients,
    $core.int? peers,
    ConnectionsProfileData? profileData,
    RPCError? error,
  }) {
    final $result = create();
    if (clients != null) {
      $result.clients = clients;
    }
    if (peers != null) {
      $result.peers = peers;
    }
    if (profileData != null) {
      $result.profileData = profileData;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  GetConnectionsResponseMessage._() : super();
  factory GetConnectionsResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetConnectionsResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetConnectionsResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'clients', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'peers', $pb.PbFieldType.OU3)
    ..aOM<ConnectionsProfileData>(3, _omitFieldNames ? '' : 'profileData', protoName: 'profileData', subBuilder: ConnectionsProfileData.create)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetConnectionsResponseMessage clone() => GetConnectionsResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetConnectionsResponseMessage copyWith(void Function(GetConnectionsResponseMessage) updates) => super.copyWith((message) => updates(message as GetConnectionsResponseMessage)) as GetConnectionsResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetConnectionsResponseMessage create() => GetConnectionsResponseMessage._();
  GetConnectionsResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetConnectionsResponseMessage> createRepeated() => $pb.PbList<GetConnectionsResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetConnectionsResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetConnectionsResponseMessage>(create);
  static GetConnectionsResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get clients => $_getIZ(0);
  @$pb.TagNumber(1)
  set clients($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasClients() => $_has(0);
  @$pb.TagNumber(1)
  void clearClients() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get peers => $_getIZ(1);
  @$pb.TagNumber(2)
  set peers($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPeers() => $_has(1);
  @$pb.TagNumber(2)
  void clearPeers() => clearField(2);

  @$pb.TagNumber(3)
  ConnectionsProfileData get profileData => $_getN(2);
  @$pb.TagNumber(3)
  set profileData(ConnectionsProfileData v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasProfileData() => $_has(2);
  @$pb.TagNumber(3)
  void clearProfileData() => clearField(3);
  @$pb.TagNumber(3)
  ConnectionsProfileData ensureProfileData() => $_ensure(2);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(3);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(3);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(3);
}

class GetSystemInfoRequestMessage extends $pb.GeneratedMessage {
  factory GetSystemInfoRequestMessage() => create();
  GetSystemInfoRequestMessage._() : super();
  factory GetSystemInfoRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSystemInfoRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSystemInfoRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSystemInfoRequestMessage clone() => GetSystemInfoRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSystemInfoRequestMessage copyWith(void Function(GetSystemInfoRequestMessage) updates) => super.copyWith((message) => updates(message as GetSystemInfoRequestMessage)) as GetSystemInfoRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSystemInfoRequestMessage create() => GetSystemInfoRequestMessage._();
  GetSystemInfoRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetSystemInfoRequestMessage> createRepeated() => $pb.PbList<GetSystemInfoRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetSystemInfoRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSystemInfoRequestMessage>(create);
  static GetSystemInfoRequestMessage? _defaultInstance;
}

class GetSystemInfoResponseMessage extends $pb.GeneratedMessage {
  factory GetSystemInfoResponseMessage({
    $core.String? version,
    $core.String? systemId,
    $core.String? gitHash,
    $core.int? coreNum,
    $fixnum.Int64? totalMemory,
    $core.int? fdLimit,
    RPCError? error,
  }) {
    final $result = create();
    if (version != null) {
      $result.version = version;
    }
    if (systemId != null) {
      $result.systemId = systemId;
    }
    if (gitHash != null) {
      $result.gitHash = gitHash;
    }
    if (coreNum != null) {
      $result.coreNum = coreNum;
    }
    if (totalMemory != null) {
      $result.totalMemory = totalMemory;
    }
    if (fdLimit != null) {
      $result.fdLimit = fdLimit;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  GetSystemInfoResponseMessage._() : super();
  factory GetSystemInfoResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSystemInfoResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSystemInfoResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'version')
    ..aOS(2, _omitFieldNames ? '' : 'systemId', protoName: 'systemId')
    ..aOS(3, _omitFieldNames ? '' : 'gitHash', protoName: 'gitHash')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'coreNum', $pb.PbFieldType.OU3, protoName: 'coreNum')
    ..a<$fixnum.Int64>(5, _omitFieldNames ? '' : 'totalMemory', $pb.PbFieldType.OU6, protoName: 'totalMemory', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'fdLimit', $pb.PbFieldType.OU3, protoName: 'fdLimit')
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSystemInfoResponseMessage clone() => GetSystemInfoResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSystemInfoResponseMessage copyWith(void Function(GetSystemInfoResponseMessage) updates) => super.copyWith((message) => updates(message as GetSystemInfoResponseMessage)) as GetSystemInfoResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSystemInfoResponseMessage create() => GetSystemInfoResponseMessage._();
  GetSystemInfoResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetSystemInfoResponseMessage> createRepeated() => $pb.PbList<GetSystemInfoResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetSystemInfoResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSystemInfoResponseMessage>(create);
  static GetSystemInfoResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get version => $_getSZ(0);
  @$pb.TagNumber(1)
  set version($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get systemId => $_getSZ(1);
  @$pb.TagNumber(2)
  set systemId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSystemId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSystemId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get gitHash => $_getSZ(2);
  @$pb.TagNumber(3)
  set gitHash($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGitHash() => $_has(2);
  @$pb.TagNumber(3)
  void clearGitHash() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get coreNum => $_getIZ(3);
  @$pb.TagNumber(4)
  set coreNum($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCoreNum() => $_has(3);
  @$pb.TagNumber(4)
  void clearCoreNum() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get totalMemory => $_getI64(4);
  @$pb.TagNumber(5)
  set totalMemory($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTotalMemory() => $_has(4);
  @$pb.TagNumber(5)
  void clearTotalMemory() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get fdLimit => $_getIZ(5);
  @$pb.TagNumber(6)
  set fdLimit($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasFdLimit() => $_has(5);
  @$pb.TagNumber(6)
  void clearFdLimit() => clearField(6);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(6);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(6);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(6);
}

class GetMetricsRequestMessage extends $pb.GeneratedMessage {
  factory GetMetricsRequestMessage({
    $core.bool? processMetrics,
    $core.bool? connectionMetrics,
    $core.bool? bandwidthMetrics,
    $core.bool? consensusMetrics,
    $core.bool? storageMetrics,
    $core.bool? customMetrics,
  }) {
    final $result = create();
    if (processMetrics != null) {
      $result.processMetrics = processMetrics;
    }
    if (connectionMetrics != null) {
      $result.connectionMetrics = connectionMetrics;
    }
    if (bandwidthMetrics != null) {
      $result.bandwidthMetrics = bandwidthMetrics;
    }
    if (consensusMetrics != null) {
      $result.consensusMetrics = consensusMetrics;
    }
    if (storageMetrics != null) {
      $result.storageMetrics = storageMetrics;
    }
    if (customMetrics != null) {
      $result.customMetrics = customMetrics;
    }
    return $result;
  }
  GetMetricsRequestMessage._() : super();
  factory GetMetricsRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMetricsRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetMetricsRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'processMetrics', protoName: 'processMetrics')
    ..aOB(2, _omitFieldNames ? '' : 'connectionMetrics', protoName: 'connectionMetrics')
    ..aOB(3, _omitFieldNames ? '' : 'bandwidthMetrics', protoName: 'bandwidthMetrics')
    ..aOB(4, _omitFieldNames ? '' : 'consensusMetrics', protoName: 'consensusMetrics')
    ..aOB(5, _omitFieldNames ? '' : 'storageMetrics', protoName: 'storageMetrics')
    ..aOB(6, _omitFieldNames ? '' : 'customMetrics', protoName: 'customMetrics')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMetricsRequestMessage clone() => GetMetricsRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMetricsRequestMessage copyWith(void Function(GetMetricsRequestMessage) updates) => super.copyWith((message) => updates(message as GetMetricsRequestMessage)) as GetMetricsRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMetricsRequestMessage create() => GetMetricsRequestMessage._();
  GetMetricsRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetMetricsRequestMessage> createRepeated() => $pb.PbList<GetMetricsRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetMetricsRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMetricsRequestMessage>(create);
  static GetMetricsRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get processMetrics => $_getBF(0);
  @$pb.TagNumber(1)
  set processMetrics($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProcessMetrics() => $_has(0);
  @$pb.TagNumber(1)
  void clearProcessMetrics() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get connectionMetrics => $_getBF(1);
  @$pb.TagNumber(2)
  set connectionMetrics($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasConnectionMetrics() => $_has(1);
  @$pb.TagNumber(2)
  void clearConnectionMetrics() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get bandwidthMetrics => $_getBF(2);
  @$pb.TagNumber(3)
  set bandwidthMetrics($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBandwidthMetrics() => $_has(2);
  @$pb.TagNumber(3)
  void clearBandwidthMetrics() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get consensusMetrics => $_getBF(3);
  @$pb.TagNumber(4)
  set consensusMetrics($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasConsensusMetrics() => $_has(3);
  @$pb.TagNumber(4)
  void clearConsensusMetrics() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get storageMetrics => $_getBF(4);
  @$pb.TagNumber(5)
  set storageMetrics($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasStorageMetrics() => $_has(4);
  @$pb.TagNumber(5)
  void clearStorageMetrics() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get customMetrics => $_getBF(5);
  @$pb.TagNumber(6)
  set customMetrics($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCustomMetrics() => $_has(5);
  @$pb.TagNumber(6)
  void clearCustomMetrics() => clearField(6);
}

class GetMetricsResponseMessage extends $pb.GeneratedMessage {
  factory GetMetricsResponseMessage({
    $fixnum.Int64? serverTime,
    ProcessMetrics? processMetrics,
    ConnectionMetrics? connectionMetrics,
    BandwidthMetrics? bandwidthMetrics,
    ConsensusMetrics? consensusMetrics,
    StorageMetrics? storageMetrics,
    RPCError? error,
  }) {
    final $result = create();
    if (serverTime != null) {
      $result.serverTime = serverTime;
    }
    if (processMetrics != null) {
      $result.processMetrics = processMetrics;
    }
    if (connectionMetrics != null) {
      $result.connectionMetrics = connectionMetrics;
    }
    if (bandwidthMetrics != null) {
      $result.bandwidthMetrics = bandwidthMetrics;
    }
    if (consensusMetrics != null) {
      $result.consensusMetrics = consensusMetrics;
    }
    if (storageMetrics != null) {
      $result.storageMetrics = storageMetrics;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  GetMetricsResponseMessage._() : super();
  factory GetMetricsResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMetricsResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetMetricsResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'serverTime', $pb.PbFieldType.OU6, protoName: 'serverTime', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<ProcessMetrics>(11, _omitFieldNames ? '' : 'processMetrics', protoName: 'processMetrics', subBuilder: ProcessMetrics.create)
    ..aOM<ConnectionMetrics>(12, _omitFieldNames ? '' : 'connectionMetrics', protoName: 'connectionMetrics', subBuilder: ConnectionMetrics.create)
    ..aOM<BandwidthMetrics>(13, _omitFieldNames ? '' : 'bandwidthMetrics', protoName: 'bandwidthMetrics', subBuilder: BandwidthMetrics.create)
    ..aOM<ConsensusMetrics>(14, _omitFieldNames ? '' : 'consensusMetrics', protoName: 'consensusMetrics', subBuilder: ConsensusMetrics.create)
    ..aOM<StorageMetrics>(15, _omitFieldNames ? '' : 'storageMetrics', protoName: 'storageMetrics', subBuilder: StorageMetrics.create)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMetricsResponseMessage clone() => GetMetricsResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMetricsResponseMessage copyWith(void Function(GetMetricsResponseMessage) updates) => super.copyWith((message) => updates(message as GetMetricsResponseMessage)) as GetMetricsResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMetricsResponseMessage create() => GetMetricsResponseMessage._();
  GetMetricsResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetMetricsResponseMessage> createRepeated() => $pb.PbList<GetMetricsResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetMetricsResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMetricsResponseMessage>(create);
  static GetMetricsResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get serverTime => $_getI64(0);
  @$pb.TagNumber(1)
  set serverTime($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasServerTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearServerTime() => clearField(1);

  @$pb.TagNumber(11)
  ProcessMetrics get processMetrics => $_getN(1);
  @$pb.TagNumber(11)
  set processMetrics(ProcessMetrics v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasProcessMetrics() => $_has(1);
  @$pb.TagNumber(11)
  void clearProcessMetrics() => clearField(11);
  @$pb.TagNumber(11)
  ProcessMetrics ensureProcessMetrics() => $_ensure(1);

  @$pb.TagNumber(12)
  ConnectionMetrics get connectionMetrics => $_getN(2);
  @$pb.TagNumber(12)
  set connectionMetrics(ConnectionMetrics v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasConnectionMetrics() => $_has(2);
  @$pb.TagNumber(12)
  void clearConnectionMetrics() => clearField(12);
  @$pb.TagNumber(12)
  ConnectionMetrics ensureConnectionMetrics() => $_ensure(2);

  @$pb.TagNumber(13)
  BandwidthMetrics get bandwidthMetrics => $_getN(3);
  @$pb.TagNumber(13)
  set bandwidthMetrics(BandwidthMetrics v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasBandwidthMetrics() => $_has(3);
  @$pb.TagNumber(13)
  void clearBandwidthMetrics() => clearField(13);
  @$pb.TagNumber(13)
  BandwidthMetrics ensureBandwidthMetrics() => $_ensure(3);

  @$pb.TagNumber(14)
  ConsensusMetrics get consensusMetrics => $_getN(4);
  @$pb.TagNumber(14)
  set consensusMetrics(ConsensusMetrics v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasConsensusMetrics() => $_has(4);
  @$pb.TagNumber(14)
  void clearConsensusMetrics() => clearField(14);
  @$pb.TagNumber(14)
  ConsensusMetrics ensureConsensusMetrics() => $_ensure(4);

  @$pb.TagNumber(15)
  StorageMetrics get storageMetrics => $_getN(5);
  @$pb.TagNumber(15)
  set storageMetrics(StorageMetrics v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasStorageMetrics() => $_has(5);
  @$pb.TagNumber(15)
  void clearStorageMetrics() => clearField(15);
  @$pb.TagNumber(15)
  StorageMetrics ensureStorageMetrics() => $_ensure(5);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(6);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(6);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(6);
}

class GetServerInfoRequestMessage extends $pb.GeneratedMessage {
  factory GetServerInfoRequestMessage() => create();
  GetServerInfoRequestMessage._() : super();
  factory GetServerInfoRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetServerInfoRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetServerInfoRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetServerInfoRequestMessage clone() => GetServerInfoRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetServerInfoRequestMessage copyWith(void Function(GetServerInfoRequestMessage) updates) => super.copyWith((message) => updates(message as GetServerInfoRequestMessage)) as GetServerInfoRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetServerInfoRequestMessage create() => GetServerInfoRequestMessage._();
  GetServerInfoRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetServerInfoRequestMessage> createRepeated() => $pb.PbList<GetServerInfoRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetServerInfoRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetServerInfoRequestMessage>(create);
  static GetServerInfoRequestMessage? _defaultInstance;
}

class GetServerInfoResponseMessage extends $pb.GeneratedMessage {
  factory GetServerInfoResponseMessage({
    $core.int? rpcApiVersion,
    $core.int? rpcApiRevision,
    $core.String? serverVersion,
    $core.String? networkId,
    $core.bool? hasUtxoIndex,
    $core.bool? isSynced,
    $fixnum.Int64? virtualDaaScore,
    RPCError? error,
  }) {
    final $result = create();
    if (rpcApiVersion != null) {
      $result.rpcApiVersion = rpcApiVersion;
    }
    if (rpcApiRevision != null) {
      $result.rpcApiRevision = rpcApiRevision;
    }
    if (serverVersion != null) {
      $result.serverVersion = serverVersion;
    }
    if (networkId != null) {
      $result.networkId = networkId;
    }
    if (hasUtxoIndex != null) {
      $result.hasUtxoIndex = hasUtxoIndex;
    }
    if (isSynced != null) {
      $result.isSynced = isSynced;
    }
    if (virtualDaaScore != null) {
      $result.virtualDaaScore = virtualDaaScore;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  GetServerInfoResponseMessage._() : super();
  factory GetServerInfoResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetServerInfoResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetServerInfoResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'rpcApiVersion', $pb.PbFieldType.OU3, protoName: 'rpcApiVersion')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'rpcApiRevision', $pb.PbFieldType.OU3, protoName: 'rpcApiRevision')
    ..aOS(3, _omitFieldNames ? '' : 'serverVersion', protoName: 'serverVersion')
    ..aOS(4, _omitFieldNames ? '' : 'networkId', protoName: 'networkId')
    ..aOB(5, _omitFieldNames ? '' : 'hasUtxoIndex', protoName: 'hasUtxoIndex')
    ..aOB(6, _omitFieldNames ? '' : 'isSynced', protoName: 'isSynced')
    ..a<$fixnum.Int64>(7, _omitFieldNames ? '' : 'virtualDaaScore', $pb.PbFieldType.OU6, protoName: 'virtualDaaScore', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetServerInfoResponseMessage clone() => GetServerInfoResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetServerInfoResponseMessage copyWith(void Function(GetServerInfoResponseMessage) updates) => super.copyWith((message) => updates(message as GetServerInfoResponseMessage)) as GetServerInfoResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetServerInfoResponseMessage create() => GetServerInfoResponseMessage._();
  GetServerInfoResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetServerInfoResponseMessage> createRepeated() => $pb.PbList<GetServerInfoResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetServerInfoResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetServerInfoResponseMessage>(create);
  static GetServerInfoResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get rpcApiVersion => $_getIZ(0);
  @$pb.TagNumber(1)
  set rpcApiVersion($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRpcApiVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearRpcApiVersion() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get rpcApiRevision => $_getIZ(1);
  @$pb.TagNumber(2)
  set rpcApiRevision($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRpcApiRevision() => $_has(1);
  @$pb.TagNumber(2)
  void clearRpcApiRevision() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get serverVersion => $_getSZ(2);
  @$pb.TagNumber(3)
  set serverVersion($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasServerVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearServerVersion() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get networkId => $_getSZ(3);
  @$pb.TagNumber(4)
  set networkId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNetworkId() => $_has(3);
  @$pb.TagNumber(4)
  void clearNetworkId() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get hasUtxoIndex => $_getBF(4);
  @$pb.TagNumber(5)
  set hasUtxoIndex($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasHasUtxoIndex() => $_has(4);
  @$pb.TagNumber(5)
  void clearHasUtxoIndex() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get isSynced => $_getBF(5);
  @$pb.TagNumber(6)
  set isSynced($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasIsSynced() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsSynced() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get virtualDaaScore => $_getI64(6);
  @$pb.TagNumber(7)
  set virtualDaaScore($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasVirtualDaaScore() => $_has(6);
  @$pb.TagNumber(7)
  void clearVirtualDaaScore() => clearField(7);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(7);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(7);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(7);
}

class GetSyncStatusRequestMessage extends $pb.GeneratedMessage {
  factory GetSyncStatusRequestMessage() => create();
  GetSyncStatusRequestMessage._() : super();
  factory GetSyncStatusRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSyncStatusRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSyncStatusRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSyncStatusRequestMessage clone() => GetSyncStatusRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSyncStatusRequestMessage copyWith(void Function(GetSyncStatusRequestMessage) updates) => super.copyWith((message) => updates(message as GetSyncStatusRequestMessage)) as GetSyncStatusRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSyncStatusRequestMessage create() => GetSyncStatusRequestMessage._();
  GetSyncStatusRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetSyncStatusRequestMessage> createRepeated() => $pb.PbList<GetSyncStatusRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetSyncStatusRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSyncStatusRequestMessage>(create);
  static GetSyncStatusRequestMessage? _defaultInstance;
}

class GetSyncStatusResponseMessage extends $pb.GeneratedMessage {
  factory GetSyncStatusResponseMessage({
    $core.bool? isSynced,
    RPCError? error,
  }) {
    final $result = create();
    if (isSynced != null) {
      $result.isSynced = isSynced;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  GetSyncStatusResponseMessage._() : super();
  factory GetSyncStatusResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSyncStatusResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSyncStatusResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isSynced', protoName: 'isSynced')
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSyncStatusResponseMessage clone() => GetSyncStatusResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSyncStatusResponseMessage copyWith(void Function(GetSyncStatusResponseMessage) updates) => super.copyWith((message) => updates(message as GetSyncStatusResponseMessage)) as GetSyncStatusResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSyncStatusResponseMessage create() => GetSyncStatusResponseMessage._();
  GetSyncStatusResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetSyncStatusResponseMessage> createRepeated() => $pb.PbList<GetSyncStatusResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetSyncStatusResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSyncStatusResponseMessage>(create);
  static GetSyncStatusResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isSynced => $_getBF(0);
  @$pb.TagNumber(1)
  set isSynced($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsSynced() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsSynced() => clearField(1);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(1);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(1);
}

class GetDaaScoreTimestampEstimateRequestMessage extends $pb.GeneratedMessage {
  factory GetDaaScoreTimestampEstimateRequestMessage({
    $core.Iterable<$fixnum.Int64>? daaScores,
  }) {
    final $result = create();
    if (daaScores != null) {
      $result.daaScores.addAll(daaScores);
    }
    return $result;
  }
  GetDaaScoreTimestampEstimateRequestMessage._() : super();
  factory GetDaaScoreTimestampEstimateRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDaaScoreTimestampEstimateRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetDaaScoreTimestampEstimateRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'daaScores', $pb.PbFieldType.KU6)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDaaScoreTimestampEstimateRequestMessage clone() => GetDaaScoreTimestampEstimateRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDaaScoreTimestampEstimateRequestMessage copyWith(void Function(GetDaaScoreTimestampEstimateRequestMessage) updates) => super.copyWith((message) => updates(message as GetDaaScoreTimestampEstimateRequestMessage)) as GetDaaScoreTimestampEstimateRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDaaScoreTimestampEstimateRequestMessage create() => GetDaaScoreTimestampEstimateRequestMessage._();
  GetDaaScoreTimestampEstimateRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetDaaScoreTimestampEstimateRequestMessage> createRepeated() => $pb.PbList<GetDaaScoreTimestampEstimateRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetDaaScoreTimestampEstimateRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDaaScoreTimestampEstimateRequestMessage>(create);
  static GetDaaScoreTimestampEstimateRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get daaScores => $_getList(0);
}

class GetDaaScoreTimestampEstimateResponseMessage extends $pb.GeneratedMessage {
  factory GetDaaScoreTimestampEstimateResponseMessage({
    $core.Iterable<$fixnum.Int64>? timestamps,
    RPCError? error,
  }) {
    final $result = create();
    if (timestamps != null) {
      $result.timestamps.addAll(timestamps);
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  GetDaaScoreTimestampEstimateResponseMessage._() : super();
  factory GetDaaScoreTimestampEstimateResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDaaScoreTimestampEstimateResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetDaaScoreTimestampEstimateResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'timestamps', $pb.PbFieldType.KU6)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDaaScoreTimestampEstimateResponseMessage clone() => GetDaaScoreTimestampEstimateResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDaaScoreTimestampEstimateResponseMessage copyWith(void Function(GetDaaScoreTimestampEstimateResponseMessage) updates) => super.copyWith((message) => updates(message as GetDaaScoreTimestampEstimateResponseMessage)) as GetDaaScoreTimestampEstimateResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDaaScoreTimestampEstimateResponseMessage create() => GetDaaScoreTimestampEstimateResponseMessage._();
  GetDaaScoreTimestampEstimateResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetDaaScoreTimestampEstimateResponseMessage> createRepeated() => $pb.PbList<GetDaaScoreTimestampEstimateResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetDaaScoreTimestampEstimateResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDaaScoreTimestampEstimateResponseMessage>(create);
  static GetDaaScoreTimestampEstimateResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get timestamps => $_getList(0);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(1);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(1);
}

class RpcFeerateBucket extends $pb.GeneratedMessage {
  factory RpcFeerateBucket({
    $core.double? feerate,
    $core.double? estimatedSeconds,
  }) {
    final $result = create();
    if (feerate != null) {
      $result.feerate = feerate;
    }
    if (estimatedSeconds != null) {
      $result.estimatedSeconds = estimatedSeconds;
    }
    return $result;
  }
  RpcFeerateBucket._() : super();
  factory RpcFeerateBucket.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpcFeerateBucket.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RpcFeerateBucket', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'feerate', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'estimatedSeconds', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RpcFeerateBucket clone() => RpcFeerateBucket()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RpcFeerateBucket copyWith(void Function(RpcFeerateBucket) updates) => super.copyWith((message) => updates(message as RpcFeerateBucket)) as RpcFeerateBucket;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RpcFeerateBucket create() => RpcFeerateBucket._();
  RpcFeerateBucket createEmptyInstance() => create();
  static $pb.PbList<RpcFeerateBucket> createRepeated() => $pb.PbList<RpcFeerateBucket>();
  @$core.pragma('dart2js:noInline')
  static RpcFeerateBucket getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpcFeerateBucket>(create);
  static RpcFeerateBucket? _defaultInstance;

  /// Fee/mass of a transaction in `sompi/gram` units
  @$pb.TagNumber(1)
  $core.double get feerate => $_getN(0);
  @$pb.TagNumber(1)
  set feerate($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFeerate() => $_has(0);
  @$pb.TagNumber(1)
  void clearFeerate() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get estimatedSeconds => $_getN(1);
  @$pb.TagNumber(2)
  set estimatedSeconds($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEstimatedSeconds() => $_has(1);
  @$pb.TagNumber(2)
  void clearEstimatedSeconds() => clearField(2);
}

/// Data required for making fee estimates.
///
/// Feerate values represent fee/mass of a transaction in `sompi/gram` units.
/// Given a feerate value recommendation, calculate the required fee by
/// taking the transaction mass and multiplying it by feerate: `fee = feerate * mass(tx)`
class RpcFeeEstimate extends $pb.GeneratedMessage {
  factory RpcFeeEstimate({
    RpcFeerateBucket? priorityBucket,
    $core.Iterable<RpcFeerateBucket>? normalBuckets,
    $core.Iterable<RpcFeerateBucket>? lowBuckets,
  }) {
    final $result = create();
    if (priorityBucket != null) {
      $result.priorityBucket = priorityBucket;
    }
    if (normalBuckets != null) {
      $result.normalBuckets.addAll(normalBuckets);
    }
    if (lowBuckets != null) {
      $result.lowBuckets.addAll(lowBuckets);
    }
    return $result;
  }
  RpcFeeEstimate._() : super();
  factory RpcFeeEstimate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpcFeeEstimate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RpcFeeEstimate', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOM<RpcFeerateBucket>(1, _omitFieldNames ? '' : 'priorityBucket', subBuilder: RpcFeerateBucket.create)
    ..pc<RpcFeerateBucket>(2, _omitFieldNames ? '' : 'normalBuckets', $pb.PbFieldType.PM, subBuilder: RpcFeerateBucket.create)
    ..pc<RpcFeerateBucket>(3, _omitFieldNames ? '' : 'lowBuckets', $pb.PbFieldType.PM, subBuilder: RpcFeerateBucket.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RpcFeeEstimate clone() => RpcFeeEstimate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RpcFeeEstimate copyWith(void Function(RpcFeeEstimate) updates) => super.copyWith((message) => updates(message as RpcFeeEstimate)) as RpcFeeEstimate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RpcFeeEstimate create() => RpcFeeEstimate._();
  RpcFeeEstimate createEmptyInstance() => create();
  static $pb.PbList<RpcFeeEstimate> createRepeated() => $pb.PbList<RpcFeeEstimate>();
  @$core.pragma('dart2js:noInline')
  static RpcFeeEstimate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpcFeeEstimate>(create);
  static RpcFeeEstimate? _defaultInstance;

  /// Top-priority feerate bucket. Provides an estimation of the feerate required for sub-second DAG inclusion.
  @$pb.TagNumber(1)
  RpcFeerateBucket get priorityBucket => $_getN(0);
  @$pb.TagNumber(1)
  set priorityBucket(RpcFeerateBucket v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPriorityBucket() => $_has(0);
  @$pb.TagNumber(1)
  void clearPriorityBucket() => clearField(1);
  @$pb.TagNumber(1)
  RpcFeerateBucket ensurePriorityBucket() => $_ensure(0);

  /// A vector of *normal* priority feerate values. The first value of this vector is guaranteed to exist and
  /// provide an estimation for sub-*minute* DAG inclusion. All other values will have shorter estimation
  /// times than all `low_bucket` values. Therefor by chaining `[priority] | normal | low` and interpolating
  /// between them, one can compose a complete feerate function on the client side. The API makes an effort
  /// to sample enough "interesting" points on the feerate-to-time curve, so that the interpolation is meaningful.
  @$pb.TagNumber(2)
  $core.List<RpcFeerateBucket> get normalBuckets => $_getList(1);

  /// A vector of *low* priority feerate values. The first value of this vector is guaranteed to
  /// exist and provide an estimation for sub-*hour* DAG inclusion.
  @$pb.TagNumber(3)
  $core.List<RpcFeerateBucket> get lowBuckets => $_getList(2);
}

class RpcFeeEstimateVerboseExperimentalData extends $pb.GeneratedMessage {
  factory RpcFeeEstimateVerboseExperimentalData({
    $fixnum.Int64? mempoolReadyTransactionsCount,
    $fixnum.Int64? mempoolReadyTransactionsTotalMass,
    $fixnum.Int64? networkMassPerSecond,
    $core.double? nextBlockTemplateFeerateMin,
    $core.double? nextBlockTemplateFeerateMedian,
    $core.double? nextBlockTemplateFeerateMax,
  }) {
    final $result = create();
    if (mempoolReadyTransactionsCount != null) {
      $result.mempoolReadyTransactionsCount = mempoolReadyTransactionsCount;
    }
    if (mempoolReadyTransactionsTotalMass != null) {
      $result.mempoolReadyTransactionsTotalMass = mempoolReadyTransactionsTotalMass;
    }
    if (networkMassPerSecond != null) {
      $result.networkMassPerSecond = networkMassPerSecond;
    }
    if (nextBlockTemplateFeerateMin != null) {
      $result.nextBlockTemplateFeerateMin = nextBlockTemplateFeerateMin;
    }
    if (nextBlockTemplateFeerateMedian != null) {
      $result.nextBlockTemplateFeerateMedian = nextBlockTemplateFeerateMedian;
    }
    if (nextBlockTemplateFeerateMax != null) {
      $result.nextBlockTemplateFeerateMax = nextBlockTemplateFeerateMax;
    }
    return $result;
  }
  RpcFeeEstimateVerboseExperimentalData._() : super();
  factory RpcFeeEstimateVerboseExperimentalData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpcFeeEstimateVerboseExperimentalData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RpcFeeEstimateVerboseExperimentalData', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'mempoolReadyTransactionsCount', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'mempoolReadyTransactionsTotalMass', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'networkMassPerSecond', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.double>(11, _omitFieldNames ? '' : 'nextBlockTemplateFeerateMin', $pb.PbFieldType.OD)
    ..a<$core.double>(12, _omitFieldNames ? '' : 'nextBlockTemplateFeerateMedian', $pb.PbFieldType.OD)
    ..a<$core.double>(13, _omitFieldNames ? '' : 'nextBlockTemplateFeerateMax', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RpcFeeEstimateVerboseExperimentalData clone() => RpcFeeEstimateVerboseExperimentalData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RpcFeeEstimateVerboseExperimentalData copyWith(void Function(RpcFeeEstimateVerboseExperimentalData) updates) => super.copyWith((message) => updates(message as RpcFeeEstimateVerboseExperimentalData)) as RpcFeeEstimateVerboseExperimentalData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RpcFeeEstimateVerboseExperimentalData create() => RpcFeeEstimateVerboseExperimentalData._();
  RpcFeeEstimateVerboseExperimentalData createEmptyInstance() => create();
  static $pb.PbList<RpcFeeEstimateVerboseExperimentalData> createRepeated() => $pb.PbList<RpcFeeEstimateVerboseExperimentalData>();
  @$core.pragma('dart2js:noInline')
  static RpcFeeEstimateVerboseExperimentalData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpcFeeEstimateVerboseExperimentalData>(create);
  static RpcFeeEstimateVerboseExperimentalData? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get mempoolReadyTransactionsCount => $_getI64(0);
  @$pb.TagNumber(1)
  set mempoolReadyTransactionsCount($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMempoolReadyTransactionsCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearMempoolReadyTransactionsCount() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get mempoolReadyTransactionsTotalMass => $_getI64(1);
  @$pb.TagNumber(2)
  set mempoolReadyTransactionsTotalMass($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMempoolReadyTransactionsTotalMass() => $_has(1);
  @$pb.TagNumber(2)
  void clearMempoolReadyTransactionsTotalMass() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get networkMassPerSecond => $_getI64(2);
  @$pb.TagNumber(3)
  set networkMassPerSecond($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNetworkMassPerSecond() => $_has(2);
  @$pb.TagNumber(3)
  void clearNetworkMassPerSecond() => clearField(3);

  @$pb.TagNumber(11)
  $core.double get nextBlockTemplateFeerateMin => $_getN(3);
  @$pb.TagNumber(11)
  set nextBlockTemplateFeerateMin($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(11)
  $core.bool hasNextBlockTemplateFeerateMin() => $_has(3);
  @$pb.TagNumber(11)
  void clearNextBlockTemplateFeerateMin() => clearField(11);

  @$pb.TagNumber(12)
  $core.double get nextBlockTemplateFeerateMedian => $_getN(4);
  @$pb.TagNumber(12)
  set nextBlockTemplateFeerateMedian($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(12)
  $core.bool hasNextBlockTemplateFeerateMedian() => $_has(4);
  @$pb.TagNumber(12)
  void clearNextBlockTemplateFeerateMedian() => clearField(12);

  @$pb.TagNumber(13)
  $core.double get nextBlockTemplateFeerateMax => $_getN(5);
  @$pb.TagNumber(13)
  set nextBlockTemplateFeerateMax($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(13)
  $core.bool hasNextBlockTemplateFeerateMax() => $_has(5);
  @$pb.TagNumber(13)
  void clearNextBlockTemplateFeerateMax() => clearField(13);
}

class GetFeeEstimateRequestMessage extends $pb.GeneratedMessage {
  factory GetFeeEstimateRequestMessage() => create();
  GetFeeEstimateRequestMessage._() : super();
  factory GetFeeEstimateRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetFeeEstimateRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetFeeEstimateRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetFeeEstimateRequestMessage clone() => GetFeeEstimateRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetFeeEstimateRequestMessage copyWith(void Function(GetFeeEstimateRequestMessage) updates) => super.copyWith((message) => updates(message as GetFeeEstimateRequestMessage)) as GetFeeEstimateRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetFeeEstimateRequestMessage create() => GetFeeEstimateRequestMessage._();
  GetFeeEstimateRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetFeeEstimateRequestMessage> createRepeated() => $pb.PbList<GetFeeEstimateRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetFeeEstimateRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetFeeEstimateRequestMessage>(create);
  static GetFeeEstimateRequestMessage? _defaultInstance;
}

class GetFeeEstimateResponseMessage extends $pb.GeneratedMessage {
  factory GetFeeEstimateResponseMessage({
    RpcFeeEstimate? estimate,
    RPCError? error,
  }) {
    final $result = create();
    if (estimate != null) {
      $result.estimate = estimate;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  GetFeeEstimateResponseMessage._() : super();
  factory GetFeeEstimateResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetFeeEstimateResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetFeeEstimateResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOM<RpcFeeEstimate>(1, _omitFieldNames ? '' : 'estimate', subBuilder: RpcFeeEstimate.create)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetFeeEstimateResponseMessage clone() => GetFeeEstimateResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetFeeEstimateResponseMessage copyWith(void Function(GetFeeEstimateResponseMessage) updates) => super.copyWith((message) => updates(message as GetFeeEstimateResponseMessage)) as GetFeeEstimateResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetFeeEstimateResponseMessage create() => GetFeeEstimateResponseMessage._();
  GetFeeEstimateResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetFeeEstimateResponseMessage> createRepeated() => $pb.PbList<GetFeeEstimateResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetFeeEstimateResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetFeeEstimateResponseMessage>(create);
  static GetFeeEstimateResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  RpcFeeEstimate get estimate => $_getN(0);
  @$pb.TagNumber(1)
  set estimate(RpcFeeEstimate v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEstimate() => $_has(0);
  @$pb.TagNumber(1)
  void clearEstimate() => clearField(1);
  @$pb.TagNumber(1)
  RpcFeeEstimate ensureEstimate() => $_ensure(0);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(1);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(1);
}

class GetFeeEstimateExperimentalRequestMessage extends $pb.GeneratedMessage {
  factory GetFeeEstimateExperimentalRequestMessage({
    $core.bool? verbose,
  }) {
    final $result = create();
    if (verbose != null) {
      $result.verbose = verbose;
    }
    return $result;
  }
  GetFeeEstimateExperimentalRequestMessage._() : super();
  factory GetFeeEstimateExperimentalRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetFeeEstimateExperimentalRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetFeeEstimateExperimentalRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'verbose')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetFeeEstimateExperimentalRequestMessage clone() => GetFeeEstimateExperimentalRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetFeeEstimateExperimentalRequestMessage copyWith(void Function(GetFeeEstimateExperimentalRequestMessage) updates) => super.copyWith((message) => updates(message as GetFeeEstimateExperimentalRequestMessage)) as GetFeeEstimateExperimentalRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetFeeEstimateExperimentalRequestMessage create() => GetFeeEstimateExperimentalRequestMessage._();
  GetFeeEstimateExperimentalRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetFeeEstimateExperimentalRequestMessage> createRepeated() => $pb.PbList<GetFeeEstimateExperimentalRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetFeeEstimateExperimentalRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetFeeEstimateExperimentalRequestMessage>(create);
  static GetFeeEstimateExperimentalRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get verbose => $_getBF(0);
  @$pb.TagNumber(1)
  set verbose($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVerbose() => $_has(0);
  @$pb.TagNumber(1)
  void clearVerbose() => clearField(1);
}

class GetFeeEstimateExperimentalResponseMessage extends $pb.GeneratedMessage {
  factory GetFeeEstimateExperimentalResponseMessage({
    RpcFeeEstimate? estimate,
    RpcFeeEstimateVerboseExperimentalData? verbose,
    RPCError? error,
  }) {
    final $result = create();
    if (estimate != null) {
      $result.estimate = estimate;
    }
    if (verbose != null) {
      $result.verbose = verbose;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  GetFeeEstimateExperimentalResponseMessage._() : super();
  factory GetFeeEstimateExperimentalResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetFeeEstimateExperimentalResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetFeeEstimateExperimentalResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOM<RpcFeeEstimate>(1, _omitFieldNames ? '' : 'estimate', subBuilder: RpcFeeEstimate.create)
    ..aOM<RpcFeeEstimateVerboseExperimentalData>(2, _omitFieldNames ? '' : 'verbose', subBuilder: RpcFeeEstimateVerboseExperimentalData.create)
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetFeeEstimateExperimentalResponseMessage clone() => GetFeeEstimateExperimentalResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetFeeEstimateExperimentalResponseMessage copyWith(void Function(GetFeeEstimateExperimentalResponseMessage) updates) => super.copyWith((message) => updates(message as GetFeeEstimateExperimentalResponseMessage)) as GetFeeEstimateExperimentalResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetFeeEstimateExperimentalResponseMessage create() => GetFeeEstimateExperimentalResponseMessage._();
  GetFeeEstimateExperimentalResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetFeeEstimateExperimentalResponseMessage> createRepeated() => $pb.PbList<GetFeeEstimateExperimentalResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetFeeEstimateExperimentalResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetFeeEstimateExperimentalResponseMessage>(create);
  static GetFeeEstimateExperimentalResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  RpcFeeEstimate get estimate => $_getN(0);
  @$pb.TagNumber(1)
  set estimate(RpcFeeEstimate v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEstimate() => $_has(0);
  @$pb.TagNumber(1)
  void clearEstimate() => clearField(1);
  @$pb.TagNumber(1)
  RpcFeeEstimate ensureEstimate() => $_ensure(0);

  @$pb.TagNumber(2)
  RpcFeeEstimateVerboseExperimentalData get verbose => $_getN(1);
  @$pb.TagNumber(2)
  set verbose(RpcFeeEstimateVerboseExperimentalData v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasVerbose() => $_has(1);
  @$pb.TagNumber(2)
  void clearVerbose() => clearField(2);
  @$pb.TagNumber(2)
  RpcFeeEstimateVerboseExperimentalData ensureVerbose() => $_ensure(1);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(2);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(2);
}

class GetCurrentBlockColorRequestMessage extends $pb.GeneratedMessage {
  factory GetCurrentBlockColorRequestMessage({
    $core.String? hash,
  }) {
    final $result = create();
    if (hash != null) {
      $result.hash = hash;
    }
    return $result;
  }
  GetCurrentBlockColorRequestMessage._() : super();
  factory GetCurrentBlockColorRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCurrentBlockColorRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetCurrentBlockColorRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'hash')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCurrentBlockColorRequestMessage clone() => GetCurrentBlockColorRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCurrentBlockColorRequestMessage copyWith(void Function(GetCurrentBlockColorRequestMessage) updates) => super.copyWith((message) => updates(message as GetCurrentBlockColorRequestMessage)) as GetCurrentBlockColorRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetCurrentBlockColorRequestMessage create() => GetCurrentBlockColorRequestMessage._();
  GetCurrentBlockColorRequestMessage createEmptyInstance() => create();
  static $pb.PbList<GetCurrentBlockColorRequestMessage> createRepeated() => $pb.PbList<GetCurrentBlockColorRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static GetCurrentBlockColorRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCurrentBlockColorRequestMessage>(create);
  static GetCurrentBlockColorRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get hash => $_getSZ(0);
  @$pb.TagNumber(1)
  set hash($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearHash() => clearField(1);
}

class GetCurrentBlockColorResponseMessage extends $pb.GeneratedMessage {
  factory GetCurrentBlockColorResponseMessage({
    $core.bool? blue,
    RPCError? error,
  }) {
    final $result = create();
    if (blue != null) {
      $result.blue = blue;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  GetCurrentBlockColorResponseMessage._() : super();
  factory GetCurrentBlockColorResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCurrentBlockColorResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetCurrentBlockColorResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'protowire'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'blue')
    ..aOM<RPCError>(1000, _omitFieldNames ? '' : 'error', subBuilder: RPCError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCurrentBlockColorResponseMessage clone() => GetCurrentBlockColorResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCurrentBlockColorResponseMessage copyWith(void Function(GetCurrentBlockColorResponseMessage) updates) => super.copyWith((message) => updates(message as GetCurrentBlockColorResponseMessage)) as GetCurrentBlockColorResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetCurrentBlockColorResponseMessage create() => GetCurrentBlockColorResponseMessage._();
  GetCurrentBlockColorResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GetCurrentBlockColorResponseMessage> createRepeated() => $pb.PbList<GetCurrentBlockColorResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GetCurrentBlockColorResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCurrentBlockColorResponseMessage>(create);
  static GetCurrentBlockColorResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get blue => $_getBF(0);
  @$pb.TagNumber(1)
  set blue($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBlue() => $_has(0);
  @$pb.TagNumber(1)
  void clearBlue() => clearField(1);

  @$pb.TagNumber(1000)
  RPCError get error => $_getN(1);
  @$pb.TagNumber(1000)
  set error(RPCError v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(1000)
  void clearError() => clearField(1000);
  @$pb.TagNumber(1000)
  RPCError ensureError() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
