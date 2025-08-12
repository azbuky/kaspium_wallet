// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n_gen.dart';

// ignore_for_file: type=lint

/// The translations for Latvian (`lv`).
class AppLocalizationsLv extends AppLocalizations {
  AppLocalizationsLv([String locale = 'lv']) : super(locale);

  @override
  String get aboutTopperDescription =>
      'Topper by Uphold is an easy to use fiat-to-crypto onramp that allows users to buy cryptocurencies using a credit/debit card or with a bank account.';

  @override
  String get aboutTopperTitle => 'About Topper';

  @override
  String get accepted => 'accepted';

  @override
  String get account => 'Konts';

  @override
  String get accounts => 'Konti';

  @override
  String get ackBackedUp =>
      'Vai esat drošs ka izveidojāt rezerves kopiju slepenajai frāzei vai privātajai atslēgai?';

  @override
  String get add => 'Add';

  @override
  String get addAccount => 'Pievienot kontu';

  @override
  String get addContact => 'Pievienot kontaktu';

  @override
  String get addingNodeMessage => 'Please wait while contacting node';

  @override
  String get addingNodeTitle => 'Adding Node';

  @override
  String get addNode => 'Add Node';

  @override
  String get addNodeFailed => 'Failed to add Kaspa node';

  @override
  String addNodeFailedMessage(String error) {
    return 'Failed: $error';
  }

  @override
  String get addNodeSuccess => 'Node Added Successfully';

  @override
  String get address => 'Address';

  @override
  String get addressCopied => 'Adrese nokopēta';

  @override
  String get addressCopiedFailed => 'Failed to copy address';

  @override
  String get addressDiscovery => 'Address Discovery';

  @override
  String get addressFilterDialogOptionAllAddresses => 'View All Addresses';

  @override
  String get addressFilterDialogOptionNonZeroBalances =>
      'View Addresses With Balance';

  @override
  String get addressFilterDialogTitle => 'Address Filter';

  @override
  String get addressHint => 'Enter Address';

  @override
  String get addressMising => 'Lūdzu ievadiet adresi';

  @override
  String get addressShare => 'Kopīgot adresi';

  @override
  String get advancedHeader => 'Advanced';

  @override
  String get amount => 'Amount';

  @override
  String amountConfirm(String amount, String coin) {
    return 'Amount $amount $coin';
  }

  @override
  String get amountMissing => 'Lūdzu ievadiet daudzumu';

  @override
  String get amountZero => 'Amount can\'t be zero';

  @override
  String get areYouSure => 'Are you sure?';

  @override
  String get authBiometricMessage => 'Authenticate to Add Wallet';

  @override
  String get authMethod => 'Autentificēšanās metode';

  @override
  String get authPinMessage => 'Enter PIN to Add Wallet';

  @override
  String get autoLockHeader => 'Automātiski aizslēgt';

  @override
  String get available => 'Available';

  @override
  String get backupConfirmButton => 'Esmu izveidojis rezerves kopiju';

  @override
  String get backupSecretPhrase => 'Backup Secret Phrase';

  @override
  String get balance => 'Balance';

  @override
  String get biometricsMethod => 'Biometriskā atpazīšana';

  @override
  String get bip39Passphrase => 'BIP39 Passphrase';

  @override
  String get bip39PassphraseConfirm => 'Confirm Passphrase';

  @override
  String get bip39PassphraseEnter => 'Enter Passphrase';

  @override
  String get bip39PassphraseMismatch => 'Passphrases do not match!';

  @override
  String get bip39PassphraseNote => 'Wallet with BIP39 passphrase.';

  @override
  String get bip39PassphraseWarning =>
      'NOTE: This is not a wallet password, different BIP39 passphrases will open different wallets.';

  @override
  String get blockExplorer => 'Block Explorer';

  @override
  String get buyKaspaMessage => 'Buy \$KAS quickly & easily.';

  @override
  String get buyKaspaMessageSecondary =>
      'Service provided by Topper, Uphold\'s fiat-to-crypto onramp.';

