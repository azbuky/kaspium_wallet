import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_nfc_hce/flutter_nfc_hce.dart';
import 'package:kaspium_wallet/app_router.dart';
import 'package:kaspium_wallet/util/nfc_protocol.dart';
import 'package:nfc_manager/nfc_manager.dart';

class NfcPoc extends StatefulWidget {
  const NfcPoc({super.key});

  @override
  State<StatefulWidget> createState() {
    return _NfcPocState();
  }
}

class _NfcPocState extends State<NfcPoc> {
  final _flutterNfcHcePlugin = FlutterNfcHce();
  NfcTag? _lastReceivedTag;
  List<String> messages = [];

  NfcPoc() {
    // _startNFCReading();
  }

  sendMessage() async {
    bool isAvailable = await _flutterNfcHcePlugin.isNfcHceSupported();

    if (isAvailable) {
      debugPrint("Start session");
      this.messages.add("start emitting messages.");

      // start emitting message
      var message = NFCTransactionMessage(1.0,
          "kaspatest:qqfhedx9jd5en9cnj6h6dfycw2zh9apj2mdtky0q0mfqk7xpl04g2yw8xuyxt");
      var result = await _flutterNfcHcePlugin.startNfcHce(message.toString(),
          persistMessage: false);

      // wait 20s, close emitting session after than
      await Future.delayed(const Duration(seconds: 20));

      await this.stopSendingMessage();

      debugPrint("has result");
      debugPrint(result);
    } else {
      debugPrint('NFC not available.');
    }
  }

  stopSendingMessage() async {
    await _flutterNfcHcePlugin.stopNfcHce();
    this.messages.add("send message stopped.");
  }

  readMessage() async {
    bool isAvailable = await NfcManager.instance.isAvailable();

    if (isAvailable) {
      debugPrint("Start Read Session");

      await NfcManager.instance.startSession(
          pollingOptions: {NfcPollingOption.iso14443},
          // You can also specify iso18092 and iso15693.
          onDiscovered: (NfcTag tag) async {
            if (mounted) {
              print('-------------->tag discovered');
              print('-------------->tag.data: ' + tag.data.toString());

              var record = tag.data['ndef']['cachedMessage']['records'][0];
              print(record);

              var identifier = Uint8List.fromList(record['identifier']);
              print(identifier);

              var payload = Uint8List.fromList(record['payload']);
              print(payload);

              var type = Uint8List.fromList(record['type']);
              print(type);

              var typeNameFormat =
                  Uint8List.fromList([record['typeNameFormat']]);
              print(typeNameFormat);

              try {
                var message = NFCTransactionMessage.fromString(
                    utf8.decode(payload.sublist(3)));

                appRouter.pop(context, withResult: message);
              } catch (e) {
                print("Error parsing NFC message: $e, $payload");
              }

              setState(() {
                _lastReceivedTag = tag;
                messages.add("received: " + tag.toString());
              });
              await NfcManager.instance.stopSession();
            } else {
              // maybe stop reader if component in not mounted
              await NfcManager.instance.stopSession();
            }
          });
    } else {
      debugPrint('NFC not available.');
    }
  }

  stopReader() async {
    // Stop the session when no longer needed.
    await NfcManager.instance.stopSession();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      ElevatedButton(onPressed: sendMessage, child: Text("Emit Message")),
      ElevatedButton(onPressed: readMessage, child: Text("Read Message")),
      Divider(),
      ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Row(children: [Flexible(child: Text(this.messages[index]))]);
        },
        itemCount: this.messages.length,
      )
    ]);
  }
}
