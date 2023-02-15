import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';

/// Models that are used in settings dialogs/dropdowns
abstract class SettingSelectionItem {
  const SettingSelectionItem();

  String getDisplayName(WidgetRef ref);
}

class DonateSettingItem extends SettingSelectionItem {
  const DonateSettingItem();

  @override
  String getDisplayName(WidgetRef ref) {
    final l10n = ref.read(l10nProvider);
    return l10n.kaspaDevFund;
  }
}
