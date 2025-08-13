import 'package:freezed_annotation/freezed_annotation.dart';

import '../../kaspa/network.dart';

part 'kaspa_api_settings_types.freezed.dart';
part 'kaspa_api_settings_types.g.dart';

const kKaspaApiUrlMainnet = 'https://api.kaspa.org';
const kKaspaApiUrlTestnet10 = 'https://api-tn10.kaspa.org';
const kKaspaApiUrlTestnet11 = 'https://api-tn11.kaspa.org';

@freezed
sealed class KaspaApiSettings with _$KaspaApiSettings {
  const KaspaApiSettings._();

  const factory KaspaApiSettings({
    @Default({}) Map<String, String> apiUrlByNetworkId,
  }) = _KaspaApiSettings;

  factory KaspaApiSettings.fromJson(Map<String, dynamic> json) =>
      _$KaspaApiSettingsFromJson(json);

  static String defaultApiUrlForNetworkId(String networkId) {
    return switch (networkId) {
      kKaspaNetworkIdMainnet => kKaspaApiUrlMainnet,
      kKaspaNetworkIdTestnet10 => kKaspaApiUrlTestnet10,
      kKaspaNetworkIdTestnet11 => kKaspaApiUrlTestnet11,
      _ => '',
    };
  }

  String apiUrlForNetworkId(String networkId) {
    return apiUrlByNetworkId[networkId] ?? defaultApiUrlForNetworkId(networkId);
  }
}
