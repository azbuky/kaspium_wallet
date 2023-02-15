import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import 'setting_item.dart';

enum NotificationOptions { ON, OFF }

/// Represent notification on/off setting
class NotificationSetting extends SettingSelectionItem {
  final NotificationOptions setting;

  const NotificationSetting(this.setting);

  String getDisplayName(WidgetRef ref) {
    final l10n = ref.read(l10nProvider);
    switch (setting) {
      case NotificationOptions.ON:
        return l10n.onStr;
      case NotificationOptions.OFF:
        return l10n.off;
    }
  }

  // For saving to shared prefs
  String getId() => setting.name;
}