  @override
  String get buyKaspaSubtitle => 'Via Topper by Uphold';

  @override
  String get buyKaspaTitle => 'Buy Kaspa';

  @override
  String get cancel => 'Atcelt';

  @override
  String get change => 'Change';

  @override
  String get changeAddress => 'Change Address';

  @override
  String get changeAddressCopied => 'Change address copied';

  @override
  String get changeAddressListEmpty => 'Change address list is empty';

  @override
  String get changeIndex => 'Change Index';

  @override
  String changeIndexParam(String addressIndex) {
    return 'Change $addressIndex';
  }

  @override
  String get checkCameraPermission => 'Please check camera permissions';

  @override
  String get clipboardEmpty => 'Clipboard is empty';

  @override
  String get close => 'Aizvērt';

  @override
  String get closeUppercased => 'CLOSE';

  @override
  String get compoundFailure => 'Failed to compound transactions';

  @override
  String get compoundingMessage => 'Please wait...';

  @override
  String get compoundingUtxos => 'Compounding transactions';

  @override
  String get compoundRequired => 'Compound required';

  @override
  String get compoundRequiredDescription =>
      'The transaction amount requires too many UTXOs. Compounding will reduce the number of UTXOs.';

  @override
  String get compoundSuccess => 'Compound successful';

  @override
  String get compoundTooFewUtxos => 'At least two UTXOs are required';

  @override
  String get compoundUppercased => 'COMPOUND';

  @override
  String get compoundUtxos => 'Compound transactions';

  @override
  String get compoundUtxosConfirmation => 'Compound transactions?';

  @override
  String get compoundUtxosDescription => 'Combine multiple UTXOs into one';

  @override
  String get confirm => 'Apstiprināt';

  @override
  String confirmations(String confirmations) {
    return '$confirmations confirmations';
  }

  @override
  String get confirmed => 'confirmed';

  @override
  String get confirming => 'confirming';

  @override
  String get confirmPasswordHint => 'Confirm the password';

  @override
  String contactAdded(String contactName) {
    return '$contactName pievienots kontaktiem.';
  }

  @override
  String contactAddressCopied(String address) {
    return '$address address copied';
  }

  @override
  String get contactExists => 'Kontakts jau eksistē';

  @override
  String get contactHeader => 'Kontakts';

  @override
  String get contactInvalid => 'Nederīgs kontakta nosaukums';

  @override
  String get contactNameHint => 'Ievadiet nosaukumu @';

  @override
  String get contactNameMissing => 'Izvēlieties kontakta nosaukumu';

  @override
  String contactRemoved(String contactName) {
    return '$contactName dzēsts no kontaktiem!';
  }

  @override
  String get contactsHeader => 'Kontakti';

  @override
  String get contactsImportErr => 'Neizdevās importēt kontaktus';

  @override
  String contactsImportSuccess(String noContacts) {
    return 'Sekmīgi importēti $noContacts kontakti.';
  }

  @override
  String get contactSupport => 'Contact Support';

  @override
  String get copied => 'Nokopēts';

  @override
  String get copy => 'Kopēt';

  @override
  String get copyAddress => 'Kopēt adresi';

  @override
  String get copyErrorButton => 'Copy Error';

  @override
  String get copyKpub => 'Copy Kpub';

  @override
  String get createAPasswordHeader => 'Create a password.';

  @override
  String get createPasswordFirstParagraph =>
      'You can create a password to add additional security to your wallet.';

  @override
  String get createPasswordHint => 'Create a password';

  @override
  String get createPasswordSecondParagraph =>
      'Password is optional, and your wallet will be protected with your PIN or biometrics regardless.';

  @override
  String get createPasswordSheetHeader => 'Create';

  @override
  String get currency => 'Currency';

  @override
  String get currencyPoweredBy => 'Powered by CoinGecko';

  @override
  String get currentIndex => 'Current';

  @override
  String get defaultAccountName => 'Pamata konts';

