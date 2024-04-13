import 'dart:typed_data';

class Base {
  String? ALPHABET;
  Map<String, int> ALPHABET_MAP = new Map<String, int>();
  int? BASE;

  String? LEADER;

  Base(String ALPHABET) {
    this.ALPHABET = ALPHABET;
    this.BASE = ALPHABET.length;
    this.LEADER = (ALPHABET)[0];
    for (var i = 0; i < (ALPHABET).length; i++) {
      ALPHABET_MAP[(ALPHABET)[i]] = i;
    }
  }
  String encode(Uint8List source) {
    if (source.length == 0) {
      return "";
    }
    List<int> digits = [0];

    for (var i = 0; i < source.length; ++i) {
      var carry = source[i];
      for (var j = 0; j < digits.length; ++j) {
        carry += digits[j] << 8;
        digits[j] = carry % BASE!;
        carry = carry ~/ BASE!;
      }
      while (carry > 0) {
        digits.add(carry % BASE!);
        carry = carry ~/ BASE!;
      }
    }
    var string = "";

    // deal with leading zeros
    for (var k = 0; source[k] == 0 && k < source.length - 1; ++k) {
      string += LEADER!;
    }
    // convert digits to a string
    for (var q = digits.length - 1; q >= 0; --q) {
      string += ALPHABET![digits[q]];
    }
    return string;
  }

  Uint8List decode(String string) {
    if (string.length == 0) {
      throw new ArgumentError('Non-base$BASE character');
    }
    List<int> bytes = [0];
    for (var i = 0; i < string.length; i++) {
      var value = ALPHABET_MAP[string[i]];
      if (value == null) {
        throw new ArgumentError('Non-base$BASE character');
      }
      var carry = value;
      for (var j = 0; j < bytes.length; ++j) {
        carry += bytes[j] * BASE!;
        bytes[j] = carry & 0xff;
        carry >>= 8;
      }
      while (carry > 0) {
        bytes.add(carry & 0xff);
        carry >>= 8;
      }
    }
    // deal with leading zeros
    for (var k = 0; string[k] == LEADER && k < string.length - 1; ++k) {
      bytes.add(0);
    }
    return Uint8List.fromList(bytes.reversed.toList());
  }
}
