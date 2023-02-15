import 'dart:typed_data';

/// Bytes to Words
Uint8List bytesToWords(Uint8List bytes) =>
    _convert(data: bytes, fromBits: 8, toBits: 5, pad: true);

/// Words to Bytes
Uint8List wordsToBytes(Uint8List words) =>
    _convert(data: words, fromBits: 5, toBits: 8, pad: false);

Uint8List _convert({
  required Uint8List data,
  required int fromBits,
  required int toBits,
  required bool pad,
}) {
  final List<int> regrouped = [];
  int nextByte = 0;
  int filledBits = 0;

  final byteMask = 255;

  for (int i = 0; i < data.length; i++) {
    int b = (data[i] << (8 - fromBits)) & byteMask;
    int remainingFromBits = fromBits;
    while (remainingFromBits > 0) {
      int remainingToBits = toBits - filledBits;
      int toExtract = remainingFromBits;

      if (remainingToBits < toExtract) {
        toExtract = remainingToBits;
      }

      nextByte = ((nextByte << toExtract) & byteMask) | (b >> (8 - toExtract));
      b = (b << toExtract) & byteMask;
      remainingFromBits -= toExtract;
      filledBits += toExtract;

      if (filledBits == toBits) {
        regrouped.add(nextByte);
        filledBits = 0;
        nextByte = 0;
      }
    }
  }
  if (pad && filledBits > 0) {
    nextByte = (nextByte << (toBits - filledBits)) & byteMask;
    regrouped.add(nextByte);
  }

  return Uint8List.fromList(regrouped);
}
