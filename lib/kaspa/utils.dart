import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';

import '../utils.dart';

const kaspaDecimals = 8;

extension ToBigInt on Int64 {
  BigInt toUnsignedBigInt() => BigInt.parse(toStringUnsigned());
}

extension ToInt64 on BigInt {
  Int64 toInt64() =>
      Int64.fromBytesBigEndian(leftPadBytes(bigIntToBytesUnsigned(this), 8));
}

/// Converts a `List<int>` to a [Uint8List].
///
/// Attempts to cast to a [Uint8List] first to avoid creating an unnecessary
/// copy.
extension AsUint8List on List<int> {
  Uint8List asUint8List() {
    final self = this; // Local variable to allow automatic type promotion.
    return (self is Uint8List) ? self : Uint8List.fromList(this);
  }
}
