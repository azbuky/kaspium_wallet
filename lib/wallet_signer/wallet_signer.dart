import 'dart:async';
import 'dart:typed_data';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../kaspa/kaspa.dart';
import '../wallet_address/address_providers.dart';
import '../wallet_address/wallet_address_notifier.dart';
import '../wallet_auth/wallet_auth_notifier.dart';

final walletSignerProvider = Provider.autoDispose((ref) {
  final addressNotifier = ref.watch(addressNotifierProvider);
  final walletAuth = ref.watch(walletAuthProvider.notifier);

  return WalletSigner(addressNotifier, walletAuth);
});

class WalletSigner implements SignerBase {
  final WalletAddressNotifier _wallet;
  final WalletAuthNotifier _walletAuth;

  const WalletSigner(this._wallet, this._walletAuth);

  @override
  Future<bool> canSignForAddress(Address address) async {
    return _wallet.containsAddress(address.toString());
  }

  @override
  Future<Uint8List> sign(Uint8List data, Address address) async {
    int typeIndex = 0;
    var index = _wallet.indexOfReceiveAddress(address.encoded);
    if (index == null) {
      index = _wallet.indexOfChangeAddress(address.encoded);
      typeIndex = 1;
      if (index == null) {
        throw Exception('Address not found');
      }
    }
    final signature = await _walletAuth.sign(
      data,
      typeIndex: typeIndex,
      index: index,
    );
    return signature;
  }
}
