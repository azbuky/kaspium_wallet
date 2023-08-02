import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../kaspa/kaspa.dart';

part 'wallet_types.freezed.dart';
part 'wallet_types.g.dart';

@freezed
class BoxKeys with _$BoxKeys {
  const factory BoxKeys({
    required String boxKey,
    required String encryptionKey,
  }) = _BoxKeys;

  factory BoxKeys.fromJson(Map<String, dynamic> json) =>
      _$BoxKeysFromJson(json);
}

@freezed
class BoxInfo with _$BoxInfo {
  const factory BoxInfo({
    required BoxKeys address,
    required BoxKeys balance,
    required BoxKeys utxo,
    required BoxKeys txIndex,
    required BoxKeys tx,
  }) = _BoxInfo;

  factory BoxInfo.fromJson(Map<String, dynamic> json) =>
      _$BoxInfoFromJson(json);
}

@freezed
class BoxInfoByNetwork with _$BoxInfoByNetwork {
  const BoxInfoByNetwork._();
  const factory BoxInfoByNetwork({
    required BoxInfo mainnet,
    required BoxInfo testnet,
    required BoxInfo devnet,
    required BoxInfo simnet,
  }) = _BoxInfoByNetwork;

  factory BoxInfoByNetwork.fromJson(Map<String, dynamic> json) =>
      _$BoxInfoByNetworkFromJson(json);

  BoxInfo getBoxInfo(KaspaNetwork network) {
    switch (network) {
      case KaspaNetwork.mainnet:
        return mainnet;
      case KaspaNetwork.testnet:
        return testnet;
      case KaspaNetwork.devnet:
        return devnet;
      case KaspaNetwork.simnet:
        return simnet;
    }
  }
}

@freezed
class WalletKind with _$WalletKind {
  const WalletKind._();

  const factory WalletKind.localHdSchnorr() = _WalletKindLocalHdSchnorr;

  const factory WalletKind.localHdEcdsa() = _WalletKindLocalHdEcdsa;

  const factory WalletKind.localHdLegacy({required String mainPubKey}) =
      _WalletKindLocalHdLegacy;

  factory WalletKind.fromJson(Map<String, dynamic> json) =>
      _$WalletKindFromJson(json);

  HdWalletType get type => when(
        localHdSchnorr: () => HdWalletType.schnorr,
        localHdEcdsa: () => HdWalletType.ecdsa,
        localHdLegacy: (_) => HdWalletType.legacy,
      );
}

@freezed
class WalletInfo with _$WalletInfo {
  const WalletInfo._();
  const factory WalletInfo({
    required String name,
    @Default(WalletKind.localHdSchnorr()) WalletKind kind,
    required String wid,
    required BoxInfoByNetwork boxInfo,
    // HDPublic key base58 encoded
    required String mainnetPublicKey,
    required String testnetPublicKey,
    required String simnetPublicKey,
    required String devnetPublicKey,
  }) = _WalletInfo;

  factory WalletInfo.fromJson(Map<String, dynamic> json) =>
      _$WalletInfoFromJson(json);

  BoxInfo getBoxInfo(KaspaNetwork network) => boxInfo.getBoxInfo(network);

  String hdPublicKey(KaspaNetwork network) {
    switch (network) {
      case KaspaNetwork.mainnet:
        return mainnetPublicKey;
      case KaspaNetwork.testnet:
        return testnetPublicKey;
      case KaspaNetwork.simnet:
        return simnetPublicKey;
      case KaspaNetwork.devnet:
        return devnetPublicKey;
    }
  }

  String getShortName() {
    List<String> splitName = name.split(' ');
    if (splitName.length > 1 &&
        splitName[0].length >= 1 &&
        splitName[1].length >= 1) {
      String firstChar = splitName[0].substring(0, 1);
      String secondPart = splitName[1].substring(0, 1);
      if ((int.tryParse(splitName[1]) ?? 0) >= 10) {
        secondPart = splitName[1].substring(0, 2);
      }
      return firstChar + secondPart;
    } else if (name.length > 2) {
      return name.substring(0, 2);
    }
    return name;
  }
}

@freezed
class WalletBundle with _$WalletBundle {
  const factory WalletBundle({
    @Default(IListConst<WalletInfo>([])) IList<WalletInfo> wallets,
    WalletInfo? selected,
  }) = _WalletBundle;

  factory WalletBundle.fromJson(Map<String, dynamic> json) =>
      _$WalletBundleFromJson(json);
}

@freezed
class WalletData with _$WalletData {
  const factory WalletData({
    required String name,
    required WalletKind kind,
    required String seed,
    String? mnemonic,
    String? password,
  }) = _WalletData;
}
