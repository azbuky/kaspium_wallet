import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../app_providers.dart';

class DataMemoCard extends ConsumerWidget {
  final String memo;

  const DataMemoCard({
    Key? key,
    required this.memo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 15,
      ),
      margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.105,
        right: MediaQuery.of(context).size.width * 0.105,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: theme.backgroundDarkest,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            'Memo'.toUpperCase(),
            style: styles.textStyleDataTypeHeaderHighlight,
          ),
          Text(
            memo,
            textAlign: TextAlign.center,
            style: styles.textStyleAddressText90,
          ),
        ],
      ),
    );
  }
}
