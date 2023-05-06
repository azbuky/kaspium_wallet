import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../l10n/l10n.dart';
import '../util/formatters.dart';
import '../util/ui_util.dart';
import '../util/user_data_util.dart';
import '../utils.dart';
import '../widgets/app_text_field.dart';
import '../widgets/keyboard_widget.dart';
import 'intro_back_button.dart';
import 'intro_providers.dart';

final _mnemonicProvider = StateProvider.autoDispose((ref) => '');

final _mnemonicIsValidProvider = Provider.autoDispose((ref) {
  final mnemonic = ref.watch(_mnemonicProvider);
  return mnemonic.endsWith(' ') &&
      isValidMnemonic(mnemonic.trim(), verifyChecksum: false) &&
      mnemonic.trim().split(' ').length == 24;
});

final _showInvalidChecksumProvider = Provider.autoDispose((ref) {
  final mnemonic = ref.watch(_mnemonicProvider).trim();
  final isValid = ref.watch(_mnemonicIsValidProvider);
  final hasValidChecksum = isValidMnemonic(
    mnemonic,
    verifyChecksum: true,
  );
  return isValid && !hasValidChecksum;
});

class IntroImportSeed extends HookConsumerWidget {
  const IntroImportSeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    final mnemonicIsValid = ref.watch(_mnemonicIsValidProvider);

    final mnemonicFocusNode = useFocusNode();
    final mnemonicController = useTextEditingController();
    final scaffoldKey = useRef(GlobalKey<ScaffoldState>());
    final walletName = useRef<String?>(null);

    void updateFocus(int offset) {
      mnemonicController.selection = TextSelection.collapsed(offset: offset);
      mnemonicFocusNode.requestFocus();
    }

    ref.listen<String>(_mnemonicProvider, (previous, next) {
      final keyboardNotifier = ref.read(keyboardEnabledProvider.notifier);
      final words = next.trim().split(' ');
      keyboardNotifier.state = words.length < 24 ||
          (words.length == 24 && !isValidMnemonicWord(words.last));

      mnemonicController.text = next;
    });

    ref.listen<String>(wordPrefixProvider, (_, prefix) {
      final mnemonic = ref.read(_mnemonicProvider.notifier);

      final text = mnemonic.state;
      final index = text.lastIndexOf(' ');

      mnemonic.state = text.substring(0, index + 1) + prefix;

      if (prefix.length >= 3) {
        final wordSuggestions = ref.read(wordSuggestionsProvider);
        final suggestions = wordSuggestions.removeWhere(
          (word) => !word.startsWith(prefix),
        );
        if (suggestions.length == 1 && suggestions.first == prefix) {
          ref
              .read(wordSelectedProvider.notifier)
              .update((state) => Event(suggestions.first));
          return;
        }
      }

      final offset = mnemonic.state.length;
      updateFocus(offset);
    });

    ref.listen<Event<String>>(wordSelectedProvider, (_, value) {
      final mnemonic = ref.read(_mnemonicProvider.notifier);
      final text = mnemonic.state;
      final index = value.data.isEmpty
          ? text.trim().lastIndexOf(' ')
          : text.lastIndexOf(' ');
      final word = value.data.isEmpty ? '' : value.data + ' ';
      mnemonic.state = text.substring(0, index + 1) + word;

      final offset = mnemonic.state.length;
      updateFocus(offset);
      ref.read(wordPrefixProvider.notifier).update((state) => '');
    });

    Future<void> scanQrCode() async {
      final isValid = ref.read(_mnemonicIsValidProvider);
      if (isValid) {
        return;
      }
      // Scan QR for mnemonic
      final result = await UserDataUtil.scanQrCode(context);
      if (result?.code == null) {
        return;
      }
      final data = result!.code!.trim();
      final mData = data.toLowerCase();
      if (isValidMnemonic(mData)) {
        ref.read(_mnemonicProvider.notifier).state = mData + ' ';
        updateFocus(mData.length + 1);
        ref.read(wordPrefixProvider.notifier).update((state) => '');
        return;
      }
      UIUtil.showSnackbar(l10n.qrMnemonicError, context);
    }

