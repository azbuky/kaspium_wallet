import 'package:freezed_annotation/freezed_annotation.dart';

part 'tx_settings_types.freezed.dart';
part 'tx_settings_types.g.dart';

enum TxFilter {
  all,
  hideNotAcceptedCoinbase,
}

@freezed
sealed class TxSettings with _$TxSettings {
  const factory TxSettings({
    @Default(TxFilter.all) TxFilter txFilter,
  }) = _TxSettings;

  factory TxSettings.fromJson(Map<String, dynamic> json) =>
      _$TxSettingsFromJson(json);
}
