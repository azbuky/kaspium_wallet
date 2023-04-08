import 'package:barcode_finder/barcode_finder.dart' as bf;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../app_providers.dart';
import '../l10n/l10n.dart';
import '../util/platform.dart';
import '../util/ui_util.dart';
import 'app_icon_button.dart';

class QrScannerWidget extends ConsumerStatefulWidget {
  const QrScannerWidget({Key? key}) : super(key: key);

  @override
  _QrScannerWidgetState createState() => _QrScannerWidgetState();
}

class _QrScannerWidgetState extends ConsumerState<QrScannerWidget> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;
  bool _shouldScan = true;
  bool _flashOn = false;
  bool _flashToggled = false;

  @override
  void reassemble() {
    super.reassemble();

    if (kPlatformIsAndroid) {
      controller?.pauseCamera();
    } else if (kPlatformIsIOS) {
      controller?.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    final scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 250.0
        : 300.0;

    Future<void> scanFromImage() async {
      final lockDisabled = ref.read(lockDisabledProvider.notifier);
      lockDisabled.state = true;

      _shouldScan = false;

      final picker = ImagePicker();
      final file = await picker.pickImage(source: ImageSource.gallery);

      lockDisabled.state = false;

      if (file == null) {
        _shouldScan = true;
        return;
      }
      try {
        final code = await bf.BarcodeFinder.scanFile(
          path: file.path,
          formats: const [bf.BarcodeFormat.QR_CODE],
        );
        if (code == null) throw Exception(l10n.emptyResult);
        result = Barcode(code, BarcodeFormat.qrcode, null);
        Navigator.of(context).pop(result);
      } catch (e) {
        UIUtil.showSnackbar(l10n.noQrCodeFound, context);
      }
      _shouldScan = true;
    }

    Future<void> toggleFlash() async {
      if (_flashToggled) return;
      var flashState = _flashOn;
      try {
        controller?.toggleFlash();
        flashState = await controller?.getFlashStatus() ?? false;
      } catch (e) {
        flashState = false;
      }
      if (_flashOn != flashState) {
        setState(() {
          _flashOn = flashState;
        });
      }
      _flashToggled = false;
    }

    return Scaffold(
      body: Stack(children: [
        QRView(
          key: qrKey,
          onQRViewCreated: _onQRViewCreated,
          onPermissionSet: _onPermissionSet,
          formatsAllowed: [BarcodeFormat.qrcode],
          overlay: QrScannerOverlayShape(
            borderColor: Colors.white,
            borderRadius: 10,
            borderLength: 30,
            borderWidth: 10,
            cutOutSize: scanArea,
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppIconButton(
                      icon: Icons.arrow_back,
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    Text(
                      l10n.scanQrCode,
                      style: styles.textStyleButtonTextOutline
                          .copyWith(color: Colors.white),
                    ),
                    kPlatformIsAndroid || kPlatformIsIOS
                        ? AppIconButton(
                            icon: Icons.image_outlined,
                            onPressed: scanFromImage,
                          )
                        : const SizedBox(width: 48),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 50),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white38,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: IconButton(
                    iconSize: 32,
                    icon: Icon(
                      _flashOn
                          ? Icons.flashlight_off_rounded
                          : Icons.flashlight_on_rounded,
                    ),
                    onPressed: toggleFlash,
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }

  void _onPermissionSet(QRViewController ctrl, bool p) {
    if (!p) {
      final l10n = l10nOf(context);
      UIUtil.showSnackbar(l10n.checkCameraPermission, context);
    }
  }

  void _onQRViewCreated(QRViewController _controller) async {
    controller = _controller;
    if (kPlatformIsAndroid) {
      await _controller.resumeCamera();
    }
    _controller.scannedDataStream.listen((event) {
      if (result == null && _shouldScan) {
        result = event;
        Navigator.of(context).pop(result);
      }
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
