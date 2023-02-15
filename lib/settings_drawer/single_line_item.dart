import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';

//Settings item without any dropdown option but rather a direct functionality
class SingleLineItem extends ConsumerWidget {
  final String heading;
  final IconData settingIcon;
  final double iconSize;
  final VoidCallback? onPressed;

  const SingleLineItem({
    Key? key,
    required this.heading,
    required this.settingIcon,
    this.iconSize = 24,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    return TextButton(
      style: styles.defaultTextButtonStyle,
      onPressed: () {
        if (onPressed != null) {
          onPressed!();
        }
      },
      child: Container(
        height: 60,
        margin: const EdgeInsetsDirectional.only(start: 30),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsetsDirectional.only(end: 13),
              child: Container(
                child: Icon(
                  settingIcon,
                  color: theme.primary,
                  size: iconSize,
                ),
                margin: EdgeInsetsDirectional.only(
                  top: 3,
                  start: settingIcon == AppIcons.logout
                      ? 6
                      : settingIcon == AppIcons.changerepresentative
                          ? 0
                          : settingIcon == AppIcons.backupseed
                              ? 1
                              : settingIcon == AppIcons.transferfunds
                                  ? 2
                                  : 3,
                  bottom: 3,
                  end: settingIcon == AppIcons.logout
                      ? 0
                      : settingIcon == AppIcons.changerepresentative
                          ? 6
                          : settingIcon == AppIcons.backupseed
                              ? 5
                              : settingIcon == AppIcons.transferfunds
                                  ? 4
                                  : 3,
                ),
              ),
            ),
            Container(
              child: Text(
                heading,
                style: styles.textStyleSettingItemHeader,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
