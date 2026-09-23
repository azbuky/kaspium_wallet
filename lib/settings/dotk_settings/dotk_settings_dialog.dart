import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app_providers.dart';
import '../../app_router.dart';
import '../../l10n/l10n.dart';
import '../../widgets/app_simpledialog.dart';

class DotkSettingsDialog extends ConsumerWidget {
  const DotkSettingsDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    final style = styles.textStyleDialogOptions;

    return AppSimpleDialog(
      title: Padding(
        padding: const .only(bottom: 10),
        child: Text(
          'Enable .k names',
          style: styles.textStyleDialogHeader,
        ),
      ),
      children: [
        SimpleDialogOption(
          onPressed: () => appRouter.pop(context, withResult: true),
          child: Padding(
            padding: const .symmetric(vertical: 8),
            child: Text(l10n.on, style: style),
          ),
        ),
        SimpleDialogOption(
          onPressed: () => appRouter.pop(context, withResult: false),
          child: Padding(
            padding: const .symmetric(vertical: 8),
            child: Text(l10n.off, style: style),
          ),
        ),
      ],
    );
  }
}
