import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../app_providers.dart';
import '../wallet_address/address_providers.dart';

class AppShareCard extends StatefulWidget {
  final GlobalKey? globalKey;

  const AppShareCard({Key? key, this.globalKey});

  @override
  _AppShareCardState createState() => _AppShareCardState();
}

class _AppShareCardState extends State<AppShareCard> {
  GlobalKey? get globalKey => widget.globalKey;
  final addressGroup = AutoSizeGroup();

  _AppShareCardState();

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      key: globalKey,
      child: Consumer(builder: (context, ref, _) {
        final theme = ref.watch(themeProvider);
        final selected = ref.watch(receiveWalletAddressProvider);
        return Container(
          height: 126,
          width: 236,
          decoration: BoxDecoration(
            color: theme.backgroundDark,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Container(
            margin: EdgeInsets.only(left: 12, right: 12, top: 12),
            constraints: BoxConstraints.expand(),
            // The main row that holds QR, logo, the address, ticker and the website text
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // A container for QR
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  width: 100,
                  height: 100,
                  child: Stack(
                    children: [
                      // Outer Ring
                      Center(
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(4),
                            ),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: theme.primary,
                              width: 0.6,
                            ),
                          ),
                        ),
                      ),
                      // Actual QR part of the QR
                      Center(
                        child: Container(
                          color: Colors.white,
                          height: 90,
                          width: 90,
                          //padding: const EdgeInsets.all(4),
                          child: Center(
                            child: QrImageView(
                              size: 80,
                              padding: EdgeInsets.zero,
                              gapless: false,
                              data: '${selected.encoded}',
                              errorCorrectionLevel: QrErrorCorrectLevel.Q,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // A column for logo, address, ticker and website text
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Logo
                    Container(
                      width: 96,
                      height: 20,
                      margin: EdgeInsetsDirectional.only(start: 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Currency Icon
                          Container(
                            width: 30,
                            child: ImageIcon(
                              AssetImage('assets/kaspa.png'),
                              color: theme.primary,
                              size: 30,
                            ),
                          ),
                          Container(
                            width: 60,
                            margin: const EdgeInsets.only(top: 1),
                            child: AutoSizeText(
                              "KASPA",
                              style: TextStyle(
                                color: theme.primary,
                                fontFamily: "Comfortaa",
                                fontWeight: FontWeight.w300,
                                fontSize: 40,
                                letterSpacing: 1.5,
                              ),
                              minFontSize: 0.1,
                              stepGranularity: 0.1,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Address
                    Container(
                      padding: EdgeInsets.only(bottom: 7),
                      child: Column(
                        children: [
                          // First row of the address
                          Container(
                            width: 97,
                            child: AutoSizeText(
                              selected.encoded.substring(0, 28),
                              maxLines: 1,
                              stepGranularity: 0.1,
                              minFontSize: 1,
                              group: addressGroup,
                              style: TextStyle(
                                color: theme.text,
                                fontFamily: "OverpassMono",
                                fontWeight: FontWeight.w100,
                                fontSize: 50,
                                height: 1.2,
                              ),
                            ),
                          ),
                          // Second row of the address
                          Container(
                            width: 97,
                            child: AutoSizeText(
                              selected.encoded.substring(28, 56),
                              minFontSize: 1,
                              stepGranularity: 0.1,
                              maxFontSize: 50,
                              maxLines: 1,
                              group: addressGroup,
                              style: TextStyle(
                                color: theme.text,
                                fontFamily: "OverpassMono",
                                fontWeight: FontWeight.w100,
                                fontSize: 50,
                                height: 1.2,
                              ),
                            ),
                          ),
                          Container(
                            width: 97,
                            child: AutoSizeText(
                              selected.encoded
                                  .substring(56, selected.encoded.length),
                              minFontSize: 1,
                              stepGranularity: 0.1,
                              maxFontSize: 50,
                              maxLines: 1,
                              group: addressGroup,
                              style: TextStyle(
                                color: theme.text,
                                fontFamily: "OverpassMono",
                                fontWeight: FontWeight.w100,
                                fontSize: 50,
                                height: 1.2,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Ticker & Website
                    Container(
                      width: 98,
                      margin: EdgeInsets.only(bottom: 12),
                      child: AutoSizeText(
                        "            KASPA.ORG",
                        minFontSize: 0.1,
                        stepGranularity: 0.1,
                        maxLines: 1,
                        style: TextStyle(
                          color: theme.primary,
                          fontFamily: "Comfortaa",
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
