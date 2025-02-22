import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../app_icons.dart';
import '../../app_providers.dart';
import '../../app_router.dart';
import '../../l10n/l10n.dart';
import '../../util/ui_util.dart';
import '../../util/user_data_util.dart';
import '../../widgets/app_text_field.dart';
import '../../widgets/buttons.dart';
import '../../widgets/dialog.dart';
import '../../widgets/sheet_widget.dart';

class KasplexSettingsSheet extends HookConsumerWidget {
  const KasplexSettingsSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    final apiUrl = ref.watch(kasplexApiUserSetUrlProvider);
    final defaultApiUrl = ref.watch(kasplexApiDefaultUrlProvider);

    final controller = useTextEditingController(text: apiUrl);
    final focusNode = useFocusNode();

    final showUrlHint = useState(!focusNode.hasFocus);
    final urlValue = useValueListenable(controller);

    useEffect(() {
      final listener = () => showUrlHint.value = !focusNode.hasFocus;
      focusNode.addListener(listener);
      return () => focusNode.removeListener(listener);
    }, [focusNode]);

    Future<void> setApiUrl() async {
      final url = controller.text;
      final uri = Uri.tryParse(url);

      if (uri == null) {
        UIUtil.showSnackbar('Invalid URL', context);
        return;
      }

      bool cancelled = false;

      AppDialogs.showInProgressDialog(
        context,
        'Setting API URL',
        'Please wait while contacting API',
        onCancel: () => cancelled = true,
      );

      try {
        final networkId = ref.read(networkIdProvider);
        final notifier = ref.read(kasplexSettingsProvider.notifier);

        if (!cancelled) {
          appRouter.pop(context);
          await notifier.setApiUrl(url, networkId: networkId);
          // pop sheet
          appRouter.pop(context);
          //UIUtil.showSnackbar(, context);
        }
      } catch (e, st) {
        if (!cancelled) {
          // pop dialog
          appRouter.pop(context);
        }
        final log = ref.read(loggerProvider);
        log.e('Failed to set API URL', error: e, stackTrace: st);

        final message = l10n.addNodeFailedMessage('$e');
        UIUtil.showSnackbar(message, context);
      }
    }

    Future<void> scanUrl() async {
      FocusManager.instance.primaryFocus?.unfocus();
      final scanResult = await UserDataUtil.scanQrCode(context);
      final url = scanResult?.code;
      if (url == null) {
        return;
      }
      controller.text = url;
    }

    Future<void> pasteUrl() async {
      final data = await UserDataUtil.getClipboardText(DataType.RAW);
      if (data != null) {
        controller.text = data;
      }
    }

    void clearUrl() {
      controller.text = '';
    }

    return SheetWidget(
      title: 'KASPLEX API',
      mainWidget: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          Container(
            margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.115,
              right: MediaQuery.of(context).size.width * 0.115,
            ),
            child: Text(
              'Set a custom Kasplex API URL or leave blank to use the default one.',
              style: styles.textStyleAccount,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 20),
          AppTextField(
            controller: controller,
            focusNode: focusNode,
            cursorColor: theme.primary,
            style: styles.textStyleParagraphNormal,
            hintText: showUrlHint.value ? defaultApiUrl : '',
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.url,
            prefixButton: TextFieldButton(
              icon: AppIcons.scan,
              onPressed: scanUrl,
            ),
            suffixButton: urlValue.text.isEmpty
                ? TextFieldButton(
                    icon: AppIcons.paste,
                    onPressed: pasteUrl,
                  )
                : TextFieldButton(
                    icon: Icons.clear,
                    onPressed: clearUrl,
                  ),
          ),
        ],
      ),
      bottomWidget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(children: [
          PrimaryButton(
            title: l10n.confirm,
            onPressed: setApiUrl,
          ),
          const SizedBox(height: 16),
          PrimaryOutlineButton(
            title: l10n.cancel,
            onPressed: () => appRouter.pop(context),
          ),
        ]),
      ),
    );
  }
}
