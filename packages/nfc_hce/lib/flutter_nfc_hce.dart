import 'flutter_nfc_hce_platform_interface.dart';

class FlutterNfcHce {
  Future<String?> getPlatformVersion() {
    return FlutterNfcHcePlatform.instance.getPlatformVersion();
  }

  /// Starts the NFC host card emulation.
  /// If persistMessage is true, the NFC message is stored in a text file in the internal storage.
  Future<String?> startNfcHce(
      String content, {
        String mimeType = 'text/plain',
        bool persistMessage = true,
      }) {
    return FlutterNfcHcePlatform.instance.startNfcHce(
      content,
      mimeType,
      persistMessage,
    );
  }

  /// Starts the NFC host card emulation.
  /// Deletes the saved  text file with the NFC message from the internal storage.
  Future<void> stopNfcHce() async {
    await FlutterNfcHcePlatform.instance.stopNfcHce();
  }

  Future<bool> isNfcHceSupported() async {
    return await FlutterNfcHcePlatform.instance.isNfcHceSupported() == 'true';
  }

  /// Below sdk 29 (Android 10) it always returns false
  Future<bool> isSecureNfcEnabled() async {
    return await FlutterNfcHcePlatform.instance.isSecureNfcEnabled() == 'true';
  }

  Future<bool> isNfcEnabled() async {
    return await FlutterNfcHcePlatform.instance.isNfcEnabled() == 'true';
  }
}
