import 'dart:typed_data';
import 'package:flutter_test/flutter_test.dart';
import 'package:hex/hex.dart';
import 'package:kaspium_wallet/kaspa/bip32/bip32.dart';

final defichainTestnet = NetworkType(
  messagePrefix: "DefiChain Signed Message:\n",
  bip32: Bip32Type(private: 0x04358394, public: 0x043587cf),
  pubKeyHash: 48,
  scriptHash: 50,
  wif: 0xef,
  opreturnSize: 80,
);

void main() {
  group("curve test", () {
    test("test private key generation", () {
      final hdSeed = BIP32.fromSeed(
        HEX.decode(
          "6607599b768ce88470b3b20919f9c63bff663e2f1ec3e3072d22fd9da3847784c361d5accc3b411019f5c81dd3e4ccf9fd1fddb232bfc9bfe23864e2e6ee793f",
        ) as Uint8List,
        defichainTestnet,
      );

      final xMasterPriv = BIP32.fromSeed(hdSeed.privateKey!, defichainTestnet);
      final privateKey = xMasterPriv.derivePath("m/0'/0'/0'");

      final privateKeyHex = HEX.encode(privateKey.privateKey!);

      expect(
        "55b18e96ce3964ef2c81ad69249eca6d42682c11fbe525df6671fcbf0c2be902",
        privateKeyHex,
      );
    });
  });
}
