import 'dart:typed_data';

import '../types/address.dart';
import 'types.dart';

// Script public key versions for address types.
const kAddressPublicKeyScriptPublicKeyVersion = 0;
const kAddressPublicKeyECDSAScriptPublicKeyVersion = 0;
const kAddressScriptHashScriptPublicKeyVersion = 0;

const kOpEqual = 135;
const kOpBlake2b = 170;
const kOpCheckSigECDSA = 171;
const kOpCheckSig = 172;

Uint8List payToPubKeyScript(Uint8List publicKey) {
  return Uint8List.fromList(
    [publicKey.length, ...publicKey, kOpCheckSig],
  );
}

Uint8List payToPubKeyScriptECDSA(Uint8List publicKey) {
  return Uint8List.fromList(
    [publicKey.length, ...publicKey, kOpCheckSigECDSA],
  );
}

Uint8List payToScriptHashScript(Uint8List hash) {
  return Uint8List.fromList([kOpBlake2b, hash.length, ...hash, kOpEqual]);
}

ScriptPublicKey payToAddressScript(Address address) {
  return address.map(
    publicKey: (address) {
      return ScriptPublicKey(
        scriptPublicKey: payToPubKeyScript(address.scriptAddress()),
        version: kAddressPublicKeyScriptPublicKeyVersion,
      );
    },
    pubKeyECDSA: (address) {
      return ScriptPublicKey(
        scriptPublicKey: payToPubKeyScriptECDSA(address.scriptAddress()),
        version: kAddressPublicKeyECDSAScriptPublicKeyVersion,
      );
    },
    scriptHash: (address) {
      return ScriptPublicKey(
        scriptPublicKey: payToScriptHashScript(address.scriptAddress()),
        version: kAddressScriptHashScriptPublicKeyVersion,
      );
    },
  );
}
