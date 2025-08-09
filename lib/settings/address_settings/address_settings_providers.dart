import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app_providers.dart';
import 'address_settings_notifier.dart';
import 'address_settings_types.dart';

final addressSettingsProvider =
    StateNotifierProvider<AddressSettingsStateNotifier, AddressSettings>((ref) {
  final repository = ref.watch(settingsRepositoryProvider);
  return AddressSettingsStateNotifier(repository);
});

final addressFilterProvider = Provider.autoDispose((ref) {
  final settings = ref.watch(addressSettingsProvider);
  return settings.addressFilter;
});
