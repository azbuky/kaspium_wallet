// ignore_for_file: constant_identifier_names

import 'dart:math';

import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../contacts/contact.dart';
import '../dotk/dotk_lookup_text.dart';
import '../dotk/dotk_name_resolver.dart';
import '../dotk/dotk_names.dart';
import '../dotk/dotk_proven_name.dart';
import '../dotk/dotk_types.dart';
import '../kaspa/kaspa.dart';
import '../l10n/l10n.dart';
import '../settings_advanced/compound_utxos_dialog.dart';
import '../util/numberutil.dart';
import '../util/ui_util.dart';
import '../util/user_data_util.dart';
import '../widgets/action_buttons_wrapper.dart';
import '../widgets/address_widgets.dart';
import '../widgets/app_simpledialog.dart';
import '../widgets/app_text_field.dart';
import '../widgets/buttons.dart';
import '../widgets/dismiss_action_buttons.dart';
import '../widgets/fiat_mode_icon.dart';
import '../widgets/fiat_value_container.dart';
import '../widgets/gradient_widgets.dart';
import '../widgets/sheet_handle.dart';
import '../widgets/sheet_wrapper.dart';
import 'balance_text_widget.dart';
import 'send_note_widget.dart';

enum AddressStyle { TEXT60, TEXT90, PRIMARY }

class SendSheet extends ConsumerStatefulWidget {
  final String? title;
  final Contact? contact;
  final KaspaUri? uri;

  const SendSheet({
    super.key,
    this.title,
    this.contact,
    this.uri,
  });

  @override
  ConsumerState<SendSheet> createState() => _SendSheetState();
}

class _SendSheetState extends ConsumerState<SendSheet> {
  final _amountFocusNode = FocusNode();
  final _amountController = TextEditingController();

  final _addressFocusNode = FocusNode();
  final _addressController = TextEditingController();

  final _noteFocusNode = FocusNode();
  final _noteController = TextEditingController();

  late final DotkNameResolver _nameResolver;

  // States
  AddressStyle _sendAddressStyle = .TEXT60;
  String? _amountHint;
  String? _addressHint;
  String? _noteHint;

  String _amountValidationText = '';
  String _addressValidationText = '';

  late List<Contact> _contacts;

  // Used to replace address textfield with colorized TextSpan
  bool _addressValidAndUnfocused = false;
  bool _noteValidAndUnfocused = false;

  // Set to true when a contact is being entered
  bool _isContact = false;

  // Set while a send waits for the name to resolve
  bool _resolvingName = false;

  // Buttons States (Used because we hide the buttons under certain conditions)
  bool _contactButtonVisible = true;
  bool _pasteButtonVisible = true;
  bool _noteQrButtonVisible = true;
  bool _notePasteButtonVisible = true;

  late BigInt? amountRaw = widget.uri?.amount?.raw;
  String? get _note => widget.uri?.message;

  bool get hasNote => _note != null;
  bool get hasUri => widget.uri != null;

