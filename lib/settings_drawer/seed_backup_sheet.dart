import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../widgets/buttons.dart';
import '../widgets/mnemonic_display.dart';
import '../widgets/sheet_widget.dart';

class SeedBackupSheet extends HookConsumerWidget {
  final List<String> mnemonic;
  const SeedBackupSheet({Key? key, required this.mnemonic}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    final showMnemonic = useState(true);

    final title = showMnemonic.value ? l10n.secretPhrase : l10n.seed;

    return SheetWidget(
      title: title,
      //rightWidget: FlatButton(
      //     highlightColor: theme.text15,
      //     splashColor: theme.text15,
      //     onPressed: () {
      //       setState(() => _showMnemonic = !_showMnemonic);
      //     },
      //     child: Icon(
      //       _showMnemonic ? AppIcons.seed : Icons.vpn_key,
      //       size: 24,
      //       color: theme.text,
      //     ),
      //     padding: const EdgeInsets.all(13.0),
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(100.0),
      //     ),
      //     materialTapTargetSize: MaterialTapTargetSize.padded,
      //   ),
      mainWidget: Container(
        child: Column(children: [
          //if (mnemonic.value != null)
          MnemonicDisplay(
            wordList: mnemonic,
            obscured: true,
          )
          // else
          //   PlainSeedDisplay(
          //     seed: _seed,
          //     obscureSeed: true,
          //   ),
        ]),
      ),
      bottomWidget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: PrimaryButton(
          title: l10n.close,
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
    );
  }
}
