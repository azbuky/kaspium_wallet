import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'settings/available_language.dart';



/// Localization
class AppLocalization {
  static Locale currentLocale = Locale('en', 'US');

  static Future<AppLocalization> load(Locale locale) async {
    currentLocale = locale;
    final String name =
        locale.countryCode == null ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);

    //return initializeMessages(localeName).then((bool _) {
    Intl.defaultLocale = localeName;
    return const AppLocalization();
    //});
  }

  const AppLocalization();

  /// -- INTRO SCREEN

  String get authPinMessage {
    return Intl.message('Enter PIN to Add Wallet',
        desc: 'auth_pin_message', name: 'authPinMessage');
  }

  String get authBiometricMessage {
    return Intl.message('Authenticate to Add Wallet',
        desc: 'auth_biometric_message', name: 'authBiometricMessage');
  }

  String get emptyWalletName {
    return Intl.message('Wallet Name cannot be empty',
        desc: 'empty_wallet_name', name: 'emptyWalletName');
  }

  String get walletName {
    return Intl.message('Wallet name',
        desc: 'intro_new_wallet_name', name: 'walletName');
  }

  String get walletNameHint {
    return Intl.message('Wallet Name',
        desc: 'intro_new_wallet_name_hint', name: 'walletNameHint');
  }

  String get walletNameDescription {
    return Intl.message('Enter a name for your wallet',
        desc: 'intro_new_wallet_name_hint', name: 'walletNameHint');
  }

  /// -- END INTRO SCREEN

  /// -- WALLET SETUP

  String get walletSetupMessage {
    return Intl.message('Setting up wallet',
        desc: 'wallet_setup_message', name: 'walletSetupMessage');
  }

  String get setupFailedMessage {
    return Intl.message('Something went wrong',
        desc: 'setup_failed_message', name: 'setupFailedMessage');
  }

  String get copyErrorButton {
    return Intl.message('Copy Error',
        desc: 'copy_error_button', name: 'copyErrorButton');
  }

  String get errorMessageCopied {
    return Intl.message('Error message copied to clipboard',
        desc: 'error_message_copied', name: 'errorMessageCopied');
  }

  String get restartSetupButton {
    return Intl.message('Restart Setup',
        desc: 'restart_setup_button', name: 'restartSetupButton');
  }

  String get walletsTitle {
    return Intl.message('Wallets', desc: 'wallets_title', name: 'walletsTitle');
  }

  String get defaultWalletName {
    return Intl.message('My Wallet',
        desc: 'default_wallet_name', name: 'defaultWalletName');
  }

  String get walletSetupAddressDiscovery {
    return Intl.message('Running Address Discovery',
        desc: 'wallet_setup_address_discovery',
        name: 'walletSetupAddressDiscovery');
  }

  String get walletAddresses {
    return Intl.message(
      'Wallet Addresses',
      desc: 'wallet_addresses',
      name: 'walletAddresses',
    );
  }

  String get receiveAddress {
    return Intl.message(
      'Receive Address',
      desc: 'receive_address',
      name: 'receiveAddress',
    );
  }

  String get changeAddress {
    return Intl.message(
      'Change Address',
      desc: 'change_address',
      name: 'changeAddress',
    );
  }

  String get receiveAddressCopied {
    return Intl.message(
      'Received address copied',
      desc: 'received_address_copied',
      name: 'receivedAddressCopied',
    );
  }

  String get changeAddressCopied {
    return Intl.message(
      'Change address copied',
      desc: 'change_address_copied',
      name: 'changeAddressCopied',
    );
  }

  String get thisWallet {
    return Intl.message('#This Wallet',
        desc: 'this_wallet', name: 'thisWallet');
  }

  String get address {
    return Intl.message('Address', desc: 'address', name: 'address');
  }

  String get amount {
    return Intl.message('Amount', desc: 'amount', name: 'amount');
  }

  String get receiveIndex {
    return Intl.message('Receive Index',
        desc: 'receive_index', name: 'receiveIndex');
  }

  String get receiveIndexParam {
    return Intl.message('Receive %1',
        desc: 'receive_index_param', name: 'receiveIndexParam');
  }

  String get changeIndexParam {
    return Intl.message('Change %1',
        desc: 'change_index_param', name: 'changeIndexParam');
  }

  String get changeIndex {
    return Intl.message('Change Index',
        desc: 'change_index', name: 'changeIndex');
  }

  String get somethingWentWrong {
    return Intl.message('Something went wrong',
        desc: 'something_went_wrong', name: 'somethingWentWrong');
  }

  String get fetchingTransactions {
    return Intl.message('Fetching Transactions',
        desc: 'fetching_transactions', name: 'fetchingTransactions');
  }

  /// -- END WALLET SETUP
  ///
  /// -- SEND SHEET

  String get sendToAddressTitle {
    return Intl.message('To',
        desc: 'send_to_address_title', name: 'sendToAddressTitle');
  }

  String get feeTitle {
    return Intl.message('FEE', desc: 'fee_title', name: 'feeTitle');
  }

  String get sendTxProgressTitle {
    return Intl.message('Sending Transaction',
        desc: 'send_tx_progress_title', name: 'sendTxProgressTitle');
  }

  String get sendTxProgressDescription {
    return Intl.message('Please wait while the transaction is sent',
        desc: 'send_tx_progress_description',
        name: 'sendTxProgressDescription');
  }

  /// -- END SEND SHEET

  /// -- GENERIC ITEMS
  String get cancel {
    return Intl.message('Cancel', desc: 'dialog_cancel', name: 'cancel');
  }

  String get close {
    return Intl.message('Close', desc: 'dialog_close', name: 'close');
  }

  String get confirm {
    return Intl.message('Confirm', desc: 'dialog_confirm', name: 'confirm');
  }

  String get no {
    return Intl.message('No', desc: 'intro_new_wallet_backup_no', name: 'no');
  }

  String get YES {
    return Intl.message('YES', desc: 'uppercase_yes', name: 'YES');
  }

  String get NO {
    return Intl.message('NO', desc: 'uppercase_no', name: 'NO');
  }

  String get yes {
    return Intl.message('Yes',
        desc: 'intro_new_wallet_backup_yes', name: 'yes');
  }

  String get onStr {
    return Intl.message('On', desc: 'generic_on', name: 'onStr');
  }

  String get off {
    return Intl.message('Off', desc: 'generic_off', name: 'off');
  }

  String get send {
    return Intl.message('Send', desc: 'home_send_cta', name: 'send');
  }

  String get receive {
    return Intl.message('Receive', desc: 'home_receive_cta', name: 'receive');
  }

  String get change {
    return Intl.message('Change', desc: 'home_change_cta', name: 'change');
  }

  String get sent {
    return Intl.message('Sent', desc: 'history_sent', name: 'sent');
  }

  String get contractCall {
    return Intl.message('Contract Call',
        desc: 'history_contract_call', name: 'contractCall');
  }

  String get received {
    return Intl.message('Received', desc: 'history_received', name: 'received');
  }

  String get pending {
    return Intl.message('pending', desc: 'history_pending', name: 'pending');
  }

  String get unknown {
    return Intl.message('unknown',
        desc: 'state_tag_unknown', name: 'stateTagUnkown');
  }

  String get unconfirmed {
    return Intl.message('unconfirmed',
        desc: 'state_tag_unconfirmed', name: 'stateTagUnconfirmed');
  }

  String get confirming {
    return Intl.message('confirming',
        desc: 'state_tag_confirming', name: 'stateTagConfirming');
  }

  String get confirmations {
    return Intl.message('%1 confirmations',
        desc: 'state_tag_confirmations', name: 'stateTagConfirmations');
  }

  String get confirmed {
    return Intl.message('confirmed',
        desc: 'history_confirmed', name: 'confirmed');
  }

  String get messageHeader {
    return Intl.message('Message',
        desc: 'message_header', name: 'messageHeader');
  }

  String get tokens {
    return Intl.message('Tokens', desc: 'tokens_header', name: 'tokens');
  }

  String get transactions {
    return Intl.message('TRANSACTIONS',
        desc: 'transaction_header', name: 'transactions');
  }

  String get utxos {
    return Intl.message('UTXOs', desc: 'utxo_header', name: 'utxos');
  }

  String get transactionId {
    return Intl.message('Transaction ID',
        desc: 'transaction_id', name: 'transactionId');
  }

  String get loadingTransactions {
    return Intl.message('Loading Transactions...',
        desc: 'loading_transactions', name: 'loadingTransactions');
  }

  String get addressCopied {
    return Intl.message('Address Copied',
        desc: 'receive_copied', name: 'addressCopied');
  }

  String get contactAddressCopied {
    return Intl.message(
      '%1 address copied',
      desc: 'receive_copied_contact',
      name: 'addressCopiedForCotact',
    );
  }

  String get copyAddress {
    return Intl.message('Copy Address',
        desc: 'receive_copy_cta', name: 'copyAddress');
  }

  String get readMore {
    return Intl.message('Read More', desc: 'read_more', name: 'readMore');
  }

  String get ignore {
    return Intl.message('Ignore', desc: 'ignore', name: 'ignore');
  }

  String get dismiss {
    return Intl.message('Dismiss', desc: 'dismiss', name: 'dismiss');
  }

  String get addressShare {
    return Intl.message('Share Address',
        desc: 'receive_share_cta', name: 'addressShare');
  }

  String get addressHint {
    return Intl.message('Enter Address',
        desc: 'send_address_hint', name: 'addressHint');
  }

  String get seed {
    return Intl.message('Seed',
        desc: 'intro_new_wallet_seed_header', name: 'seed');
  }

  String get seedInvalid {
    return Intl.message('Seed is Invalid',
        desc: 'intro_seed_invalid', name: 'seedInvalid');
  }

  String get seedCopied {
    return Intl.message(
        'Seed Copied to Clipboard\nIt is pasteable for 2 minutes.',
        desc: 'intro_new_wallet_seed_copied',
        name: 'seedCopied');
  }

  String get scanQrCode {
    return Intl.message('Scan QR Code',
        desc: 'send_scan_qr', name: 'scanQrCode');
  }

  String get noQrCodeFound {
    return Intl.message('No QR code found',
        desc: 'qr_scan_no_code', name: 'noQrCodeFound');
  }

  String get emptyResult {
    return Intl.message('Empty Result',
        desc: 'qr_scan_empty_result', name: 'emptyResult');
  }

  String get checkCameraPermission {
    return Intl.message('Please check camera permissions',
        desc: 'qr_scan_no_camera', name: 'checkCameraPermission');
  }

  String get contactsImportErr {
    return Intl.message('Failed to import contacts',
        desc: 'contact_import_error', name: 'contactsImportErr');
  }

  String get viewAddress {
    return Intl.message("View Address",
        desc: "address_details", name: 'viewAddress');
  }

  String get viewTransaction {
    return Intl.message("View Transaction",
        desc: "transaction_details", name: 'viewTransaction');
  }

  String get qrInvalidSeed {
    return Intl.message("QR code does not contain a valid seed or private key",
        desc: "qr_invalid_seed", name: 'qrInvalidSeed');
  }

  String get qrInvalidAddress {
    return Intl.message("QR code does not contain a valid address",
        desc: "qr_invalid_address", name: 'qrInvalidAddress');
  }

  String get qrInvalidPermissions {
    return Intl.message("Please Grant Camera Permissions to scan QR Codes",
        desc: "User did not grant camera permissions to the app",
        name: "qrInvalidPermissions");
  }

  String get qrUnknownError {
    return Intl.message("Could not Read QR Code",
        desc: "An unknown error occurred with the QR scanner",
        name: "qrUnknownError");
  }

  /// -- END GENERIC ITEMS

  /// -- NETWORK ITEMS

  String get networkHeader {
    return Intl.message('Network',
        desc: 'network_header', name: 'networkHeader');
  }

  String get nodeAddress {
    return Intl.message(
      'Kaspa Node',
      desc: 'node_address',
      name: 'nodeAddress',
    );
  }

  String get addNode {
    return Intl.message("Add Node", desc: "add_node", name: 'addNode');
  }

  String get add {
    return Intl.message("Add", desc: "add", name: 'add');
  }

  String get addNodeFailedMessage {
    return Intl.message("Failed: %1", desc: "failed", name: 'failedMessage');
  }

  /// -- MAIN CARD

  String get scanQrCodeError {
    return Intl.message("Failed to parse qr code",
        desc: "scan_qr_code_error", name: 'scanQrCodeError');
  }

  String get totalValue {
    return Intl.message("Total Value", desc: "total_value", name: 'totalValue');
  }

  /// -- END MAIN CARD

  /// -- CONTACT ITEMS

  String get removeContact {
    return Intl.message('Remove Contact',
        desc: 'contact_remove_btn', name: 'removeContact');
  }

  String get removeContactConfirmation {
    return Intl.message('Are you sure you want to delete %1?',
        desc: 'contact_remove_sure', name: 'removeContactConfirmation');
  }

  String get contactHeader {
    return Intl.message('Contact',
        desc: 'contact_view_header', name: 'contactHeader');
  }

  String get contactsHeader {
    return Intl.message('Contacts',
        desc: 'contact_header', name: 'contactsHeader');
  }

  String get addContact {
    return Intl.message('Add Contact',
        desc: 'contact_add_button', name: 'addContact');
  }

  String get contactNameHint {
    return Intl.message('Enter a Name @',
        desc: 'contact_name_hint', name: 'contactNameHint');
  }

  String get contactInvalid {
    return Intl.message("Invalid Contact Name",
        desc: 'contact_invalid_name', name: 'contactInvalid');
  }

  String get noContactsExport {
    return Intl.message("There's no contacts to export.",
        desc: 'contact_export_none', name: 'noContactsExport');
  }

  String get noContactsImport {
    return Intl.message("No new contacts to import.",
        desc: 'contact_import_none', name: 'noContactsImport');
  }

  String get contactsImportSuccess {
    return Intl.message("Sucessfully imported %1 contacts.",
        desc: 'contact_import_success', name: 'contactsImportSuccess');
  }

  String get contactAdded {
    return Intl.message("%1 added to contacts.",
        desc: 'contact_added', name: 'contactAdded');
  }

  String get contactRemoved {
    return Intl.message("%1 has been removed from contacts!",
        desc: 'contact_removed', name: 'contactRemoved');
  }

  String get contactNameMissing {
    return Intl.message("Choose a Name for this Contact",
        desc: 'contact_name_missing', name: 'contactNameMissing');
  }

  String get contactExists {
    return Intl.message("Contact Already Exists",
        desc: 'contact_name_exists', name: 'contactExists');
  }

  /// -- END CONTACT ITEMS

  /// -- INTRO ITEMS
  String get backupYourSeed {
    return Intl.message('Backup your seed',
        desc: 'intro_new_wallet_seed_backup_header', name: 'backupYourSeed');
  }

  String get backupSeedConfirm {
    return Intl.message('Are you sure that you backed up your wallet seed?',
        desc: 'intro_new_wallet_backup', name: 'backupSeedConfirm');
  }

  String get seedBackupInfo {
    return Intl.message(
        "Below is your wallet's seed. It is crucial that you backup your seed and never store it as plaintext or a screenshot.",
        desc: 'intro_new_wallet_seed',
        name: 'seedBackupInfo');
  }

  String get copySeed {
    return Intl.message("Copy Seed", desc: 'copy_seed_btn', name: 'copySeed');
  }

  String get seedCopiedShort {
    return Intl.message("Seed Copied",
        desc: 'seed_copied_btn', name: 'seedCopiedShort');
  }

  String get importSeed {
    return Intl.message("Import Seed",
        desc: 'intro_seed_header', name: 'importSeed');
  }

  String get importSeedHint {
    return Intl.message("Please enter your seed below.",
        desc: 'intro_seed_info', name: 'importSeedHint');
  }

  String get welcomeText {
    return Intl.message(
        "Welcome to Kaspium. To begin, you may create a new wallet or import an existing one.",
        desc: 'intro_welcome_title',
        name: 'welcomeText');
  }

  String get newWallet {
    return Intl.message("New Wallet",
        desc: 'intro_welcome_new_wallet', name: 'newWallet');
  }

  String get importWallet {
    return Intl.message("Import Wallet",
        desc: 'intro_welcome_have_wallet', name: 'importWallet');
  }

  /// -- END INTRO ITEMS

  /// -- SEND ITEMS
  String get sentTo {
    return Intl.message("Sent to", desc: 'sent_to', name: 'sentTo');
  }

  String get sending {
    return Intl.message("Send", desc: 'send_send', name: 'send');
  }

  String get to {
    return Intl.message("To", desc: 'send_to', name: 'to');
  }

  String get toAddress {
    return Intl.message("To Address",
        desc: 'send_to_address', name: 'toAddress');
  }

  String get sendConfirm {
    return Intl.message(
      "Send",
      desc: 'send_auth_description',
      name: 'sendConfirm',
    );
  }

  String get callContractConfirm {
    return Intl.message(
      "Call Contract",
      desc: 'call_contract_auth_description',
      name: 'callContractConfirm',
    );
  }

  String get createContractConfirm {
    return Intl.message(
      "Create Contract",
      desc: 'create_contract_auth_description',
      name: 'createContractConfirm',
    );
  }

  String get amountConfirm {
    return Intl.message(
      "Amount %1 %2",
      desc: 'auth_amount_description',
      name: 'authAmountConfirm',
    );
  }

  String get feeConfirm {
    return Intl.message(
      "Fee %1 %2",
      desc: 'call_contract_fee_description',
      name: 'callContractFeeConfirm',
    );
  }

  String get sendError {
    return Intl.message("An error occurred. Please try again.",
        desc: 'send_generic_error', name: 'sendError');
  }

  String get enterAmount {
    return Intl.message("Enter Amount",
        desc: 'send_amount_hint', name: 'enterAmount');
  }

  String get enterAddress {
    return Intl.message("Enter Address",
        desc: 'enter_address', name: 'enterAddress');
  }

  String get enterMemo {
    return Intl.message("Enter Note", desc: 'enter_memo', name: 'enterMemo');
  }

  String get invalidAddress {
    return Intl.message("Address entered was invalid",
        desc: 'send_invalid_address', name: 'invalidAddress');
  }

  String get addressMising {
    return Intl.message("Please Enter an Address",
        desc: 'send_enter_address', name: 'addressMising');
  }

  String get amountMissing {
    return Intl.message("Please Enter an Amount",
        desc: 'send_enter_amount', name: 'amountMissing');
  }

  String get amountZero {
    return Intl.message("Amount can't be zero",
        desc: 'send_zero_amount', name: 'amountZero');
  }

  String get insufficientBalance {
    return Intl.message("Insufficient Balance",
        desc: 'send_insufficient_balance', name: 'insufficientBalance');
  }

  String get insufficientBalanceDetails {
    return Intl.message(
      "'You don\'t have enough KAS for this transaction',",
      desc: 'send_insufficient_balance_details',
      name: 'insufficientBalanceDetails',
    );
  }

  String get sendFrom {
    return Intl.message("Send From", desc: 'send_title', name: 'sendFrom');
  }

  String get sendNote {
    return Intl.message("NOTE", desc: 'send_note', name: 'sendNote');
  }

  String get available {
    return Intl.message("Available", desc: 'send_available', name: 'available');
  }

  String get invalidDestinationAddress {
    return Intl.message("Invalid Destination Address",
        desc: 'send_invalid_destination_address',
        name: 'invalidDestinationAddress');
  }

  String get invalidAmount {
    return Intl.message("Invalid Amount",
        desc: 'send_invalid_amount', name: 'invalidAmount');
  }

  /// -- END SEND ITEMS

  /// -- PIN SCREEN
  String get pinCreateTitle {
    return Intl.message("Create a 6-digit PIN",
        desc: 'pin_create_title', name: 'pinCreateTitle');
  }

  String get pinConfirmTitle {
    return Intl.message("Confirm your PIN",
        desc: 'pin_confirm_title', name: 'pinConfirmTitle');
  }

  String get pinEnterTitle {
    return Intl.message("Enter PIN",
        desc: 'pin_enter_title', name: 'pinEnterTitle');
  }

  String get pinConfirmError {
    return Intl.message("Pins do not match",
        desc: 'pin_confirm_error', name: 'pinConfirmError');
  }

  String get pinInvalid {
    return Intl.message("Invalid PIN entered",
        desc: 'pin_error', name: 'pinInvalid');
  }

  /// -- END PIN SCREEN

  /// -- SETTINGS ITEMS

  String get themeHeader {
    return Intl.message("Theme", desc: 'theme_header', name: 'themeHeader');
  }

  String get authMethod {
    return Intl.message("Authentication Method",
        desc: 'settings_disable_fingerprint', name: 'authMethod');
  }

  String get pinMethod {
    return Intl.message("PIN", desc: 'settings_pin_method', name: 'pinMethod');
  }

  String get privacyPolicy {
    return Intl.message("Privacy Policy",
        desc: 'settings_privacy_policy', name: 'privacyPolicy');
  }

  String get biometricsMethod {
    return Intl.message("Biometrics",
        desc: 'settings_fingerprint_method', name: 'biometricsMethod');
  }

  String get currency {
    return Intl.message("Currency",
        desc: 'A settings menu item for changing currency', name: 'currency');
  }

  String get changeCurrency {
    return Intl.message("Change Currency",
        desc: 'settings_local_currency', name: 'changeCurrency');
  }

  String get language {
    return Intl.message("Language",
        desc: 'settings_change_language', name: 'language');
  }

  String get blockExplorer {
    return Intl.message("Block Explorer",
        desc: 'settings_change_block_explorer', name: 'blockExplorer');
  }

  String get shareKaspium {
    return Intl.message("Share Kaspium",
        desc: 'settings_share', name: 'shareKaspium');
  }

  String get shareKaspiumText {
    return Intl.message(
      "Check out Kaspium - Kaspa Mobile Wallet." +
          "\nWebsite - kaspium.io\nTwitter - twitter.com/kaspium",
      desc: 'share_text',
      name: 'shareKaspiumText',
    );
  }

  String get shareKaspiumSubject {
    return Intl.message(
      "Check out Kaspium Wallet",
      desc: 'share_subject',
      name: 'shareKaspiumSubject',
    );
  }

  String get logout {
    return Intl.message("Logout", desc: 'settings_logout', name: 'logout');
  }

  String get logoutOrSwitchWallet {
    return Intl.message("Logout / Switch Wallet",
        desc: 'settings_logout_or_switch_wallet', name: 'logoutOrSwitchWallet');
  }

  String get logoutDialogContent {
    return Intl.message(
      'Are you sure you want to logout from this wallet?',
      desc: 'logout_dialog_content',
      name: 'logoutDialogContent',
    );
  }

  String get loggingOutMessage {
    return Intl.message(
      'Logging out...',
      desc: 'logging_out_message',
      name: 'loggingOutMessage',
    );
  }

  String get rootWarning {
    return Intl.message(
        'It appears your device is "rooted", "jailbroken", or modified in a way that compromises security. It is recommended that you reset your device to its original state before proceeding.',
        desc:
            "Shown to users if they have a rooted Android device or jailbroken iOS device",
        name: 'rootWarning');
  }

  String get iUnderstandTheRisks {
    return Intl.message("I Understand the Risks",
        desc:
            "Shown to users if they have a rooted Android device or jailbroken iOS device",
        name: 'iUnderstandTheRisks');
  }

  String get exit {
    return Intl.message("Exit",
        desc: "Exit action, like a button", name: 'exit');
  }

  String get warning {
    return Intl.message("Warning",
        desc: 'settings_logout_alert_title', name: 'warning');
  }

  String get removeWalletDetail {
    return Intl.message(
        "Removing this wallet will remove the Secret Phrase and all wallet-related data from this device. If the Secret Phrase is not backed up, you will never be able to access your funds again.",
        desc: 'remove_wallet_alert_message',
        name: 'removeWallet');
  }

  String get removeWalletAction {
    return Intl.message("Remove Wallet",
        desc: 'remove_wallet_alert_confirm_cta', name: 'removeWallet');
  }

  String get areYouSure {
    return Intl.message("Are you sure?",
        desc: 'settings_logout_warning_title', name: 'logoutAreYouSure');
  }

  String get removeWalletReassurance {
    return Intl.message(
        "As long as you've backed up the Secret Phrase you have nothing to worry about.",
        desc: 'settings_logout_warning_message',
        name: 'logoutReassurance');
  }

  String get settingsHeader {
    return Intl.message("Settings",
        desc: 'settings_title', name: 'settingsHeader');
  }

  String get preferences {
    return Intl.message("Preferences",
        desc: 'settings_preferences_header', name: 'preferences');
  }

  String get manage {
    return Intl.message("Manage",
        desc: 'settings_manage_header', name: 'manage');
  }

  String get backupSeed {
    return Intl.message("Backup Seed",
        desc: 'settings_backup_seed', name: 'backupSeed');
  }

  String get fingerprintSeedBackup {
    return Intl.message("Authenticate to Backup Secret Phrase.",
        desc: 'settings_fingerprint_title', name: 'fingerprintSeedBackup');
  }

  String get pinSeedBackup {
    return Intl.message("Enter PIN to Backup Secret Phrase",
        desc: 'settings_pin_title', name: 'pinSeedBackup');
  }

  String get systemDefault {
    return Intl.message("System Default",
        desc: 'settings_default_language_string', name: 'systemDefault');
  }

  String get notifications {
    return Intl.message("Notifications",
        desc: 'notifications_settings', name: 'notifications');
  }

  String get natricon {
    return Intl.message("Natricon",
        desc: 'natricon_settings', name: 'natricon');
  }

  String get notificationTitle {
    return Intl.message("Received %1 VITE",
        desc: 'notification_title', name: 'notificationTitle');
  }

  String get notificationBody {
    return Intl.message("Open Kaspium to view this transaction",
        desc: 'notification_body', name: 'notificationBody');
  }

  String get notificationHeaderSupplement {
    return Intl.message("Tap to open",
        desc: 'notificaiton_header_suplement',
        name: 'notificationHeaderSupplement');
  }

  String get donate {
    return Intl.message("Donate", desc: 'settings_donate', name: 'donate');
  }

  String get kaspaDevFund {
    return Intl.message("Kaspa Dev Fund",
        desc: 'kaspa_dev_fund', name: 'kaspaDevFund');
  }

  /// -- END SETTINGS ITEMS

  /// -- TRANSFER
  // Settings
  String get settingsTransfer {
    return Intl.message("Load from Paper Wallet",
        desc: 'settings_transfer', name: 'settingsTransfer');
  }

  String get transferError {
    return Intl.message(
        "An error has occurred during the transfer. Please try again later.",
        desc: 'transfer_error',
        name: 'transferError');
  }

  String get paperWallet {
    return Intl.message("Paper Wallet",
        desc: 'paper_wallet', name: 'paperWallet');
  }

  String get kaspiumWallet {
    return Intl.message("Kaspium Wallet",
        desc: 'kaspa_wallet', name: 'kaspiumWallet');
  }

  String get manualEntry {
    return Intl.message("Manual Entry",
        desc: 'transfer_manual_entry', name: 'manualEntry');
  }

  String get mnemonicPhrase {
    return Intl.message("Mnemonic Phrase",
        desc: 'mnemonic_phrase', name: 'mnemonicPhrase');
  }

  String get rawSeed {
    return Intl.message("Raw Seed", desc: 'raw_seed', name: 'rawSeed');
  }

  // Initial Screen

  String get transferHeader {
    return Intl.message("Transfer Funds",
        desc: 'transfer_header', name: 'transferHeader');
  }

  String get transfer {
    return Intl.message("Transfer", desc: 'transfer_btn', name: 'transfer');
  }

  String get transferManualHint {
    return Intl.message("Please enter the seed below.",
        desc: 'transfer_hint', name: 'transferManualHint');
  }

  String get transferIntro {
    return Intl.message(
        "This process will transfer the funds from a paper wallet to your Kaspium wallet.\n\nTap the \"%1\" button to start.",
        desc: 'transfer_intro',
        name: 'transferIntro');
  }

  String get transferQrScanHint {
    return Intl.message("Scan a Nano \nseed or private key",
        desc: 'transfer_qr_scan_hint', name: 'transferQrScanHint');
  }

  String get transferQrScanError {
    return Intl.message("This QR code does not contain a valid seed.",
        desc: 'transfer_qr_scan_error', name: 'transferQrScanError');
  }

  String get transferNoFunds {
    return Intl.message("This seed does not have any VITE on it",
        desc: 'transfer_no_funds_toast', name: 'transferNoFunds');
  }

  // Confirm screen

  String get transferConfirmInfo {
    return Intl.message(
        "A wallet with a balance of %1 VITE has been detected.\n",
        desc: 'transfer_confirm_info_first',
        name: 'transferConfirmInfo');
  }

  String get transferConfirmInfoSecond {
    return Intl.message("Tap confirm to transfer the funds.\n",
        desc: 'transfer_confirm_info_second',
        name: 'transferConfirmInfoSecond');
  }

  String get transferConfirmInfoThird {
    return Intl.message("Transfer may take several seconds to complete.",
        desc: 'transfer_confirm_info_third', name: 'transferConfirmInfoThird');
  }

  String get transferLoading {
    return Intl.message("Transferring",
        desc: 'transfer_loading_text', name: 'transferLoading');
  }

  // Compelte screen

  String get transferComplete {
    return Intl.message(
        "%1 VITE successfully transferred to your Kaspium Wallet.\n",
        desc: 'transfer_complete_text',
        name: 'transferComplete');
  }

  String get transferClose {
    return Intl.message("Tap anywhere to close the window.",
        desc: 'transfer_close_text', name: 'transferClose');
  }

  // -- END TRANSFER ITEMS

  String get removeWalletPinMessage {
    return Intl.message("'Enter PIN to Remove Wallet",
        desc: 'remove_wallet_pin_message', name: 'removeWalletPinMessage');
  }

  String get removeWalletBiometricsMessage {
    return Intl.message("Authenticate to Remove Wallet",
        desc: 'remove_wallet_biometrics_message',
        name: 'removeWalletBiometricsMessage');
  }

  // Scan

  String get scanInstructions {
    return Intl.message("Scan a Kaspa \naddress QR code",
        desc: 'scan_send_instruction_label', name: 'scanInstructions');
  }

  /// -- LOCK SCREEN

  String get unlockPin {
    return Intl.message("Enter PIN to Unlock Wallet",
        desc: 'unlock_kaspium_pin', name: 'unlockPin');
  }

  String get unlockBiometrics {
    return Intl.message("Authenticate to Unlock Wallet",
        desc: 'unlock_kaspium_bio', name: 'unlockBiometrics');
  }

  String get lockAppSetting {
    return Intl.message("Authenticate on Launch",
        desc: 'authenticate_on_launch', name: 'lockAppSetting');
  }

  String get locked {
    return Intl.message("Locked", desc: 'lockedtxt', name: 'locked');
  }

  String get unlock {
    return Intl.message("Unlock", desc: 'unlocktxt', name: 'unlock');
  }

  String get tooManyFailedAttempts {
    return Intl.message("Too many failed unlock attempts.",
        desc: 'fail_toomany_attempts', name: 'tooManyFailedAttempts');
  }

  /// -- END LOCK SCREEN

  /// -- ADVANCED MENU
  String get advancedHeader {
    return Intl.message(
      "Advanced",
      desc: 'advanced_header',
      name: 'advancedHeader',
    );
  }

  String get manageTokens {
    return Intl.message(
      "Manage Tokens",
      desc: 'manage_tokens_menu_item',
      name: 'manageTokens',
    );
  }

  String get tokenSort {
    return Intl.message(
      "Sort Tokens By",
      desc: 'token_order_menu_item',
      name: 'tokenOrder',
    );
  }

  /// -- END ADVANCED MENU

  /// -- SECURITY SETTINGS SUBMENU

  String get securityHeader {
    return Intl.message("Security",
        desc: 'security_header', name: 'securityHeader');
  }

  String get autoLockHeader {
    return Intl.message("Automatically Lock",
        desc: 'auto_lock_header', name: 'autoLockHeader');
  }

  String get xMinutes {
    return Intl.message("After %1 minutes",
        desc: 'after_minutes', name: 'xMinutes');
  }

  String get xMinute {
    return Intl.message("After %1 minute",
        desc: 'after_minute', name: 'xMinute');
  }

  String get instantly {
    return Intl.message("Instantly", desc: 'insantly', name: 'instantly');
  }

  String get setWalletPassword {
    return Intl.message("Set Wallet Password",
        desc: 'Allows user to encrypt wallet with a password',
        name: 'setWalletPassword');
  }

  String get setPassword {
    return Intl.message("Set Password",
        desc: 'A button that sets the wallet password', name: 'setPassword');
  }

  String get disableWalletPassword {
    return Intl.message("Disable Wallet Password",
        desc: 'Allows user to deencrypt wallet with a password',
        name: 'disableWalletPassword');
  }

  String get encryptionFailedError {
    return Intl.message("Failed to set a wallet password",
        desc: 'If encrypting a wallet raised an error',
        name: 'encryptionFailedError');
  }

  String get setPasswordSuccess {
    return Intl.message("Wallet password has been set",
        desc: 'Setting a Wallet Password was successful',
        name: 'setPasswordSuccess');
  }

  String get disablePasswordSuccess {
    return Intl.message("Password has been disabled",
        desc: 'Disabling a Wallet Password was successful',
        name: 'disablePasswordSuccess');
  }

  /// -- END SECURITY SETTINGS SUBMENU

  /// -- EXAMPLE HOME SCREEN CARDS

  String get exampleCardIntro {
    return Intl.message(
        "This is the transactions tab. Once you send or receive a transaction, it will show up here",
        desc: 'example_card_intro',
        name: 'exampleCardIntro');
  }

  String get emptyCardIntroUtxos {
    return Intl.message(
        "This is the UTXOs tab. All UTXOs in your wallet will appear here",
        desc: 'example_card_intro',
        name: 'exampleCardIntro');
  }

  String get exampleCardLittle {
    return Intl.message("A little",
        desc: 'example_card_little', name: 'exampleCardLittle');
  }

  String get exampleCardLot {
    return Intl.message("A lot of",
        desc: 'example_card_lot', name: 'exampleCardLot');
  }

  String get exampleCardTo {
    return Intl.message("to someone",
        desc: 'example_card_to', name: 'exampleCardTo');
  }

  String get exampleCardFrom {
    return Intl.message("from someone",
        desc: 'example_card_from', name: 'exampleCardFrom');
  }

  /// -- END EXAMPLE HOME SCREEN CARDS

  /// -- START MULTI-ACCOUNT

  String get newAddress {
    return Intl.message("New Address", desc: "New address", name: 'newAddress');
  }

  String get defaultAccountName {
    return Intl.message("Address 1",
        desc: "Default account name", name: 'defaultAccountName');
  }

  String get defaultNewAccountName {
    return Intl.message("Receive %1",
        desc: "Default new account name - e.g. Account 1",
        name: 'defaultNewAccountName');
  }

  String get newAccountIntro {
    return Intl.message(
        "This is your the transactions tab. Once you send or receive a transaction, it will show up like this:",
        desc: 'Alternate account intro card',
        name: 'newAccountIntro');
  }

  String get account {
    return Intl.message("Account", desc: "Account text", name: 'account');
  }

  String get accounts {
    return Intl.message("Accounts", desc: "Accounts header", name: 'accounts');
  }

  String get addAccount {
    return Intl.message("Add Account",
        desc: "Default new account name - e.g. Account 1", name: 'addAccount');
  }

  String get hideAccountHeader {
    return Intl.message("Hide Account?",
        desc: "Confirmation dialog header", name: 'hideAccountHeader');
  }

  String get hideAccountText {
    return Intl.message(
        "Are you sure you want to hide this account? You can re-add it later by tapping the \"%1\" button.",
        desc: "Remove account dialog body",
        name: 'removeAccountText');
  }

  /// -- END MULTI-ACCOUNT

  String get tapToReveal {
    return Intl.message("Tap to reveal",
        desc: "Tap to reveal hidden content", name: 'tapToReveal');
  }

  String get tapToHide {
    return Intl.message("Tap to hide",
        desc: "Tap to hide content", name: 'tapToHide');
  }

  String get copied {
    return Intl.message("Copied",
        desc: "Copied (to clipboard)", name: 'copied');
  }

  String get copy {
    return Intl.message("Copy", desc: "Copy (to clipboard)", name: 'copy');
  }

  String get seedDescription {
    return Intl.message(
        "A seed bears the same information as a secret phrase, but in a machine-readable way. As long as you have one of them backed up, you'll have access to your funds.",
        desc: "Describing what a seed is",
        name: 'seedDescription');
  }

  String get clipboardEmpty {
    return Intl.message("Clipboard is empty",
        desc: "Clipboard has no data", name: 'clipboardEmpty');
  }

  String get importSecretPhrase {
    return Intl.message("Import Secret Phrase",
        desc: "Header for restoring using mnemonic",
        name: 'importSecretPhrase');
  }

  String get importSecretPhraseHint {
    return Intl.message("Please enter your 24 word secret phrase below.",
        desc: 'helper message for importing mnemnic',
        name: 'importSecretPhraseHint');
  }

  String get invalidChecksumMessage {
    return Intl.message(
        "Please check that your Secret Phrase\n is entered correctly!",
        desc: 'Checksum error message',
        name: 'invalidChecksumMessage');
  }

  String get qrMnemonicError {
    return Intl.message("QR does not contain a valid secret phrase",
        desc: 'When QR does not contain a valid mnemonic phrase',
        name: 'qrMnemonicError');
  }

  String get pasteMnemonicError {
    return Intl.message('Clipboard content is not a valid secret phrase',
        desc: 'When clipboard content is not a valid mnemonic phrase',
        name: 'pasteMnemonicError');
  }

  String get mnemonicInvalidWord {
    return Intl.message("%1 is not a valid word",
        desc: 'A word that is not part of bip39', name: 'mnemonicInvalidWord');
  }

  String get mnemonicSizeError {
    return Intl.message("Secret phrase may only contain 12 or 24 words",
        desc: 'err', name: 'mnemonicSizeError');
  }

  String get secretPhrase {
    return Intl.message("Secret Phrase",
        desc: 'Secret (mnemonic) phrase', name: 'secretPhrase');
  }

  String get backupConfirmButton {
    return Intl.message("I've Backed It Up",
        desc: 'Has backed up seed confirmation button',
        name: 'backupConfirmButton');
  }

  String get secretInfoHeader {
    return Intl.message("Safety First!",
        desc: 'secret info header', name: 'secretInfoHeader');
  }

  String get secretInfo {
    return Intl.message(
        "In the next screen, you will see your secret phrase. It is a password to access your funds. It is crucial that you back it up and never share it with anyone.",
        desc: 'Description for seed',
        name: 'secretInfo');
  }

  String get secretWarning {
    return Intl.message(
        "If you lose your device or uninstall the application, you'll need your secret phrase to recover your funds!",
        desc: 'Secret warning',
        name: 'secretWarning');
  }

  String get gotItButton {
    return Intl.message("Got It!",
        desc: 'Got It! Acknowledgement button', name: 'gotItButton');
  }

  String get ackBackedUp {
    return Intl.message(
        "Are you sure that you've backed up your secret phrase?",
        desc: 'Ack backed up',
        name: 'ackBackedUp');
  }

  String get secretPhraseCopy {
    return Intl.message("Copy Secret Phrase",
        desc: 'Copy secret phrase to clipboard', name: 'secretPhraseCopy');
  }

  String get secretPhraseCopied {
    return Intl.message("Secret Phrase Copied",
        desc: 'Copied secret phrase to clipboard', name: 'secretPhraseCopied');
  }

  String get import {
    return Intl.message("Import", desc: "Generic import", name: 'import');
  }

  String get export {
    return Intl.message("Export", desc: "Generic export", name: 'export');
  }

  String get importSeedInstead {
    return Intl.message("Import Seed Instead",
        desc: "importSeedInstead", name: 'importSeedInstead');
  }

  String get switchToSeed {
    return Intl.message("Switch to Seed",
        desc: "switchToSeed", name: 'switchToSeed');
  }

  String get backupSecretPhrase {
    return Intl.message("Backup Secret Phrase",
        desc: 'backup seed', name: 'backupSecretPhrase');
  }

  /// -- NODE SETTINGS

  String get nodeNameEmpty {
    return Intl.message("Node name cannot be empty",
        desc: 'Node name cannot be empty', name: 'nodeNameEmpty');
  }

  String get nodeUrlInvalid {
    return Intl.message("Invalid node URL",
        desc: 'Invalid node URL', name: 'nodeUrlInvalid');
  }

  String get addingNodeTitle {
    return Intl.message("Adding Node",
        desc: 'Adding Node', name: 'addingNodeTitle');
  }

  String get addingNodeMessage {
    return Intl.message("Please wait while contacting node",
        desc: 'Please wait while contacting node', name: 'addingNodeMessage');
  }

  String get addNodeSuccess {
    return Intl.message("Node Added Successfully",
        desc: 'Node Added Successfully', name: 'nodeAddedTitle');
  }

  String get addNodeFailed {
    return Intl.message("Failed to add Kaspa node",
        desc: 'Failed to add Kaspa node', name: 'addNodeFailed');
  }

  String get nodeNameHint {
    return Intl.message("Enter Node Name",
        desc: 'Enter Node Name', name: 'nodeNameHint');
  }

  String get nodeUrlHint {
    return Intl.message("Enter Node URL",
        desc: 'Enter Node URL', name: 'nodeUrlHint');
  }

  String get nodeDeleteTitle {
    return Intl.message("Delete Kaspa Node Config?",
        desc: 'Delete Kaspa Node Config?', name: 'nodeDeleteTitle');
  }

  String get nodeDeleteMessage {
    return Intl.message(
      "Are you sure you want to delete",
      desc: 'Are you sure you want to delete',
      name: 'nodeDeleteMessage',
    );
  }

  String get nodesSheetTitle {
    return Intl.message(
      "Kaspa Nodes",
      desc: 'Kaspa Nodes',
      name: 'nodesSheetTitle',
    );
  }

  /// -- END NODE SETTINGS

  /// -- SEED PROCESS

  /// -- END SEED PROCESS

  /// HINTS
  String get createPasswordHint {
    return Intl.message("Create a password",
        desc: 'A text field hint that tells the user to create a password',
        name: 'createPasswordHint');
  }

  String get confirmPasswordHint {
    return Intl.message("Confirm the password",
        desc: 'A text field hint that tells the user to confirm the password',
        name: 'confirmPasswordHint');
  }

  String get enterPasswordHint {
    return Intl.message("Enter your password",
        desc: 'A text field hint that tells the users to enter their password',
        name: 'enterPasswordHint');
  }

  String get passwordsDontMatch {
    return Intl.message("Passwords do not match",
        desc: 'An error indicating a password has been confirmed incorrectly',
        name: 'passwordsDontMatch');
  }

  String get passwordBlank {
    return Intl.message("Password cannot be empty",
        desc: 'An error indicating a password has been entered incorrectly',
        name: 'passwordBlank');
  }

  String get invalidPassword {
    return Intl.message("Invalid Password",
        desc: 'An error indicating a password has been entered incorrectly',
        name: 'invalidPassword');
  }

  /// HINTS END

  /// PARAGRAPS
  String get passwordWillBeRequiredToOpenParagraph {
    return Intl.message("This password will be required to open this wallet.",
        desc:
            'A paragraph that tells the users that the created password will be required to open the wallet.',
        name: 'passwordWillBeRequiredToOpenParagraph');
  }

  String get passwordNoLongerRequiredToOpenParagraph {
    return Intl.message(
      "You will not need a password to open this wallet.",
      desc:
          'An info paragraph that tells the user a password will no longer be needed to open the wallet',
      name: 'passwordNoLongerRequiredToOpenParagraph',
    );
  }

  String get createPasswordFirstParagraph {
    return Intl.message(
        "You can create a password to add additional security to your wallet.",
        desc:
            'A paragraph that tells the users that they can create a password for additional security.',
        name: 'createPasswordFirstParagraph');
  }

  String get createPasswordSecondParagraph {
    return Intl.message(
        "Password is optional, and your wallet will be protected with your PIN or biometrics regardless.",
        desc:
            'A paragraph that tells the users that the password creation is optional and the wallet will be still protected with biometrics or PIN regardless.',
        name: 'createPasswordSecondParagraph');
  }

  /// PARAGRAPS END

  /// HEADERS
  String get createAPasswordHeader {
    return Intl.message("Create a password.",
        desc: 'A paragraph that tells the users to create a password.',
        name: 'createAPasswordHeader');
  }

  String get createPasswordSheetHeader {
    return Intl.message("Create",
        desc: 'Prompt user to create a new password',
        name: 'createPasswordSheetHeader');
  }

  String get disablePasswordSheetHeader {
    return Intl.message("Disable",
        desc: 'Prompt user to disable their password',
        name: 'disablePasswordSheetHeader');
  }

  String get requireAPasswordToOpenHeader {
    return Intl.message("Require a password to open this wallet?",
        desc:
            'A paragraph that asks the users if they would like a password to be required to open the wallet.',
        name: 'requireAPasswordToOpenHeader');
  }

  /// HEADERS END

  /// BUTTONS
  String get noSkipButton {
    return Intl.message("No, Skip",
        desc: 'A button that declines and skips the mentioned process.',
        name: 'noSkipButton');
  }

  String get yesButton {
    return Intl.message("Yes",
        desc: 'A button that accepts the mentioned process.',
        name: 'yesButton');
  }

  String get nextButton {
    return Intl.message("Next",
        desc: 'A button that goes to the next screen.', name: 'nextButton');
  }

  String get goBackButton {
    return Intl.message("Go Back",
        desc: 'A button that goes to the previous screen.',
        name: 'goBackButton');
  }

  /// BUTTONS END

  /// Live chat
  String get connectingHeader {
    return Intl.message("Connecting",
        desc:
            'A header to let the user now that Kaspium is currently connecting to (or loading) live chat.',
        name: 'connectingHeader');
  }

  String get eulaUrl {
    return 'https://kaspium.io/assets/wallet/eula.html';
  }

  String get privacyUrl {
    return 'https://kaspium.io/assets/wallet/privacy-policy.html';
  }

  /// -- END NON-TRANSLATABLE ITEMS
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalization> {
  final LanguageSetting languageSetting;

  const AppLocalizationsDelegate(this.languageSetting);

  @override
  bool isSupported(Locale locale) {
    return true; //languageSetting != null;
  }

  @override
  Future<AppLocalization> load(Locale locale) {
    if (languageSetting.language == AvailableLanguage.DEFAULT) {
      return AppLocalization.load(locale);
    }
    return AppLocalization.load(Locale(languageSetting.getLocaleString()));
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalization> old) {
    return true;
  }
}
