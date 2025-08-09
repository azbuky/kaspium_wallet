import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../settings_repository.dart';
import 'address_settings_types.dart';

const kAddressSettingsKey = '_kAddressSettingsKey';

extension AddressSettingsExtension on SettingsRepository {
  AddressSettings getAddressSettings() {
    return box.tryGet<AddressSettings>(
          kAddressSettingsKey,
          typeFactory: AddressSettings.fromJson,
        ) ??
        const AddressSettings();
  }

  Future<void> setAddressSettings(AddressSettings settings) {
    return box.set(kAddressSettingsKey, settings);
  }
}

class AddressSettingsStateNotifier extends StateNotifier<AddressSettings> {
  final SettingsRepository repository;

  AddressSettingsStateNotifier(this.repository)
      : super(repository.getAddressSettings());

  Future<void> setAddressFilter(AddressFilter filter) async {
    final settings = state.copyWith(addressFilter: filter);
    await repository.setAddressSettings(settings);
    state = settings;
  }
}
