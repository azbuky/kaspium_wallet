import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../app_router.dart';
import '../l10n/l10n.dart';
import '../util/util.dart';
import '../widgets/app_simpledialog.dart';

class BuyInfoDialog extends ConsumerWidget {
  const BuyInfoDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    Future<void> openTopperWebsite() async {
      openUri(Uri.https('www.topperpay.com'));
    }

    return AppAlertDialog(
      title: Text(
        l10n.aboutTopperTitle,
        style: styles.textStyleDialogHeader,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              l10n.aboutTopperDescription,
              style: styles.textStyleSettingItemHeader,
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          style: styles.dialogButtonStyle,
          onPressed: () => appRouter.pop(context),
          child: Text(
            l10n.closeUppercased,
            style: styles.textStyleDialogOptions,
          ),
        ),
        TextButton(
          style: styles.dialogButtonStyle,
          child: Text(
            l10n.moreInfo.toUpperCase(),
            style: styles.textStyleDialogOptions,
          ),
          onPressed: openTopperWebsite,
        ),
      ],
    );
  }
}
