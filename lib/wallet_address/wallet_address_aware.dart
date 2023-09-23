abstract class WalletAddressAware {
  Iterable<String> get allAddresses;
  Iterable<String> get activeAddresses;
  bool containsAddress(String address);
  String? keyForAddress(String address);
}
