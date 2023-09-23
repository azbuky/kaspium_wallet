import 'dart:convert';

import 'exceptions.dart';

export 'converter.dart';

/// An instance of the default implementation of the Bech32Codec.
const Bech32Codec bech32 = Bech32Codec();

class Bech32Codec extends Codec<Bech32, String> {
  const Bech32Codec();

  @override
  Bech32Decoder get decoder => Bech32Decoder();
  @override
  Bech32Encoder get encoder => Bech32Encoder();

  @override
  String encode(Bech32 data, [maxLength = Bech32Validations.maxInputLength]) {
    return Bech32Encoder().convert(data, maxLength);
  }

  @override
  Bech32 decode(String data, [maxLength = Bech32Validations.maxInputLength]) {
    return Bech32Decoder().convert(data, maxLength);
  }
}

// This class converts a Bech32 class instance to a String.
class Bech32Encoder extends Converter<Bech32, String> with Bech32Validations {
  @override
  String convert(Bech32 input,
      [int maxLength = Bech32Validations.maxInputLength]) {
    var hrp = input.hrp;
    var data = input.data;

    if (hrp.length +
            data.length +
            separator.length +
            Bech32Validations.checksumLength >
        maxLength) {
      throw TooLong(
          hrp.length + data.length + 1 + Bech32Validations.checksumLength);
    }

    if (hrp.isEmpty) {
      throw TooShortHrp();
    }

    if (hasOutOfRangeHrpCharacters(hrp)) {
      throw OutOfRangeHrpCharacters(hrp);
    }

    if (isMixedCase(hrp)) {
      throw MixedCase(hrp);
    }

    hrp = hrp.toLowerCase();

    final checksummed = data + _createChecksum(hrp, data);

    if (hasOutOfBoundsChars(checksummed)) {
      throw OutOfBoundChars('<unknown>');
    }

    return hrp + separator + checksummed.map((i) => charset[i]).join();
  }
}

// This class converts a String to a Bech32 class instance.
class Bech32Decoder extends Converter<String, Bech32> with Bech32Validations {
  @override
  Bech32 convert(String input,
      [int maxLength = Bech32Validations.maxInputLength]) {
    if (input.length > maxLength) {
      throw TooLong(input.length);
    }

    if (isMixedCase(input)) {
      throw MixedCase(input);
    }

    if (hasInvalidSeparator(input)) {
      throw InvalidSeparator(input.lastIndexOf(separator));
    }

    var separatorPosition = input.lastIndexOf(separator);

    if (isChecksumTooShort(separatorPosition, input)) {
      throw TooShortChecksum();
    }

    if (isHrpTooShort(separatorPosition)) {
      throw TooShortHrp();
    }

    input = input.toLowerCase();

    var hrp = input.substring(0, separatorPosition);
    var data = input.substring(
        separatorPosition + 1, input.length - Bech32Validations.checksumLength);
    var checksum =
        input.substring(input.length - Bech32Validations.checksumLength);

    if (hasOutOfRangeHrpCharacters(hrp)) {
      throw OutOfRangeHrpCharacters(hrp);
    }

    var dataBytes = data.split('').map((c) {
      return charset.indexOf(c);
    }).toList();

    if (hasOutOfBoundsChars(dataBytes)) {
      throw OutOfBoundChars(data[dataBytes.indexOf(-1)]);
    }

    var checksumBytes = checksum.split('').map((c) {
      return charset.indexOf(c);
    }).toList();

    if (hasOutOfBoundsChars(checksumBytes)) {
      throw OutOfBoundChars(checksum[checksumBytes.indexOf(-1)]);
    }

    if (isInvalidChecksum(hrp, dataBytes, checksumBytes)) {
      throw InvalidChecksum();
    }

    return Bech32(hrp, dataBytes);
  }
}

