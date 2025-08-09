import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../app_router.dart';
import '../kaspa/kaspa.dart';
import '../l10n/l10n.dart';
import '../util/formatters.dart';
import '../util/ui_util.dart';
import '../util/user_data_util.dart';
import '../widgets/address_widgets.dart';
import '../widgets/app_text_field.dart';
import '../widgets/buttons.dart';
import '../widgets/sheet_widget.dart';
import 'contact.dart';

class ContactAddSheet extends ConsumerStatefulWidget {
  final String? address;

  const ContactAddSheet({Key? key, this.address}) : super(key: key);

  _ContactAddSheetState createState() => _ContactAddSheetState();
}

class _ContactAddSheetState extends ConsumerState<ContactAddSheet> {
  final _nameFocusNode = FocusNode();
  final _addressFocusNode = FocusNode();
  final _nameController = TextEditingController();
  final _addressController = TextEditingController();

  bool _addressValid = false;
  bool _showPasteButton = true;
  bool _showNameHint = true;
  bool _showAddressHint = true;
  bool _addressValidAndUnfocused = false;
  String _nameValidationText = '';
  String _addressValidationText = '';

  @override
  void initState() {
    super.initState();

    // Add focus listeners
    // On name focus change
    _nameFocusNode.addListener(() {
      setState(() => _showNameHint = !_nameFocusNode.hasFocus);
    });
    // On address focus change
    _addressFocusNode.addListener(() {
      if (_addressFocusNode.hasFocus) {
        setState(() {
          _showAddressHint = false;
          _addressValidAndUnfocused = false;
        });
        _addressController.selection = TextSelection.fromPosition(
          TextPosition(offset: _addressController.text.length),
        );
      } else {
        setState(() {
          _showAddressHint = true;
          final prefix = ref.read(addressPrefixProvider);
          final address = Address.tryParse(
            _addressController.text,
            expectedPrefix: prefix,
          );
          if (address != null) {
            _addressValidAndUnfocused = true;
          }
        });
      }
    });
  }

