import 'package:flutter/material.dart';

import '../../l10n/l10n.dart';
import '../setting_item.dart';

enum RequestPassword { atLaunch, whenLocked, whenSigning }

class RequestPasswordSetting extends SettingSelectionItem {
  final RequestPassword setting;

  const RequestPasswordSetting(this.setting);

  String getDisplayName(BuildContext context) {
    final l10n = l10nOf(context);

    return switch (setting) {
      RequestPassword.atLaunch => l10n.requestPasswordAtLaunch,
      RequestPassword.whenLocked => l10n.requestPasswordWhenLocked,
      RequestPassword.whenSigning => l10n.requestPasswordWhenSigning,
    };
  }
}