  @override
  String defaultNewAccountName(int addressIndex) {
    return 'Konts $addressIndex';
  }

  @override
  String get defaultWalletName => 'My Wallet';

  @override
  String get disablePasswordSheetHeader => 'Disable';

  @override
  String get disablePasswordSuccess => 'Password has been disabled';

  @override
  String get disableWalletPassword => 'Disable Wallet Password';

  @override
  String get doContinue => 'Continue';

  @override
  String get donate => 'Donate';

  @override
  String get donateTo => 'Donate To';

  @override
  String get dontShowAgain => 'Don\'t show again';

  @override
  String emailAction(String email) {
    return 'Email $email';
  }

  @override
  String get emptyCardIntroUtxos =>
      'This is the UTXOs tab. All UTXOs in your wallet will appear here';

  @override
  String get emptyResult => 'Empty Result';

  @override
  String get emptyWalletName => 'Wallet Name cannot be empty';

  @override
  String get encryptionFailedError => 'Failed to set a wallet password';

  @override
  String get enterAddress => 'Ievadiet adresi';

  @override
  String get enterAmount => 'Ievadiet daudzumu';

  @override
  String get enterFiatValue => 'Enter Fiat Value';

  @override
  String get enterNote => 'Enter Note';

  @override
  String get enterPasswordHint => 'Enter your password';

  @override
  String get errorMessageCopied => 'Error message copied to clipboard';

  @override
  String get exampleCardIntro =>
      'Sveicināti Kaspium. Tiklīdz saņemsiet KAS, transakcijas būs redzamas šādi:';

  @override
  String get export => 'Export';

  @override
  String get fee => 'Fee';

  @override
  String get feeBaseUppercase => 'BASE FEE';

  @override
  String feeConfirm(String amount, String coin) {
    return 'Fee $amount $coin';
  }

  @override
  String get feeManageTitle => 'Manage Fee';

  @override
  String get feePriorityHint => 'Enter Priority Fee';

  @override
  String get feePriorityUppsercase => 'PRIORITY FEE';

  @override
  String feeSheetPriorityFeeWarning(String amount, String symbol) {
    return 'New priority fee must be at least $amount $symbol';
  }

  @override
  String get feeSheetRecommendedPriority => 'Recommended Priority Fees';

  @override
  String get feeTitle => 'FEE';

  @override
  String get feeUpdate => 'Update Fee';

  @override
  String get feeUpdateAddressError => 'Failed to recognise destination address';

  @override
  String get feeUpdateError => 'Failed to update fee';

  @override
  String get feeUpdateRebuildError => 'Failed to rebuild transaction';

  @override
  String get feeUpdateRebuildError2 =>
      'Failed to rebuild transaction with new fee';

  @override
  String get feeUpdateTitle => 'Updating fee';

  @override
  String get fetchingTransactions => 'Fetching Transactions';

  @override
  String get fingerprintSeedBackup => 'Autorizējieties, lai kopētu sēklu.';

  @override
  String get getStarted => 'Get Started';

  @override
  String get goBackButton => 'Go Back';

  @override
  String get gotItButton => 'Sapratu!';

  @override
  String get hideAccountHeader => 'Hide Account?';

  @override
  String get hideAccountText =>
      'Are you sure you want to hide this account? You can re-add it later by tapping the \"Add Account\" button.';

  @override
  String get hintAddressListEmpty =>
      'Check address filter from the top right corner';

  @override
  String get import => 'Importēt';

  @override
  String get importAsLegacyWallet => 'Import as Legacy Wallet';

  @override
  String get importAsStandardWallet => 'Import as Standard Wallet';

  @override
  String get importKpub => 'Import Watch Only Wallet';

  @override
  String get importKpubClipboardError =>
      'Clipboard content is not a valid extended public key';

  @override
  String get importKpubHint => 'Please enter your extended public key.';

  @override
  String get importKpubInvalidMessage =>
      'Please check that your extended public key is entered correctly!';

