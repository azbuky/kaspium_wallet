abstract class WalletAddressAware {
  Iterable<String> get allAddresses;
  bool containsAddress(String address);
  String? keyForAddress(String address);
}
