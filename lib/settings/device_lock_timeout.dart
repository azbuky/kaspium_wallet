import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import 'setting_item.dart';

enum LockTimeoutOption { ZERO, ONE, FIVE, FIFTEEN, THIRTY, SIXTY }

/// Represent auto-lock delay when requiring auth to open
class LockTimeoutSetting extends SettingSelectionItem {
  final LockTimeoutOption setting;

  const LockTimeoutSetting(this.setting);

  String getDisplayName(WidgetRef ref) {
    final l10n = ref.read(l10nProvider);
    switch (setting) {
      case LockTimeoutOption.ZERO:
        return l10n.instantly;
      case LockTimeoutOption.ONE:
        return l10n.xMinute.replaceAll("%1", "1");
      case LockTimeoutOption.FIVE:
        return l10n.xMinutes.replaceAll("%1", "5");
      case LockTimeoutOption.FIFTEEN:
        return l10n.xMinutes.replaceAll("%1", "15");
      case LockTimeoutOption.THIRTY:
        return l10n.xMinutes.replaceAll("%1", "30");
      case LockTimeoutOption.SIXTY:
        return l10n.xMinutes.replaceAll("%1", "60");
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
