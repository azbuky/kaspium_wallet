import 'package:flutter_test/flutter_test.dart';
import 'package:kaspium_wallet/kaspa/bech32/bech32.dart';
import 'package:kaspium_wallet/kaspa/kaspa.dart';

const checkEncodingStringTests = [
  ["a", "0", "", "a:qqeq69uvrh"],
  ["a", "8", "", "a:pq99546ray"],
  ["a", "120", "", "a:0qf6jrhtdq"],
  ["b", "8", " ", "b:pqsqzsjd64fv"],
  ["b", "8", "-", "b:pqksmhczf8ud"],
  ["b", "8", "0", "b:pqcq53eqrk0e"],
  ["b", "8", "1", "b:pqcshg75y0vf"],
  ["b", "8", "-1", "b:pqknzl4e9y0zy"],
  ["b", "8", "11", "b:pqcnzt888ytdg"],
  ["b", "8", "abc", "b:ppskycc8txxxn2w"],
  ["b", "8", "1234598760", "b:pqcnyve5x5unsdekxqeusxeyu2"],
  [
    "b",
    "8",
    "abcdefghijklmnopqrstuvwxyz",
    "b:ppskycmyv4nxw6rfdf4kcmtwdac8zunnw36hvamc09aqtpppz8lk"
  ],
  [
    "b",
    "8",
    "000000000000000000000000000000000000000000",
    "b:pqcrqvpsxqcrqvpsxqcrqvpsxqcrqvpsxqcrqvpsxqcrqvpsxqcrqvpsxqcrqvpsxqcrq7ag684l3"
  ],
];
void main() {
  test('Bech32 encode and decode', () {
    for (final test in checkEncodingStringTests) {
      final hrp = test[0];
      final version = int.parse(test[1]);
      final input = stringToBytesUtf8(test[2]);
      final expected = test[3];

      final words = bytesToWords(([version] + input).asUint8List());
      final data = Bech32(hrp, words);
      final encoded = bech32.encode(data);

      expect(encoded, expected);

      final decoded = bech32.decode(encoded);
      final bytes = wordsToBytes(decoded.data.asUint8List());

      expect(decoded.hrp, hrp);
      expect(bytes.first, version);
      expect(bytes.sublist(1), input);
    }
  });
}
