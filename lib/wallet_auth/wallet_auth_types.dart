import 'package:freezed_annotation/freezed_annotation.dart';

import '../wallet/wallet_types.dart';

part 'wallet_auth_types.freezed.dart';

@freezed
class WalletAuth with _$WalletAuth {
  const WalletAuth._();
  const factory WalletAuth({
    required WalletInfo wallet,
    String? encryptedSecret,
    @Default(true) bool isLocked,
    @Default(false) bool isEncrypted,
    @Default(false) bool hasMnemonic,
  }) = _WalletAuth;

  bool get canSetPassword => wallet.canSetPassword;
}
