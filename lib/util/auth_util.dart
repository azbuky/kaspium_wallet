import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../app_router.dart';
import '../l10n/l10n.dart';
import '../screens/password_lock_page.dart';
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
        logger.e('Failed to authenticate with biometrics',
            error: e, stackTrace: st);
        return authenticateWithPin(context, pinMessage);
      }
    }
    return authenticateWithPin(context, pinMessage);
  }

  Future<bool> authenticateWithPin(BuildContext context, String message) async {
    String? expectedPin = await ref.read(vaultProvider).getPin();

    final pinScreen = PinScreen(
      PinOverlayType.ENTER_PIN,
      expectedPin: expectedPin,
      description: description,
    );

    final route = useTransition
        ? MaterialPageRoute<bool>(builder: (_) => pinScreen)
        : NoTransitionRoute<bool>(builder: (_) => pinScreen);

    final auth = await appRouter.push(context, route);
    await Future.delayed(const Duration(milliseconds: 200));

    return auth == true;
  }

  Future<bool> authenticateWithPassword(
    BuildContext context, {
    required Future<bool> Function(String password) validator,
  }) async {
    final auth = await appRouter.push(
      context,
      MaterialPageRoute<bool>(
        builder: (context) => PasswordLockPage(
          canCancel: true,
          validator: validator,
        ),
      ),
    );

    await Future.delayed(const Duration(milliseconds: 200));
    return auth == true;
  }

  Future<List<String>?> getMnemonic(BuildContext context) async {
    final l10n = l10nOf(context);

    final walletAuth = ref.read(walletAuthProvider.notifier);

    if (walletAuth.walletIsEncrypted) {
      List<String>? mnemonic = null;
      await authenticateWithPassword(context, validator: (password) async {
        try {
          mnemonic = await walletAuth.getMnemonic(password: password);
          return true;
        } catch (e) {
          return false;
        }
      });

      return mnemonic;
    } else {
      final auth = await authenticate(
        context,
        l10n.pinSeedBackup,
        l10n.fingerprintSeedBackup,
      );

      if (auth) {
        try {
          final mnemonic = await walletAuth.getMnemonic();
          return mnemonic;
        } catch (_) {
          return [];
        }
      }
      return null;
    }
  }
}
