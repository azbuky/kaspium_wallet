import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../app_router.dart';
import '../l10n/l10n.dart';
import '../settings/address_settings.dart';
import '../widgets/app_simpledialog.dart';
import '../widgets/buttons.dart';
import '../widgets/gradient_widgets.dart';
import '../widgets/sheet_header_button.dart';
import '../widgets/sheet_widget.dart';
import 'address_filter_dialog.dart';
import 'address_list_widget.dart';
import 'wallet_address.dart';

class AddressSelectionSheet extends HookConsumerWidget {
  final AddressType addressType;

  const AddressSelectionSheet({
    super.key,
    required this.addressType,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = l10nOf(context);

    final addressNotifier = ref.watch(addressNotifierProvider);

    final listGlobalKey = useRef(GlobalKey());
    final scrollController = useScrollController();
    final addingAddress = useState(false);

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

    Future<void> newReceiveAddress() async {
      if (addingAddress.value) return;
      addingAddress.value = true;
      await addressNotifier.addNewReceiveAddress();
      addingAddress.value = false;

      scrollController.animateTo(
        0,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut,
      );
    }

    return SheetWidget(
      title: l10n.selectAddress,
      rightWidget: SheetHeaderButton(
        icon: Icons.remove_red_eye,
        onPressed: showAddressFilterOptions,
      ),
      mainWidget: Column(
        children: [
          const SizedBox(height: 6),
          Expanded(
            child: Stack(
              key: listGlobalKey.value,
              children: [
                AddressListWidget(
                  addressType: AddressType.receive,
                  scrollController: scrollController,
                  onSelection: (address) {
                    final notifier = ref.read(selectedAddressProvider.notifier);
                    notifier.state = address;
                    appRouter.pop(context);
                  },
                ),
                const ListTopGradient(),
                const ListBottomGradient(),
              ],
            ),
          ),
        ],
      ),
      bottomWidget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(children: [
          if (addressType == AddressType.receive) ...[
            PrimaryButton(
              title: l10n.newAddress,
              disabled: addingAddress.value,
              onPressed: newReceiveAddress,
            ),
            const SizedBox(height: 16),
          ],
          PrimaryOutlineButton(
            title: l10n.close,
            onPressed: () => appRouter.pop(context),
          ),
        ]),
      ),
    );
  }
}
