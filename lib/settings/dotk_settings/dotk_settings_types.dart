import 'package:freezed_annotation/freezed_annotation.dart';

import '../../kaspa/network.dart';

part 'dotk_settings_types.freezed.dart';
part 'dotk_settings_types.g.dart';

const kDotkApiUrlMainnet = 'https://api.dotk.name/v1';
const kDotkApiUrlTestnet10 = 'https://api-tn10.dotk.name/v1';

@freezed
sealed class DotkSettings with _$DotkSettings {
  const DotkSettings._();

  const factory DotkSettings({
    @Default(true) bool enabled,
    @Default({}) Map<String, String> apiUrlByNetworkId,
  }) = _DotkSettings;

  factory DotkSettings.fromJson(Map<String, dynamic> json) =>
      _$DotkSettingsFromJson(json);

  static String defaultApiUrlForNetworkId(String networkId) {
    return switch (networkId) {
      kKaspaNetworkIdMainnet => kDotkApiUrlMainnet,
      kKaspaNetworkIdTestnet10 => kDotkApiUrlTestnet10,
      _ => '',
    };
  }

  String apiUrlForNetworkId(String networkId) {
    return apiUrlByNetworkId[networkId] ?? defaultApiUrlForNetworkId(networkId);
  }
}
