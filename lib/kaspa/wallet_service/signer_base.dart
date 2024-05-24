import 'dart:typed_data';

import '../types/address.dart';

abstract class SignerBase {
  Future<bool> canSignForAddress(Address address);
  Future<Uint8List> sign(Uint8List data, Address address);
}
