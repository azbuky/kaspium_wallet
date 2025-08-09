import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:validators/validators.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../app_router.dart';
import '../kaspa/kaspa.dart';
import '../l10n/l10n.dart';
import '../util/random_util.dart';
import '../util/ui_util.dart';
import '../util/user_data_util.dart';
import '../widgets/app_text_field.dart';
import '../widgets/buttons.dart';
import '../widgets/dialog.dart';
import '../widgets/sheet_widget.dart';
import '../widgets/validation_text.dart';
import 'node_types.dart';

class NodeAddSheet extends HookConsumerWidget {
  const NodeAddSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    final stateNotifier = useState(const AddNodeSheetState());
    final state = stateNotifier.value;

    final nameController = useTextEditingController();
    final nameFocusNode = useFocusNode();

    final urlController = useTextEditingController();
    final urlFocusNode = useFocusNode();

    useEffect(() {
      final listener = () {
        stateNotifier.value = state.copyWith(
          showNameHint: !nameFocusNode.hasFocus,
        );
      };
      nameFocusNode.addListener(listener);
      return () => nameFocusNode.removeListener(listener);
    }, [nameFocusNode]);

    useEffect(() {
      final listener = () {
        stateNotifier.value = state.copyWith(
          showUrlHint: !urlFocusNode.hasFocus,
        );
      };
      urlFocusNode.addListener(listener);
      return () => urlFocusNode.removeListener(listener);
    }, [urlFocusNode]);

    bool inputValid() {
      final name = nameController.text;
      final url = urlController.text.split(':').first;
      bool valid = true;

      var state = stateNotifier.value;
      if (name.isEmpty) {
        state = state.copyWith(
          nameValidationText: l10n.nodeNameEmpty,
        );
        valid = false;
      }
      if (!isIP(url)) {
        final validUri = Uri.tryParse(url);
        if (validUri == null) {
          state = state.copyWith(
            urlValidationText: l10n.nodeUrlInvalid,
          );
          valid = false;
        }
      }
      if (!valid) {
        stateNotifier.value = state;
      }
      return valid;
    }

    Future<void> addNode() async {
      if (!inputValid()) {
        return;
      }

      final name = nameController.text;
      final url = urlController.text;

      KaspaClient? client;
      bool cancelled = false;

      AppDialogs.showInProgressDialog(
        context,
        l10n.addingNodeTitle,
        l10n.addingNodeMessage,
        onCancel: () => cancelled = true,
      );

      try {
        final port = int.tryParse(url.split(':').last) ?? kMainnetRpcPort;
        bool isSecure;
        var nodeInfo;
        String networkName;
        try {
          // Try secure connection first
          client = KaspaClient.url(url, isSecure: true);
          nodeInfo = await client.getInfo();
          networkName = (await client.getBlockDagInfo()).networkName;
          isSecure = true;
        } catch (_) {
          // Fallback to insecure connection
          client = KaspaClient.url(url, isSecure: false);
          nodeInfo = await client.getInfo();
          networkName = (await client.getBlockDagInfo()).networkName;
          isSecure = false;
        }

        KaspaNetwork network;
        String suffix;
        final parts = networkName.split('-');
        if (parts.length > 1) {
          network = KaspaNetwork.tryParse(parts[1]) ?? networkForPort(port);
          suffix = parts.length == 3 ? parts[2] : '';
        } else {
          network = networkForPort(port);
          suffix = '';
        }

        if (!nodeInfo.isSynced) {
          throw Exception(l10n.nodeNotSyncedException);
        }

        if (!nodeInfo.isUtxoIndexed) {
          throw Exception(l10n.nodeNoUTXOIndexException);
        }

        final notifier = ref.read(kaspaNodeSettingsProvider.notifier);
        final config = NodeConfig(
          id: RandomUtil.generateKey(),
          name: name,
          urls: [url],
          network: network,
          networkSuffix: suffix,
          isSecure: isSecure,
        );

        if (!cancelled) {
          appRouter.pop(context);
          final success = await notifier.addOption(config);
          if (success) {
            // pop sheet
            appRouter.pop(context);
            UIUtil.showSnackbar(l10n.addNodeSuccess, context);
          } else {
            UIUtil.showSnackbar(l10n.addNodeFailed, context);
          }
        }
      } catch (e, st) {
        if (!cancelled) {
          // pop dialog
          appRouter.pop(context);
        }
        final log = ref.read(loggerProvider);
        log.e('Failed to add node', error: e, stackTrace: st);

        final message = l10n.addNodeFailedMessage('$e');
        UIUtil.showSnackbar(message, context);
      } finally {
        client?.close();
      }
    }

    Future<void> scanUrl() async {
      FocusManager.instance.primaryFocus?.unfocus();
      final scanResult = await UserDataUtil.scanQrCode(context);
      final url = scanResult?.code;
      if (url == null) {
        return;
      }
      urlController.text = url;
    }

    Future<void> pasteUrl() async {
      final data = await UserDataUtil.getClipboardText(DataType.RAW);
      if (data != null) {
        urlController.text = data;
      }
    }

    return SheetWidget(
      title: l10n.addNode,
      mainWidget: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          AppTextField(
            controller: nameController,
            focusNode: nameFocusNode,
            cursorColor: theme.primary,
            style: styles.textStyleParagraphNormal,
            hintText: state.showNameHint ? l10n.nodeNameHint : '',
            textInputAction: TextInputAction.next,
            textCapitalization: TextCapitalization.words,
            inputFormatters: [
              LengthLimitingTextInputFormatter(25),
            ],
          ),
          ValidationText(state.nameValidationText),
          AppTextField(
            controller: urlController,
            focusNode: urlFocusNode,
            cursorColor: theme.primary,
            style: styles.textStyleParagraphNormal,
            hintText: state.showUrlHint ? l10n.nodeUrlHint : '',
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.url,
            prefixButton: TextFieldButton(
              icon: AppIcons.scan,
              onPressed: scanUrl,
            ),
            suffixButton: TextFieldButton(
              icon: AppIcons.paste,
              onPressed: pasteUrl,
            ),
          ),
          ValidationText(state.urlValidationText),
        ],
      ),
      bottomWidget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(children: [
          PrimaryButton(
            title: l10n.add,
            onPressed: addNode,
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
