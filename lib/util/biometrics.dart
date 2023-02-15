import 'package:local_auth/local_auth.dart';
import 'package:logger/logger.dart';

import 'config.dart';

class BiometricUtil {
  final Logger logger;

  const BiometricUtil(this.logger);

  Future<bool> hasBiometrics() async {
    if (!kCheckBiometrics) {
      return false;
    }
    final localAuth = LocalAuthentication();
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

    final localAuth = LocalAuthentication();
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
