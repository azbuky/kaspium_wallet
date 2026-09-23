import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../app_icons.dart';
import '../../app_router.dart';
import '../../core/core_providers.dart';
import '../../l10n/l10n.dart';
import '../../util/ui_util.dart';
import '../../util/user_data_util.dart';
import '../../widgets/action_buttons_wrapper.dart';
import '../../widgets/app_text_field.dart';
import '../../widgets/buttons.dart';
import '../../widgets/dismiss_action_buttons.dart';
import '../../widgets/sheet_widget.dart';
import 'dotk_settings_providers.dart';

class DotkSettingsSheet extends HookConsumerWidget {
  const DotkSettingsSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    final apiUrl = ref.watch(dotkApiUserSetUrlProvider);
    final defaultApiUrl = ref.watch(dotkApiDefaultUrlProvider);

    final controller = useTextEditingController(text: apiUrl);
    final focusNode = useFocusNode();

    final showUrlHint = useState(!focusNode.hasFocus);
    final urlValue = useValueListenable(controller);

    useEffect(() {
      bool listener() => showUrlHint.value = !focusNode.hasFocus;
      focusNode.addListener(listener);
      return () => focusNode.removeListener(listener);
    }, [focusNode]);

    Future<void> setApiUrl() async {
      final url = controller.text;
      final uri = Uri.tryParse(url);

      if (uri == null) {
        UIUtil.showSnackbar('Invalid URL');
        return;
      }

      try {
        final networkId = ref.read(networkIdProvider);
        final notifier = ref.read(dotkSettingsProvider.notifier);

        await notifier.setApiUrl(url, networkId: networkId);
        // pop sheet
        if (!context.mounted) return;
        appRouter.pop(context);
      } catch (e, st) {
        final log = ref.read(loggerProvider);
        log.e('Failed to set API URL', error: e, stackTrace: st);

        final message = l10n.addNodeFailedMessage('$e');
        UIUtil.showSnackbar(message);
      }
    }

    Future<void> scanUrl() async {
      FocusManager.instance.primaryFocus?.unfocus();
      final scanResult = await UserDataUtil.scanQrCode(context);

      if (scanResult?.code case final url?) {
        controller.text = url;
      }
    }

    Future<void> pasteUrl() async {
      final data = await UserDataUtil.getClipboardText(.RAW);
      if (data != null) {
        controller.text = data;
      }
    }

    void clearUrl() {
      controller.text = '';
    }

    final horizontal = MediaQuery.widthOf(context) * 0.115;

    return SheetWidget(
      title: '.k names API',
      mainWidget: Column(
        mainAxisAlignment: .start,
        children: [
          const SizedBox(height: 30),
          Container(
            margin: .symmetric(horizontal: horizontal),
            child: Text(
              'Set a custom .k names API URL or leave blank to use the default one.',
              style: styles.textStyleAccount,
              textAlign: .center,
            ),
          ),
          const SizedBox(height: 20),
          AppTextField(
            controller: controller,
            focusNode: focusNode,
            cursorColor: theme.primary,
            style: styles.textStyleParagraphNormal,
            hintText: showUrlHint.value ? defaultApiUrl : '',
            textInputAction: .next,
            keyboardType: .url,
            prefixButton: TextFieldButton(
              icon: AppIcons.scan,
              onPressed: scanUrl,
            ),
            suffixButton: urlValue.text.isEmpty
                ? TextFieldButton(icon: AppIcons.paste, onPressed: pasteUrl)
                : TextFieldButton(icon: Icons.clear, onPressed: clearUrl),
          ),
        ],
      ),
      bottomWidget: ActionButtonsWrapper(
        buttons: [
          PrimaryButton(title: l10n.confirm, onPressed: setApiUrl),
          const CancelActionButton(),
        ],
      ),
    );
  }
}
