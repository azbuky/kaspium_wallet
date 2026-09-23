import 'dart:convert';

import 'package:blake3_dart/blake3_dart.dart';
import 'package:collection/collection.dart';

import '../kaspa/rpc/rpc_service.dart';
import '../kaspa/types.dart';
import '../kaspa/utils.dart';
import 'dotk_names.dart';
import 'dotk_records.dart';
import 'dotk_registry.dart';
import 'dotk_subname.dart';
import 'dotk_types.dart';

/// Proves the indexer's answers against the node, never what it leaves out
class DotkProver {
  static const _cardMagic = 'dotk';

  static const maxPrimariesProven = 10;

  final RpcService rpc;
  final DotkRegistry registry;
  final AddressPrefix prefix;

  const DotkProver(this.rpc, {required this.registry, required this.prefix});

  Future<DotkLookup> prove(DotkNameClaim claim) async {
    final owner = Address.tryParse(claim.address, expectedPrefix: prefix);
    if (owner == null) {
      return const DotkLookup.notRegistered();
    }
    final pair = ownerOf(owner);
    if (pair == null || claim.registryCovenantId != registry.covenantId) {
      return const DotkLookup.unconfirmed();
    }

    final (parent, label) = DotkName.splitTarget(claim.target);
    final deedAddress = this.deedAddress(parent, pair.$1, pair.$2);
    final card = label == null ? null : claim.card;
    final cardAddress = card == null ? null : this.cardAddress(parent, card);

    final utxos = await rpc.getUtxosByAddresses([
      deedAddress,
      ?cardAddress,
    ]);
    final deed = _deed(utxos, deedAddress);
    if (deed == null) {
      return const DotkLookup.unconfirmed();
    }
    if (label == null) {
      return DotkLookup.resolved(
        DotkNameResolution.forName(parent, address: owner.encoded),
      );
    }
    if (card == null || !_isCard(utxos, cardAddress!, deed)) {
      return const DotkLookup.unconfirmed();
    }

    final records = DotkRecords.tryDecode(card.blob);
    final payee = DotkSubname.payee(
      records?[DotkSubname.recordKey(label)],
      prefix,
    );
    if (payee == null) {
      return const DotkLookup.notRegistered();
    }

    return DotkLookup.resolved(
      DotkNameResolution.forName(claim.target, address: payee),
    );
  }

  Future<String?> displayName(String address, DotkAddressClaim claim) async {
    final owner = Address.tryParse(address, expectedPrefix: prefix);
    final pair = owner == null ? null : ownerOf(owner);
    if (pair == null || claim.registryCovenantId != registry.covenantId) {
      return null;
    }

    final primaryCards = claim.primaryCards.entries
        .where((entry) => DotkName.isValid(entry.key))
        .take(maxPrimariesProven);
    final first = claim.names.firstWhereOrNull(DotkName.isValid);
    final deeds = {
      for (final name in [...primaryCards.map((entry) => entry.key), ?first])
        name: deedAddress(name, pair.$1, pair.$2),
    };
    final cards = {
      for (final MapEntry(key: name, value: card) in primaryCards)
        name: cardAddress(name, card),
    };

    final utxos = await rpc.getUtxosByAddresses([
      ...deeds.values,
      ...cards.values,
    ]);

    String? primary;
    Utxo? primaryDeed;
    for (final MapEntry(key: name, value: cardAddress) in cards.entries) {
      final deed = _deed(utxos, deeds[name]!);
      if (deed == null ||
          !_isCard(utxos, cardAddress, deed) ||
          DotkRecords.tryDecode(claim.primaryCards[name]!.blob)?['primary'] !=
              true) {
        continue;
      }
      if (primaryDeed == null || _isNewer(deed, primaryDeed)) {
        primary = name;
        primaryDeed = deed;
      }
    }
    if (primary != null) {
      return primary;
    }

    return first != null && _deed(utxos, deeds[first]!) != null ? first : null;
  }

  static (int, Uint8List)? ownerOf(Address address) => address.when(
    publicKey: (_, key) =>
        key.length == kPublicKeyLength ? (DotkOwnerType.schnorr, key) : null,
    pubKeyECDSA: (_, key) =>
        key.length == kPublicKeySizeECDSA && (key[0] == 0x02 || key[0] == 0x03)
        ? (
            key[0] == 0x02 ? DotkOwnerType.ecdsaEvenY : DotkOwnerType.ecdsaOddY,
            Uint8List.sublistView(key, 1),
          )
        : null,
    scriptHash: (_, hash) =>
        hash.length == 32 ? (DotkOwnerType.scriptHash, hash) : null,
  );

  static Uint8List deedState(String name, int ownerType, Uint8List owner) {
    final bytes = ascii.encode(name);
    final padded = Uint8List(32)..setAll(0, bytes);

    return Uint8List.fromList([
      0x01, 0x02, // active
      0x20, ...blake3(bytes),
      0x01, ownerType,
      0x20, ...owner,
      0x20, ...padded,
    ]);
  }

  String deedAddress(String name, int ownerType, Uint8List owner) {
    final redeem = Uint8List.fromList(registry.deedBytecode)
      ..setAll(
        DotkRegistry.deedStateOffset,
        deedState(name, ownerType, owner),
      );

    return _scriptHashAddress(redeem);
  }

  static Uint8List cardRedeemScript(String name, DotkCard card) {
    final spender = card.spenderType == DotkOwnerType.schnorr
        ? [0x20, ...card.spender, 0xac] // OP_CHECKSIG
        : [
            0x21,
            0x02 | (card.spenderType & 0x01),
            ...card.spender,
            0xab, // OP_CHECKSIGECDSA
          ];

    return Uint8List.fromList([
      0x20, ...blake3(ascii.encode(name)),
      0x20, ...blake3(card.blob),
      0x75, 0x75, // OP_DROP OP_DROP
      0x04, ...ascii.encode(_cardMagic),
      0x88, // OP_EQUALVERIFY
      ...spender,
    ]);
  }

  String cardAddress(String name, DotkCard card) =>
      _scriptHashAddress(cardRedeemScript(name, card));

  String _scriptHashAddress(Uint8List redeem) => Address.scriptHash(
    prefix: prefix,
    hash: blake2bDigest(data: redeem),
  ).encoded;

  Utxo? _deed(Iterable<Utxo> utxos, String deedAddress) {
    final deeds = utxos.where(
      (utxo) =>
          utxo.address == deedAddress &&
          utxo.utxoEntry.covenantId?.hex == registry.covenantId,
    );

    return deeds.length == 1 ? deeds.single : null;
  }

  /// The most recent claim to primary wins, and the outpoint breaks a tie
  static bool _isNewer(Utxo a, Utxo b) {
    final byScore = a.utxoEntry.blockDaaScore.compareTo(
      b.utxoEntry.blockDaaScore,
    );
    if (byScore != 0) {
      return byScore > 0;
    }
    final byTransaction = a.outpoint.transactionId.compareTo(
      b.outpoint.transactionId,
    );
    return byTransaction != 0
        ? byTransaction < 0
        : a.outpoint.index < b.outpoint.index;
  }

  /// A card speaks for its name only as output 1 of the transaction that
  /// created the deed's current UTXO
  bool _isCard(Iterable<Utxo> utxos, String cardAddress, Utxo deed) =>
      utxos.any(
        (utxo) =>
            utxo.address == cardAddress &&
            utxo.outpoint.transactionId == deed.outpoint.transactionId &&
            utxo.outpoint.index == 1,
      );
}
