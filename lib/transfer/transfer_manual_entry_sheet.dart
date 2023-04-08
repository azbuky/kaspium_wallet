import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../app_styles.dart';
import '../l10n/l10n.dart';
import '../util/formatters.dart';
import '../util/kaspa_util.dart';
import '../util/user_data_util.dart';
import '../widgets/app_text_field.dart';
import '../widgets/buttons/primary_button.dart';
import '../widgets/buttons/primary_outline_button.dart';
import '../widgets/tap_outside_unfocus.dart';

class TransferManualEntrySheet extends ConsumerStatefulWidget {
  final Function? validSeedCallback;

  const TransferManualEntrySheet({
    Key? key,
    this.validSeedCallback,
  }) : super(key: key);

  _TransferManualEntrySheetState createState() =>
      _TransferManualEntrySheetState();
}

class _TransferManualEntrySheetState
    extends ConsumerState<TransferManualEntrySheet> {
  final _seedInputFocusNode = FocusNode();
  final _seedInputController = TextEditingController();

  bool seedIsValid = false;
  bool hasError = false;

  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    return TapOutsideUnfocus(
      child: SafeArea(
        minimum: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * 0.035,
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30, left: 70, right: 70),
              child: AutoSizeText(
                l10n.transferHeader,
                style: styles.textStyleHeader(context),
                textAlign: TextAlign.center,
                maxLines: 2,
                stepGranularity: 0.1,
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05,
                ),
                child: Column(children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 60,
                      vertical: 10,
                    ),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      l10n.transferManualHint,
                      style: styles.textStyleParagraph,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Expanded(
                    child: Column(children: [
                      AppTextField(
                        focusNode: _seedInputFocusNode,
                        controller: _seedInputController,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(128),
                          LowerCaseTextFormatter(),
                        ],
                        textInputAction: TextInputAction.done,
                        maxLines: null,
                        autocorrect: false,
                        suffixButton: TextFieldButton(
                          icon: AppIcons.paste,
                          onPressed: () async {
                            String? data = await UserDataUtil.getClipboardText(
                                DataType.SEED);
                            if (data != null) {
                              if (mounted) {
                                _seedInputController.text = data;
                                setState(() => seedIsValid = true);
                              }
                            } else {
                              if (mounted) {
                                setState(() => seedIsValid = false);
                              }
                            }
                          },
                        ),
                        fadeSuffixOnCondition: true,
                        suffixShowFirstCondition:
                            !KaspaUtil.isValidSeed(_seedInputController.text),
                        keyboardType: TextInputType.text,
                        style: seedIsValid
                            ? styles.textStyleSeed
                            : styles.textStyleSeedGray,
                        onChanged: (text) {
                          // Always reset the error message to be less annoying
                          setState(() => hasError = false);
                          // If valid seed, clear focus/close keyboard
                          if (KaspaUtil.isValidSeed(text) && mounted) {
                            _seedInputFocusNode.unfocus();
                            setState(() => seedIsValid = true);
                          } else if (mounted) {
                            setState(() => seedIsValid = false);
                          }
                        },
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5),
                        child: Text(
                          l10n.seedInvalid,
                          style: TextStyle(
                            fontSize: 14.0,
                            color:
                                hasError ? theme.primary : Colors.transparent,
                            fontFamily: kDefaultFontFamily,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ]),
                  ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(children: [
                PrimaryButton(
                  title: l10n.transfer,
                  onPressed: () {
                    final seed = _seedInputController.text;
                    if (KaspaUtil.isValidSeed(seed) &&
                        widget.validSeedCallback != null) {
                      widget.validSeedCallback!(seed);
                    } else if (mounted) {
                      setState(() => hasError = true);
                    }
                  },
                ),
                const SizedBox(height: 16),
                PrimaryOutlineButton(
                  title: l10n.cancel,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