  @override
  String get importKpubQrCodeError =>
      'QR code does not contain a valid extended public key';

  @override
  String get importLegacyWalletDetectedDetails =>
      'Do you want to import your wallet in legacy mode?';

  @override
  String get importLegacyWalletDetectedTitle => 'Legacy Wallet Detected';

  @override
  String get importOption12WordsDescription =>
      'Compatible with Web Wallet and KDX';

  @override
  String get importOption12WordsTitle => 'Import 12 Word Secret Phrase';

  @override
  String get importOption24WordsDescription =>
      'Compatible with Cli Wallet and Ledger';

  @override
  String get importOption24WordsTitle => 'Import 24 Word Secret Phrase';

  @override
  String get importOptionKpubDescription =>
      'Monitor the balance and transactions of a wallet using an extended public key';

  @override
  String get importOptionKpubTitle => 'Import Watch Only Wallet';

  @override
  String get importOptionLegacyWalletDescription =>
      'Legacy derivation 12 word wallets compatible with legacy Web Wallet and KDX';

  @override
  String get importOptionLegacyWalletTitle => 'Import Legacy Wallet';

  @override
  String get importOptionStandardWalletDescription =>
      'Standard derivation 12 or 24 word wallets with optional BIP39 passphrase';

  @override
  String get importOptionStandardWalletTitle => 'Import Standard Wallet';

  @override
  String get importSecretPhrase => 'Importēt slepeno frāzi';

  @override
  String get importSecretPhraseHint =>
      'Lūdzu ievadiet jūsu 24 vārdu slepeno frāzi. Katram vārdam jābūt atdalītam ar atstarpi.';

  @override
  String get importSecretPhraseHintCombo =>
      'Please enter your 12 or 24 word secret phrase below.';

  @override
  String get importSecretPhraseHintLegacy =>
      'Please enter your 12 word secret phrase below.';

  @override
  String get importWallet => 'Importēt maku';

  @override
  String get importWalletAdvancedOptions => 'Advanced Options';

  @override
  String get importWalletDescription => 'Please select an option below.';

  @override
  String get indexHeader => 'Index';

  @override
  String get instantly => 'Uzreiz';

  @override
  String get insufficientBalance => 'Nepietiek līdzekļu';

  @override
  String get insufficientBalanceDetails =>
      'You don\'t have enough KAS for this transaction';

  @override
  String get invalidAddress => 'Ievadītā adrese nav derīga';

  @override
  String get invalidAmount => 'Invalid Amount';

  @override
  String get invalidChecksumMessage =>
      'Please check that your Secret Phrase\n is entered correctly!';

  @override
  String get invalidDestinationAddress => 'Invalid Destination Address';

  @override
  String get invalidKpubMessage =>
      'Please check that your extended public key is entered correctly!';

  @override
  String get invalidPassword => 'Invalid Password';

  @override
  String get invalidSecretPhrase => 'Invalid Secret Phrase';

  @override
  String get invalidSecretPhraseConfirmation => 'I know what I\'m doing';

  @override
  String get invalidSecretPhraseDetails =>
      'The Secret Phrase you entered has an invalid checksum.';

  @override
  String get kaspaDevFund => 'Kaspa Dev Fund';

  @override
  String get kaspaUriCopied => 'Kaspa URI Copied';

  @override
  String get kaspaUriCopyFailed => 'Failed to copy Kaspa URI';

  @override
  String get kaspaUriInvalid => 'Invalid Kaspa URI';

  @override
  String get kaspiumWallet => 'Kaspium Wallet';

  @override
  String get kpubAuth => 'View Extended Public Key';

  @override
  String get kpubCopied => 'Extended Public Key Copied';

  @override
  String get kpubCopyFailed => 'Failed to copy Extended Public Key';

  @override
  String get kpubDescription =>
      'The extended public key can be used to import your wallet as a \'watch only\' wallet.';

  @override
  String get kpubTitle => 'Extended Public Key';

  @override
  String get language => 'Valoda';

