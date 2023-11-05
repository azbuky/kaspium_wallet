import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:kaspium_wallet/kaspa/bs58check/bs58check.dart' as bs58check;
import 'dart:io';
import 'package:hex/hex.dart';
import 'dart:convert';

void main() {
  Map<String, dynamic> fixtures = json.decode(
      File('./test/bs58check/fixtures.json').readAsStringSync(encoding: utf8));
  (fixtures['valid'] as List<dynamic>).forEach((f) {
    test("decodes ${f['string']}", () {
      expect(HEX.encode(bs58check.decode(f['string'])), f['payload']);
    });
  });
  (fixtures['invalid'] as List<dynamic>).forEach((f) {
    test("decode throws on ${f['string']}", () {
      var buffer;
      try {
        buffer = bs58check.decode(f['string']);
      } catch (err) {
        expect((err as ArgumentError).message, f['exception']);
      } finally {
        expect(buffer, null);
      }
    });
  });
  (fixtures['valid'] as List<dynamic>).forEach((f) {
    test("encodes ${f['payload']}", () {
      expect(bs58check.encode(Uint8List.fromList(HEX.decode(f['payload']))),
          f['string']);
    });
  });
}
