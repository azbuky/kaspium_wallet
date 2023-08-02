import '../kaspa/kaspa.dart';
import 'wallet_address.dart';

class DiscoveryResult {
  final Set<WalletAddress> addresses;
  final Set<ApiTxId> txIds;

  const DiscoveryResult({
    required this.addresses,
    required this.txIds,
  });
}

class AddressDiscovery {
  final HdAddressGenerator addressGenerator;
  final KaspaApiService api;
  final KaspaClient client;

  AddressDiscovery({
    required this.addressGenerator,
    required this.api,
    required this.client,
  });

  Future<bool> checkForUsedAddresses({
    required int startIndex,
    required int typeIndex,
    int count = 100,
  }) async {
    final addresses = <String>[];
    for (int i = startIndex; i < startIndex + count; ++i) {
      final address = await addressGenerator.addressAtIndex(
        typeIndex: typeIndex,
        index: i,
      );
      addresses.add(address.encoded);
    }

    return client.getBalancesByAddresses(addresses).then((balances) {
      return balances.any((balance) => balance.balance > 0);
    });
  }

  Future<DiscoveryResult> addressDiscoveryFor({
    required AddressType type,
    required int startIndex,
    int maxGap = 5,
    int maxRetries = 3,
    required AddressNameCallback addressNameCallback,
    bool Function(AddressType type, int index)? onProgress,
  }) async {
    int retryCount = 0;
    int currentIndex = startIndex;
    int lastUsedIndex = currentIndex;

    final addresses = <WalletAddress>{};
    final unused = <WalletAddress>[];
    final txIds = <String, ApiTxId>{};

    bool done = false;
    int step = 0;
    final maxSteps = 1000;
    while (!done && step++ < maxSteps) {
      onProgress?.call(type, currentIndex);
      final address = await addressGenerator.addressAtIndex(
        typeIndex: type.index,
        index: currentIndex,
      );

      final name = addressNameCallback(type, currentIndex);
      final walletAddress = WalletAddress(
        index: currentIndex,
        type: type,
        address: address,
        name: name,
      );

      try {
        final address = walletAddress.address.encoded;
        final txIdsForAddress = await api.getAllTxIdsForAddress(address);

        txIds.addEntries(
          txIdsForAddress.map((txId) => MapEntry(txId.transactionId, txId)),
        );

        if (txIdsForAddress.isNotEmpty) {
          addresses.addAll(unused);
          unused.clear();
          addresses.add(walletAddress);
          lastUsedIndex = currentIndex;
        } else {
          unused.add(walletAddress);
        }
        retryCount = 0;
      } catch (e) {
        retryCount += 1;
        await Future.delayed(const Duration(seconds: 1));
      }

      if (retryCount > maxRetries) {
        done = true;
      }

      if (currentIndex - lastUsedIndex >= maxGap) {
        // Look ahead for possible used addresses over maxGap
        final hasUsedAddresses = await checkForUsedAddresses(
          startIndex: currentIndex + 1,
          typeIndex: type.index,
        );

        if (hasUsedAddresses) {
          lastUsedIndex = currentIndex;
        } else if (unused.isNotEmpty && type == AddressType.receive) {
          addresses.add(unused.first);
        }

        done = !hasUsedAddresses;
      }

      currentIndex++;
    }

    return DiscoveryResult(
      addresses: addresses,
      txIds: txIds.values.toSet(),
    );
  }

  Future<DiscoveryResult> addressDiscovery({
    required int startReceiveIndex,
    required int startChangeIndex,
    int maxGap = 5,
    int maxRetries = 3,
    required AddressNameCallback addressNameCallback,
    bool Function(AddressType type, int index)? onProgress,
  }) async {
    final receiveResult = await addressDiscoveryFor(
      type: AddressType.receive,
      startIndex: startReceiveIndex,
      maxGap: maxGap,
      maxRetries: maxRetries,
      addressNameCallback: addressNameCallback,
      onProgress: onProgress,
    );

    final changeResult = await addressDiscoveryFor(
      type: AddressType.change,
      startIndex: startChangeIndex,
      maxGap: maxGap,
      maxRetries: maxRetries,
      addressNameCallback: addressNameCallback,
      onProgress: onProgress,
    );

    return DiscoveryResult(
      addresses: receiveResult.addresses.union(
        changeResult.addresses,
      ),
      txIds: receiveResult.txIds.union(
        changeResult.txIds,
      ),
    );
  }
}
