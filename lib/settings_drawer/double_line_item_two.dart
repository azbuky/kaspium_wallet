import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';

class DoubleLineItemTwo extends ConsumerWidget {
  final String heading;
  final String text;
  final IconData icon;
  final double iconSize;
  final VoidCallback onPressed;
  final bool disabled;

  const DoubleLineItemTwo({
    Key? key,
    required this.heading,
    required this.text,
    required this.icon,
    this.iconSize = 24,
    required this.onPressed,
    this.disabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    return IgnorePointer(
      ignoring: disabled,
      child: TextButton(
        style: styles.defaultTextButtonStyle,
        onPressed: onPressed,
        child: Container(
          height: 60,
          margin: const EdgeInsetsDirectional.only(start: 30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsetsDirectional.only(end: 13),
                child: Container(
                  child: Icon(
                    icon,
                    color: disabled ? theme.primary45 : theme.primary,
                    size: iconSize,
                  ),
                  margin: const EdgeInsets.all(3),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: AutoSizeText(
                      heading,
                      style: disabled
                          ? styles.textStyleSettingItemHeader45
                          : styles.textStyleSettingItemHeader,
                      maxLines: 1,
                      stepGranularity: 0.1,
                      minFontSize: 8,
                    ),
                  ),
                  Container(
                    child: AutoSizeText(
                      text,
                      style: disabled
                          ? styles.textStyleSettingItemSubheader30
                          : styles.textStyleSettingItemSubheader,
                      maxLines: 1,
                      stepGranularity: 0.1,
                      minFontSize: 8,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
