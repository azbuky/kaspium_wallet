import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../app_router.dart';
import '../l10n/l10n.dart';
import '../util/caseconverter.dart';
import '../widgets/app_text_field.dart';
import '../widgets/buttons.dart';
import '../widgets/logout_button.dart';
import '../widgets/tap_outside_unfocus.dart';

class PasswordLockPage extends HookConsumerWidget {
  final bool canCancel;
  final Future<bool> Function(String password) validator;

  const PasswordLockPage({
    super.key,
    required this.canCancel,
    required this.validator,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    final wallet = ref.watch(walletProvider);

    final enterFocusNode = useFocusNode();
    final enterController = useTextEditingController();
    final passwordError = useState<String>('');
    final unlockDisabled = useState<bool>(false);

    Future<void> validateAndUnlock() async {
      try {
        final password = enterController.text;
        final valid = await validator(password);
        if (!valid) {
          throw Exception('Invalid password');
        }
        if (canCancel) {
          appRouter.pop(context, withResult: valid);
        }
      } catch (e) {
        passwordError.value = l10n.invalidPassword;
        unlockDisabled.value = true;
        Future.delayed(const Duration(seconds: 2), () {
          if (context.mounted) {
            unlockDisabled.value = false;
          }
        });
      }
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: TapOutsideUnfocus(
        child: Container(
          color: theme.backgroundDark,
          width: double.infinity,
          child: SafeArea(
            minimum: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.035,
            ),
            child: Column(children: [
              Row(children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20, 16, 12, 4),
                  child: canCancel ? const BackButton() : const LogoutButton(),
                ),
              ]),
              Expanded(
                child: Column(children: [
                  Container(
                    child: Icon(
                      AppIcons.lock,
                      size: 80,
                      color: theme.primary,
                    ),
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.1,
                    ),
                  ),
                  Container(
                    child: Text(
                      CaseChange.toUpperCase(l10n.locked, ref),
                      style: styles.textStyleHeaderColored,
                    ),
                    margin: const EdgeInsets.only(top: 10),
                  ),
                  Expanded(
                    child: Column(children: [
                      const SizedBox(height: 20),
                      Text(wallet.name, style: styles.textStyleAccount),
                      AppTextField(
                        topMargin: 10,
                        padding: EdgeInsetsDirectional.only(
                          start: 16,
                          end: 16,
                        ),
                        focusNode: enterFocusNode,
                        controller: enterController,
                        textInputAction: TextInputAction.go,
                        autofocus: true,
                        onChanged: (_) => passwordError.value = '',
                        onSubmitted: (value) {
                          FocusScope.of(context).unfocus();
                          if (!unlockDisabled.value) {
                            validateAndUnlock();
                          }
                        },
                        hintText: l10n.enterPasswordHint,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        textAlign: TextAlign.center,
                        style: styles.textStyleParagraphPrimary,
                      ),
                      Container(
                        alignment: AlignmentDirectional(0, 0),
                        margin: const EdgeInsets.only(top: 3),
                        child: Text(
                          passwordError.value,
                          style: styles.textStyleParagraphThinPrimary,
                        ),
                      ),
                    ]),
                  ),
                ]),
              ),
              PrimaryButton(
                title: l10n.unlock,
                margin: const EdgeInsets.fromLTRB(28, 8, 28, 0),
                disabled: unlockDisabled.value,
                onPressed: validateAndUnlock,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
