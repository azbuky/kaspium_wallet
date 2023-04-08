import 'package:flutter/material.dart';

import '../l10n/l10n.dart';
import 'setting_item.dart';

enum LockTimeoutOption { ZERO, ONE, FIVE, FIFTEEN, THIRTY, SIXTY }

/// Represent auto-lock delay when requiring auth to open
class LockTimeoutSetting extends SettingSelectionItem {
  final LockTimeoutOption setting;

  const LockTimeoutSetting(this.setting);

  String getDisplayName(BuildContext context) {
    final l10n = l10nOf(context);
    switch (setting) {
      case LockTimeoutOption.ZERO:
        return l10n.instantly;
      case LockTimeoutOption.ONE:
        return l10n.xMinutes(1);
      case LockTimeoutOption.FIVE:
        return l10n.xMinutes(5);
      case LockTimeoutOption.FIFTEEN:
        return l10n.xMinutes(15);
      case LockTimeoutOption.THIRTY:
        return l10n.xMinutes(30);
      case LockTimeoutOption.SIXTY:
        return l10n.xMinutes(60);
    }
  }

  Duration getDuration() {
    switch (setting) {
      case LockTimeoutOption.ZERO:
        return Duration(seconds: 1);
      case LockTimeoutOption.ONE:
        return Duration(minutes: 1);
      case LockTimeoutOption.FIVE:
        return Duration(minutes: 5);
      case LockTimeoutOption.FIFTEEN:
        return Duration(minutes: 15);
      case LockTimeoutOption.THIRTY:
        return Duration(minutes: 30);
      case LockTimeoutOption.SIXTY:
        return Duration(hours: 1);
    }
  }

  // For saving to shared prefs
  String getId() => setting.name;
}
