import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_settings_types.freezed.dart';
part 'address_settings_types.g.dart';

enum AddressFilter {
  all,
  nonZero,
}

@freezed
sealed class AddressSettings with _$AddressSettings {
  const factory AddressSettings({
    @Default(AddressFilter.all) AddressFilter addressFilter,
  }) = _AddressSettings;

  factory AddressSettings.fromJson(Map<String, dynamic> json) =>
      _$AddressSettingsFromJson(json);
}
