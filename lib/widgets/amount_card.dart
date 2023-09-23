import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../core/core_providers.dart';
import '../kaspa/types.dart';
import '../util/numberutil.dart';
import 'fiat_value_container.dart';
import 'kas_icon_widget.dart';

class AmountCard extends HookConsumerWidget {
  final Amount amount;

  const AmountCard({Key? key, required this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final formatedAmount = useMemoized(() {
      return NumberUtil.formatedAmount(amount);
    }, [amount]);

    final exactAmount = useMemoized(() {
      return NumberUtil.approx(
            amount: amount,
            precision: amount.decimals,
          ) +
          ' ${amount.symbolLabel}';
    }, [amount]);

    return Container(
      margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.105,
        right: MediaQuery.of(context).size.width * 0.105,
      ),
      height: 48,
      width: double.infinity,
      decoration: BoxDecoration(
        color: theme.backgroundDarkest,
        borderRadius: BorderRadius.circular(50),
      ),
      // Amount text
      child: FiatValueContainer(
        amount: amount,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: 48,
                maxWidth: 48,
              ),
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: const KasIconWidget(),
              ),
            ),
            Expanded(
              child: Tooltip(
                message: exactAmount,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '$formatedAmount',
                            style: styles.textStyleParagraphPrimary,
                          ),
                          TextSpan(
                            text: ' ${amount.symbolLabel}',
                            style: styles.textStyleParagraphPrimaryW100,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 48),
          ],
        ),
      ),
    );
  }
}