  @override
  String get loadingTransactions => 'Loading Transactions...';

  @override
  String get lockAppSetting => 'Autentificēties palaižot';

  @override
  String get locked => 'Aizslēgts';

  @override
  String get loggingOutMessage => 'Logging out...';

  @override
  String get logout => 'Iziet';

  @override
  String get logoutDialogContent =>
      'Are you sure you want to logout from this wallet?';

  @override
  String get logoutOrSwitchWallet => 'Logout / Switch Wallet';

  @override
  String get manage => 'Pārvaldīt';

  @override
  String get manualEntry => 'Manuālā ievade';

  @override
  String get maxSend => 'Max Send';

  @override
  String get missingSecretPhrase => 'Missing Secret Phrase';

  @override
  String get moreInfo => 'More Info';

  @override
  String get networkHeader => 'Network';

  @override
  String get newAddress => 'New Address';

  @override
  String get newIndex => 'New';

  @override
  String get newWallet => 'Jauns maks';

  @override
  String get nextButton => 'Next';

  @override
  String get no => 'Nē';

  @override
  String get noContactsExport => 'Nav kontaktu ko eksportēt.';

  @override
  String get noContactsImport => 'Nav jauni kontakti, ko importēt.';

  @override
  String get nodeAddress => 'Kaspa Node';

  @override
  String get nodeDeleteMessage => 'Are you sure you want to delete?';

  @override
  String get nodeDeleteTitle => 'Delete Kaspa Node Config?';

  @override
  String get nodeNameEmpty => 'Node name cannot be empty';

  @override
  String get nodeNameHint => 'Enter Node Name';

  @override
  String get nodeNotSyncedException => 'Node is not synced';

  @override
  String get nodeNoUTXOIndexException => 'Node does not have UTXO index';

  @override
  String get nodeSecureConnection => 'Secure connection';

  @override
  String get nodesSheetTitle => 'Kaspa Nodes';

  @override
  String get nodeUrlHint => 'Enter Node URL';

  @override
  String get nodeUrlInvalid => 'Invalid node URL';

  @override
  String get noQrCodeFound => 'No QR code found';

  @override
  String get noSkipButton => 'No, Skip';

  @override
  String get notAccepted => 'not accepted';

  @override
  String get noteLabel => 'Note:';

  @override
  String get noUppercase => 'NO';

  @override
  String get off => 'Izslēgts';

  @override
  String get on => 'Ieslēgts';

  @override
  String get optionalLabel => '(Optional)';

  @override
  String get paperWallet => 'Papīra maks';

  @override
  String get passwordBlank => 'Password cannot be empty';

  @override
  String get passwordNoLongerRequiredToOpenParagraph =>
      'You will not need a password to open this wallet.';

  @override
  String get passwordsDontMatch => 'Passwords do not match';

  @override
  String get passwordWillBeRequiredToOpenParagraph =>
      'This password will be required to open this wallet.';

  @override
  String get pasteMnemonicError =>
      'Clipboard content is not a valid secret phrase';

  @override
  String get pending => 'pending';

  @override
  String get pinConfirmError => 'PIN nesakrīt';

  @override
  String get pinConfirmTitle => 'Apstipriniet savu PIN';

  @override
  String get pinCreateTitle => 'Izveidojiet sešu ciparu PIN';

  @override
  String get pinEnterTitle => 'Ievadiet PIN';

  @override
  String get pinInvalid => 'Nepareizs PIN';

  @override
  String get pinMethod => 'PIN';

  @override
  String get pinSeedBackup => 'Ievadiet PIN, lai kopētu sēklu';

  @override
  String get preferences => 'Preferences';

  @override
  String get privacyPolicy => 'Privātuma politika';

  @override
  String get qrInvalidAddress => 'QR code does not contain a valid address';

  @override
  String get qrInvalidSeed =>
      'QR kods nesatur derīgu sēklu vai privāto atslēgu';

  @override
  String get qrMnemonicError => 'QR kods nesatur derīgu slepeno frāzi';

