import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../core/core_providers.dart';
import '../l10n/l10n.dart';
import '../widgets/app_text_field.dart';
import '../widgets/buttons.dart';
import '../widgets/tap_outside_unfocus.dart';
import 'intro_back_button.dart';
import 'intro_providers.dart';

class IntroWalletName extends HookConsumerWidget {
  const IntroWalletName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    final nameFocusNode = useFocusNode();
    final nameController = useTextEditingController();

    final nameError = useState('');
    useEffect(() {
      final introData = ref.read(introDataProvider);
      nameController.text = introData.name ?? '';
      return null;
    }, const []);

    void inputChanged(_) {
      nameError.value = '';
    }

    void submitAndContinue() {
      final name = nameController.text;

      if (name.isEmpty) {
        nameError.value = l10n.emptyWalletName;
        return;
      }

      final intro = ref.read(introStateProvider.notifier);
      intro.setName(nameController.text);
    }

    void goBack() {
      final intro = ref.read(introStateProvider.notifier);
      intro.goBack();
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: theme.backgroundDark,
      body: TapOutsideUnfocus(
        child: SafeArea(
          minimum: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height * 0.035,
            top: MediaQuery.of(context).size.height * 0.075,
          ),
          child: Column(children: [
            Expanded(
              child: Column(children: [
                Row(children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 20),
                    child: const IntroBackButton(),
                  ),
                ]),
                Container(
                  margin: const EdgeInsets.only(left: 40, right: 40, top: 10),
                  alignment: const AlignmentDirectional(-1, 0),
                  child: AutoSizeText(
                    l10n.walletName,
                    maxLines: 3,
                    stepGranularity: 0.5,
                    style: styles.textStyleHeaderColored,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 40, right: 40, top: 16),
                  alignment: const AlignmentDirectional(-1, 0),
                  child: AutoSizeText(
                    l10n.walletNameDescription,
                    style: styles.textStyleParagraph,
                    textAlign: TextAlign.start,
                    maxLines: 5,
                    stepGranularity: 0.5,
                  ),
                ),
                Expanded(
                  child: Column(children: [
                    AppTextField(
                      topMargin: 30,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      focusNode: nameFocusNode,
                      controller: nameController,
                      maxLines: 1,
                      autocorrect: false,
                      textCapitalization: TextCapitalization.words,
                      onChanged: inputChanged,
                      hintText: l10n.walletNameHint,
                      keyboardType: TextInputType.text,
                      style: styles.textStyleParagraphText,
                    ),
                    Container(
                      alignment: AlignmentDirectional(0, 0),
                      margin: EdgeInsets.only(top: 3),
                      child: Text(
                        nameError.value,
                        style: styles.textStyleParagraphThinPrimary,
                      ),
                    ),
                  ]),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(children: [
                PrimaryButton(
                  title: l10n.nextButton,
                  onPressed: submitAndContinue,
                ),
                const SizedBox(height: 16),
                PrimaryOutlineButton(
                  title: l10n.goBackButton,
                  onPressed: goBack,
                ),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