  @override
  void initState() {
    super.initState();

    _nameResolver = DotkNameResolver(
      service: () => ref.read(dotkServiceProvider),
      prover: () => ref.read(dotkProverProvider),
      onLookup: _onNameLookup,
      log: ref.read(loggerProvider),
    );

    // Do an UTXO refresh for all active addresses
    final addresses = ref.read(activeAddressesProvider);
    final utxoNotifier = ref.read(utxoNotifierProvider);
    utxoNotifier.refresh(addresses: addresses);

    _contacts = [];
    if (widget.contact != null) {
      // Setup initial state for contact pre-filled
      _addressController.text = widget.contact!.name;
      _isContact = true;
      _contactButtonVisible = false;
      _pasteButtonVisible = false;
      _sendAddressStyle = .PRIMARY;
    } else if (widget.uri != null) {
      // Setup initial state with prefilled address
      _addressController.text = widget.uri!.address.encoded;
      _contactButtonVisible = false;
      _pasteButtonVisible = false;
      _sendAddressStyle = .TEXT90;
      _addressValidAndUnfocused = true;
    }

    if (_note == null) {
      // on note focus change
      _noteFocusNode.addListener(() {
        if (_noteFocusNode.hasFocus) {
          setState(() {
            _noteValidAndUnfocused = false;
          });
          Future.delayed(const Duration(milliseconds: 300), () {
            Scrollable.ensureVisible(
              _noteFocusNode.context!,
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeIn,
            );
          });
        }
      });
    }
    // On amount focus change
    _amountFocusNode.addListener(() {
      setState(() => _amountHint = _amountFocusNode.hasFocus ? '' : null);
    });
    // On address focus change
    _addressFocusNode.addListener(() {
      if (_addressFocusNode.hasFocus) {
        Scrollable.ensureVisible(
          context,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeIn,
        );
        setState(() {
          _addressHint = '';
          _addressValidAndUnfocused = false;
        });
        _addressController.selection = .fromPosition(
          TextPosition(offset: _addressController.text.length),
        );
        if (_addressController.text.startsWith("@")) {
          setState(() {
            _contacts = ref
                .read(contactsProvider)
                .getContactsWithNameLike(_addressController.text);
          });
        }
      } else {
        setState(() {
          _addressHint = null;
          _contacts = [];
          final prefix = ref.read(addressPrefixProvider);
          final address = Address.tryParse(
            _addressController.text,
            expectedPrefix: prefix,
          );
          if (address != null) {
            _addressValidAndUnfocused = true;
          }
        });
        if (_addressController.text.trim() == "@") {
          _addressController.text = '';
          setState(() => _contactButtonVisible = true);
        }
        // A name left in the field should not wait out the debounce
        if (DotkName.isName(_addressController.text)) {
          _nameResolver.resolve(_addressController.text);
        }
      }
    });
    _noteFocusNode.addListener(() {
      setState(() => _noteHint = _noteFocusNode.hasFocus ? '' : null);
    });

    // Set quick send amount
    if (amountRaw != null) {
      _amountController.text = NumberUtil.getStringFromRaw(
        amountRaw!,
        TokenInfo.kaspa.decimals,
      );
    }
  }

  @override
  void dispose() {
    _nameResolver.dispose();

    _amountController.dispose();
    _addressController.dispose();
    _noteController.dispose();

    _amountFocusNode.dispose();
    _addressFocusNode.dispose();
    _noteFocusNode.dispose();

    super.dispose();
  }

  void _onNameLookup(String name, DotkLookup? lookup) {
    // The field may have moved on while the lookup was in flight
    if (!mounted || DotkName.tryNormalize(_addressController.text) != name) {
      return;
    }
    setState(() {
      _addressValidationText = dotkLookupText(lookup, l10nOf(context));
      _sendAddressStyle = lookup?.resolution == null ? .TEXT60 : .PRIMARY;
    });
  }

  void _putNameInAddressField(String text) {
    _addressController.text = text.trim();
    _addressFocusNode.unfocus();
    setState(() {
      _isContact = false;
      _contacts = [];
      _addressValidationText = '';
      _sendAddressStyle = .TEXT60;
      _pasteButtonVisible = false;
      _contactButtonVisible = false;
      _addressValidAndUnfocused = false;
    });
    _nameResolver.resolve(text);
  }

  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(themeProvider);
    final l10n = l10nOf(context);
    final nameProven =
        _nameResolver.resolvedFor(_addressController.text) != null;
    final styles = ref.watch(stylesProvider);

