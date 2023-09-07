import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../kaspa/kaspa.dart';
import '../l10n/l10n.dart';
import '../widgets/app_text_field.dart';
import '../widgets/fiat_value_container.dart';
import '../widgets/kas_icon_widget.dart';

final amountProvider = StateProvider.autoDispose<Amount?>((ref) => null);

class ReceiveAmountField extends HookConsumerWidget {
  const ReceiveAmountField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    final formatter = ref.watch(kaspaFormatterProvider);
    final amount = ref.watch(amountProvider);

    final amountController = useTextEditingController();
    final amountFocusNode = useFocusNode();

    void onValueChanged(String text) {
      final notifier = ref.read(amountProvider.notifier);
      final value = formatter.tryParse(text);
      if (value == null) {
        notifier.state = null;
        return;
      }
      notifier.state = Amount.value(value);
    }

    void clearAmount() {
      final notifier = ref.read(amountProvider.notifier);
      notifier.state = null;
      amountController.clear();
    }

    return FiatValueContainer(
      amount: amount ?? Amount.zero,
      child: AppTextField(
        focusNode: amountFocusNode,
        controller: amountController,
        topMargin: 15,
        cursorColor: theme.primary,
        style: styles.textStyleParagraphPrimary,
        inputFormatters: [formatter],
        onChanged: onValueChanged,
        textInputAction: TextInputAction.done,
        maxLines: null,
        autocorrect: false,
        hintText: l10n.enterAmount,
        prefixButton: TextFieldButton(
          icon: AppIcons.swapcurrency,
          widget: Image.asset(
            kKasIconPath,
            width: 40,
            height: 40,
            filterQuality: FilterQuality.medium,
            isAntiAlias: true,
          ),
          onPressed: () {},
        ),
        suffixButton: TextFieldButton(
          icon: Icons.clear,
          onPressed: clearAmount,
        ),
        fadeSuffixOnCondition: true,
        suffixShowFirstCondition:
            (amount?.value ?? Decimal.zero) > Decimal.zero,
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
        textAlign: TextAlign.center,
        onSubmitted: (text) {
          print('OnSubmited');
        },
      ),
    );
  }
}
