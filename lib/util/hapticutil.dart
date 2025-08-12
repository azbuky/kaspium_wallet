import 'package:flutter/services.dart';

import 'platform.dart';

/// Utilities for haptic feedback
class HapticUtil {
  const HapticUtil();

  /// Feedback for error
  Future<void> error() async {
    HapticFeedback.vibrate();
  }

  /// Feedback for success
  Future<void> success() async {
    HapticFeedback.mediumImpact();
  }

  /// Feedback for fingerprint success
  /// iOS-only, since Android already gives us feedback on success
  Future<void> fingerprintSuccess() async {
    if (kPlatformIsIOS) {
      Future.delayed(Duration(milliseconds: 50), success);
    }
  }
}