    Future<void> scanQrCode() async {
      FocusManager.instance.primaryFocus?.unfocus();

      final qrCode = await UserDataUtil.scanQrCode(context);
      final qrData = qrCode?.code;
      if (qrData == null) {
        return;
      }

      final prefix = ref.read(addressPrefixProvider);
      final uri = KaspaUri.tryParse(qrData, prefix: prefix);
      final address = uri?.address;
      if (address == null) {
        // A `.k` name is not a URI, but the field takes one
        if (DotkName.isName(qrData)) {
          _putNameInAddressField(qrData);
          return;
        }
        UIUtil.showSnackbar(l10n.qrInvalidAddress);
        return;
      }

      final amount = uri?.amount;
      if (amount != null) {
        _amountController.text = NumberUtil.getStringFromRaw(
          amount.raw,
          TokenInfo.kaspa.decimals,
        );
        amountRaw = amount.raw;
      }

      final note = uri?.message;
      if (note != null) {
        _noteController.text = note;
      }

      // See if this address belongs to a contact
      final contacts = ref.read(contactsProvider);
      final contact = contacts.getContactWithAddress(address.encoded);

      _addressValidationText = '';
      _pasteButtonVisible = false;
      _contactButtonVisible = false;

      if (contact == null) {
        // Not a contact
        _isContact = false;
        _sendAddressStyle = .TEXT90;
        _addressController.text = address.encoded;
        _addressValidAndUnfocused = true;
      } else {
        // Is a contact
        _isContact = true;
        _sendAddressStyle = .PRIMARY;
        _addressController.text = contact.name;
        _addressValidAndUnfocused = false;
      }

      setState(() {});
    }

    Future<void> sendAction() async {
      final validRequest = _validateRequest();
      if (!validRequest) {
        return;
      }
      final addressText = _addressController.text.trim();
      String destination;
      String? label;

      if (DotkName.isName(addressText)) {
        if (_resolvingName) {
          return;
        }
        // The name is resolved again here: what was shown while typing is a
        // display cache, never the destination
        setState(() => _resolvingName = true);
        final lookup = await _nameResolver.resolveForSend(
          addressText,
          current: () => _addressController.text,
        );
        if (!context.mounted) return;
        setState(() => _resolvingName = false);
        if (lookup == null || !_validateRequest()) {
          return;
        }

        final resolution = lookup.resolution;
        if (resolution == null) {
          setState(() {
            _addressValidationText = dotkLookupError(lookup.status, l10n);
          });
          return;
        }
        destination = resolution.address;
        label = resolution.display;
      } else if (addressText.startsWith("@")) {
        final contacts = ref.read(contactsProvider);
        // Need to make sure its a valid contact
        final contact = contacts.getContactWithName(addressText);

        if (contact == null) {
          setState(() {
            _addressValidationText = l10n.contactInvalid;
          });
          return;
        }
        destination = contact.address;
      } else {
        destination = addressText;
      }

      final prefix = ref.read(addressPrefixProvider);
      final toAddress = Address.tryParse(
        destination,
        expectedPrefix: prefix,
      );
      if (toAddress == null) {
        UIUtil.showSnackbar('Invalid destination address');
        return;
      }

      if (amountRaw == null) {
        UIUtil.showSnackbar('Invalid amount');
        return;
      }

      final text = _noteController.text;
      final note = text.isNotEmpty ? text : _note;

      final uri = KaspaUri(
        address: toAddress,
        amount: .raw(amountRaw!),
        message: note,
      );

      UIUtil.showSendFlow(context, ref: ref, uri: uri, toLabel: label);
    }

    final viewInsets = MediaQuery.viewInsetsOf(context);
    final size = MediaQuery.sizeOf(context);
    final maxWidth = max<double>(size.width - 140, 0);
    final horizontal = size.width * 0.105;

