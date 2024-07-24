import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../app_providers.dart';
import '../../app_router.dart';
import '../../l10n/l10n.dart';
import '../../widgets/app_text_field.dart';
import '../../widgets/buttons.dart';
import '../../widgets/sheet_widget.dart';
import '../intro_providers.dart';

class Bip39PassphraseSheet extends HookConsumerWidget {
  const Bip39PassphraseSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    // use read instead of watch so we don't trigger rerenders
    final passphrase = ref.read(
      introDataProvider.select((value) => value.bip39Passphrase),
    );

    final enterController = useTextEditingController(text: passphrase);
    final enterFocusNode = useFocusNode();
    final confirmController = useTextEditingController(text: passphrase);
    final confirmFocusNode = useFocusNode();

    final passphraseVisible = useState(false);
    final enterHint = useState<String>(l10n.bip39PassphraseEnter);
    final confirmHint = useState<String>(l10n.bip39PassphraseConfirm);
    final showEnterClearButton = useState(passphrase.isNotEmpty);
    final showConfirmClearButton = useState(passphrase.isNotEmpty);

    final passphraseError = useState<String>('');
    final passphraseMatch = useState(passphrase.isNotEmpty);

    final textStyle = passphraseMatch.value
        ? styles.textStyleParagraphPrimary
        : styles.textStyleParagraphText;

    void inputChanged(String _) {
      passphraseError.value = '';
      passphraseMatch.value = enterController.text == confirmController.text;
      showEnterClearButton.value = enterController.text.isNotEmpty;
      showConfirmClearButton.value = confirmController.text.isNotEmpty;
    }

    useEffect(() {
      final listener = () {
        enterHint.value =
            enterFocusNode.hasFocus ? '' : l10n.bip39PassphraseEnter;
      };
      enterFocusNode.addListener(listener);
      return () => enterFocusNode.removeListener(listener);
    }, [enterFocusNode]);

    useEffect(() {
      final listener = () {
        confirmHint.value =
            confirmFocusNode.hasFocus ? '' : l10n.bip39PassphraseConfirm;
      };
      confirmFocusNode.addListener(listener);
      return () => confirmFocusNode.removeListener(listener);
    }, [confirmFocusNode]);

    void clearEnter() {
      enterController.clear();
      showEnterClearButton.value = false;
      inputChanged('');
      enterFocusNode.requestFocus();
    }

    void clearConfirm() {
      confirmController.clear();
      showConfirmClearButton.value = false;
      inputChanged('');
      confirmFocusNode.requestFocus();
    }

    void setPassphrase() {
      final enter = enterController.text;
      final confirm = confirmController.text;
      if (enter != confirm) {
        passphraseError.value = l10n.bip39PassphraseMismatch;
        return;
      }

      final introData = ref.read(introDataProvider.notifier);
      introData.setBip39Passphrase(enterController.text);

      appRouter.pop(context);
    }

    return SheetWidget(
      title: l10n.bip39Passphrase,
      mainWidget: Column(
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              l10n.bip39PassphraseWarning,
              style: styles.textStyleParagraphThinPrimary,
            ),
          ),
          const SizedBox(height: 20),
          AppTextField(
            controller: enterController,
            focusNode: enterFocusNode,
            autocorrect: false,
            autofocus: false,
            style: textStyle,
            obscureText: !passphraseVisible.value,
            textInputAction: TextInputAction.done,
            hintText: enterHint.value,
            onChanged: inputChanged,
            prefixButton: TextFieldButton(
              icon: passphraseVisible.value
                  ? Icons.visibility_off
                  : Icons.visibility,
              onPressed: () =>
                  passphraseVisible.value = !passphraseVisible.value,
            ),
            suffixButton: TextFieldButton(
              icon: Icons.clear,
              onPressed: clearEnter,
            ),
            fadeSuffixOnCondition: true,
            suffixShowFirstCondition: showEnterClearButton.value,
          ),
          const SizedBox(height: 20),
          AppTextField(
            controller: confirmController,
            focusNode: confirmFocusNode,
            autocorrect: false,
            autofocus: false,
            style: textStyle,
            obscureText: !passphraseVisible.value,
            textInputAction: TextInputAction.done,
            hintText: confirmHint.value,
            onChanged: inputChanged,
            prefixButton: TextFieldButton(
              widget: const SizedBox(width: 40),
            ),
            suffixButton: TextFieldButton(
              icon: Icons.clear,
              onPressed: clearConfirm,
            ),
            fadeSuffixOnCondition: true,
            suffixShowFirstCondition: showConfirmClearButton.value,
          ),
          Container(
            alignment: AlignmentDirectional(0, 0),
            margin: EdgeInsets.only(top: 3),
            child: Text(
              passphraseError.value,
              style: styles.textStyleParagraphThinPrimary,
            ),
          ),
        ],
      ),
      bottomWidget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          children: [
            PrimaryButton(title: l10n.confirm, onPressed: setPassphrase),
            const SizedBox(height: 16),
            PrimaryOutlineButton(
              title: l10n.cancel,
              onPressed: () => appRouter.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
