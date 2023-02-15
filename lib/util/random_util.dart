import 'dart:math';

class RandomUtil {
  static String generateEncryptionSecret(int length) {
    // Resulting passcode
    var result = "";
    // Characters a passcode may contain
    final chars = "abcdefghijklmnopqrstuvwxyz0123456789!?&+\\-'.";
    final rng = Random.secure();
    for (int i = 0; i < length; i++) {
      result += chars[rng.nextInt(chars.length)];
    }
    return result;
  }

  static String generateKey() {
    final rng = Random.secure();
    return List.generate(
      4,
      (index) => rng.nextInt(2147483647).toRadixString(16),
    ).join();
  }
}
