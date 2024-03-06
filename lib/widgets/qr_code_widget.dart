import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../app_providers.dart';

class QrCodeWidget extends ConsumerWidget {
  final String data;
  final bool showIcon;
  final VoidCallback? onTap;

  const QrCodeWidget({
    super.key,
    required this.data,
    this.showIcon = true,
    this.onTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        constraints: BoxConstraints(maxWidth: 280),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          shape: BoxShape.rectangle,
          border: Border.all(color: theme.primary, width: 2),
        ),
        child: QrImageView(
          data: data,
          gapless: false,
          embeddedImage:
              showIcon ? const AssetImage('assets/qr_code_icon.png') : null,
          embeddedImageStyle: QrEmbeddedImageStyle(
            size: const Size(40, 40),
          ),
          backgroundColor: Colors.white,
          errorCorrectionLevel: QrErrorCorrectLevel.Q,
        ),
      ),
    );
  }
}