  @override
  String get receive => 'Saņemt';

  @override
  String get receiveAddress => 'Receive Address';

  @override
  String get receiveAddressCopied => 'Receive address copied';

  @override
  String get receiveAddressListEmpty => 'Receive address list is empty';

  @override
  String get received => 'Saņemtie';

  @override
  String get receiveIndex => 'Receive Index';

  @override
  String receiveIndexParam(String addressIndex) {
    return 'Receive $addressIndex';
  }

  @override
  String get removeContact => 'Dzēst kontaktu';

  @override
  String removeContactConfirmation(String contactName) {
    return 'Vai esat drošs, ka vēlaties dzēst kontaktu $contactName?';
  }

  @override
  String get removeWalletAction => 'Remove Wallet';

  @override
  String get removeWalletBiometricsMessage => 'Authenticate to Remove Wallet';

  @override
  String get removeWalletDetail =>
      'Removing this wallet will remove the Secret Phrase and all wallet-related data from this device. If the Secret Phrase is not backed up, you will never be able to access your funds again.';

  @override
  String get removeWalletPinMessage => 'Enter PIN to Remove Wallet';

  @override
  String get removeWalletReassurance =>
      'As long as you\'ve backed up the Secret Phrase you have nothing to worry about.';

  @override
  String get requestPasswordAtLaunch => 'At Launch';

  @override
  String get requestPasswordHeader => 'Request Password';

  @override
  String get requestPasswordWhenLocked => 'When Locked';

  @override
  String get requestPasswordWhenSigning => 'When Signing';

  @override
  String get requireAPasswordToOpenHeader =>
      'Require a password to open this wallet?';

  @override
  String get restartSetupButton => 'Restart Setup';

  @override
  String get scanFailedMessage => 'Scan failed, please try again later';

  @override
  String get scanMore => 'SCAN MORE';

  @override
  String get scanMoreAddresses => 'Scan For More Addresses';

  @override
  String get scannedIndex => 'Scanned';

  @override
  String get scanningDescription => 'Scanning for new addresses...';

  @override
  String get scanningTitle => 'Scanning';

  @override
  String get scanQrCode => 'Skenēt QR kodu';

  @override
  String get scanQrCodeError => 'Failed to parse qr code';

  @override
  String get secretInfo =>
      'Nākamajā sadaļā redzēsiet jūsu slepeno frāzi. Tā ir parole ar kuru varat piekļūt jūsu līdzekļiem. Ir ārkārtīgi svarīgi izveidot rezerves kopiju un turēt to noslēpumā.';

  @override
  String get secretInfoHeader => 'Drošība pirmajā vietā!';

  @override
  String get secretPhrase => 'Slepenā frāze';

  @override
  String get secretPhrase12Words => '12 WORDS';

  @override
  String get secretPhrase24Words => '24 WORDS';

  @override
  String get secretWarning =>
      'Gadījumā, ja nozaudējat telefonu, vai atinstalējat šo aplikāciju, jums būs nepieciešama slepenā frāze, vai privātā atslēga, lai piekļūtu jūsu līdzekļiem!';

  @override
  String get securityHeader => 'Drošība';

  @override
  String get seed => 'Seed';

  @override
  String get seedInvalid => 'Sēkla nav derīga';

  @override
  String get selectAddress => 'Select Address';

  @override
  String get send => 'Sūtīt';

  @override
  String get sendConfirm => 'Send';

  @override
  String get sendError => 'Notika kļūda. Pēc laika mēģiniet atkal.';

  @override
  String get sending => 'Sūta';

  @override
  String get sendNote => 'NOTE';

  @override
  String get sendToAddressTitle => 'To';

  @override
  String get sendTxProgressDescription =>
      'Please wait while the transaction is sent';

  @override
  String get sendTxProgressTitle => 'Sending Transaction';

  @override
  String get sent => 'Nosūtītie';

  @override
  String get sentTo => 'Sent to';

  @override
  String get setPassword => 'Set Password';

