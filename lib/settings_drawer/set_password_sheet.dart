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

class SetPasswordSheet extends HookConsumerWidget {
  const SetPasswordSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    final styles = ref.watch(stylesProvider);

    final createFocusNode = useFocusNode();
    final createController = useTextEditingController();
    final confirmFocusNode = useFocusNode();
    final confirmController = useTextEditingController();
    final passwordError = useState<String>('');
    final passwordsMatch = useState(false);

    final textStyle = passwordsMatch.value
        ? styles.textStyleParagraphPrimary
        : styles.textStyleParagraphText;

    void inputChanged(_) {
      passwordError.value = '';
      passwordsMatch.value = confirmController.text == createController.text;
    }

    bool validInputs() {
      if (createController.text.isEmpty || confirmController.text.isEmpty) {
        passwordError.value = l10n.passwordBlank;
        return false;
      } else if (createController.text != confirmController.text) {
        passwordError.value = l10n.passwordsDontMatch;
        return false;
      }
      return true;
    }

    Future<void> submitAndEncrypt() async {
      if (!validInputs()) return;

      try {
        final password = confirmController.text;
        final auth = ref.read(walletAuthProvider.notifier);
        await auth.setPassword(password);

        UIUtil.showSnackbar(l10n.setPasswordSuccess, context);
        Navigator.pop(context);
      } catch (e, st) {
        final log = ref.read(loggerProvider);
        log.e('Failed to set password', e, st);

        Navigator.pop(context);
        UIUtil.showSnackbar(l10n.encryptionFailedError, context);
      }
    }

    return TapOutsideUnfocus(
      child: SheetWidget(
        title: l10n.createPasswordSheetHeader,
        mainWidget: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsetsDirectional.only(start: 40, end: 40, top: 16),
              child: AutoSizeText(
                l10n.passwordWillBeRequiredToOpenParagraph,
                style: styles.textStyleParagraph,
                maxLines: 5,
                stepGranularity: 0.5,
              ),
            ),
            // Create a Password Text Field
            AppTextField(
              topMargin: 30,
              padding: EdgeInsetsDirectional.only(start: 16, end: 16),
              focusNode: createFocusNode,
              controller: createController,
              textInputAction: TextInputAction.next,
              maxLines: 1,
              autocorrect: false,
              onChanged: inputChanged,
              hintText: l10n.createPasswordHint,
              keyboardType: TextInputType.text,
              obscureText: true,
              textAlign: TextAlign.center,
              style: textStyle,
              onSubmitted: (text) {
                confirmFocusNode.requestFocus();
              },
            ),
            // Confirm Password Text Field
            AppTextField(
              topMargin: 20,
              padding: const EdgeInsetsDirectional.only(
                start: 16,
                end: 16,
              ),
              focusNode: confirmFocusNode,
              controller: confirmController,
              textInputAction: TextInputAction.done,
              maxLines: 1,
              autocorrect: false,
              onChanged: inputChanged,
              hintText: l10n.confirmPasswordHint,
              keyboardType: TextInputType.text,
              obscureText: true,
              textAlign: TextAlign.center,
              style: textStyle,
            ),
            // Error Text
            Container(
              alignment: AlignmentDirectional(0, 0),
              margin: EdgeInsets.only(top: 3),
              child: Text(
                passwordError.value,
                style: styles.textStyleParagraphThinPrimary,
              ),
            ),
          ],
        ),
        bottomWidget: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(children: [
            PrimaryButton(
              title: l10n.setPassword,
              onPressed: submitAndEncrypt,
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
