import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import 'setting_item.dart';

enum AuthMethod { PIN, BIOMETRICS }

/// Represent the available authentication methods our app supports
class AuthenticationMethod extends SettingSelectionItem {
  final AuthMethod method;

  const AuthenticationMethod(this.method);

  String getDisplayName(WidgetRef ref) {
    final l10n = ref.read(l10nProvider);
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
