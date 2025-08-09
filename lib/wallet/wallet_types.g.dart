// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BoxKeysImpl _$$BoxKeysImplFromJson(Map json) => _$BoxKeysImpl(
      boxKey: json['boxKey'] as String,
      encryptionKey: json['encryptionKey'] as String,
    );

Map<String, dynamic> _$$BoxKeysImplToJson(_$BoxKeysImpl instance) =>
    <String, dynamic>{
      'boxKey': instance.boxKey,
      'encryptionKey': instance.encryptionKey,
    };

_$BoxInfoImpl _$$BoxInfoImplFromJson(Map json) => _$BoxInfoImpl(
      address:
          BoxKeys.fromJson(Map<String, dynamic>.from(json['address'] as Map)),
      balance:
          BoxKeys.fromJson(Map<String, dynamic>.from(json['balance'] as Map)),
      utxo: BoxKeys.fromJson(Map<String, dynamic>.from(json['utxo'] as Map)),
      txIndex:
          BoxKeys.fromJson(Map<String, dynamic>.from(json['txIndex'] as Map)),
      tx: BoxKeys.fromJson(Map<String, dynamic>.from(json['tx'] as Map)),
    );

Map<String, dynamic> _$$BoxInfoImplToJson(_$BoxInfoImpl instance) =>
    <String, dynamic>{
      'address': instance.address.toJson(),
      'balance': instance.balance.toJson(),
      'utxo': instance.utxo.toJson(),
      'txIndex': instance.txIndex.toJson(),
      'tx': instance.tx.toJson(),
    };

_$BoxInfoBundleImpl _$$BoxInfoBundleImplFromJson(Map json) =>
    _$BoxInfoBundleImpl(
      byNetworkId: (json['byNetworkId'] as Map?)?.map(
            (k, e) => MapEntry(k as String,
                BoxInfo.fromJson(Map<String, dynamic>.from(e as Map))),
          ) ??
          const {},
      wasMigrated: json['wasMigrated'] as bool? ?? false,
    );

Map<String, dynamic> _$$BoxInfoBundleImplToJson(_$BoxInfoBundleImpl instance) =>
    <String, dynamic>{
      'byNetworkId':
          instance.byNetworkId.map((k, e) => MapEntry(k, e.toJson())),
      'wasMigrated': instance.wasMigrated,
    };

_$BoxInfoByNetworkImpl _$$BoxInfoByNetworkImplFromJson(Map json) =>
    _$BoxInfoByNetworkImpl(
      mainnet:
          BoxInfo.fromJson(Map<String, dynamic>.from(json['mainnet'] as Map)),
      testnet:
          BoxInfo.fromJson(Map<String, dynamic>.from(json['testnet'] as Map)),
      devnet:
          BoxInfo.fromJson(Map<String, dynamic>.from(json['devnet'] as Map)),
      simnet:
          BoxInfo.fromJson(Map<String, dynamic>.from(json['simnet'] as Map)),
    );

Map<String, dynamic> _$$BoxInfoByNetworkImplToJson(
        _$BoxInfoByNetworkImpl instance) =>
    <String, dynamic>{
      'mainnet': instance.mainnet.toJson(),
      'testnet': instance.testnet.toJson(),
      'devnet': instance.devnet.toJson(),
      'simnet': instance.simnet.toJson(),
    };

_$WalletKindLocalHdSchnorrImpl _$$WalletKindLocalHdSchnorrImplFromJson(
        Map json) =>
    _$WalletKindLocalHdSchnorrImpl(
      viewOnly: json['viewOnly'] as bool? ?? false,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WalletKindLocalHdSchnorrImplToJson(
        _$WalletKindLocalHdSchnorrImpl instance) =>
    <String, dynamic>{
      'viewOnly': instance.viewOnly,
      'runtimeType': instance.$type,
    };

_$WalletKindLocalHdEcdsaImpl _$$WalletKindLocalHdEcdsaImplFromJson(Map json) =>
    _$WalletKindLocalHdEcdsaImpl(
      viewOnly: json['viewOnly'] as bool? ?? false,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WalletKindLocalHdEcdsaImplToJson(
        _$WalletKindLocalHdEcdsaImpl instance) =>
    <String, dynamic>{
      'viewOnly': instance.viewOnly,
      'runtimeType': instance.$type,
    };

_$WalletKindLocalHdLegacyImpl _$$WalletKindLocalHdLegacyImplFromJson(
        Map json) =>
    _$WalletKindLocalHdLegacyImpl(
      mainPubKey: json['mainPubKey'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WalletKindLocalHdLegacyImplToJson(
        _$WalletKindLocalHdLegacyImpl instance) =>
    <String, dynamic>{
      'mainPubKey': instance.mainPubKey,
      'runtimeType': instance.$type,
    };

_$WalletInfoImpl _$$WalletInfoImplFromJson(Map json) => _$WalletInfoImpl(
      name: json['name'] as String,
      kind: json['kind'] == null
          ? const WalletKind.localHdSchnorr()
          : WalletKind.fromJson(Map<String, dynamic>.from(json['kind'] as Map)),
      wid: json['wid'] as String,
      boxInfo: json['boxInfo'] == null
          ? null
          : BoxInfoByNetwork.fromJson(
              Map<String, dynamic>.from(json['boxInfo'] as Map)),
      mainnetPublicKey: json['mainnetPublicKey'] as String,
      usesBip39Passphrase: json['usesBip39Passphrase'] as bool? ?? false,
    );

Map<String, dynamic> _$$WalletInfoImplToJson(_$WalletInfoImpl instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'kind': instance.kind.toJson(),
    'wid': instance.wid,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('boxInfo', instance.boxInfo?.toJson());
  val['mainnetPublicKey'] = instance.mainnetPublicKey;
  val['usesBip39Passphrase'] = instance.usesBip39Passphrase;
  return val;
}

_$WalletBundleImpl _$$WalletBundleImplFromJson(Map json) => _$WalletBundleImpl(
      wallets: json['wallets'] == null
          ? null
          : IList<WalletInfo>.fromJson(
              json['wallets'],
              (value) =>
                  WalletInfo.fromJson(Map<String, dynamic>.from(value as Map))),
      selected: json['selected'] == null
          ? null
          : WalletInfo.fromJson(
              Map<String, dynamic>.from(json['selected'] as Map)),
    );

Map<String, dynamic> _$$WalletBundleImplToJson(_$WalletBundleImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'wallets',
      instance.wallets?.toJson(
        (value) => value.toJson(),
      ));
  writeNotNull('selected', instance.selected?.toJson());
  return val;
}
