import 'dart:typed_data';

import 'dotk_names.dart';

class DotkNameResolution {
  final String name;
  final String display;
  final String address;

  const DotkNameResolution({
    required this.name,
    required this.display,
    required this.address,
  });

  DotkNameResolution.forName(String name, {required String address})
    : this(name: name, display: DotkName.display(name), address: address);

  @override
  bool operator ==(Object other) =>
      other is DotkNameResolution &&
      other.name == name &&
      other.display == display &&
      other.address == address;

  @override
  int get hashCode => Object.hash(name, display, address);

  @override
  String toString() => '$display -> $address';
}

/// The two ECDSA schemes hold the compressed key's x with its y parity in the
/// scheme byte, and the larger byte is the even one.
abstract class DotkOwnerType {
  static const schnorr = 0x00;
  static const scriptHash = 0x03;
  static const ecdsaOddY = 0x85;
  static const ecdsaEvenY = 0x86;
}

class DotkCard {
  final int spenderType;
  final Uint8List spender;
  final Uint8List blob;

  const DotkCard({
    required this.spenderType,
    required this.spender,
    required this.blob,
  });
}

class DotkNameClaim {
  final String target;
  final String address;
  final String registryCovenantId;
  final DotkCard? card;

  const DotkNameClaim({
    required this.target,
    required this.address,
    required this.registryCovenantId,
    this.card,
  });
}

class DotkAddressClaim {
  final List<String> names;
  final Map<String, DotkCard> primaryCards;
  final String registryCovenantId;

  const DotkAddressClaim({
    required this.names,
    required this.registryCovenantId,
    this.primaryCards = const {},
  });
}

/// notRegistered is the answer that the name cannot be paid: free, still
/// registering, owned by a covenant or on another network. unconfirmed means
/// the node does not back the indexer's answer. failed says nothing about the
/// name, and unavailable means lookups are turned off.
enum DotkLookupStatus {
  resolved,
  notRegistered,
  unconfirmed,
  failed,
  unavailable,
}

class DotkLookup {
  final DotkLookupStatus status;

  final DotkNameResolution? resolution;

  const DotkLookup(this.status, {this.resolution});

  const DotkLookup.resolved(DotkNameResolution this.resolution)
    : status = DotkLookupStatus.resolved;

  const DotkLookup.notRegistered()
    : status = DotkLookupStatus.notRegistered,
      resolution = null;

  const DotkLookup.unconfirmed()
    : status = DotkLookupStatus.unconfirmed,
      resolution = null;

  const DotkLookup.failed()
    : status = DotkLookupStatus.failed,
      resolution = null;

  const DotkLookup.unavailable()
    : status = DotkLookupStatus.unavailable,
      resolution = null;

  @override
  String toString() => 'DotkLookup(${status.name}, $resolution)';
}
