import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:validators/validators.dart';

import '../kaspa/kaspa.dart';
import '../widgets/qr_scanner_widget.dart';

enum DataType { RAW, URL, ADDRESS }

String sanitizeUri(String uri, String scheme) {
  if (isIP(uri)) {
    return uri;
  }
  if (uri.startsWith(scheme) || uri.startsWith('${scheme}s')) {
    return uri;
  }
  return '${scheme}s://$uri';
}

class UserDataUtil {
  static String? _parseData(String data, DataType type) {
    data = data.trim();
    if (type == DataType.RAW) {
      return data;
    } else if (type == DataType.URL) {
      if (isIP(data)) {
        return data;
      } else if (isURL(data)) {
        return data;
      }
    } else if (type == DataType.ADDRESS) {
      final address = Address.tryParse(
        data,
        expectedPrefix: AddressPrefix.unknown,
      );
      if (address != null) {
        return address.encoded;
      }
    }
    return null;
  }

  static Future<String?> getClipboardText(DataType type) async {
    ClipboardData? data = await Clipboard.getData("text/plain");
    final text = data?.text;
    if (text == null) {
      return null;
    }
    return _parseData(text, type);
  }

  static Future<Barcode?> scanQrCode(BuildContext context) async {
    final result = await Navigator.of(context).push<Barcode>(
      MaterialPageRoute(builder: (BuildContext context) {
        return const QrScannerWidget();
      }),
    );
    return result;
  }
}
