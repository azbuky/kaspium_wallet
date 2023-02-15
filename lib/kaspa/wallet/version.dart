import 'package:coinslib/coinslib.dart';

import '../kaspa.dart';

NetworkType networkTypeForNetwork(KaspaNetwork network) {
  switch (network) {
    case KaspaNetwork.mainnet:
      return kaspaMainnet;
    case KaspaNetwork.testnet:
      return kaspaTestnet;
    case KaspaNetwork.devnet:
      return kaspaDevnet;
    case KaspaNetwork.simnet:
      return kaspaSimnet;
  }
}

final kaspaMainnet = NetworkType(
  messagePrefix: 'Kaspa Signed Message:\n',
  bech32: 'kaspa',
  bip32: Bip32Type(
    public: 0x038f332e,
    private: 0x038f2ef4,
  ),
  wif: 0x80,
  pubKeyHash: 0x00,
  scriptHash: 0x05,
  opreturnSize: 80,
);

final kaspaTestnet = NetworkType(
  messagePrefix: 'Kaspa Signed Message:\n',
  bech32: 'kaspatest',
  wif: 0xef,
  bip32: Bip32Type(
    public: 0x0390a241,
    private: 0x03909e07,
  ),
  pubKeyHash: 0x00,
  scriptHash: 0x05,
  opreturnSize: 80,
);

final kaspaSimnet = NetworkType(
  messagePrefix: 'Kaspa Signed Message:\n',
  bech32: 'kaspasim',
  wif: 0x64,
  bip32: Bip32Type(
    public: 0x0390467d,
    private: 0x03904242,
  ),
  pubKeyHash: 0x00,
  scriptHash: 0x05,
  opreturnSize: 80,
);

final kaspaDevnet = NetworkType(
  messagePrefix: 'Kaspa Signed Message:\n',
  bech32: 'kaspadev',
  wif: 0xef,
  bip32: Bip32Type(
    public: 0x038b41ba,
    private: 0x038b3d80,
  ),
  pubKeyHash: 0x00,
  scriptHash: 0x05,
  opreturnSize: 80,
);
