
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';

class SendNoteWidget extends HookConsumerWidget {
  final String note;
  final bool success;
  const SendNoteWidget({
    Key? key,
    required this.note,
    this.success = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = ref.watch(l10nProvider);

    final title = l10n.sendNote;
    final details = note;
    final titleStyle = success
        ? styles.textStyleDataTypeHeaderSuccess
        : styles.textStyleDataTypeHeaderHighlight;

    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.105,
        right: MediaQuery.of(context).size.width * 0.105,
        top: 5,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        color: theme.backgroundDarkest,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            title,
            style: titleStyle,
          ),
          Text(
            details,
            textAlign: TextAlign.center,
            style: styles.textStyleAddressText90,
          ),
        ],
      ),
    );
  }
}