    return SheetWrapper(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,
            crossAxisAlignment: .start,
            children: [
              const SizedBox(width: 60, height: 60),
              Column(
                children: [
                  const SheetHandle(),
                  Container(
                    margin: const .only(top: 15),
                    constraints: BoxConstraints(maxWidth: maxWidth),
                    child: Column(
                      children: [
                        FittedBox(
                          fit: .scaleDown,
                          child: Text(
                            widget.title ?? l10n.send.toUpperCase(),
                            style: styles.textStyleHeader,
                            textAlign: .center,
                            maxLines: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 60, height: 60),
            ],
          ),
          Container(
            margin: const .only(top: 10, left: 30, right: 30, bottom: 4),
            child: RichText(
              textAlign: .start,
              text: TextSpan(
                text: l10n.available,
                style: styles.textStyleAccount,
              ),
            ),
          ),
          const BalanceTextWidget(),
          // A main container that holds everything
          Expanded(
            child: Container(
              margin: const .only(top: 5, bottom: 15),
              child: Stack(
                children: [
                  // A column for Enter Amount, Enter Address, Error containers and the pop up list
                  SingleChildScrollView(
                    padding: .only(bottom: max(0, viewInsets.bottom - 180)),
                    child: Stack(
                      children: [
                        Column(
                          mainAxisSize: .min,
                          children: [
                            const SizedBox(height: 35),
                            // ******* Enter Amount Container ******* //
                            getEnterAmountContainer(),
                            // ******* Enter Amount Container End ******* //

                            // ******* Enter Amount Error Container ******* //
                            Container(
                              alignment: const AlignmentDirectional(0, 0),
                              margin: const .only(top: 3),
                              child: Text(
                                _amountValidationText,
                                style: styles.textStyleParagraphThinPrimary,
                              ),
                            ),
                            // ******* Enter Amount Error Container End ******* //
                          ],
                        ),
                        // Column for Enter Address container + Enter Address Error container
                        Column(
                          mainAxisSize: .min,
                          children: [
                            Container(
                              alignment: .topCenter,
                              child: Stack(
                                alignment: .topCenter,
                                children: [
                                  Container(
                                    margin: .symmetric(
                                      horizontal: horizontal,
                                    ),
                                    alignment: .bottomCenter,
                                    constraints: const BoxConstraints(
                                      maxHeight: 174,
                                    ),
                                    // ********************************************* //
                                    // ********* The pop-up Contacts List ********* //
                                    child: ClipRRect(
                                      borderRadius: .circular(25),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: .circular(25),
                                          color: theme.backgroundDarkest,
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: .circular(25),
                                          ),
                                          margin: .only(bottom: 50),
                                          child: ListView.builder(
                                            shrinkWrap: true,
                                            padding: const .only(
                                              bottom: 0,
                                              top: 0,
                                            ),
                                            itemCount: _contacts.length,
                                            itemBuilder: (context, index) {
                                              return _buildContactItem(
                                                _contacts[index],
                                              );
                                            },
                                          ), // ********* The pop-up Contacts List End ********* //
                                          // ************************************************** //
                                        ),
                                      ),
                                    ),
                                  ),
                                  getEnterAddressContainer(),
                                ],
                              ),
                            ),

                            // ******* Enter Address Error Container ******* //
                            Container(
                              alignment: const AlignmentDirectional(0, 0),
                              // Kept inside the field's width: a resolved
                              // name wraps to a second line
                              margin: const .only(top: 3, left: 38, right: 38),
                              child: nameProven
                                  ? DotkProvenName(
                                      _addressValidationText,
                                      style:
                                          styles.textStyleParagraphThinPrimary,
                                    )
                                  : Text(
                                      _addressValidationText,
                                      textAlign: .center,
                                      style:
                                          styles.textStyleParagraphThinPrimary,
                                    ),
                            ),
                            // ******* Enter Address Error Container End ******* //
                            const SizedBox(height: 3),
                            Column(
                              children: [
                                if (hasNote)
                                  SendNoteWidget(note: _note!)
                                else
                                  getEnterNoteContainer(),
                              ],
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const ListTopGradient(),
                  const ListBottomGradient(),
                ],
              ),
            ),
          ),
          ActionButtonsWrapper(
            buttons: [
              PrimaryButton(
                title: l10n.send,
                disabled: _resolvingName,
                onPressed: sendAction,
              ),
              if (widget.uri == null)
                PrimaryOutlineButton(
                  title: l10n.scanQrCode,
                  onPressed: scanQrCode,
                )
              else
                const CancelActionButton(),
            ],
          ),
        ],
      ),
    );
  }

  // Build contact items for the list
  Widget _buildContactItem(Contact contact) {
    return Consumer(
      builder: (context, ref, _) {
        final theme = ref.watch(themeProvider);
        final styles = ref.watch(stylesProvider);

        return Column(
          mainAxisSize: .min,
          children: [
            SizedBox(
              height: 42,
              width: .infinity,
              child: TextButton(
                onPressed: () {
                  _addressController.text = contact.name;
                  FocusManager.instance.primaryFocus?.unfocus();

                  setState(() {
                    _isContact = true;
                    _contactButtonVisible = false;
                    _pasteButtonVisible = false;
                    _sendAddressStyle = .PRIMARY;
                  });
                },
                child: Text(
                  contact.name,
                  textAlign: .center,
                  style: styles.textStyleAddressPrimary,
                ),
              ),
            ),
            Container(
              margin: .symmetric(horizontal: 25),
              height: 1,
              color: theme.text03,
            ),
          ],
        );
      },
    );
  }

  /// Validate form data to see if valid
  /// @returns true if valid, false otherwise
  bool _validateRequest() {
    final l10n = l10nOf(context);

    _amountFocusNode.unfocus();
    _addressFocusNode.unfocus();
    _noteFocusNode.unfocus();

    final amountRaw = this.amountRaw;

    // Validate amount
    if (amountRaw == null) {
      setState(() {
        _amountValidationText = l10n.amountMissing;
      });
      return false;
    }

    if (amountRaw == .zero) {
      setState(() {
        _amountValidationText = l10n.amountZero;
      });
      return false;
    }

    final balanceRaw = ref.read(totalBalanceProvider).raw;

    if (amountRaw > balanceRaw) {
      setState(() {
        _amountValidationText = l10n.insufficientBalance;
      });
      return false;
    }

    final maxSend = ref.read(maxSendProvider);
    if (amountRaw > maxSend.raw) {
      showAppDialog(
        context: context,
        builder: (_) => CompoundUtxosDialog(lightMode: true),
      );
      return false;
    }

    // Validate address
    final addressText = _addressController.text.trim();
    bool isContact = addressText.startsWith('@');
    // A well-formed name is checked by resolving it, not by parsing it
    final isName = DotkName.isName(addressText);
    if (addressText.isEmpty) {
      setState(() {
        _addressValidationText = l10n.addressMising;
        _pasteButtonVisible = true;
      });
      return false;
    }
    final prefix = ref.read(addressPrefixProvider);
    final address = Address.tryParse(addressText, expectedPrefix: prefix);
    if (!isContact && !isName && address == null) {
      setState(() {
        _addressValidationText = l10n.invalidAddress;
        _pasteButtonVisible = true;
      });
      return false;
    }
    if (!isContact && !isName) {
      setState(() {
        _addressValidationText = '';
        _pasteButtonVisible = false;
      });
      _addressFocusNode.unfocus();
    }
    return true;
  }

  Widget getEnterAmountContainer() {
    return HookConsumer(builder: (context, ref, _) {
      final theme = ref.watch(themeProvider);
      final styles = ref.watch(stylesProvider);
      final l10n = l10nOf(context);

      final kaspaFormatter = ref.watch(kaspaFormatterProvider);
      final fiatFormatter = ref.watch(fiatFormatterProvider);
      final maxSend = ref.watch(maxSendProvider);
      final isMaxSend = amountRaw == maxSend.raw || maxSend.raw == .zero;

      final amount = Amount.raw(amountRaw ?? .zero);

      final fiatMode = ref.watch(fiatModeProvider);

      final hintText = (fiatMode ? l10n.enterFiatValue : l10n.enterAmount);

      useEffect(() {
        if (amountRaw != null) {
          _amountController.text = switch (fiatMode) {
            true => ref.read(fiatForAmountProvider(amount)),
            false => NumberUtil.textFieldFormatedAmount(amount),
          };
        }
        return null;
      }, [fiatMode]);

      void onValueChanged(String text) {
        final value = switch (fiatMode) {
          true => () {
              final price = ref.read(kaspaPriceProvider);
              final fiatValue = fiatFormatter.tryParse(text);
              if (price.price == .zero || fiatValue == null) {
                return null;
              }
              return (fiatValue / price.price)
                  .toDecimal(scaleOnInfinitePrecision: 8);
            }(),
          false => kaspaFormatter.tryParse(text),
        };

        if (value == null) {
          setState(() => amountRaw = null);
          return;
        }
        amountRaw = Amount.value(value).raw;
        // Always reset the error message to be less annoying
        setState(() => _amountValidationText = '');
      }

      void onMaxPressed() {
        if (isMaxSend) {
          return;
        }

        setState(() => amountRaw = maxSend.raw);

        _amountController.text = switch (fiatMode) {
          true => ref.read(fiatForAmountProvider(maxSend)),
          false => NumberUtil.textFieldFormatedAmount(maxSend),
        };

        if (_addressController.text.isEmpty) {
          _addressController.selection = TextSelection.fromPosition(
            TextPosition(offset: _addressController.text.length),
          );
          _addressFocusNode.requestFocus();
        } else {
          _amountFocusNode.unfocus();
        }
      }

      return FiatValueContainer(
        amount: amount,
        showAmount: fiatMode,
        child: AppTextField(
          focusNode: _amountFocusNode,
          controller: _amountController,
          topMargin: 15,
          cursorColor: theme.primary,
          style: styles.textStyleParagraphPrimary,
          inputFormatters: [fiatMode ? fiatFormatter : kaspaFormatter],
          onChanged: onValueChanged,
          textInputAction: .done,
          maxLines: null,
          autocorrect: false,
          hintText: _amountHint ?? hintText,
          prefixButton: TextFieldButton(
            widget: FiatModeIcon(fiatMode: fiatMode),
            onPressed: () {
              final notifier = ref.read(fiatModeProvider.notifier);
              notifier.update((state) => !state);
            },
          ),
          suffixButton: TextFieldButton(
            icon: AppIcons.max,
            onPressed: onMaxPressed,
          ),
          fadeSuffixOnCondition: true,
          suffixShowFirstCondition: !isMaxSend,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          textAlign: .center,
          onSubmitted: (text) {
            //FocusScope.of(context).unfocus();
            final prefix = ref.read(addressPrefixProvider);
            final address = Address.tryParse(
              _addressController.text,
              expectedPrefix: prefix,
            );
            if (address == null) {
              FocusScope.of(context).requestFocus(_addressFocusNode);
            }
          },
        ),
      );
    });
  }

  Widget getEnterAddressContainer() {
    return Consumer(builder: (context, ref, _) {
      final theme = ref.watch(themeProvider);
      final l10n = l10nOf(context);
      final styles = ref.watch(stylesProvider);

      return AppTextField(
        topMargin: 124,
        padding: _addressValidAndUnfocused
            ? .symmetric(horizontal: 25, vertical: 15)
            : .zero,
        focusNode: _addressFocusNode,
        controller: _addressController,
        cursorColor: theme.primary,
        inputFormatters: [
          _isContact
              ? LengthLimitingTextInputFormatter(20)
              : LengthLimitingTextInputFormatter(74),
        ],
        textInputAction: .done,
        maxLines: null,
        autocorrect: false,
        hintText: _addressHint ?? l10n.enterAddress,
        prefixButton: TextFieldButton(
          icon: AppIcons.at,
          onPressed: () {
            if (_contactButtonVisible && _contacts.isEmpty) {
              // Show menu
              FocusScope.of(context).requestFocus(_addressFocusNode);
              if (_addressController.text.isEmpty) {
                _addressController.text = "@";
                _addressController.selection = TextSelection.fromPosition(
                    TextPosition(offset: _addressController.text.length));
              }
              setState(() {
                _contacts = ref.read(contactsProvider).contacts;
              });
            }
          },
        ),
        fadePrefixOnCondition: true,
        prefixShowFirstCondition:
            _contactButtonVisible && _contacts.isEmpty,
        suffixButton: TextFieldButton(
          icon: AppIcons.paste,
          onPressed: () {
            if (!_pasteButtonVisible) {
              return;
            }
            Clipboard.getData("text/plain").then((ClipboardData? data) {
              if (data == null || data.text == null) {
                return;
              }
              if (DotkName.isName(data.text!)) {
                _putNameInAddressField(data.text!);
                return;
              }
              final prefix = ref.read(addressPrefixProvider);
              final address = Address.tryParse(
                data.text!,
                expectedPrefix: prefix,
              );
              if (address != null) {
                final contacts = ref.read(contactsProvider);
                final contact = contacts.getContactWithAddress(
                  address.encoded,
                  includeLabels: true,
                );
                if (contact == null) {
                  setState(() {
                    _isContact = false;
                    _addressValidationText = "";
                    _sendAddressStyle = .TEXT90;
                    _pasteButtonVisible = false;
                    _contactButtonVisible = false;
                  });
                  _addressController.text = address.encoded;
                  _addressFocusNode.unfocus();
                  _noteFocusNode.unfocus();
                  setState(() {
                    _addressValidAndUnfocused = true;
                  });
                } else {
                  // Is a contact
                  setState(() {
                    _isContact = true;
                    _addressValidationText = "";
                    _sendAddressStyle = .PRIMARY;
                    _pasteButtonVisible = false;
                    _contactButtonVisible = false;
                  });
                  _addressController.text = contact.name;
                }
              }
            });
          },
        ),
        fadeSuffixOnCondition: true,
        suffixShowFirstCondition: _pasteButtonVisible,
        style: _sendAddressStyle == .TEXT60
            ? styles.textStyleAddressText60
            : _sendAddressStyle == .TEXT90
                ? styles.textStyleAddressText90
                : styles.textStyleAddressPrimary,
        onChanged: (text) {
          // A `.k` name resolves while the user types, anything else is left
          // to the checks below
          _nameResolver.textChanged(text);
          if (text.isNotEmpty) {
            setState(() {
              _contactButtonVisible = false;
            });
          } else {
            setState(() {
              _contactButtonVisible = true;
            });
          }
          bool isContact = text.startsWith("@");
          // Switch to contact mode if starts with @
          if (isContact) {
            setState(() {
              _isContact = true;
            });
            final contacts = ref.read(contactsProvider);
            final matchedList = contacts.getContactsWithNameLike(text);
            setState(() => _contacts = matchedList);
          } else {
            setState(() {
              _isContact = false;
              _contacts = [];
            });
          }
          // Always reset the error message to be less annoying
          setState(() {
            _addressValidationText = '';
          });
          final prefix = ref.read(addressPrefixProvider);
          if (!isContact &&
              Address.tryParse(text, expectedPrefix: prefix) != null) {
            FocusManager.instance.primaryFocus?.unfocus();

            setState(() {
              _sendAddressStyle = .TEXT90;
              _addressValidationText = '';
              _pasteButtonVisible = false;
            });
          } else if (!isContact) {
            setState(() {
              _sendAddressStyle = .TEXT60;
              _pasteButtonVisible = true;
            });
          } else {
            final contact = ref.read(contactsProvider).getContactWithName(text);
            if (contact == null) {
              setState(() {
                _sendAddressStyle = .TEXT60;
              });
            } else {
              setState(() {
                _pasteButtonVisible = false;
                _sendAddressStyle = .PRIMARY;
              });
            }
          }
        },
        onSubmitted: (text) {
          // Don't wait out the debounce once the user is done typing
          if (DotkName.isName(text)) {
            _nameResolver.resolve(text);
          }
        },
        overrideTextFieldWidget: hasUri
            ? AddressThreeLineText(
                address: widget.uri!.address.encoded,
              )
            : _addressValidAndUnfocused
                ? GestureDetector(
                    onTap: () {
                      setState(() => _addressValidAndUnfocused = false);
                      Future.delayed(Duration(milliseconds: 50), () {
                        if (!context.mounted) return;
                        FocusScope.of(context).requestFocus(_addressFocusNode);
                      });
                    },
                    child: AddressThreeLineText(
                      address: _addressController.text,
                    ),
                  )
                : null,
      );
    });
  }

  Widget getEnterNoteContainer() {
    return Consumer(builder: (context, ref, _) {
      final theme = ref.watch(themeProvider);
      final styles = ref.watch(stylesProvider);
      final l10n = l10nOf(context);

      return Stack(
        alignment: .bottomCenter,
        children: [
          AppTextField(
            padding: _noteValidAndUnfocused
                ? const .symmetric(horizontal: 25, vertical: 15)
                : .zero,
            focusNode: _noteFocusNode,
            controller: _noteController,
            cursorColor: theme.primary,
            style: styles.textStyleParagraphPrimary,
            inputFormatters: [
              LengthLimitingTextInputFormatter(120),
            ],
            textInputAction: .done,
            maxLines: null,
            autocorrect: false,
            hintText: _noteHint ?? l10n.enterNote,
            // prefixButton: TextFieldButton(
            //   icon: AppIcons.scan,
            //   onPressed: () async {
            //     FocusManager.instance.primaryFocus?.unfocus();

            //     final qr = await UserDataUtil.scanQrCode(context);
            //     final data = qr?.code;
            //     if (data == null) {
            //       return;
            //     }

            //     _noteController.text = data;
            //     _notePasteButtonVisible = false;
            //     _noteQrButtonVisible = false;

            //     setState(() => _noteValidAndUnfocused = true);
            //   },
            // ),
            fadePrefixOnCondition: true,
            prefixShowFirstCondition: _noteQrButtonVisible,
            suffixButton: TextFieldButton(
              icon: AppIcons.paste,
              onPressed: () {
                if (!_notePasteButtonVisible) {
                  return;
                }

                Clipboard.getData("text/plain").then((ClipboardData? data) {
                  final text = data?.text;
                  if (text == null || text.isEmpty) {
                    return;
                  }
                  FocusManager.instance.primaryFocus?.unfocus();
                  _noteController.text = text;
                  _notePasteButtonVisible = false;
                  _noteQrButtonVisible = false;

                  setState(() => _noteValidAndUnfocused = true);
                });
              },
            ),
            fadeSuffixOnCondition: true,
            suffixShowFirstCondition: _notePasteButtonVisible,
            onChanged: (text) {
              if (text.isNotEmpty) {
                setState(() {
                  _noteQrButtonVisible = false;
                  _notePasteButtonVisible = false;
                });
              } else {
                setState(() {
                  _noteQrButtonVisible = true;
                  _notePasteButtonVisible = true;
                });
              }
            },
            overrideTextFieldWidget: _noteValidAndUnfocused
                ? GestureDetector(
                    onTap: () {
                      setState(() => _noteValidAndUnfocused = false);
                      Future.delayed(Duration(milliseconds: 50), () {
                        if (!context.mounted) return;
                        FocusScope.of(context).requestFocus(_noteFocusNode);
                      });
                    },
                    child: Text(
                      _noteController.text,
                      style: styles.textStyleParagraphPrimary,
                    ),
                  )
                : null,
          ),
          Visibility(
            visible: _noteHint == null && _noteController.text.isEmpty,
              child: Text(
                l10n.optionalLabel,
                style: styles.textStyleTransactionAmount.copyWith(
                  color: theme.text30,
                  fontWeight: .w100,
              ),
            ),
          ),
        ],
      );
    });
  }
}
