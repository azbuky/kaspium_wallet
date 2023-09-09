import '../../kaspa/kaspa.dart';
import '../wallet_address.dart';
import 'address_discovery_types.dart';

class AddressDiscovery {
  final KaspaApiService api;
  final KaspaClient client;
  final HdAddressGenerator addressGenerator;
  final AddressNameCallback addressNameCallback;

  AddressDiscovery({
    required this.api,
    required this.client,
    required this.addressGenerator,
    required this.addressNameCallback,
  });

  Future<bool> checkForUsedAddresses(Iterable<String> addresses) async {
    final balances = await client.getBalancesByAddresses(addresses);

    final anyUsedAddress = balances.any((balance) => balance.balance > 0);

    return anyUsedAddress;
  }

  WalletAddress get mainAddress {
    const index = 0;
    const type = AddressType.receive;
    return WalletAddress(
      index: index,
      type: type,
      name: addressNameCallback(type, index),
      address: addressGenerator.mainAddress,
      used: false,
    );
  }

  WalletDiscoveryResult get newWalletDiscoveryResult {
    const index = 0;
    final discovery = (
      receive: DiscoveryResult(
        addresses: {index: mainAddress},
        txIds: {},
        scanIndexes: ScanIndexes(start: index, scanned: index, last: index),
      ),
      change: DiscoveryResult(
        addresses: {},
        txIds: {},
        scanIndexes: ScanIndexes.empty,
      ),
    );
    return discovery;
  }

  Future<WalletAddress> getAddress({
    required int index,
    required AddressType type,
  }) async {
    final address = await addressGenerator.addressAtIndex(
      typeIndex: type.index,
      index: index,
    );
    final name = addressNameCallback(type, index);
    final walletAddress = WalletAddress(
      index: index,
      type: type,
      address: address,
      name: name,
      used: false,
    );
    return walletAddress;
  }

  Future<Iterable<WalletAddress>> getAddresses({
    required int startIndex,
    required AddressType type,
    required int count,
  }) async {
    final addresses = await Future.wait([
      for (int i = startIndex; i < startIndex + count; ++i)
        getAddress(
          index: i,
          type: type,
        )
    ]);
    return addresses;
  }

  Future<DiscoveryResult> addressDiscoveryFor({
    required AddressType type,
    required int startIndex,
    int maxGap = 5,
    int maxRetries = 3,
    int lookAhead = 100,
    bool Function(AddressType type, int index)? onProgress,
  }) async {
    int retryCount = 0;
    int currentIndex = startIndex;
    int? lastUsedIndex;

    final addresses = <int, WalletAddress>{};
    final txIds = <String, ApiTxId>{};

    int step = 0;
    final maxSteps = 1000;
    while (step++ < maxSteps) {
      onProgress?.call(type, currentIndex);

      final walletAddress = await getAddress(index: currentIndex, type: type);

      try {
        final address = walletAddress.encoded;
        final txIdsForAddress = await api.getTxIdsForAddress(address);

        txIds.addEntries(
          txIdsForAddress.map((txId) => MapEntry(txId.transactionId, txId)),
        );

        if (txIdsForAddress.isNotEmpty) {
          addresses[currentIndex] = walletAddress.copyWith(used: true);
          lastUsedIndex = currentIndex;
        } else {
          addresses[currentIndex] = walletAddress;
        }
        retryCount = 0;
      } catch (e) {
        retryCount += 1;
        await Future.delayed(const Duration(seconds: 1));
      }

      if (retryCount > maxRetries) {
        break;
      }

      if (currentIndex - (lastUsedIndex ?? startIndex) >= maxGap) {
        // Look ahead for possible used addresses over maxGap by checking balances

        final addresses = await getAddresses(
          startIndex: currentIndex + 1,
          type: type,
          count: lookAhead,
        );

        final hasUsedAddresses =
            await checkForUsedAddresses(addresses.map((e) => e.encoded));

        if (hasUsedAddresses) {
          lastUsedIndex = currentIndex;
        }

        if (!hasUsedAddresses) {
          break;
        }
      }

      currentIndex++;
    }

    final scanIndexes = ScanIndexes(
      start: startIndex,
      scanned: currentIndex,
      last: lastUsedIndex,
    );

    return DiscoveryResult(
      addresses: addresses,
      txIds: txIds.values.toSet(),
      scanIndexes: scanIndexes,
    );
  }

  Future<WalletDiscoveryResult> addressDiscovery({
    required int startReceiveIndex,
    required int startChangeIndex,
    int maxGap = 5,
    int maxRetries = 3,
    bool Function(AddressType type, int index)? onProgress,
  }) async {
    final receiveResult = await addressDiscoveryFor(
      type: AddressType.receive,
      startIndex: startReceiveIndex,
      maxGap: maxGap,
      maxRetries: maxRetries,
      onProgress: onProgress,
    );

    final changeResult = await addressDiscoveryFor(
      type: AddressType.change,
      startIndex: startChangeIndex,
      maxGap: maxGap,
      maxRetries: maxRetries,
      onProgress: onProgress,
    );

    return (receive: receiveResult, change: changeResult);
  }
}
