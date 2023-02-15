// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BoxKeys _$$_BoxKeysFromJson(Map json) => _$_BoxKeys(
      boxKey: json['boxKey'] as String,
      encryptionKey: json['encryptionKey'] as String,
    );

Map<String, dynamic> _$$_BoxKeysToJson(_$_BoxKeys instance) =>
    <String, dynamic>{
      'boxKey': instance.boxKey,
      'encryptionKey': instance.encryptionKey,
    };

_$_BoxInfo _$$_BoxInfoFromJson(Map json) => _$_BoxInfo(
      address:
          BoxKeys.fromJson(Map<String, dynamic>.from(json['address'] as Map)),
      balance:
          BoxKeys.fromJson(Map<String, dynamic>.from(json['balance'] as Map)),
      utxo: BoxKeys.fromJson(Map<String, dynamic>.from(json['utxo'] as Map)),
      txIndex:
          BoxKeys.fromJson(Map<String, dynamic>.from(json['txIndex'] as Map)),
      tx: BoxKeys.fromJson(Map<String, dynamic>.from(json['tx'] as Map)),
    );

Map<String, dynamic> _$$_BoxInfoToJson(_$_BoxInfo instance) =>
    <String, dynamic>{
      'address': instance.address.toJson(),
      'balance': instance.balance.toJson(),
      'utxo': instance.utxo.toJson(),
      'txIndex': instance.txIndex.toJson(),
      'tx': instance.tx.toJson(),
    };

_$_BoxInfoByNetwork _$$_BoxInfoByNetworkFromJson(Map json) =>
    _$_BoxInfoByNetwork(
      mainnet:
          BoxInfo.fromJson(Map<String, dynamic>.from(json['mainnet'] as Map)),
      testnet:
          BoxInfo.fromJson(Map<String, dynamic>.from(json['testnet'] as Map)),
      devnet:
          BoxInfo.fromJson(Map<String, dynamic>.from(json['devnet'] as Map)),
      simnet:
          BoxInfo.fromJson(Map<String, dynamic>.from(json['simnet'] as Map)),
    );

Map<String, dynamic> _$$_BoxInfoByNetworkToJson(_$_BoxInfoByNetwork instance) =>
    <String, dynamic>{
      'mainnet': instance.mainnet.toJson(),
      'testnet': instance.testnet.toJson(),
      'devnet': instance.devnet.toJson(),
      'simnet': instance.simnet.toJson(),
    };

_$_WalletInfo _$$_WalletInfoFromJson(Map json) => _$_WalletInfo(
      name: json['name'] as String,
      wid: json['wid'] as String,
      boxInfo: BoxInfoByNetwork.fromJson(
          Map<String, dynamic>.from(json['boxInfo'] as Map)),
      mainnetPublicKey: json['mainnetPublicKey'] as String,
      testnetPublicKey: json['testnetPublicKey'] as String,
      simnetPublicKey: json['simnetPublicKey'] as String,
      devnetPublicKey: json['devnetPublicKey'] as String,
    );

Map<String, dynamic> _$$_WalletInfoToJson(_$_WalletInfo instance) =>
    <String, dynamic>{
      'name': instance.name,
      'wid': instance.wid,
      'boxInfo': instance.boxInfo.toJson(),
      'mainnetPublicKey': instance.mainnetPublicKey,
      'testnetPublicKey': instance.testnetPublicKey,
      'simnetPublicKey': instance.simnetPublicKey,
      'devnetPublicKey': instance.devnetPublicKey,
    };

_$_WalletBundle _$$_WalletBundleFromJson(Map json) => _$_WalletBundle(
      wallets: json['wallets'] == null
          ? const IListConst<WalletInfo>([])
          : IList<WalletInfo>.fromJson(
              json['wallets'],
              (value) =>
                  WalletInfo.fromJson(Map<String, dynamic>.from(value as Map))),
      selected: json['selected'] == null
          ? null
          : WalletInfo.fromJson(
              Map<String, dynamic>.from(json['selected'] as Map)),
    );

Map<String, dynamic> _$$_WalletBundleToJson(_$_WalletBundle instance) {
  final val = <String, dynamic>{
    'wallets': instance.wallets.toJson(
      (value) => value.toJson(),
    ),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('selected', instance.selected?.toJson());
  return val;
}