  @override
  String get setPasswordSuccess => 'Wallet password has been set';

  @override
  String get settingsHeader => 'Iestatījumi';

  @override
  String get settingsTransfer => 'Ielādēt no papīra maka';

  @override
  String get setupFailedMessage => 'Something went wrong';

  @override
  String get setWalletPassword => 'Set Wallet Password';

  @override
  String get shareKaspium => 'Dalīties ar Kaspium';

  @override
  String get shareKaspiumSubject => 'Check out Kaspium Wallet';

  @override
  String get shareKaspiumText => 'Uzmet aci Kaspium! Izcils KAS viedais maks!';

  @override
  String get somethingWentWrong => 'Something went wrong';

  @override
  String get systemDefault => 'Noklusētie iestatījumi';

  @override
  String get tapToHide => 'Pieskaries, lai paslēptu';

  @override
  String get tapToReveal => 'Pieskaries, lai parādītu';

  @override
  String get themeDark => 'Dark Theme';

  @override
  String get themeHeader => 'Motīvs';

  @override
  String get themeLight => 'Light Theme';

  @override
  String get thisWallet => '#This Wallet';

  @override
  String get to => 'Adresāts';

  @override
  String get toAddress => 'To Address';

  @override
  String get tooManyFailedAttempts => 'Pārāk daudz atslēgšanas mēģinājumi.';

  @override
  String get totalValue => 'Total Value';

  @override
  String get transactionId => 'Transaction ID';

  @override
  String get transactionsUppercase => 'TRANSACTIONS';

  @override
  String get transfer => 'Pārsūtīt';

  @override
  String get transferClose => 'Pieskarieties jebkur, lai aizvērtu.';

  @override
  String transferComplete(String amount) {
    return '$amount KAS sekmīgi pārskaitīti uz jūsu Kaspium maku.\n';
  }

  @override
  String transferConfirmInfo(String amount) {
    return 'Maks ar $amount KAS bilanci ir atrasts.\n';
  }

  @override
  String get transferConfirmInfoSecond =>
      'Pieskarieties, lai apstiprinātu līdzekļu pārskaitīšanu.\n';

  @override
  String get transferConfirmInfoThird =>
      'Pārskaitīšana var prasīt vairākas sekundes.';

  @override
  String get transferError =>
      'Pārsūtīšanas laikā notika kļūda. Lūdzu vēlāk mēģiniet vēlreiz.';

  @override
  String get transferHeader => 'Pārsūtīt līdzekļus';

  @override
  String transferIntro(String button) {
    return 'Šis process pārskaitīs jūsu papīra maka līdzekļus uz jūsu Kaspium maku.\n\nPieskaries \"$button\" pogai, lai sāktu.';
  }

  @override
  String get transferLoading => 'Pārsūta';

  @override
  String get transferManualHint => 'Lūdzu, zemāk ievadiet sēklu';

  @override
  String get transferNoFunds => 'Šai sēklai nav piesaistīti līdzekļi';

  @override
  String get transferQrScanError => 'Šis QR kods nesatur derīgu sēklu';

  @override
  String get transferQrScanHint => 'Skenē Kaspa \nsēklu vai privāto atslēgu';

  @override
  String get txFilterDialogOptionAllTxs => 'Show All Transactions';

  @override
  String get txFilterDialogOptionHideNotAcceptedCoinbase =>
      'Hide Not Accepted Coinbase Transactions';

  @override
  String get txFilterDialogTitle => 'Transaction Filter';

  @override
  String get txInMempool => 'in mempool';

  @override
  String get txPending => 'PENDING';

  @override
  String get txPendingActionRbf => 'Replace By Fee';

  @override
  String get txPendingActionUpdateFee => 'Update Tx Fee';

  @override
  String get txPendingContent =>
      'There is a pending transactions in the mempool.';

  @override
  String get txPendingMessage => 'This transaction is pending';

  @override
  String get txPendingTitle => 'Pending Transaction';

  @override
  String get txReport => 'Transaction Report';

