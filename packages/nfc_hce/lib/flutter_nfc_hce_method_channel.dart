import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_nfc_hce_platform_interface.dart';

/// An implementation of [FlutterNfcHcePlatform] that uses method channels.
class MethodChannelFlutterNfcHce extends FlutterNfcHcePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_nfc_hce');

  @override
  Future<String?> getPlatformVersion() async {
    return await methodChannel.invokeMethod<String>('getPlatformVersion');
  }

  @override
  Future<String?> startNfcHce(
      String content,
      String mimeType,
      bool persistMessage,
      ) async {
    return await methodChannel.invokeMethod<String>(
      'startNfcHce',
      <String, dynamic>{
        'content': content,
        'mimeType': mimeType,
        'persistMessage': persistMessage,
      },
    );
  }

  @override
  Future<String?> stopNfcHce() async {
    return await methodChannel.invokeMethod<String>('stopNfcHce');
  }

  @override
  Future<String?> isNfcHceSupported() async {
    return await methodChannel.invokeMethod<String>('isNfcHceSupported');
  }

  @override
  Future<String?> isSecureNfcEnabled() async {
    return await methodChannel.invokeMethod<String>('isSecureNfcEnabled');
  }

  @override
  Future<String?> isNfcEnabled() async {
    return await methodChannel.invokeMethod<String>('isNfcEnabled');
  }
}
