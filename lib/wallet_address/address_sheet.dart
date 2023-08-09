import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../l10n/l10n.dart';
import '../widgets/app_simpledialog.dart';
import '../widgets/buttons.dart';
import '../widgets/gradient_widgets.dart';
import '../widgets/sheet_header_button.dart';
import '../widgets/sheet_widget.dart';
import 'address_filter_dialog.dart';
import 'address_list_widget.dart';
import 'address_settings.dart';

class AccountsSheet extends HookConsumerWidget {
  const AccountsSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    final addressNotifier = ref.watch(addressNotifierProvider);

    final receiveGlobalKey = useRef(GlobalKey());
    final changeGlobalKey = useRef(GlobalKey());
    final addingAddress = useState(false);
    final receiveScrollController = useScrollController();
    final changeScrollController = useScrollController();

    Future<void> showAddressFilterOptions() async {
      final selection = await showAppDialog<AddressFilter>(
        context: context,
        builder: (_) => const AddressFilterDialog(),
      );
      if (selection != null) {
        final notifier = ref.read(addressSettingsProvider.notifier);
        notifier.setAddressFilter(selection);
      }
    }

    return DefaultTabController(
      length: 2,
      child: Builder(builder: (context) {
        Future<void> newReceiveAddress() async {
          if (addingAddress.value) return;
          addingAddress.value = true;

          final newAddress = await addressNotifier.nextReceiveAddress;
          addressNotifier.addAddress(newAddress);
          addingAddress.value = false;

          DefaultTabController.of(context).animateTo(0);
          receiveScrollController.animateTo(
            0,
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeOut,
          );
        }

        return SheetWidget(
          title: l10n.walletAddresses,
          rightWidget: SheetHeaderButton(
            icon: Icons.remove_red_eye,
            onPressed: showAddressFilterOptions,
          ),
          mainWidget: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: TabBar(
                  indicatorWeight: 3,
                  indicatorColor: theme.primary60,
                  indicatorPadding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  tabs: [
                    Tab(
                      child: Container(
                        margin:
                            const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Text(
                          l10n.receive.toUpperCase(),
                          textAlign: TextAlign.center,
                          style: styles.textStyleTabLabel,
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        width: double.infinity,
                        child: Text(
                          l10n.change.toUpperCase(),
                          textAlign: TextAlign.center,
                          style: styles.textStyleTabLabel,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 6),
              Expanded(
                child: TabBarView(
                  children: [
                    Stack(
                      key: receiveGlobalKey.value,
                      children: [
                        ReceiveAddressListWidget(
                          scrollController: receiveScrollController,
                        ),
                        const ListTopGradient(),
                        const ListBottomGradient(),
                      ],
                    ),
                    Stack(
                      key: changeGlobalKey.value,
                      children: [
                        ChangeAddressListWidget(
                          scrollController: changeScrollController,
                        ),
                        const ListTopGradient(),
                        const ListBottomGradient(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          bottomWidget: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Column(children: [
              PrimaryButton(
                title: l10n.newAddress,
                disabled: addingAddress.value,
                onPressed: newReceiveAddress,
              ),
              const SizedBox(height: 16),
              PrimaryOutlineButton(
                title: l10n.close,
                onPressed: () => Navigator.pop(context),
              ),
            ]),
          ),
        );
      }),
    );
  }
}