  /// Return true if textfield should be shown, false if colorized should be shown
  bool _shouldShowTextField() {
    if (widget.address != null || _addressValidAndUnfocused) {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    final addressPrefix = ref.watch(addressPrefixProvider);

    return SheetWidget(
      title: l10n.addContact,
      mainWidget: Column(
        children: [
          // Enter Name Container
          AppTextField(
            topMargin: MediaQuery.of(context).size.height * 0.14,
            padding: const EdgeInsets.symmetric(horizontal: 30),
            focusNode: _nameFocusNode,
            controller: _nameController,
            textInputAction: widget.address != null
                ? TextInputAction.done
                : TextInputAction.next,
            hintText: _showNameHint ? l10n.contactNameHint : "",
            keyboardType: TextInputType.text,
            style: styles.textStyleAppTextFieldSimple,
            inputFormatters: [
              LengthLimitingTextInputFormatter(20),
              ContactFormatter()
            ],
            onSubmitted: (text) {
              final scope = FocusScope.of(context);
              if (widget.address == null) {
                final address = _addressController.text;
                final prefix = ref.read(addressPrefixProvider);
                if (!Address.isValid(address, prefix)) {
                  scope.requestFocus(_addressFocusNode);
                } else {
                  scope.unfocus();
                }
              } else {
                scope.unfocus();
              }
            },
          ),
          // Enter Name Error Container
          Container(
            margin: const EdgeInsets.only(top: 5, bottom: 5),
            child: Text(
              _nameValidationText,
              style: styles.textStyleParagraphThinPrimary,
            ),
          ),
          // Enter Address container
          AppTextField(
            padding: !_shouldShowTextField()
                ? EdgeInsets.symmetric(horizontal: 25, vertical: 15)
                : EdgeInsets.zero,
            focusNode: _addressFocusNode,
            controller: _addressController,
            style: _addressValid
                ? styles.textStyleAddressText90
                : styles.textStyleAddressText60,
            inputFormatters: [
              LengthLimitingTextInputFormatter(74),
            ],
            textInputAction: TextInputAction.done,
            maxLines: null,
            autocorrect: false,
            hintText: _showAddressHint ? l10n.addressHint : '',
            prefixButton: TextFieldButton(
              icon: AppIcons.scan,
              onPressed: () async {
                final scanResult = await UserDataUtil.scanQrCode(context);
                final data = scanResult?.code;
                if (data == null) {
                  UIUtil.showSnackbar(l10n.qrInvalidAddress, context);
                } else {
                  final address = Address.tryParse(
                    data,
                    expectedPrefix: addressPrefix,
                  );
                  if (mounted && address != null) {
                    setState(() {
                      _addressController.text = address.toString();
                      _addressValidationText = "";
                      _addressValid = true;
                      _addressValidAndUnfocused = true;
                    });
                    _addressFocusNode.unfocus();
                  }
                }
              },
            ),
            fadePrefixOnCondition: true,
            prefixShowFirstCondition: _showPasteButton,
            suffixButton: TextFieldButton(
              icon: AppIcons.paste,
              onPressed: () async {
                if (!_showPasteButton) {
                  return;
                }
                String? data =
                    await UserDataUtil.getClipboardText(DataType.ADDRESS);
                if (data != null) {
                  setState(() {
                    _addressValid = true;
                    _showPasteButton = false;
                    _addressController.text = data;
                    _addressValidAndUnfocused = true;
                  });
                  _addressFocusNode.unfocus();
                } else {
                  setState(() {
                    _showPasteButton = true;
                    _addressValid = false;
                  });
                }
              },
            ),
            fadeSuffixOnCondition: true,
            suffixShowFirstCondition: _showPasteButton,
            onChanged: (text) {
              final address = Address.tryParse(
                text,
                expectedPrefix: addressPrefix,
              );
              if (address != null) {
                setState(() {
                  _addressValid = true;
                  _showPasteButton = false;
                  _addressController.text = address.toString();
                });
                _addressFocusNode.unfocus();
              } else {
                setState(() {
                  _showPasteButton = true;
                  _addressValid = false;
                });
              }
            },
            overrideTextFieldWidget: !_shouldShowTextField()
                ? GestureDetector(
                    onTap: () {
                      if (widget.address != null) {
                        return;
                      }
                      setState(() {
                        _addressValidAndUnfocused = false;
                      });
                      Future.delayed(Duration(milliseconds: 50), () {
                        FocusScope.of(context).requestFocus(_addressFocusNode);
                      });
                    },
                    child: AddressThreeLineText(
                      address: widget.address != null
                          ? widget.address!
                          : _addressController.text,
                    ),
                  )
                : null,
          ),
          // Enter Address Error Container
          Container(
            margin: const EdgeInsets.only(top: 5, bottom: 5),
            child: Text(
              _addressValidationText,
              style: styles.textStyleParagraphThinPrimary,
            ),
          ),
        ],
      ),
      bottomWidget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          children: [
            PrimaryButton(
              title: l10n.addContact,
              onPressed: _addContact,
            ),
            const SizedBox(height: 16),
            PrimaryOutlineButton(
              title: l10n.close,
              onPressed: () => appRouter.pop(context),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _addContact() async {
    final isValid = await _validateForm();
    if (!isValid) {
      return;
    }
    final newContact = Contact(
      name: _nameController.text,
      address:
          widget.address == null ? _addressController.text : widget.address!,
    );
    final contacts = ref.read(contactsProvider);
    await contacts.addContact(newContact);
    final l10n = l10nOf(context);
    UIUtil.showSnackbar(l10n.contactAdded(newContact.name), context);
    appRouter.pop(context);
  }

  Future<bool> _validateForm() async {
    final l10n = l10nOf(context);
    final prefix = ref.read(addressPrefixProvider);
    bool isValid = true;
    // Address Validations
    // Don't validate address if it came pre-filled in
    if (widget.address == null) {
      if (_addressController.text.isEmpty) {
        isValid = false;
        setState(() {
          _addressValidationText = l10n.addressMising;
        });
      } else if (Address.tryParse(_addressController.text,
              expectedPrefix: prefix) ==
          null) {
        isValid = false;
        setState(() {
          _addressValidationText = l10n.invalidAddress;
        });
      } else {
        _addressFocusNode.unfocus();
        bool addressExists = await ref
            .read(contactsProvider)
            .contactExistsWithAddress(_addressController.text);
        if (addressExists) {
          setState(() {
            isValid = false;
            _addressValidationText = l10n.contactExists;
          });
        }
      }
    }
    // Name Validations
    if (_nameController.text.isEmpty) {
      isValid = false;
      setState(() {
        _nameValidationText = l10n.contactNameMissing;
      });
    } else {
      bool nameExists = await ref
          .read(contactsProvider)
          .contactExistsWithName(_nameController.text);
      if (nameExists) {
        setState(() {
          isValid = false;
          _nameValidationText = l10n.contactExists;
        });
      }
    }
    return isValid;
  }
}
