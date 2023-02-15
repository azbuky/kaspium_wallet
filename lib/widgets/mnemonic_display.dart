import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';

/// A widget for displaying a mnemonic phrase
class MnemonicDisplay extends HookConsumerWidget {
  final List<String> wordList;
  final bool obscured;

  const MnemonicDisplay({
    Key? key,
    required this.wordList,
    this.obscured = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final isObscured = useState(obscured);

    List<Widget> buildMnemonicRows([int noRows = 4]) {
      final noWords = wordList.length;
      int itemsPerRow = noWords ~/ noRows;
      int wordIndex = 0;
      List<Widget> rows = [];
      for (int i = 0; i < noRows; i++) {
        rows.add(Container(height: 1, color: theme.text05));
        // Build individual items
        List<Widget> items = [];

        for (int j = 0; j < itemsPerRow; j++) {
          items.add(
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: FittedBox(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.scaleDown,
                  child: RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(children: [
                      TextSpan(
                        text: wordIndex < 9 ? " " : "",
                        style: styles.textStyleNumbersOfMnemonic(context),
                      ),
                      TextSpan(
                        text: " ${wordIndex + 1}) ",
                        style: styles.textStyleNumbersOfMnemonic(context),
                      ),
                      TextSpan(
                        text: isObscured.value && obscured
                            ? '•' * 6
                            : wordList[wordIndex],
                        style: styles.textStyleMnemonic(context),
                      )
                    ]),
                  ),
                ),
              ),
            ),
          );
          wordIndex++;
        }
        rows.add(
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 9),
            child: Container(
              margin: const EdgeInsetsDirectional.only(start: 5),
              child: Row(children: items),
            ),
          ),
        );
        if (wordIndex == itemsPerRow * noRows) {
          rows.add(Container(height: 1, color: theme.text05));
        }
      }
      return rows;
    }

    return Column(children: [
      GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          if (obscured) {
            isObscured.value = !isObscured.value;
          }
        },
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Column(
              children: buildMnemonicRows(wordList.length ~/ 3),
            ),
          ),
          // Tap to reveal or hide
          if (obscured)
            Consumer(builder: (context, ref, _) {
              final styles = ref.watch(stylesProvider);
              final l10n = ref.watch(l10nProvider);

              final text = isObscured.value
                  ? l10n.tapToReveal : l10n.tapToHide;
              return Container(
                margin: EdgeInsetsDirectional.only(top: 8),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    text,
                    style: styles.textStyleParagraphThinPrimary,
                  ),
                ),
              );
            }),
        ]),
      ),
    ]);
  }
}
