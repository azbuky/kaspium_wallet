import 'package:flutter/material.dart';
import 'package:flutter_nfc_hce/flutter_nfc_hce.dart';
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
      var result = await _flutterNfcHcePlugin.startNfcHce("flutter_nfc_hce");

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

      NfcManager.instance.startSession(
        pollingOptions: {NfcPollingOption.iso14443},
        // You can also specify iso18092 and iso15693.
        onDiscovered: (NfcTag tag) async {
          if (mounted) {
            // Do something with an NfcTag instance...
            print(tag);

            setState(() {
              _lastReceivedTag = tag;
              messages.add("received: " + tag.toString());
            });
          } else {
            // maybe stop reader if component in not mounted
          }
        }
      );
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
          return Row(children: [Text(this.messages[index])]);
        },
        itemCount: this.messages.length,
      )
    ]);
  }

  void _startNFCReading() async {
    try {
      bool isAvailable = await _flutterNfcHcePlugin.isNfcHceSupported();

      NfcManager.instance.startSession(
        onDiscovered: (NfcTag tag) async {
          tag.data.forEach((str, value) {
            debugPrint(str);
            debugPrint(value);
          });
          debugPrint(tag.handle);
        },
      );

      if (isAvailable) {
        debugPrint('NFC available.');
      } else {
        debugPrint('NFC not available.');
      }
    } catch (e) {
      debugPrint('Error reading NFC: $e');
    }
  }
}
