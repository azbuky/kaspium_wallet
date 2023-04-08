import 'package:flutter/material.dart';

import '../l10n/l10n.dart';
import 'setting_item.dart';

enum AuthMethod { PIN, BIOMETRICS }

/// Represent the available authentication methods our app supports
class AuthenticationMethod extends SettingSelectionItem {
  final AuthMethod method;

  const AuthenticationMethod(this.method);

  String getDisplayName(BuildContext context) {
    final l10n = l10nOf(context);
    switch (method) {
      case AuthMethod.BIOMETRICS:
        return l10n.biometricsMethod;
      case AuthMethod.PIN:
        return l10n.pinMethod;
    }
  }

  // For saving to shared prefs
  String getId() => method.name;
}
