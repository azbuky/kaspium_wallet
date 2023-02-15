import 'dart:async';
import 'dart:typed_data';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../kaspa/kaspa.dart';
import '../util/ui_util.dart';
import '../util/user_data_util.dart';
import '../utils.dart';
import '../widgets/buttons.dart';
import '../widgets/dialog.dart';
import '../widgets/sheet_handle.dart';
import '../widgets/sheet_util.dart';
import 'transfer_manual_entry_sheet.dart';

class TransferOverviewSheet extends ConsumerStatefulWidget {
  const TransferOverviewSheet({Key? key}) : super(key: key);

  @override
  _TransferOverviewSheetState createState() => _TransferOverviewSheetState();
}

class _TransferOverviewSheetState extends ConsumerState<TransferOverviewSheet> {
  // Number of accounts to sweep from a seed
  static const int NUM_SWEEP = 15;
  // accounts to private keys/account balances
  Map<String, AddressBalance> privKeyBalanceMap = Map();

  bool _animationOpen = false;

  @override
  Widget build(BuildContext context) {
    //final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = ref.watch(l10nProvider);

    return SafeArea(
      minimum: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height * 0.035,
      ),
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            // A container for the header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 60, width: 60),
                Column(
                  children: [
                    const SheetHandle(),
                    // The header
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width - 140),
                      child: AutoSizeText(
                        l10n.transferHeader,
                        style: styles.textStyleHeader(context),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        stepGranularity: 0.1,
                      ),
                    ),
                  ],
                ),
                // Emtpy SizedBox
                const SizedBox(height: 60, width: 60),
              ],
            ),
            // A container for the illustration and paragraphs
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height * 0.2,
                      maxWidth: MediaQuery.of(context).size.width * 0.6,
                    ),
                    child: Stack(
                      children: [
                        // Center(
                        //   child: SvgPicture.asset(
                        //     'assets/transferfunds_illustration_start_paperwalletonly.svg',
                        //     color: theme.text45,
                        //     width: MediaQuery.of(context).size.width,
                        //   ),
                        // ),
                        // Center(
                        //   child: SvgPicture.asset(
                        //     'assets/transferfunds_illustration_start_natriumwalletonly.svg',
                        //     color: theme.primary,
                        //     width: MediaQuery.of(context).size.width,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: AlignmentDirectional(-1, 0),
                    margin: EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 20,
                    ),
                    child: AutoSizeText(
                      l10n.transferIntro.replaceAll("%1", l10n.scanQrCode),
                      style: styles.textStyleParagraph,
                      textAlign: TextAlign.start,
                      maxLines: 6,
                      stepGranularity: 0.5,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(children: [
                PrimaryButton(
                  title: l10n.scanQrCode,
                  onPressed: () async {
                    // UIUtil.cancelLockEvent();
                    final result = await UserDataUtil.scanQrCode(context);

                    if (result?.rawBytes != null) {
                      final data = Uint8List.fromList(result!.rawBytes!);
                      final seed = bytesToHex(data);
                      startTransfer(seed);
                    }
                  },
                ),
                const SizedBox(height: 16),
                PrimaryOutlineButton(
                  title: l10n.manualEntry,
                  onPressed: () {
                    Sheets.showAppHeightNineSheet(
                      context: context,
                      widget: TransferManualEntrySheet(
                        validSeedCallback: manualEntryCallback,
                      ),
                      theme: ref.read(themeProvider),
                    );
                  },
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  void manualEntryCallback(WidgetRef ref, String seed) {
    Navigator.of(context).pop();
    startTransfer(seed, manualEntry: true);
  }

  Future<void> startTransfer(
    String seed, {
    bool manualEntry = false,
  }) async {
    final theme = ref.read(themeProvider);
    final l10n = ref.read(l10nProvider);

    // Show loading overlay
    _animationOpen = true;
    AnimationType animation = manualEntry
        ? AnimationType.TRANSFER_SEARCHING_MANUAL
        : AnimationType.TRANSFER_SEARCHING_QR;
    Navigator.of(context).push(AnimationLoadingOverlay(
        animation, theme.animationOverlayStrong, theme.animationOverlayMedium,
        onPoppedCallback: () {
      _animationOpen = false;
    }));
    // Get accounts from seed
    //final accounts = await getAddressesFromSeed(context, seed);
    try {
      //final accountService = ref.read(accountServiceProvider);
      //final resp = await accountService.accountInfoForAddresses(accounts);
      if (_animationOpen) {
        Navigator.of(context).pop();
      }
      List<String> accountsToRemove = [];
      // resp.forEach((String account, AccountBalanceItem balItem) {
      //   BigInt balance = BigInt.parse(balItem.balance!);
      //   BigInt pending = BigInt.parse(balItem.pending!);
      //   if (balance + pending == BigInt.zero) {
      //     accountsToRemove.add(account);
      //   } else {
      //     // Update balance of this item
      //     privKeyBalanceMap[account]!.balance = balItem.balance;
      //     privKeyBalanceMap[account]!.pending = balItem.pending;
      //   }
      // });
      accountsToRemove.forEach((String account) {
        privKeyBalanceMap.remove(account);
      });
      if (privKeyBalanceMap.length == 0) {
        UIUtil.showSnackbar(l10n.transferNoFunds, context);
        return;
      }
      // Go to confirmation screen
      // EventTaxiImpl.singleton()
      //     .fire(TransferConfirmEvent(balMap: privKeyBalanceMap));
      Navigator.of(context).pop();
    } catch (e) {
      ref.read(loggerProvider).e("error", e);
      if (_animationOpen) {
        Navigator.of(context).pop();
      }
      UIUtil.showSnackbar(l10n.sendError, context);
    }
  }

  /// Get NUM_SWEEP accounts from seed to request balances for
  Future<List<Address>> getAddressesFromSeed(
    BuildContext context,
    String seed,
  ) async {
    //final theme = context.read(themeProvider);
    List<Address> accountsToRequest = [];
    //String privKey;
    //Address address;
    // Get NUM_SWEEP private keys + accounts from seed
    for (int i = 0; i < NUM_SWEEP; i++) {
      //privKey = ViteUtil.seedToPrivate(seed, i);
      //address = ViteUtil.seedToAddress(seed, i);
      // Don't add this if it is the currently logged in account
      // if (address != appState.wallet!.address) {
      //   privKeyBalanceMap.putIfAbsent(
      //       address, () => AccountBalanceItem(privKey: privKey));
      //   accountsToRequest.add(address);
      // }
    }
    // Also treat this seed as a private key
    // address = NanoAccounts.createAccount(
    //     NanoAccountType.VITE, NanoKeys.createPublicKey(seed));
    // if (address != appState.wallet!.address) {
    //   privKeyBalanceMap.putIfAbsent(
    //       address, () => AccountBalanceItem(privKey: seed));
    //   accountsToRequest.add(address);
    // }
    return accountsToRequest;
  }
}
