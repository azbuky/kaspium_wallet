import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import 'sheet_handle.dart';

class SheetWidget extends ConsumerWidget {
  final Widget? leftWidget;
  final Widget? rightWidget;
  final String title;
  final Widget mainWidget;
  final Widget bottomWidget;

  const SheetWidget({
    Key? key,
    required this.title,
    this.leftWidget,
    this.rightWidget,
    required this.mainWidget,
    this.bottomWidget = const SizedBox(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);
    final leftRight = (leftWidget ?? rightWidget) != null;

    return SafeArea(
      minimum: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height * 0.035,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (leftRight)
                Padding(
                  padding: const EdgeInsetsDirectional.only(top: 10, start: 10),
                  child: leftWidget ?? const SizedBox(height: 50, width: 50),
                ),
              Expanded(
                child: Column(children: [
                  const SheetHandle(),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 4,
                      vertical: 8,
                    ),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        title.toUpperCase(),
                        style: styles.textStyleHeader(context),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ]),
              ),
              if (leftRight)
                Padding(
                  padding: const EdgeInsetsDirectional.only(top: 10, end: 10),
                  child: rightWidget ?? const SizedBox(height: 50, width: 50),
                ),
            ],
          ),
          Expanded(child: mainWidget),
          const SizedBox(height: 16),
          bottomWidget,
        ],
      ),
    );
  }
}
