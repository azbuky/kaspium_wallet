import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../kaspa/kaspa.dart';
import '../util/numberutil.dart';
import '../widgets/buttons/primary_button.dart';
import '../widgets/buttons/primary_outline_button.dart';
import '../widgets/dialog.dart';

class AppTransferConfirmSheet extends StatefulWidget {
  final Map<String, AddressBalance>? privKeyBalanceMap;
  final Function? errorCallback;

  AppTransferConfirmSheet({
    this.privKeyBalanceMap,
    this.errorCallback,
  }) : super();

  _AppTransferConfirmSheetState createState() =>
      _AppTransferConfirmSheetState();
}

class _AppTransferConfirmSheetState extends State<AppTransferConfirmSheet> {
  // Total amount there is to transfer
  BigInt totalToTransfer = BigInt.zero;
  String totalAsReadableAmount = '';
  // Need to be received by current account
  //PendingResponse? accountPending;
  // Whether animation overlay is open
  bool animationOpen = false;

  @override
  void initState() {
    super.initState();

    // widget.privKeyBalanceMap!
    //     .forEach((account, accountBalanceItem) {
    //   totalToTransfer += BigInt.parse(accountBalanceItem.balance!) +
    //       BigInt.parse(accountBalanceItem.pending!);
    // });
    totalAsReadableAmount = NumberUtil.getStringFromRaw(
      totalToTransfer,
      8,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
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
                //A container for the header
                Container(
                  margin: const EdgeInsets.only(top: 30, left: 70, right: 70),
                  child: AutoSizeText(
                    l10n.transferHeader,
                    style: styles.textStyleHeader(context),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    stepGranularity: 0.1,
                  ),
                ),
                // A container for the paragraphs
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 60),
                            child: Text(
                              l10n.transferConfirmInfo
                                  .replaceAll("%1", totalAsReadableAmount),
                              style: styles.textStyleParagraphPrimary,
                              textAlign: TextAlign.start,
                            )),
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 60),
                            child: Text(
                              l10n.transferConfirmInfoSecond,
                              style: styles.textStyleParagraph,
                              textAlign: TextAlign.start,
                            )),
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 60),
                            child: Text(
                              l10n.transferConfirmInfoThird,
                              style: styles.textStyleParagraph,
                              textAlign: TextAlign.start,
                            )),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Column(
                    children: [
                      PrimaryButton(
                        title: l10n.confirm,
                        onPressed: () async {
                          final theme = ref.read(themeProvider);
                          animationOpen = true;
                          Navigator.of(context).push(AnimationLoadingOverlay(
                              AnimationType.TRANSFER_TRANSFERRING,
                              theme.animationOverlayStrong,
                              theme.animationOverlayMedium,
                              onPoppedCallback: () {
                            animationOpen = false;
                          }));
                          await processWallets();
                        },
                      ),
                      const SizedBox(height: 16),
                      PrimaryOutlineButton(
                        title: l10n.cancel,
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // Future<String> _getPrivKey(int index) async {
  //   //final appState = context.read(appStateProvider);
  //   final encryptedSecret = context.read(encryptedSecretProvider);
  //   final vault = context.read(vaultProvider);
  //   String? seed;
  //   if (encryptedSecret != null) {
  //     final sessionKey = await vault.getSessionKey();
  //     seed = ViteUtil.decryptHex(encryptedSecret, sessionKey);
  //   } else {
  //     seed = await vault.getSeed();
  //   }
  //   return ViteUtil.seedToPrivate(seed!, index);
  // }

  Future<void> processWallets() async {
    //BigInt totalTransferred = BigInt.zero;
    return;
    // try {
    //   final accountService = context.read(accountServiceProvider);
    //   state.lockCallback();
    //   for (String account in widget.privKeyBalanceMap!.keys) {
    //     final balanceItem = widget.privKeyBalanceMap![account]!;
    //     // Get frontiers first
    //     AccountInfoResponse resp = await accountService.getAccountInfo(account);
    //     if (!resp.unopened) {
    //       balanceItem.frontier = resp.frontier;
    //     }
    //     // Receive pending blocks
    //     PendingResponse pr = await accountService.getPending(account, 20);
    //     Map<String, PendingResponseItem> pendingBlocks = pr.blocks!;
    //     for (String hash in pendingBlocks.keys) {
    //       PendingResponseItem? item = pendingBlocks[hash];
    //       if (balanceItem.frontier != null) {
    //         ProcessResponse resp = await accountService.requestReceive(
    //             balanceItem.frontier,
    //             item!.amount,
    //             hash,
    //             account,
    //             balanceItem.privKey);
    //         if (resp.hash != null) {
    //           balanceItem.frontier = resp.hash;
    //           totalTransferred += BigInt.parse(item.amount!);
    //         }
    //       } else {
    //         ProcessResponse resp = await accountService.requestOpen(
    //             item!.amount, hash, account, balanceItem.privKey);
    //         if (resp.hash != null) {
    //           balanceItem.frontier = resp.hash;
    //           totalTransferred += BigInt.parse(item.amount!);
    //         }
    //       }
    //       // Hack that waits for blocks to be confirmed
    //       await Future.delayed(const Duration(milliseconds: 300));
    //     }
    //     // Process send from this account
    //     resp = await accountService.getAccountInfo(account);
    //     ProcessResponse sendResp = await accountService.requestSend(
    //         resp.frontier,
    //         resp.balance,
    //         state.wallet!.address,
    //         account,
    //         balanceItem.privKey,
    //         max: true);
    //     if (sendResp.hash != null) {
    //       totalTransferred += BigInt.parse(balanceItem.balance!);
    //     }
    //   }
    // } catch (e) {
    //   if (animationOpen) {
    //     Navigator.of(context).pop();
    //   }
    //   widget.errorCallback!();
    //   context.read(loggerProvider).e("Error processing wallet", e);
    //   return;
    // } finally {
    //   state.unlockCallback();
    // }
    // try {
    //   final accountService = context.read(accountServiceProvider);
    //   state.lockCallback();
    //   // Receive all new blocks to our own account
    //   PendingResponse pr = await accountService
    //       .getPending(state.wallet!.address, 20, includeActive: true);
    //   Map<String, PendingResponseItem> pendingBlocks = pr.blocks!;
    //   for (String hash in pendingBlocks.keys) {
    //     PendingResponseItem? item = pendingBlocks[hash];
    //     if (state.wallet!.openBlock != null) {
    //       ProcessResponse resp = await accountService.requestReceive(
    //           state.wallet!.frontier,
    //           item!.amount,
    //           hash,
    //           state.wallet!.address,
    //           await _getPrivKey(state.selectedAccount.index));
    //       if (resp.hash != null) {
    //         state.wallet!.frontier = resp.hash;
    //       }
    //     } else {
    //       ProcessResponse resp = await accountService.requestOpen(
    //         item!.amount,
    //         hash,
    //         state.wallet!.address,
    //         await _getPrivKey(state.selectedAccount.index),
    //       );
    //       if (resp.hash != null) {
    //         state.wallet!.frontier = resp.hash;
    //         state.wallet!.openBlock = resp.hash;
    //       }
    //     }
    //   }
    //   state.requestUpdate();
    // } catch (e) {
    //   // Less-important error
    //   context.read(loggerProvider).e("Error processing wallet", e);
    // } finally {
    //   state.unlockCallback();
    // }
    // EventTaxiImpl.singleton()
    //     .fire(TransferCompleteEvent(amount: totalTransferred));
    // if (animationOpen) {
    //   Navigator.of(context).pop();
    // }
    // Navigator.of(context).pop();
  }
}
