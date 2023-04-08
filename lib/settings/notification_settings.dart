import 'package:flutter/material.dart';

import '../l10n/l10n.dart';
import 'setting_item.dart';

enum NotificationOptions { ON, OFF }

/// Represent notification on/off setting
class NotificationSetting extends SettingSelectionItem {
  final NotificationOptions setting;

  const NotificationSetting(this.setting);

  String getDisplayName(BuildContext context) {
    final l10n = l10nOf(context);
    switch (setting) {
      case NotificationOptions.ON:
        return l10n.on;
      case NotificationOptions.OFF:
        return l10n.off;
    }
  }

  // For saving to shared prefs
  String getId() => setting.name;
}
