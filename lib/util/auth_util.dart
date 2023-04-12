import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../l10n/l10n.dart';
import '../screens/password_lock_screen.dart';
import '../settings/authentication_method.dart';
import '../widgets/pin_screen.dart';

class AuthUtil {
  final Ref ref;

  const AuthUtil(this.ref);

  Future<bool> authenticate(
    BuildContext context,
    String pinMessage,
    String biometricsMessage,
  ) async {
    final sharedPrefsUtil = ref.read(sharedPrefsUtilProvider);
    final biometricUtil = ref.read(biometricUtilProvider);

    final authMethod = await sharedPrefsUtil.getAuthMethod();
    final hasBiometrics = await biometricUtil.hasBiometrics();

    if (authMethod.method == AuthMethod.BIOMETRICS && hasBiometrics) {
      try {
        final authenticated =
            await biometricUtil.authenticateWithBiometrics(biometricsMessage);
        if (authenticated) {
          final hapticUtil = ref.read(hapticUtilProvider);
          hapticUtil.fingerprintSuccess();
          return true;
        }
        return false;
      } catch (e, st) {
        final logger = ref.read(loggerProvider);
        logger.e('Failed to authenticate with biometrics', e, st);
        return authenticateWithPin(context, pinMessage);
      }
    }
    return authenticateWithPin(context, pinMessage);
  }

  Future<bool> authenticateWithPin(BuildContext context, String message) async {
    String? expectedPin = await ref.read(vaultProvider).getPin();

    bool? auth = await Navigator.of(context).push(
      MaterialPageRoute(builder: (context) {
        final l10n = l10nOf(context);
        return PinScreen(
          PinOverlayType.ENTER_PIN,
          expectedPin: expectedPin,
          description: message,
          l10n: l10n,
        );
      }),
    );
    await Future.delayed(const Duration(milliseconds: 200));

    return auth == true;
  }

  Future<bool> authenticateWithPassword(
    BuildContext context,
    Future<bool> Function(String password) validator,
  ) async {
    final auth = await Navigator.of(context).push(
      MaterialPageRoute<bool>(builder: (context) {
        return PasswordLockScreen(validator: validator);
      }),
    );

    await Future.delayed(const Duration(milliseconds: 200));
    return auth == true;
  }
}
