import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../kaspa/bip39/bip39.dart' as bip39;

class Event<T> {
  final T data;
  const Event(this.data);
}

const kBackspaceKey = '⌫';

final wordListProvider =
    Provider<IList<String>>((ref) => bip39.WORDLIST.toIList());

final wordPrefixProvider = StateProvider((ref) {
  return '';
});

final keyboardEnabledProvider = StateProvider((ref) => true);

final wordSuggestionsProvider = Provider<IList<String>>((ref) {
  final prefix = ref.watch(wordPrefixProvider);
  final wordList = ref.watch(wordListProvider);
  if (prefix.isEmpty) {
    return wordList;
  }
  return IList(wordList.where((element) => element.startsWith(prefix)));
});

final wordSelectedProvider = StateProvider<Event<String>>((ref) {
  return Event('');
});

final enabledKeysProvider = Provider((ref) {
  final prefix = ref.watch(wordPrefixProvider);
  final words = ref.watch(wordSuggestionsProvider);
  final enabled = ref.watch(keyboardEnabledProvider);

  final enabledKeys = {kBackspaceKey};
  if (!enabled) {
    return enabledKeys.lock;
  }

  final prefixLength = prefix.length;
  for (final word in words) {
    if (word.length > prefixLength) {
      enabledKeys.add(word[prefixLength]);
    }
  }

  return enabledKeys.lock;
});

class WordsWidget extends ConsumerWidget {
  const WordsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final words = ref.watch(wordSuggestionsProvider);
    final prefix = ref.watch(wordPrefixProvider);

    return Container(
      height: 48,
      child: ListView.builder(
        padding: const EdgeInsetsDirectional.only(start: 4),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: words.length,
        itemBuilder: (context, index) {
          final word = words[index];
          return Container(
            margin: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: theme.background,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [theme.boxShadowButton],
            ),
            child: TextButton(
              key: ValueKey(word),
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: theme.background,
                foregroundColor: theme.text,
              ),
              child: Text.rich(
                TextSpan(children: [
                  TextSpan(
                    text: prefix,
                    style: styles.textStyleKeyboardWord,
                  ),
                  TextSpan(text: word.substring(prefix.length)),
                ]),
              ),
              onPressed: () {
                final notifier = ref.read(wordSelectedProvider.notifier);
                notifier.update((state) => Event(word));
              },
            ),
          );
        },
      ),
    );
  }
}

class KeyWidget extends ConsumerWidget {
  final String keyId;
  const KeyWidget({Key? key, required this.keyId}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final enabled = ref.watch(enabledKeysProvider).contains(keyId);

    return LayoutBuilder(builder: (context, constraints) {
      double margin = constraints.maxWidth >= 40 ? 4 : 2;
      return Container(
        height: 48,
        margin: EdgeInsets.all(margin),
        decoration: BoxDecoration(
          color: theme.background,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [theme.boxShadowButton],
        ),
        child: TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: theme.background,
            foregroundColor: theme.text,
          ),
          child: Center(
            child: Text(
              keyId,
              style: styles.textStyleKeyboardKey,
            ),
          ),
          onPressed: !enabled
              ? null
              : () {
                  final notifier = ref.read(wordPrefixProvider.notifier);
                  if (keyId == kBackspaceKey) {
                    final state = notifier.state;
                    if (state.isEmpty) {
                      ref.read(wordSelectedProvider.notifier).update(
                            (state) => Event(''),
                          );
                    }
                    notifier.update((state) => state.isEmpty
                        ? state
                        : state.substring(0, state.length - 1));
                  } else {
                    notifier.update((state) => state + keyId);
                  }
                },
        ),
      );
    });
  }
}

class KeyboardWidget extends ConsumerWidget {
  const KeyboardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Container(
        constraints: BoxConstraints(maxWidth: 600),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                children: const [
                  Expanded(flex: 1, child: KeyWidget(keyId: 'q')),
                  Expanded(flex: 1, child: KeyWidget(keyId: 'w')),
                  Expanded(flex: 1, child: KeyWidget(keyId: 'e')),
                  Expanded(flex: 1, child: KeyWidget(keyId: 'r')),
                  Expanded(flex: 1, child: KeyWidget(keyId: 't')),
                  Expanded(flex: 1, child: KeyWidget(keyId: 'y')),
                  Expanded(flex: 1, child: KeyWidget(keyId: 'u')),
                  Expanded(flex: 1, child: KeyWidget(keyId: 'i')),
                  Expanded(flex: 1, child: KeyWidget(keyId: 'o')),
                  Expanded(flex: 1, child: KeyWidget(keyId: 'p')),
                ],
              ),
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Row(
                children: const [
                  Expanded(flex: 1, child: KeyWidget(keyId: 'a')),
                  Expanded(flex: 1, child: KeyWidget(keyId: 's')),
                  Expanded(flex: 1, child: KeyWidget(keyId: 'd')),
                  Expanded(flex: 1, child: KeyWidget(keyId: 'f')),
                  Expanded(flex: 1, child: KeyWidget(keyId: 'g')),
                  Expanded(flex: 1, child: KeyWidget(keyId: 'h')),
                  Expanded(flex: 1, child: KeyWidget(keyId: 'j')),
                  Expanded(flex: 1, child: KeyWidget(keyId: 'k')),
                  Expanded(flex: 1, child: KeyWidget(keyId: 'l')),
                ],
              ),
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 42, end: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Expanded(flex: 2, child: KeyWidget(keyId: 'z')),
                  Expanded(flex: 2, child: KeyWidget(keyId: 'x')),
                  Expanded(flex: 2, child: KeyWidget(keyId: 'c')),
                  Expanded(flex: 2, child: KeyWidget(keyId: 'v')),
                  Expanded(flex: 2, child: KeyWidget(keyId: 'b')),
                  Expanded(flex: 2, child: KeyWidget(keyId: 'n')),
                  Expanded(flex: 2, child: KeyWidget(keyId: 'm')),
                  SizedBox(width: 10),
                  Expanded(flex: 3, child: KeyWidget(keyId: kBackspaceKey)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
