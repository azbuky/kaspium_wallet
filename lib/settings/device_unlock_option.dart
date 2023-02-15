import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import 'setting_item.dart';

enum UnlockOption { YES, NO }

/// Represent authenticate to open setting
class UnlockSetting extends SettingSelectionItem {
  final UnlockOption setting;

  const UnlockSetting(this.setting);

  String getDisplayName(WidgetRef ref) {
    final l10n = ref.read(l10nProvider);
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
