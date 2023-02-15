import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../wallet/wallet_types.dart';

part 'wallet_auth_types.freezed.dart';

@freezed
class WalletStatus with _$WalletStatus {
  const factory WalletStatus.noWallets() = _WalletStatusNoWallets;
  const factory WalletStatus.noSelection({
    required IList<WalletInfo> wallets,
  }) = _WalletStatusNoSelection;
  const factory WalletStatus.selected({
    required WalletInfo wallet,
  }) = _WalletStatusSelected;
}

@freezed
class WalletAuth with _$WalletAuth {
  const factory WalletAuth({
    required WalletInfo wallet,
    String? encryptedSecret,
    @Default(true) bool isLocked,
    @Default(false) bool isEncrypted,
    @Default(false) bool hasMnemonic,
  }) = _WalletAuth;
}


