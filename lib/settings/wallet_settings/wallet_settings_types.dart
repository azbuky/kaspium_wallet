import 'package:freezed_annotation/freezed_annotation.dart';

import 'request_password.dart';

part 'wallet_settings_types.freezed.dart';
part 'wallet_settings_types.g.dart';

@freezed
class WalletSettings with _$WalletSettings {
  const factory WalletSettings({
    @Default(RequestPassword.atLaunch) RequestPassword requestPassword,
  }) = _WalletSettings;

  factory WalletSettings.fromJson(Map<String, dynamic> json) =>
      _$WalletSettingsFromJson(json);
}
