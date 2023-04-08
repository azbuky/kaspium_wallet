import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../kaspa/types.dart';
import '../l10n/l10n.dart';
import '../send_sheet/send_sheet.dart';
import '../themes/kaspium_light_theme.dart';
import '../util/ui_util.dart';
import '../util/user_data_util.dart';
import '../wallet_balance/wallet_balance_providers.dart';
import '../widgets/app_icon_button.dart';
import '../widgets/balance_widget.dart';
import '../widgets/sheet_util.dart';

final homePageScaffoldKeyProvider =
    Provider((ref) => GlobalKey<ScaffoldState>());

class MainCard extends ConsumerWidget {
  const MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    final kaspaBalance = ref.watch(formatedTotalBalanceProvider);
    final scaffoldKey = ref.watch(homePageScaffoldKeyProvider);

    Future<void> scanQrCode() async {
      final qrCode = await UserDataUtil.scanQrCode(context);
      final data = qrCode?.code;
      if (data == null) {
        return;
      }

      // Check for ViteUri
      final prefix = ref.read(addressPrefixProvider);
      final address = Address.tryParse(data, expectedPrefix: prefix);
      if (address == null) {
        UIUtil.showSnackbar(l10n.scanQrCodeError, context);
        return;
      }

      Sheets.showAppHeightNineSheet(
        context: context,
        theme: theme,
        widget: SendSheet(address: address.encoded),
      );
    }

    return GestureDetector(
      onTap: () {
        final notifier = ref.read(mainCardProvider.notifier);
        notifier.setNextState();
      },
      child: Container(
        margin: const EdgeInsets.only(left: 14, right: 14, top: 10),
        height: 130,
        decoration: BoxDecoration(
          color: theme.backgroundDark,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [theme.boxShadow],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 6, top: 6, right: 6),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Consumer(builder: (context, ref, _) {
                    final error = ref.watch(networkErrorProvider);
                    return AppIconButton(
                      icon: error ? AppIcons.warning : AppIcons.settings,
                      onPressed: () => scaffoldKey.currentState?.openDrawer(),
                    );
                  }),
                  Container(
                    height: 60,
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/kaspa_transparent_180.png',
                            width: 26,
                            color: theme is KaspiumLightTheme
                                ? theme.primary
                                : null,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            '$kaspaBalance',
                            textAlign: TextAlign.end,
                            style: styles.textStyleCurrency,
                          ),
                        ],
                      ),
                    ),
                  ),
                  AppIconButton(
                    icon: Icons.qr_code_scanner,
                    onPressed: scanQrCode,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Text(
                l10n.totalValue,
                style: styles.textStyleTotalValue,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 14, right: 14),
              child: const BalanceWidget(),
            )
          ],
        ),
      ),
    );
  }
}