/// Generic validations for Bech32 standard.
mixin class Bech32Validations {
  static const int maxInputLength = 90;
  static const checksumLength = 8;

  // From the entire input subtract the hrp length, the separator and the required checksum length
  bool isChecksumTooShort(int separatorPosition, String input) {
    return (input.length - separatorPosition - 1 - checksumLength) < 0;
  }

  bool hasOutOfBoundsChars(List<int> data) {
    return data.any((c) => c == -1);
  }

  bool isHrpTooShort(int separatorPosition) {
    return separatorPosition == 0;
  }

  bool isInvalidChecksum(String hrp, List<int> data, List<int> checksum) {
    return !_verifyChecksum(hrp, data + checksum);
  }

  bool isMixedCase(String input) {
    return input.toLowerCase() != input && input.toUpperCase() != input;
  }

  bool hasInvalidSeparator(String bech32) {
    return bech32.lastIndexOf(separator) == -1;
  }

  bool hasOutOfRangeHrpCharacters(String hrp) {
    return hrp.codeUnits.any((c) => c < 33 || c > 126);
  }
}

/// Bech32 is a dead simple wrapper around a Human Readable Part (HRP) and a
/// bunch of bytes.
class Bech32 {
  Bech32(this.hrp, this.data);

  final String hrp;
  final List<int> data;
}

const String separator = ':';

const List<String> charset = [
  'q',
  'p',
  'z',
  'r',
  'y',
  '9',
  'x',
  '8',
  'g',
  'f',
  '2',
  't',
  'v',
  'd',
  'w',
  '0',
  's',
  '3',
  'j',
  'n',
  '5',
  '4',
  'k',
  'h',
  'c',
  'e',
  '6',
  'm',
  'u',
  'a',
  '7',
  'l',
];

const List<int> generator = [
  0x98f2bc8e61,
  0x79b76d99e2,
  0xf33e5fb3c4,
  0xae2eabe2a8,
  0x1e4f43e470,
];

var GENERATOR1 = [0x98, 0x79, 0xf3, 0xae, 0x1e];
var GENERATOR2 = [0xf2bc8e61, 0xb76d99e2, 0x3e5fb3c4, 0x2eabe2a8, 0x4f43e470];

// ignore: unused_element
int _polymod32(List<int> data) {
  // Treat c as 8 bits + 32 bits
  var c0 = 0, c1 = 1, C = 0;
  for (var j = 0; j < data.length; j++) {
    // Set C to c shifted by 35
    C = c0 >>> 3;
    // 0x[07]ffffffff
    c0 &= 0x07;
    // Shift as a whole number
    c0 <<= 5;
    c0 |= c1 >>> 27;
    // 0xffffffff >>> 5
    c1 &= 0x07ffffff;
    c1 <<= 5;
    // xor the last 5 bits
    c1 ^= data[j];
    for (var i = 0; i < GENERATOR1.length; ++i) {
      if (C & (1 << i) != 0) {
        c0 ^= GENERATOR1[i];
        c1 ^= GENERATOR2[i];
      }
    }
  }
  c1 ^= 1;
  // Negative numbers -> large positive numbers
  if (c1 < 0) {
    c1 ^= 1 << 31;
    c1 += (1 << 30) * 2;
  }
  // Unless bitwise operations are used,
  // numbers are consisting of 52 bits, except
  // the sign bit. The result is max 40 bits,
  // so it fits perfectly in one number!
  return c0 * (1 << 30) * 4 + c1;
}

int _polymod(List<int> values) {
  var chk = 1;
  values.forEach((v) {
    var top = chk >>> 35;
    chk = ((chk & 0x07ffffffff) << 5) ^ v;
    for (int i = 0; i < generator.length; i++) {
      if ((top >>> i) & 1 == 1) {
        chk ^= generator[i];
      }
    }
  });

  return chk ^ 1;
}

List<int> _hrpExpand(String hrp) {
  final result = utf8.encode(hrp).map((c) => c & 31).toList();

  return result;
}

bool _verifyChecksum(String hrp, List<int> dataIncludingChecksum) {
  return _polymod(_hrpExpand(hrp) + [0] + dataIncludingChecksum) == 0;
}

List<int> _createChecksum(String hrp, List<int> data) {
  var values = _hrpExpand(hrp) + [0] + data + [0, 0, 0, 0, 0, 0, 0, 0];
  var polymod = _polymod(values);
  //kIsWeb ? _polymod32(values) : _polymod(values);

  var result = <int>[0, 0, 0, 0, 0, 0, 0, 0];

  for (var i = 0; i < result.length; i++) {
    result[i] = (polymod >>> (5 * (result.length - 1 - i))) & 31;
  }
  return result;
}
