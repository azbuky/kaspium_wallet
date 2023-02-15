import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';

import '../contacts/contact.dart';
import '../kaspa/kaspa.dart';
import '../transactions/transaction_types.dart';
import '../txnotes/txnotes_types.dart';
import '../util/random_util.dart';
import '../util/vault.dart';
import '../utils.dart';
import '../wallet_address/wallet_address.dart';
import 'boxes.dart';
import 'json_type_adapter.dart';

typedef BoxKey = String;

late final BoxKey kContactsBox;
late final BoxKey kPushInfoBox;
late final BoxKey kSettingsBox;
late final BoxKey kTxNotesBox;

int _getTypeId<T>() {
  switch (T) {
    case WalletAddress:
      return 0;
    case AddressBalance:
      return 1;
    case Contact:
      return 2;
    case Tx:
      return 3;
    case Utxo:
      return 4;
    case TxNote:
      return 5;
    case TxIndex:
      return 6;
  }
  throw 'Unknown type $T';
}

final walletAddressAdapter = JsonTypeAdapter(
  typeId: _getTypeId<WalletAddress>(),
  fromJson: WalletAddress.fromJson,
);
final addressBalanceAdapter = JsonTypeAdapter(
  typeId: _getTypeId<AddressBalance>(),
  fromJson: AddressBalance.fromJson,
);
final contactAdapter = JsonTypeAdapter(
  typeId: _getTypeId<Contact>(),
  fromJson: Contact.fromJson,
);
final txAdapter = JsonTypeAdapter(
  typeId: _getTypeId<Tx>(),
  fromJson: Tx.fromJson,
);
final utxoAdapter = JsonTypeAdapter(
  typeId: _getTypeId<Utxo>(),
  fromJson: Utxo.fromJson,
);
final txNoteAdapter = JsonTypeAdapter(
  typeId: _getTypeId<TxNote>(),
  fromJson: TxNote.fromJson,
);

final txIndexAdapter = JsonTypeAdapter(
  typeId: _getTypeId<TxIndex>(),
  fromJson: TxIndex.fromJson,
);

class Database {
  const Database();

  static Future<HiveCipher> _getBoxCipher(BoxKey boxKey, Vault vault) async {
    var secureKey = await vault.get(boxKey);
    if (secureKey == null) {
      secureKey = Database.generateSecureKey();
      vault.set(boxKey, secureKey);
    }
    return HiveAesCipher(base64Decode(secureKey));
  }

  static Future<void> init() async {
    await Hive.initFlutter('kaspium_wallet');

    final vault = Vault();
    const key = 'aa721440b4f52bca';
    var secureKey = await vault.get(key);
    if (secureKey == null) {
      secureKey = RandomUtil.generateKey();
      await vault.set(key, secureKey);
    }

    const kContactsBoxId = '_contactsBox';
    const kSettingsBoxId = '_settingsBox';
    const kPushInfoBoxId = '_pushInfoBox';
    const kTxNotesBoxId = '_txNotesBox';

    kContactsBox =
        digest(data: stringToBytesUtf8('$kContactsBoxId#$secureKey')).hex;
    kSettingsBox =
        digest(data: stringToBytesUtf8('$kSettingsBoxId#$secureKey')).hex;
    kPushInfoBox =
        digest(data: stringToBytesUtf8('$kPushInfoBoxId#$secureKey')).hex;
    kTxNotesBox =
        digest(data: stringToBytesUtf8('$kTxNotesBoxId#$secureKey')).hex;

    Hive.registerAdapter(walletAddressAdapter);
    Hive.registerAdapter(addressBalanceAdapter);
    Hive.registerAdapter(contactAdapter);
    Hive.registerAdapter(txAdapter);
    Hive.registerAdapter(utxoAdapter);
    Hive.registerAdapter(txNoteAdapter);
    Hive.registerAdapter(txIndexAdapter);

    Future<Box> _openBox<T>(String box, {bool encrypted = false}) async {
      return Hive.openBox<T>(
        box,
        encryptionCipher: encrypted ? await _getBoxCipher(box, vault) : null,
      );
    }

    await Future.wait([
      // typed boxes
      _openBox<Contact>(kContactsBox, encrypted: true),
      _openBox<TxNote>(kTxNotesBox, encrypted: true),
      // generic boxes
      _openBox(kSettingsBox, encrypted: true),
    ]);
  }

  static Future<void> openBox<T>(
    String boxKey, {
    bool lazy = false,
    String? encryptionKey,
  }) async {
    HiveCipher? chipher = null;
    if (encryptionKey != null) {
      chipher = HiveAesCipher(base64Decode(encryptionKey));
    }
    if (lazy) {
      await Hive.openLazyBox<T>(boxKey, encryptionCipher: chipher);
    } else {
      await Hive.openBox<T>(boxKey, encryptionCipher: chipher);
    }
  }

  static Future<void> closeBox<T>(String boxKey, {bool lazy = false}) async {
    if (Hive.isBoxOpen(boxKey)) {
      final box = lazy ? Hive.lazyBox<T>(boxKey) : Hive.box<T>(boxKey);
      await box.close();
    }
  }

  static bool isBoxOpen(String boxKey) => Hive.isBoxOpen(boxKey);

  static Future<void> closeAll() => Hive.close();

  static String generateSecureKey() => base64Encode(Hive.generateSecureKey());

  static Future<void> removeBox(String boxKey) =>
      Hive.deleteBoxFromDisk(boxKey);

  TypedBox<T> getTypedBox<T>(BoxKey boxKey) {
    assert(Hive.isBoxOpen(boxKey));
    final box = Hive.box<T>(boxKey);
    return TypedBox(box);
  }

  IndexedTypedBox<T> getIndexedTypedBox<T>(BoxKey boxKey) {
    assert(Hive.isBoxOpen(boxKey));
    final box = Hive.box<T>(boxKey);
    return IndexedTypedBox(box);
  }

  LazyTypedBox<T> getLazyTypedBox<T>(BoxKey boxKey) {
    assert(Hive.isBoxOpen(boxKey));
    final box = Hive.lazyBox<T>(boxKey);
    return LazyTypedBox(box);
  }

  GenericBox getGenericBox(BoxKey boxKey) {
    assert(Hive.isBoxOpen(boxKey));
    final box = Hive.box(boxKey);
    return GenericBox(box);
  }

  LazyGenericBox getLazyGenericBox(BoxKey boxKey) {
    assert(Hive.isBoxOpen(boxKey));
    final box = Hive.lazyBox(boxKey);
    return LazyGenericBox(box);
  }
}
