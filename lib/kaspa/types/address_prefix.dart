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

  @override
  String toString() => name.toLowerCase();
}