  @override
  String get txReportDate => 'Date';

  @override
  String get txReportDescription => 'Description';

  @override
  String get txReportDetails =>
      'Generate a transaction report, in CSV format, that contains all the wallet\'s transaction history.';

  @override
  String get txReportError => 'Error generating report';

  @override
  String get txReportFeeAmount => 'Fee Amount';

  @override
  String get txReportFeeCurrency => 'Fee Currency';

  @override
  String get txReportFeeForCompound => 'Fee for Compound Transaction';

  @override
  String get txReportFeeForSelfSend => 'Fee to send to own addresses';

  @override
  String get txReportGenerate => 'Generate';

  @override
  String get txReportGetReport => 'Get Report';

  @override
  String get txReportLabel => 'Label';

  @override
  String get txReportLabelCost => 'cost';

  @override
  String txReportNoLoadedTxs(int loadedTxs, int totalTxs) {
    return '($loadedTxs of $totalTxs)';
  }

  @override
  String get txReportNote => 'Note';

  @override
  String txReportNoTxs(int numberOf) {
    return 'Found $numberOf transactions.';
  }

  @override
  String get txReportOptionIgnoreCompound => 'Ignore compound transactions';

  @override
  String get txReportOptionIgnoreSelfTxs => 'Ignore transactions sent to self';

  @override
  String get txReportOptionRefreshTxs => 'Refresh transactions';

  @override
  String get txReportReceivedAmount => 'Received Amount';

  @override
  String get txReportReceivedCurrency => 'Received Currency';

  @override
  String get txReportSentAmount => 'Sent Amount';

  @override
  String get txReportSentCurrency => 'Sent Currency';

  @override
  String get txReportStatusLoading => 'Loading transactions';

  @override
  String get txReportStatusReady => 'Transaction report is ready!';

  @override
  String get txReportStatusRefreshing => 'Refreshing transactions';

  @override
  String get txReportSubtitle => 'Get CSV file with transaction history';

  @override
  String get txReportTxHash => 'TxHash';

  @override
  String get unconfirmed => 'unconfirmed';

  @override
  String get unknown => 'unknown';

  @override
  String get unlock => 'Atslēgt';

  @override
  String get unlockBiometrics => 'Autorizējieties, lai piekļūtu Kaspium';

  @override
  String get unlockPin => 'Ievadiet PIN, lai piekļūtu Kaspium';

  @override
  String get utxoSelectionHint => 'Please select more UTXOs';

  @override
  String get utxoSelectionTitle => 'Select UTXOs';

  @override
  String get utxosUppercase => 'UTXOs';

  @override
  String get viewAddress => 'View Address';

  @override
  String get viewTransaction => 'View Transaction';

  @override
  String get walletAddress => 'Wallet Address';

  @override
  String get walletAddresses => 'Wallet Addresses';

  @override
  String walletAddressesCopied(String addressType) {
    return 'Wallet $addressType Addresses Copied to Clipboard';
  }

  @override
  String walletAddressesCopyFailed(String addressType) {
    return 'Failed to Copy Wallet $addressType Addresses';
  }

  @override
  String get walletName => 'Wallet name';

  @override
  String get walletNameDescription => 'Enter a name for your wallet';

  @override
  String get walletNameHint => 'Wallet Name';

  @override
  String get walletSetupAddressDiscovery => 'Running Address Discovery';

  @override
  String get walletSetupMessage => 'Setting up wallet';

  @override
  String get walletsTitle => 'Wallets';

  @override
  String get warning => 'Brīdinājums';

  @override
  String welcomeMessage(String version) {
    return 'Welcome!\n\nThis is version $version of Kaspium - the mobile wallet for Kaspa';
  }

  @override
  String get welcomeText =>
      'Sveicināti Kaspium. Izveidojiet jaunu maku vai importējiet eksistējošu';

  @override
  String get yes => 'Jā';

  @override
  String get yesButton => 'Yes';

  @override
  String get yesUppercase => 'YES';
}
