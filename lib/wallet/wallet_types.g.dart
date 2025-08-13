// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BoxKeys _$BoxKeysFromJson(Map json) => _BoxKeys(
  boxKey: json['boxKey'] as String,
  encryptionKey: json['encryptionKey'] as String,
);

Map<String, dynamic> _$BoxKeysToJson(_BoxKeys instance) => <String, dynamic>{
  'boxKey': instance.boxKey,
  'encryptionKey': instance.encryptionKey,
};

_BoxInfo _$BoxInfoFromJson(Map json) => _BoxInfo(
  address: BoxKeys.fromJson(Map<String, dynamic>.from(json['address'] as Map)),
  balance: BoxKeys.fromJson(Map<String, dynamic>.from(json['balance'] as Map)),
  utxo: BoxKeys.fromJson(Map<String, dynamic>.from(json['utxo'] as Map)),
  txIndex: BoxKeys.fromJson(Map<String, dynamic>.from(json['txIndex'] as Map)),
  tx: BoxKeys.fromJson(Map<String, dynamic>.from(json['tx'] as Map)),
);

Map<String, dynamic> _$BoxInfoToJson(_BoxInfo instance) => <String, dynamic>{
  'address': instance.address.toJson(),
  'balance': instance.balance.toJson(),
  'utxo': instance.utxo.toJson(),
  'txIndex': instance.txIndex.toJson(),
  'tx': instance.tx.toJson(),
};

_BoxInfoBundle _$BoxInfoBundleFromJson(Map json) => _BoxInfoBundle(
  byNetworkId:
      (json['byNetworkId'] as Map?)?.map(
        (k, e) => MapEntry(
          k as String,
          BoxInfo.fromJson(Map<String, dynamic>.from(e as Map)),
        ),
      ) ??
      const {},
  wasMigrated: json['wasMigrated'] as bool? ?? false,
);

Map<String, dynamic> _$BoxInfoBundleToJson(
  _BoxInfoBundle instance,
) => <String, dynamic>{
  'byNetworkId': instance.byNetworkId.map((k, e) => MapEntry(k, e.toJson())),
  'wasMigrated': instance.wasMigrated,
};

_BoxInfoByNetwork _$BoxInfoByNetworkFromJson(Map json) => _BoxInfoByNetwork(
  mainnet: BoxInfo.fromJson(Map<String, dynamic>.from(json['mainnet'] as Map)),
  testnet: BoxInfo.fromJson(Map<String, dynamic>.from(json['testnet'] as Map)),
  devnet: BoxInfo.fromJson(Map<String, dynamic>.from(json['devnet'] as Map)),
  simnet: BoxInfo.fromJson(Map<String, dynamic>.from(json['simnet'] as Map)),
);

Map<String, dynamic> _$BoxInfoByNetworkToJson(_BoxInfoByNetwork instance) =>
    <String, dynamic>{
      'mainnet': instance.mainnet.toJson(),
      'testnet': instance.testnet.toJson(),
      'devnet': instance.devnet.toJson(),
      'simnet': instance.simnet.toJson(),
    };

_WalletKindLocalHdSchnorr _$WalletKindLocalHdSchnorrFromJson(Map json) =>
    _WalletKindLocalHdSchnorr(
      viewOnly: json['viewOnly'] as bool? ?? false,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$WalletKindLocalHdSchnorrToJson(
  _WalletKindLocalHdSchnorr instance,
) => <String, dynamic>{
  'viewOnly': instance.viewOnly,
  'runtimeType': instance.$type,
};

_WalletKindLocalHdEcdsa _$WalletKindLocalHdEcdsaFromJson(Map json) =>
    _WalletKindLocalHdEcdsa(
      viewOnly: json['viewOnly'] as bool? ?? false,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$WalletKindLocalHdEcdsaToJson(
  _WalletKindLocalHdEcdsa instance,
) => <String, dynamic>{
  'viewOnly': instance.viewOnly,
  'runtimeType': instance.$type,
};

_WalletKindLocalHdLegacy _$WalletKindLocalHdLegacyFromJson(Map json) =>
    _WalletKindLocalHdLegacy(
      mainPubKey: json['mainPubKey'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$WalletKindLocalHdLegacyToJson(
  _WalletKindLocalHdLegacy instance,
) => <String, dynamic>{
  'mainPubKey': instance.mainPubKey,
  'runtimeType': instance.$type,
};

_WalletInfo _$WalletInfoFromJson(Map json) => _WalletInfo(
  name: json['name'] as String,
  kind: json['kind'] == null
      ? const WalletKind.localHdSchnorr()
      : WalletKind.fromJson(Map<String, dynamic>.from(json['kind'] as Map)),
  wid: json['wid'] as String,
  boxInfo: json['boxInfo'] == null
      ? null
      : BoxInfoByNetwork.fromJson(
          Map<String, dynamic>.from(json['boxInfo'] as Map),
        ),
  mainnetPublicKey: json['mainnetPublicKey'] as String,
  usesBip39Passphrase: json['usesBip39Passphrase'] as bool? ?? false,
);

Map<String, dynamic> _$WalletInfoToJson(_WalletInfo instance) =>
    <String, dynamic>{
      'name': instance.name,
      'kind': instance.kind.toJson(),
      'wid': instance.wid,
      'boxInfo': ?instance.boxInfo?.toJson(),
      'mainnetPublicKey': instance.mainnetPublicKey,
      'usesBip39Passphrase': instance.usesBip39Passphrase,
    };

_WalletBundle _$WalletBundleFromJson(Map json) => _WalletBundle(
  wallets: json['wallets'] == null
      ? null
      : IList<WalletInfo>.fromJson(
          json['wallets'],
          (value) =>
              WalletInfo.fromJson(Map<String, dynamic>.from(value as Map)),
        ),
  selected: json['selected'] == null
      ? null
      : WalletInfo.fromJson(Map<String, dynamic>.from(json['selected'] as Map)),
);

Map<String, dynamic> _$WalletBundleToJson(_WalletBundle instance) =>
    <String, dynamic>{
      'wallets': ?instance.wallets?.toJson((value) => value.toJson()),
      'selected': ?instance.selected?.toJson(),
    };
