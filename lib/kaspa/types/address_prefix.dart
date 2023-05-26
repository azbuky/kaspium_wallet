import 'network.dart';

enum AddressPrefix {
  unknown,
  kaspa,
  kaspaTest,
  kaspaDev,
  kaspaSim;

  static AddressPrefix parseBech32Prefix(String prefix) {
    switch (prefix) {
      case 'kaspa':
        return AddressPrefix.kaspa;
      case 'kaspatest':
        return AddressPrefix.kaspaTest;
      case 'kaspadev':
        return AddressPrefix.kaspaDev;
      case 'kaspasim':
        return AddressPrefix.kaspaSim;
      default:
        return AddressPrefix.unknown;
    }
  }

  static AddressPrefix forNetwork(KaspaNetwork network) {
    switch (network) {
      case KaspaNetwork.mainnet:
        return AddressPrefix.kaspa;
      case KaspaNetwork.testnet:
        return AddressPrefix.kaspaTest;
      case KaspaNetwork.devnet:
        return AddressPrefix.kaspaDev;
      case KaspaNetwork.simnet:
        return AddressPrefix.kaspaSim;
    }
  }

  @override
  String toString() => name.toLowerCase();
}
