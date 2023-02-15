import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import 'seed_three_line_text.dart';

class PlainSeedDisplay extends HookConsumerWidget {
  final String seed;
  final bool obscureSeed;

  const PlainSeedDisplay({
    Key? key,
    required this.seed,
    this.obscureSeed = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = ref.watch(l10nProvider);

    final _obscuredSeed = useState('•' * seed.length);
    final _seedObscured = useState(true);

    return Column(children: [
      // The paragraph
      Container(
        margin: EdgeInsets.only(left: 40, right: 40, top: 15),
        alignment: Alignment.centerLeft,
        child: Text(
          l10n.seedDescription,
          style: styles.textStyleParagraph,
          maxLines: 5,
        ),
      ),
      // Container for the seed
      GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          if (obscureSeed) {
            _seedObscured.value = !_seedObscured.value;
          }
        },
        child: Column(children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            margin: const EdgeInsets.only(top: 25),
            decoration: BoxDecoration(
              color: theme.backgroundDarkest,
              borderRadius: BorderRadius.circular(25),
            ),
            child: SeedThreeLineText(
              seed: obscureSeed && _seedObscured.value
                  ? _obscuredSeed.value
                  : seed,
              textStyle: styles.textStyleSeed,
            ),
          ),
          // Tap to reveal or hide
          if (obscureSeed)
            Container(
              margin: EdgeInsetsDirectional.only(top: 8),
              child: Text(
                _seedObscured.value
                    ? l10n.tapToReveal : l10n.tapToHide,
                style: styles.textStyleParagraphThinPrimary,
              ),
            )
          else
            const SizedBox(),
        ]),
      ),
    ]);
  }
}
