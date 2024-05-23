import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../kaspa/utils.dart';
import '../l10n/l10n.dart';
import '../util/formatters.dart';
import '../util/ui_util.dart';
import '../util/user_data_util.dart';
import '../widgets/app_text_field.dart';
import '../widgets/keyboard_widget.dart';
import 'intro_back_button.dart';
import 'intro_providers.dart';
import 'invalid_checksum_dialog.dart';

final _mnemonicProvider = StateProvider.autoDispose((ref) => '');

final _mnemonicIsValidProvider =
    Provider.autoDispose.family<bool, int>((ref, length) {
  final mnemonic = ref.watch(_mnemonicProvider);
  final trimmed = mnemonic.trim();
  return mnemonic.endsWith(' ') &&
      trimmed.split(' ').length == length &&
      isValidMnemonic(trimmed, verifyChecksum: false);
});

final _showInvalidChecksumProvider =
    Provider.autoDispose.family<bool, int>((ref, length) {
  final mnemonic = ref.watch(_mnemonicProvider).trim();
  final isValid = ref.watch(_mnemonicIsValidProvider(length));
  final hasValidChecksum = isValidMnemonic(
    mnemonic,
    verifyChecksum: true,
  );
  return isValid && !hasValidChecksum;
});

class IntroImportSeed extends HookConsumerWidget {
  final bool isLegacy;
  const IntroImportSeed({Key? key, this.isLegacy = false}) : super(key: key);

  int get mnemonicLength => isLegacy ? 12 : 24;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    final mnemonicIsValid = ref.watch(_mnemonicIsValidProvider(mnemonicLength));

    final mnemonicFocusNode = useFocusNode();
    final mnemonicController = useTextEditingController();
    final scaffoldKey = useRef(GlobalKey<ScaffoldState>());

    void updateFocus(int offset) {
      mnemonicController.selection = TextSelection.collapsed(offset: offset);
      mnemonicFocusNode.requestFocus();
    }

    ref.listen<String>(_mnemonicProvider, (previous, next) {
      final keyboardNotifier = ref.read(keyboardEnabledProvider.notifier);
      final words = next.trim().split(' ');
      final wordsLength = isLegacy ? 12 : 24;
      keyboardNotifier.state = words.length < wordsLength ||
          (words.length == wordsLength && !isValidMnemonicWord(words.last));

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
      ref.read(wordPrefixProvider.notifier).update((_) => '');
    });

    Future<void> scanQrCode() async {
      final isValid = ref.read(_mnemonicIsValidProvider(isLegacy ? 12 : 24));
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
      if (isValidMnemonic(mData, verifyChecksum: false) &&
          mData.split(' ').length == mnemonicLength) {
        ref.read(_mnemonicProvider.notifier).state = mData + ' ';
        updateFocus(mData.length + 1);
        ref.read(wordPrefixProvider.notifier).update((state) => '');
        return;
      }
      UIUtil.showSnackbar(l10n.qrMnemonicError, context);
    }

    Future<void> pasteFromClipboard() async {
      final isValid = ref.read(_mnemonicIsValidProvider(mnemonicLength));
      if (isValid) {
        return;
      }

      final data = await Clipboard.getData(Clipboard.kTextPlain);
      if (data == null || data.text == null) {
        UIUtil.showSnackbar(l10n.clipboardEmpty, context);
        return;
      }
      final text = data.text!.trim().toLowerCase();
      if (isValidMnemonic(text, verifyChecksum: false) &&
          text.split(' ').length == mnemonicLength) {
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

    Future<void> submitMnemonic() async {
      final mnemonic = ref.read(_mnemonicProvider).trim();
      final intro = ref.read(introStateProvider.notifier);

      final validChecksum = isValidMnemonic(mnemonic, verifyChecksum: true);

      if (!validChecksum) {
        final confirmed = await showDialog<bool>(
          barrierColor: ref.read(themeProvider).barrier,
          barrierDismissible: false,
          context: context,
          builder: (_) => InvalidChecksumDialog(),
        );

        if (confirmed != true) {
          return;
        }
      }

      if (isValidMnemonic(mnemonic, verifyChecksum: false)) {
        intro.setMnemonic(mnemonic);
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
                      isLegacy
                          ? l10n.importSecretPhraseHintLegacy
                          : l10n.importSecretPhraseHint,
                      style: styles.textStyleParagraph,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Column(children: [
                    Focus(
                      onKeyEvent: (node, event) => KeyEventResult.handled,
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
                      final provider =
                          _showInvalidChecksumProvider(mnemonicLength);
                      final showInvalidChecksum = ref.watch(provider);
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
