import 'bip32_type.dart';

class NetworkType {
  String messagePrefix;
  String? bech32;
  Bip32Type bip32;
  int pubKeyHash;
  int scriptHash;
  int wif;
  int opreturnSize;

  NetworkType({
    required this.messagePrefix,
    this.bech32,
    required this.bip32,
    required this.pubKeyHash,
    required this.scriptHash,
    required this.wif,
    required this.opreturnSize,
  });

  @override
  String toString() {
    return 'NetworkType{messagePrefix: $messagePrefix, bech32: $bech32, bip32: ${bip32.toString()}, pubKeyHash: $pubKeyHash, scriptHash: $scriptHash, wif: $wif, op return max size: $opreturnSize}';
  }
}

final bitcoin = NetworkType(
  messagePrefix: 'Bitcoin Signed Message:\n',
  bech32: 'bc',
  bip32: Bip32Type(public: 0x0488b21e, private: 0x0488ade4),
  pubKeyHash: 0x00,
  scriptHash: 0x05,
  wif: 0x80,
  opreturnSize: 80,
);

final testnet = NetworkType(
  messagePrefix: 'Bitcoin Signed Message:\n',
  bech32: 'tb',
  bip32: Bip32Type(public: 0x043587cf, private: 0x04358394),
  pubKeyHash: 0x6f,
  scriptHash: 0xc4,
  wif: 0xef,
  opreturnSize: 80,
);
