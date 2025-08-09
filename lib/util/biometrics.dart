import 'package:local_auth/local_auth.dart';

import 'config.dart';

class BiometricUtil {
  final localAuth = LocalAuthentication();
  BiometricUtil();

  Future<bool> hasBiometrics() async {
    if (!kCheckBiometrics) {
      return false;
    }
    final canCheck = await localAuth.canCheckBiometrics;
    if (canCheck) {
      final availableBiometrics = await localAuth.getAvailableBiometrics();
      return availableBiometrics.any((element) =>
          element == BiometricType.face ||
          element == BiometricType.fingerprint ||
          element == BiometricType.strong);
    }
    return false;
  }

  Future<bool> authenticateWithBiometrics(String message) async {
    bool hasBiometricsEnrolled = await hasBiometrics();
    if (!hasBiometricsEnrolled) {
      throw Exception('Missing biometrics');
    }

    return localAuth.authenticate(
      localizedReason: message,
      options: AuthenticationOptions(
        useErrorDialogs: false,
        biometricOnly: true,
        sensitiveTransaction: true,
      ),
    );
  }
}
