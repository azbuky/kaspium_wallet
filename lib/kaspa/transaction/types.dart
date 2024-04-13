import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils.dart';
import '../grpc/rpc.pb.dart';
import '../kaspa.dart';

part 'types.freezed.dart';
part 'types.g.dart';

final kFeePerInput = BigInt.from(10000);
const kMaxInputsPerTransaction = 84;
final kMaximumStandardTransactionMass = BigInt.from(100000);
const kDomainHashSize = 32;
const kDomainSubnetworkIDSize = 20;

const kMaxTransactionVersion = 0;

final kSubnetworkIdNative = Uint8List(kDomainSubnetworkIDSize);
final kSubnetworkIdCoinbase = Uint8List(kDomainSubnetworkIDSize)..[0] = 1;
final kSubnetworkIdRegistry = Uint8List(kDomainSubnetworkIDSize)..[0] = 2;

final kSubnetworkIdNativeHex = kSubnetworkIdNative.hex;
final kSubnetworkIdCoinbaseHex = kSubnetworkIdCoinbase.hex;
final kSubnetworkIdRegistryHex = kSubnetworkIdRegistry.hex;

// UnacceptedDAAScore is used to for UTXOEntries that were created by transactions in the mempool, or otherwise
// not-yet-accepted transactions.
// Max Uint64 - 18446744073709551615
final kUnacceptedDAASccore = Int64(-1);

const kSigHashAll = 1;
const kSigHashNone = 1 << 1;
const kSigHashSingle = 1 << 2;
const kSigHashAnyOneCanPay = 1 << 7;

enum SigHashType {
  sigHashAll,
  sigHashNone,
  sigHashSingle,
  SigHashAnyOneCanPay;

  int get raw {
    switch (this) {
      case SigHashType.sigHashAll:
        return kSigHashAll;
      case SigHashType.sigHashNone:
        return kSigHashNone;
      case SigHashType.sigHashSingle:
        return kSigHashSingle;
      case SigHashType.SigHashAnyOneCanPay:
        return kSigHashAnyOneCanPay;
    }
  }
}

@freezed
class UtxoChanges with _$UtxoChanges {
  const factory UtxoChanges({
    required List<Utxo> removed,
    required List<Utxo> added,
  }) = _UtxoChanges;

  factory UtxoChanges.fromRpc(UtxosChangedNotificationMessage rpc) =>
      UtxoChanges(
        removed: rpc.removed.map((e) => Utxo.fromRpc(e)).toList(),
        added: rpc.added.map((e) => Utxo.fromRpc(e)).toList(),
      );
}

@freezed
class Utxo with _$Utxo {
  const Utxo._();
  const factory Utxo({
    required String address,
    required Outpoint outpoint,
    required UtxoEntry utxoEntry,
  }) = _Utxo;

  factory Utxo.fromJson(Map<String, dynamic> json) => _$UtxoFromJson(json);

  factory Utxo.fromRpc(UtxosByAddressesEntry rpc) => Utxo(
        address: rpc.address,
        outpoint: Outpoint.fromRpc(rpc.outpoint),
        utxoEntry: UtxoEntry.fromRpc(rpc.utxoEntry),
      );

  UtxosByAddressesEntry toRpc() => UtxosByAddressesEntry(
        address: address,
        outpoint: outpoint.toRpc(),
        utxoEntry: utxoEntry.toRpc(),
      );
}

// blockDaaScore can change
@Freezed(equal: false)
class UtxoEntry with _$UtxoEntry {
  const UtxoEntry._();
  const factory UtxoEntry({
    required BigInt amount,
    required ScriptPublicKey scriptPublicKey,
    required BigInt blockDaaScore,
    required bool isCoinbase,
  }) = _UtxoEntry;

  factory UtxoEntry.fromJson(Map<String, dynamic> json) =>
      _$UtxoEntryFromJson(json);

  factory UtxoEntry.fromRpc(RpcUtxoEntry rpc) => UtxoEntry(
        amount: rpc.amount.toUnsignedBigInt(),
        scriptPublicKey: ScriptPublicKey.fromRpc(rpc.scriptPublicKey),
        blockDaaScore: rpc.blockDaaScore.toUnsignedBigInt(),
        isCoinbase: rpc.isCoinbase,
      );

