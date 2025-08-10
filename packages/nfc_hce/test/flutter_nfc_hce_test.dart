import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_nfc_hce/flutter_nfc_hce.dart';
import 'package:flutter_nfc_hce/flutter_nfc_hce_platform_interface.dart';
import 'package:flutter_nfc_hce/flutter_nfc_hce_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterNfcHcePlatform
    with MockPlatformInterfaceMixin
    implements FlutterNfcHcePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<String?> isNfcEnabled() {
    // TODO: implement isNfcEnabled
    throw UnimplementedError();
  }

  @override
  Future<String?> isNfcHceSupported() {
    // TODO: implement isNfcHceSupported
    throw UnimplementedError();
  }

  @override
  Future<String?> startNfcHce(
      String content,
      String mimeType,
      bool persistMessage,
  ) {
    // TODO: implement startNfcHce
    throw UnimplementedError();
  }

  @override
  Future<String?> isSecureNfcEnabled() {
    // TODO: implement isSecureNfcEnabled
    throw UnimplementedError();
  }

  @override
  Future<String?> stopNfcHce() {
    // TODO: implement stopNfcHce
    throw UnimplementedError();
  }
}

void main() {
  final FlutterNfcHcePlatform initialPlatform = FlutterNfcHcePlatform.instance;

  test('$MethodChannelFlutterNfcHce is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterNfcHce>());
  });

  test('getPlatformVersion', () async {
    FlutterNfcHce flutterNfcHcePlugin = FlutterNfcHce();
    MockFlutterNfcHcePlatform fakePlatform = MockFlutterNfcHcePlatform();
    FlutterNfcHcePlatform.instance = fakePlatform;

    expect(await flutterNfcHcePlugin.getPlatformVersion(), '42');
  });
}
