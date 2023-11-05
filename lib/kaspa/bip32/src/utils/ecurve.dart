import 'dart:typed_data';

import 'package:hex/hex.dart';
import 'package:pointycastle/ecc/api.dart' show ECPoint;
import "package:pointycastle/ecc/curves/secp256k1.dart";
// ignore: implementation_imports
import 'package:pointycastle/src/utils.dart';

final zero32 = Uint8List.fromList(List.generate(32, (index) => 0));
final egGroupOrder = HEX
    .decode("fffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141");
final ecP = HEX
    .decode("fffffffffffffffffffffffffffffffffffffffffffffffffffffffefffffc2f");
final secp256k1 = ECCurve_secp256k1();
final n = secp256k1.n;
final G = secp256k1.G;
BigInt nDiv2 = n >> 1;
const throwBadPrivate = 'Expected Private';
const throwBadPoint = 'Expected Point';
const throwBadTweak = 'Expected Tweak';
const throwBadHash = 'Expected Hash';
const throwBadSignature = 'Expected Signature';

bool isPrivate(Uint8List x) {
  if (!isScalar(x)) return false;
  return _compare(x, zero32) > 0 && // > 0
      _compare(x, egGroupOrder as Uint8List) < 0; // < G
}

bool isPoint(Uint8List p) {
  if (p.length < 33) {
    return false;
  }
  var t = p[0];
  var x = p.sublist(1, 33);

  if (_compare(x, zero32) == 0) {
    return false;
  }
  if (_compare(x, ecP as Uint8List) == 1) {
    return false;
  }
  try {
    decodeFrom(p);
  } catch (err) {
    return false;
  }
  if ((t == 0x02 || t == 0x03) && p.length == 33) {
    return true;
  }
  var y = p.sublist(33);
  if (_compare(y, zero32) == 0) {
    return false;
  }
  if (_compare(y, ecP as Uint8List) == 1) {
    return false;
  }
  if (t == 0x04 && p.length == 65) {
    return true;
  }
  return false;
}

bool isScalar(Uint8List x) {
  return x.length == 32;
}

bool isOrderScalar(x) {
  if (!isScalar(x)) return false;
  return _compare(x, egGroupOrder as Uint8List) < 0; // < G
}

bool _isPointCompressed(Uint8List p) {
  return p[0] != 0x04;
}

bool assumeCompression(bool? value, Uint8List? pubkey) {
  if (value == null && pubkey != null) return _isPointCompressed(pubkey);
  if (value == null) return true;
  return value;
}

Uint8List? pointFromScalar(Uint8List d, bool compressed) {
  if (!isPrivate(d)) throw ArgumentError(throwBadPrivate);
  BigInt dd = fromBuffer(d);
  ECPoint pp = (G * dd) as ECPoint;
  if (pp.isInfinity) return null;
  return getEncoded(pp, compressed);
}

Uint8List? pointAddScalar(Uint8List p, Uint8List tweak, bool compressedArg) {
  if (!isPoint(p)) throw ArgumentError(throwBadPoint);
  if (!isOrderScalar(tweak)) throw ArgumentError(throwBadTweak);
  bool compressed = assumeCompression(compressedArg, p);
  ECPoint? pp = decodeFrom(p);
  if (_compare(tweak, zero32) == 0) return getEncoded(pp, compressed);
  BigInt tt = fromBuffer(tweak);
  ECPoint qq = (G * tt) as ECPoint;
  ECPoint uu = (pp! + qq) as ECPoint;
  if (uu.isInfinity) return null;
  return getEncoded(uu, compressed);
}

Uint8List? privateAdd(Uint8List d, Uint8List tweak) {
  if (!isPrivate(d)) throw ArgumentError(throwBadPrivate);
  if (!isOrderScalar(tweak)) throw ArgumentError(throwBadTweak);
  BigInt dd = fromBuffer(d);
  BigInt tt = fromBuffer(tweak);
  Uint8List dt = toBuffer((dd + tt) % n);

  if (dt.length < 32) {
    Uint8List padLeadingZero = Uint8List(32 - dt.length);
    dt = Uint8List.fromList(padLeadingZero + dt);
  }

  if (!isPrivate(dt)) return null;
  return dt;
}

/// Decode a BigInt from bytes in big-endian encoding.
BigInt _decodeBigInt(List<int> bytes) {
  BigInt result = BigInt.from(0);
  for (int i = 0; i < bytes.length; i++) {
    result += BigInt.from(bytes[bytes.length - i - 1]) << (8 * i);
  }
  return result;
}

var _byteMask = BigInt.from(0xff);

/// Encode a BigInt into bytes using big-endian encoding.
Uint8List _encodeBigInt(BigInt number) {
  int needsPaddingByte;
  int rawSize;

  if (number > BigInt.zero) {
    rawSize = (number.bitLength + 7) >> 3;
    needsPaddingByte =
        ((number >> (rawSize - 1) * 8) & negativeFlag) == negativeFlag ? 1 : 0;

    if (rawSize < 32) {
      needsPaddingByte = 1;
    }
  } else {
    needsPaddingByte = 0;
    rawSize = (number.bitLength + 8) >> 3;
  }

  final size = rawSize < 32 ? rawSize + needsPaddingByte : rawSize;
  var result = Uint8List(size);
  for (int i = 0; i < size; i++) {
    result[size - i - 1] = (number & _byteMask).toInt();
    number = number >> 8;
  }
  return result;
}

BigInt fromBuffer(Uint8List d) {
  return _decodeBigInt(d);
}

Uint8List toBuffer(BigInt d) {
  return _encodeBigInt(d);
}

ECPoint? decodeFrom(Uint8List P) {
  return secp256k1.curve.decodePoint(P);
}

Uint8List getEncoded(ECPoint? P, compressed) {
  return P!.getEncoded(compressed);
}

int _compare(Uint8List a, Uint8List b) {
  BigInt aa = fromBuffer(a);
  BigInt bb = fromBuffer(b);
  if (aa == bb) return 0;
  if (aa > bb) return 1;
  return -1;
}