  RpcUtxoEntry toRpc() => RpcUtxoEntry(
        amount: amount.toInt64(),
        scriptPublicKey: scriptPublicKey.toRpc(),
        blockDaaScore: blockDaaScore.toInt64(),
        isCoinbase: isCoinbase,
      );

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UtxoEntryImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.scriptPublicKey, scriptPublicKey) ||
                other.scriptPublicKey == scriptPublicKey) &&
            (identical(other.isCoinbase, isCoinbase) ||
                other.isCoinbase == isCoinbase));
  }

  @JsonKey(includeToJson: false, includeFromJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, amount, scriptPublicKey, isCoinbase);
}

@freezed
class ScriptPublicKey with _$ScriptPublicKey {
  const ScriptPublicKey._();
  const factory ScriptPublicKey({
    @JsonKey(fromJson: hexToBytes, toJson: bytesToHex)
    required Uint8List scriptPublicKey,
    /*uint16*/ required int version,
  }) = _ScriptPublicKey;

  factory ScriptPublicKey.fromJson(Map<String, dynamic> json) =>
      _$ScriptPublicKeyFromJson(json);

  // from rpc
  factory ScriptPublicKey.fromRpc(RpcScriptPublicKey rpc) => ScriptPublicKey(
        scriptPublicKey: hexToBytes(rpc.scriptPublicKey),
        version: rpc.version,
      );

  RpcScriptPublicKey toRpc() => RpcScriptPublicKey(
        scriptPublicKey: bytesToHex(scriptPublicKey),
        version: version,
      );
}

@freezed
class Outpoint with _$Outpoint {
  Outpoint._();
  factory Outpoint({
    required String transactionId,
    required int /*uint32*/ index,
  }) = _Outpoint;

  factory Outpoint.fromJson(Map<String, dynamic> json) =>
      _$OutpointFromJson(json);

  factory Outpoint.fromRpc(RpcOutpoint rpc) => Outpoint(
        transactionId: rpc.transactionId,
        index: rpc.index,
      );

  RpcOutpoint toRpc() => RpcOutpoint(
        transactionId: transactionId,
        index: index,
      );
}

@freezed
class TxInput with _$TxInput {
  const TxInput._();
  const factory TxInput({
    required Address address,
    required Outpoint previousOutpoint,
    required Uint8List signatureScript,
    /*uint64*/ required Int64 sequence,
    /*byte*/ required int sigOpCount,
    required UtxoEntry utxoEntry,
  }) = _TxInput;

  RpcTransactionInput toRpc() => RpcTransactionInput(
        previousOutpoint: previousOutpoint.toRpc(),
        signatureScript: bytesToHex(signatureScript),
        sequence: sequence,
        sigOpCount: sigOpCount,
      );
}

@freezed
class TxOutput with _$TxOutput {
  const TxOutput._();
  const factory TxOutput({
    /*uint64*/ required Int64 value,
    required ScriptPublicKey scriptPublicKey,
  }) = _TxOutput;

  RpcTransactionOutput toRpc() => RpcTransactionOutput(
        amount: value,
        scriptPublicKey: scriptPublicKey.toRpc(),
      );
}

@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    /*uint16*/ required int version,
    required List<TxInput> inputs,
    required List<TxOutput> outputs,
    /*uint64*/ required Int64 lockTime,
    /*byte[20]*/ required Uint8List subnetworkId,
    /*uint64*/ required Int64 gas,
    Uint8List? payload,
    /*uint64*/ Int64? fee,
    /*uint64*/ Int64? mass,
    Uint8List? id,
  }) = _Transaction;
}

@unfreezed
class SighashReusedValues with _$SighashReusedValues {
  factory SighashReusedValues({
    Uint8List? previousOutputsHash,
    Uint8List? sequencesHash,
    Uint8List? sigOpCountsHash,
    Uint8List? outputsHash,
    Uint8List? payloadHash,
  }) = _SighashReusedValues;
}
