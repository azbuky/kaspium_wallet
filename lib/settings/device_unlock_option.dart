import 'package:flutter/material.dart';

import '../l10n/l10n.dart';
import 'setting_item.dart';

enum UnlockOption { YES, NO }

/// Represent authenticate to open setting
class UnlockSetting extends SettingSelectionItem {
  final UnlockOption setting;

  const UnlockSetting(this.setting);

  String getDisplayName(BuildContext context) {
    final l10n = l10nOf(context);
    switch (setting) {
      case UnlockOption.YES:
        return l10n.yes;
      case UnlockOption.NO:
        return l10n.no;
    }
  }

  // For saving to shared prefs
  String getId() => setting.name;
}
