import 'package:freezed_annotation/freezed_annotation.dart';

import '../../kaspa/network.dart';

part 'kasplex_settings_types.freezed.dart';
part 'kasplex_settings_types.g.dart';

const kKasplexApiUrlMainnet = 'https://api.kasplex.org/v1';
const kKasplexApiUrlTestnet10 = 'https://tn10api.kasplex.org/v1';
const kKasplexApiUrlTestnet11 = 'https://tn11api.kasplex.org/v1';

@freezed
class KasplexSettings with _$KasplexSettings {
  const KasplexSettings._();

  const factory KasplexSettings({
    @Default(false) bool krc20Enabled,
    @Default(false) bool userConfirmed,
    @Default({}) Map<String, String> apiUrlByNetworkId,
  }) = _Krc20Settings;

  factory KasplexSettings.fromJson(Map<String, dynamic> json) =>
      _$KasplexSettingsFromJson(json);

  static String defaultApiUrlForNetworkId(String networkId) {
    return switch (networkId) {
      kKaspaNetworkIdMainnet => kKasplexApiUrlMainnet,
      kKaspaNetworkIdTestnet10 => kKasplexApiUrlTestnet10,
      kKaspaNetworkIdTestnet11 => kKasplexApiUrlTestnet11,
      _ => '',
    };
  }

  String apiUrlForNetworkId(String networkId) {
    return apiUrlByNetworkId[networkId] ?? defaultApiUrlForNetworkId(networkId);
  }
}
