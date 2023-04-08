import 'package:flutter/material.dart';

import '../l10n/l10n.dart';

/// Models that are used in settings dialogs/dropdowns
abstract class SettingSelectionItem {
  const SettingSelectionItem();

  String getDisplayName(BuildContext context);
}

class DonateSettingItem extends SettingSelectionItem {
  const DonateSettingItem();

  @override
  String getDisplayName(BuildContext context) {
    final l10n = l10nOf(context);
    return l10n.kaspaDevFund;
  }
}
