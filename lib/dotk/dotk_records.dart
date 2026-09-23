import 'dart:convert';
import 'dart:typed_data';

/// Reads a card's record blob: a CBOR map of text keys whose values are text,
/// flags or any other item, kept as its raw bytes.
abstract class DotkRecords {
  static const blobMaxLength = 16 * 1024;

  static const _depthMax = 8;

  static Map<String, Object>? tryDecode(Uint8List blob) {
    try {
      return decode(blob);
    } on FormatException {
      return null;
    }
  }

  static Map<String, Object> decode(Uint8List blob) {
    final reader = _Reader(blob);
    final (major, count) = reader.head();
    if (major != 5) {
      throw const FormatException('Record blob is not a map');
    }

    final records = <String, Object>{};
    for (var i = 0; i < count; i++) {
      final key = reader.text();
      final Object value;
      final next = reader.peek();
      if (next == 0xf4 || next == 0xf5) {
        reader.byte();
        value = next == 0xf5;
      } else if (next >> 5 == 3) {
        value = reader.text();
      } else {
        final start = reader.at;
        reader.skip(0);
        value = Uint8List.sublistView(blob, start, reader.at);
      }
      if (records.containsKey(key)) {
        throw FormatException('Record key $key appears twice');
      }
      records[key] = value;
    }
    if (reader.at != blob.length) {
      throw const FormatException('Record blob has trailing bytes');
    }

    return records;
  }
}

class _Reader {
  final Uint8List bytes;
  int at = 0;

  _Reader(this.bytes);

  int peek() {
    if (at >= bytes.length) {
      throw const FormatException('Record blob is truncated');
    }
    return bytes[at];
  }

  int byte() {
    final b = peek();
    at += 1;
    return b;
  }

  Uint8List take(int length) {
    if (length > bytes.length - at) {
      throw const FormatException('Record blob is truncated');
    }
    final start = at;
    at += length;
    return Uint8List.sublistView(bytes, start, at);
  }

  int _uint(int length) =>
      take(length).fold(0, (value, byte) => value << 8 | byte);

  (int, int) head() {
    final b = byte();
    final info = b & 0x1f;
    final argument = switch (info) {
      < 24 => info,
      24 => byte(),
      25 => _uint(2),
      26 => _uint(4),
      _ => throw FormatException('Unsupported CBOR head $b'),
    };
    return (b >> 5, argument);
  }

  String text() {
    final (major, length) = head();
    if (major != 3) {
      throw const FormatException('Record key or value is not text');
    }
    final bytes = take(length);
    final text = utf8.decode(bytes);
    // utf8.decode drops one leading byte order mark, which here is part of
    // the text
    final hasBom =
        bytes.length >= 3 &&
        bytes[0] == 0xef &&
        bytes[1] == 0xbb &&
        bytes[2] == 0xbf;
    return hasBom ? '\u{feff}$text' : text;
  }

  void skip(int enclosing) {
    final b = byte();
    final major = b >> 5;
    final info = b & 0x1f;

    int argument() {
      // An eight-byte argument is a value, never a length
      if (info == 27 && (major == 0 || major == 1 || major == 6)) {
        take(8);
        return 0;
      }
      return switch (info) {
        < 24 => info,
        24 => byte(),
        25 => _uint(2),
        26 => _uint(4),
        _ => throw FormatException('Unsupported CBOR head $b'),
      };
    }

    int deeper() {
      if (enclosing >= DotkRecords._depthMax) {
        throw const FormatException('Record value nests too deep');
      }
      return enclosing + 1;
    }

    switch (major) {
      case 0 || 1:
        argument();
      case 2 || 3:
        take(argument());
      case 4 || 5:
        final count = argument() * (major == 5 ? 2 : 1);
        final inner = deeper();
        for (var i = 0; i < count; i++) {
          skip(inner);
        }
      case 6:
        argument();
        skip(deeper());
      default:
        switch (info) {
          case < 24:
            break;
          case 24:
            if (byte() < 0x20) {
              throw FormatException('Unsupported CBOR head $b');
            }
          case 25:
            take(2);
          case 26:
            take(4);
          case 27:
            take(8);
          default:
            throw FormatException('Unsupported CBOR head $b');
        }
    }
  }
}