    Future<void> pasteFromClipboard() async {
      final isValid = ref.read(_mnemonicIsValidProvider);
      if (isValid) {
        return;
      }

      final data = await Clipboard.getData(Clipboard.kTextPlain);
      if (data == null || data.text == null) {
        UIUtil.showSnackbar(l10n.clipboardEmpty, context);
        return;
      }
      final text = data.text!.trim().toLowerCase();
      if (isValidMnemonic(text)) {
        final mnemonic = ref.read(_mnemonicProvider.notifier);
        mnemonic.state = text + ' ';
        updateFocus(text.length + 1);
        ref.read(wordPrefixProvider.notifier).update((state) => '');
        return;
      }
      UIUtil.showSnackbar(
        l10n.pasteMnemonicError,
        context,
      );
    }

    void submitMnemonic() {
      final mnemonic = ref.read(_mnemonicProvider).trim();
      final intro = ref.read(introStateProvider.notifier);

      if (isValidMnemonic(mnemonic)) {
        intro.setMnemonic(mnemonic, walletName: walletName.value);
      }
    }

    return Scaffold(
      key: scaffoldKey.value,
      backgroundColor: theme.backgroundDark,
      body: SafeArea(
        minimum: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * 0.035,
          top: MediaQuery.of(context).size.height * 0.075,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(start: 20),
                      child: const IntroBackButton(),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 40, right: 40, top: 10),
                    alignment: AlignmentDirectional(-1, 0),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        l10n.importSecretPhrase,
                        style: styles.textStyleHeaderColored,
                        maxLines: 1,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 40, right: 40, top: 15),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      l10n.importSecretPhraseHint,
                      style: styles.textStyleParagraph,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Column(children: [
                    Focus(
                      onKey: (node, event) => KeyEventResult.handled,
                      child: AppTextField(
                        leftMargin: 40,
                        rightMargin: 40,
                        topMargin: 20,
                        focusNode: mnemonicFocusNode,
                        controller: mnemonicController,
                        inputFormatters: [
                          SingleSpaceFormatter(),
                          LowerCaseTextFormatter(),
                          FilteringTextInputFormatter.allow(RegExp("[a-z ]")),
                        ],
                        textInputAction: TextInputAction.done,
                        maxLines: null,
                        autocorrect: false,
                        autofocus: true,
                        enableInteractiveSelection: false,
                        prefixButton: TextFieldButton(
                          icon: AppIcons.scan,
                          onPressed: scanQrCode,
                        ),
                        fadePrefixOnCondition: true,
                        prefixShowFirstCondition: !mnemonicIsValid,
                        suffixButton: TextFieldButton(
                          icon: AppIcons.paste,
                          onPressed: pasteFromClipboard,
                        ),
                        fadeSuffixOnCondition: true,
                        suffixShowFirstCondition: !mnemonicIsValid,
                        keyboardType: TextInputType.none,
                        style: mnemonicIsValid
                            ? styles.textStyleParagraphPrimary
                                .copyWith(fontWeight: FontWeight.w400)
                            : styles.textStyleParagraph
                                .copyWith(fontWeight: FontWeight.w400),
                      ),
                    ),
                    Consumer(builder: (context, ref, _) {
                      final l10n = l10nOf(context);
                      final showInvalidChecksum =
                          ref.watch(_showInvalidChecksumProvider);
                      final invalidChecksumText = showInvalidChecksum
                          ? l10n.invalidChecksumMessage
                          : '';
                      return Container(
                        alignment: const AlignmentDirectional(0, 0),
                        margin: const EdgeInsets.only(top: 6),
                        child: Text(
                          invalidChecksumText,
                          style: styles.textStyleParagraphThinPrimary
                              .copyWith(color: theme.success),
                          textAlign: TextAlign.center,
                        ),
                      );
                    }),
                  ]),
                ],
              ),
            ),
            if (mnemonicIsValid)
              Container(
                alignment: Alignment.centerRight,
                margin: const EdgeInsetsDirectional.only(
                  end: 12,
                  top: 16,
                  bottom: 8,
                ),
                child: TextButton(
                  style: styles.appIconButtonStyle,
                  onPressed: submitMnemonic,
                  child: Icon(
                    AppIcons.forward,
                    color: theme.primary,
                    size: 40,
                  ),
                ),
              )
            else
              const Padding(
                padding: EdgeInsets.only(top: 16),
                child: const WordsWidget(),
              ),
            const SizedBox(height: 8),
            const KeyboardWidget(),
          ],
        ),
      ),
    );
  }
}
