import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../util/ui_util.dart';
import '../widgets/app_text_field.dart';
import '../widgets/buttons.dart';
import '../widgets/sheet_widget.dart';
import '../widgets/tap_outside_unfocus.dart';

class DisablePasswordSheet extends HookConsumerWidget {
  const DisablePasswordSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);
    final l10n = ref.watch(l10nProvider);

    final passwordFocusNode = useFocusNode();
    final passwordController = useTextEditingController();
    final passwordError = useState('');

    Future<void> submitAndDecrypt() async {
      final password = passwordController.text;
      if (password.isEmpty) {
        passwordError.value = l10n.passwordBlank;
        return;
      }
      try {
        final auth = ref.read(walletAuthProvider.notifier);
        await auth.removePassword(password);

        UIUtil.showSnackbar(l10n.disablePasswordSuccess, context);
        Navigator.of(context).pop();
      } catch (e) {
        passwordError.value = l10n.invalidPassword;
      }
    }

    return TapOutsideUnfocus(
      child: SheetWidget(
        title: l10n.disablePasswordSheetHeader,
        mainWidget: Column(children: [
          Container(
            margin: EdgeInsetsDirectional.only(start: 40, end: 40, top: 16),
            child: AutoSizeText(
              l10n.passwordNoLongerRequiredToOpenParagraph,
              style: styles.textStyleParagraph,
              maxLines: 5,
              stepGranularity: 0.5,
            ),
          ),
          Column(children: [
            AppTextField(
              topMargin: 30,
              padding: EdgeInsetsDirectional.only(start: 16, end: 16),
              focusNode: passwordFocusNode,
              controller: passwordController,
              textInputAction: TextInputAction.done,
              maxLines: 1,
              autocorrect: false,
              onChanged: (String newText) {
                passwordError.value = '';
              },
              hintText: l10n.enterPasswordHint,
              keyboardType: TextInputType.text,
              obscureText: true,
              style: styles.textStyleParagraphText,
            ),
            Container(
              alignment: AlignmentDirectional(0, 0),
              margin: EdgeInsets.only(top: 3),
              child: Text(
                passwordError.value,
                style: styles.textStyleParagraphThinPrimary,
              ),
            ),
          ]),
        ]),
        bottomWidget: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(children: [
            PrimaryButton(
              title: l10n.disablePasswordSheetHeader,
              onPressed: submitAndDecrypt,
            ),
            const SizedBox(height: 16),
            PrimaryOutlineButton(
              title: l10n.close,
              onPressed: () => Navigator.pop(context),
            ),
          ]),
        ),
      ),
    );
  }
}
