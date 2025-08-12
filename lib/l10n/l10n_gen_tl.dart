// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n_gen.dart';

// ignore_for_file: type=lint

/// The translations for Tagalog (`tl`).
class AppLocalizationsTl extends AppLocalizations {
  AppLocalizationsTl([String locale = 'tl']) : super(locale);

  @override
  String get aboutTopperDescription =>
      'Topper by Uphold is an easy to use fiat-to-crypto onramp that allows users to buy cryptocurencies using a credit/debit card or with a bank account.';

  @override
  String get aboutTopperTitle => 'About Topper';

  @override
  String get accepted => 'accepted';

  @override
  String get account => 'Account';

  @override
  String get accounts => 'Mga Account';

  @override
  String get ackBackedUp =>
      'Sigurado ka ba na naback-up mo ang iyong secret phrase or seed?';

  @override
  String get add => 'Add';

  @override
  String get addAccount => 'Magdagdag ng Account';

  @override
  String get addContact => 'Mag-add ng kontak';

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
  String get addressCopied => 'Ang Address ay nakopya';

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
  String get addressHint => 'Ilagay ang Address';

  @override
  String get addressMising => 'Mangyaring magpasok ng patutunguhan';

  @override
  String get addressShare => 'I-share';

  @override
  String get advancedHeader => 'Advanced';

  @override
  String get amount => 'Amount';

  @override
  String amountConfirm(String amount, String coin) {
    return 'Amount $amount $coin';
  }

  @override
  String get amountMissing => 'Mangyaring magpasok ng isang halaga';

  @override
  String get amountZero => 'Amount can\'t be zero';

  @override
  String get areYouSure => 'Are you sure?';

  @override
  String get authBiometricMessage => 'Authenticate to Add Wallet';

  @override
  String get authMethod => 'Pamamaraan Authentication';

  @override
  String get authPinMessage => 'Enter PIN to Add Wallet';

  @override
  String get autoLockHeader => 'I-lock ng automatic';

  @override
  String get available => 'Available';

  @override
  String get backupConfirmButton => 'Na-backup ko na ito';

  @override
  String get backupSecretPhrase => 'Backup Secret Phrase';

  @override
  String get balance => 'Balance';

  @override
  String get biometricsMethod => 'Biometrics';

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
  String get cancel => 'Kanselahin';

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
  String get close => 'Isara';

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
  String get confirm => 'Kumpirmahin';

  @override
  String confirmations(String confirmations) {
    return '$confirmations confirmations';
  }

  @override
  String get confirmed => 'confirmed';

  @override
  String get confirming => 'confirming';

  @override
  String get confirmPasswordHint => 'Kumpirmahin ang password';

  @override
  String contactAdded(String contactName) {
    return '$contactName ay nadagdag sa mga kontak!';
  }

  @override
  String contactAddressCopied(String address) {
    return '$address address copied';
  }

  @override
  String get contactExists => 'Mayroon nang kapareho';

  @override
  String get contactHeader => 'Kontak';

  @override
  String get contactInvalid => 'Hindi tugma sa kontak';

  @override
  String get contactNameHint => 'Ilagay ang pangalan @';

  @override
  String get contactNameMissing => 'Walang kontak na ma-export';

  @override
  String contactRemoved(String contactName) {
    return '$contactName ay natanggal sa mga kontak!';
  }

  @override
  String get contactsHeader => 'Mga kontak';

  @override
  String get contactsImportErr => 'Hindi ma-import ang mga kontak';

  @override
  String contactsImportSuccess(String noContacts) {
    return 'Na-import na ang $noContacts kontak';
  }

  @override
  String get contactSupport => 'Contact Support';

  @override
  String get copied => 'Nakopya';

  @override
  String get copy => 'Kopyahin';

  @override
  String get copyAddress => 'Kopyahin ang Address';

  @override
  String get copyErrorButton => 'Copy Error';

  @override
  String get copyKpub => 'Copy Kpub';

  @override
  String get createAPasswordHeader => 'Gumawa ng password';

  @override
  String get createPasswordFirstParagraph =>
      'Pwede kang gumawa ng password para may dagdag seguridad ang iyong wallet';

  @override
  String get createPasswordHint => 'Gumawa ng password';

  @override
  String get createPasswordSecondParagraph =>
      'Ang password ay opsyonal, at ang iyong wallet ay protektado ng PIN o biometrics.';

  @override
  String get createPasswordSheetHeader => 'Gumawa';

  @override
  String get currency => 'Currency';

  @override
  String get currencyPoweredBy => 'Powered by CoinGecko';

  @override
  String get currentIndex => 'Current';

  @override
  String get defaultAccountName => 'Pangunahing Account';

  @override
  String defaultNewAccountName(int addressIndex) {
    return 'Account $addressIndex';
  }

  @override
  String get defaultWalletName => 'My Wallet';

  @override
  String get disablePasswordSheetHeader => 'Disable';

  @override
  String get disablePasswordSuccess => 'Ang password ay na-disabled';

  @override
  String get disableWalletPassword => 'I-disable ang Wallet Password';

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
  String get encryptionFailedError => 'Nabigo sa paglagay ng wallet password';

  @override
  String get enterAddress => 'Ilagay ang Address';

  @override
  String get enterAmount => 'Ilagay ang Amount';

  @override
  String get enterFiatValue => 'Enter Fiat Value';

  @override
  String get enterNote => 'Enter Note';

  @override
  String get enterPasswordHint => 'Ilagay ang password';

  @override
  String get errorMessageCopied => 'Error message copied to clipboard';

  @override
  String get exampleCardIntro =>
      'Maligayang pagdating sa Kaspium. Ganito ang makikita mong transaksyon pag nakatanggap ka ng KAS';

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
  String get fingerprintSeedBackup =>
      'Kumpirmahin ang fingerprint para i-back up ang wallet seed.';

  @override
  String get getStarted => 'Get Started';

  @override
  String get goBackButton => 'Bumalik';

  @override
  String get gotItButton => 'Nakuha ko!';

  @override
  String get hideAccountHeader => 'Hide Account?';

  @override
  String get hideAccountText =>
      'Are you sure you want to hide this account? You can re-add it later by tapping the \"Add Account\" button.';

  @override
  String get hintAddressListEmpty =>
      'Check address filter from the top right corner';

  @override
  String get import => 'Import';

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
  String get importSecretPhrase => 'I-import ang secret phrase';

  @override
  String get importSecretPhraseHint =>
      'Pakilagay ang iyong 24 na salita na iyong secret phrase sa ibaba. Ang bawat salita ay dapat may ispasyo sa pagitan.';

  @override
  String get importSecretPhraseHintCombo =>
      'Please enter your 12 or 24 word secret phrase below.';

  @override
  String get importSecretPhraseHintLegacy =>
      'Please enter your 12 word secret phrase below.';

  @override
  String get importWallet => 'Dating Wallet';

  @override
  String get importWalletAdvancedOptions => 'Advanced Options';

  @override
  String get importWalletDescription => 'Please select an option below.';

  @override
  String get indexHeader => 'Index';

  @override
  String get instantly => 'Agad';

  @override
  String get insufficientBalance => 'Hindi sapat ang balanse';

  @override
  String get insufficientBalanceDetails =>
      'You don\'t have enough KAS for this transaction';

  @override
  String get invalidAddress => 'Hindi wasto ang Destination Address';

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
  String get invalidPassword => 'Maling Password';

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
  String get language => 'Wika';

  @override
  String get loadingTransactions => 'Loading Transactions...';

  @override
  String get lockAppSetting => 'I-authenticate sa paglunsad';

  @override
  String get locked => 'Nakalock';

  @override
  String get loggingOutMessage => 'Logging out...';

  @override
  String get logout => 'Logout';

  @override
  String get logoutDialogContent =>
      'Are you sure you want to logout from this wallet?';

  @override
  String get logoutOrSwitchWallet => 'Logout / Switch Wallet';

  @override
  String get manage => 'Pamamahala';

  @override
  String get manualEntry => 'Manual na ipasok';

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
  String get newWallet => 'Bagong Wallet';

  @override
  String get nextButton => 'Susunod';

  @override
  String get no => 'Hindi';

  @override
  String get noContactsExport => 'Walang kontak na ma-export';

  @override
  String get noContactsImport => 'Walang kontak na ma-import';

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
  String get noSkipButton => 'Hindi, laktawan ito.';

  @override
  String get notAccepted => 'not accepted';

  @override
  String get noteLabel => 'Note:';

  @override
  String get noUppercase => 'NO';

  @override
  String get off => 'Off';

  @override
  String get on => 'On';

  @override
  String get optionalLabel => '(Optional)';

  @override
  String get paperWallet => 'Paper Wallet';

  @override
  String get passwordBlank => 'Ang password ay hindi pwedeng blangko';

  @override
  String get passwordNoLongerRequiredToOpenParagraph =>
      'Hindi mo na kailangan ng password para mabuksan ang Kaspium';

  @override
  String get passwordsDontMatch => 'Ang passwords ay hindi tugma';

  @override
  String get passwordWillBeRequiredToOpenParagraph =>
      'Itong password ay kailangan para mabuksan ang Kaspium';

  @override
  String get pasteMnemonicError =>
      'Clipboard content is not a valid secret phrase';

  @override
  String get pending => 'pending';

  @override
  String get pinConfirmError => 'Hindi magkatugma ang pins';

  @override
  String get pinConfirmTitle => 'Kumpirmahin ang iyong pin';

  @override
  String get pinCreateTitle => 'Gumawa ng 6-digit pin';

  @override
  String get pinEnterTitle => 'Ilagay ang pin';

  @override
  String get pinInvalid => 'Hindi tama ang pin na nilagay';

  @override
  String get pinMethod => 'PIN';

  @override
  String get pinSeedBackup => 'Ilagay ang pin para tingnan ang wallet seed.';

  @override
  String get preferences => 'Kagustuhan';

  @override
  String get privacyPolicy => 'Patakaran sa privacy';

  @override
  String get qrInvalidAddress => 'QR code ay walang wasto na destinasyon';

  @override
  String get qrInvalidSeed =>
      'Ang QR code ay walang laman na valid seed o private key';

  @override
  String get qrMnemonicError => 'QR ay walang valid na secret phrase.';

  @override
  String get receive => 'Tumanggap';

  @override
  String get receiveAddress => 'Receive Address';

  @override
  String get receiveAddressCopied => 'Receive address copied';

  @override
  String get receiveAddressListEmpty => 'Receive address list is empty';

  @override
  String get received => 'Natanggap';

  @override
  String get receiveIndex => 'Receive Index';

  @override
  String receiveIndexParam(String addressIndex) {
    return 'Receive $addressIndex';
  }

  @override
  String get removeContact => 'Alisin ang kontak';

  @override
  String removeContactConfirmation(String contactName) {
    return 'Sigurado ka ba gusto mong tanggalin ang $contactName?';
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
      'Gumawa ng password para mabuksan ang Kaspium?';

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
  String get scanQrCode => 'I-scan ang QR Code';

  @override
  String get scanQrCodeError => 'Failed to parse qr code';

  @override
  String get secretInfo =>
      'Sa susunod na screen, makikita mo ang iyong secret phrase. Ito ay password para ma-access mo ang iyong pondo. Importante na iback-up mo ito at wag mong i-share sa iba.';

  @override
  String get secretInfoHeader => 'Maging maingat!';

  @override
  String get secretPhrase => 'Secret Phrase';

  @override
  String get secretPhrase12Words => '12 WORDS';

  @override
  String get secretPhrase24Words => '24 WORDS';

  @override
  String get secretWarning =>
      'Pag nawala mo ang iyong device o tinanggal mo ang application, kakailanganin mo ang secret phrase o seed para marecover ang iyong pondo!';

  @override
  String get securityHeader => 'Seguridad';

  @override
  String get seed => 'Seed';

  @override
  String get seedInvalid => 'Ang seed ay hindi wasto';

  @override
  String get selectAddress => 'Select Address';

  @override
  String get send => 'Magpadala';

  @override
  String get sendConfirm => 'Send';

  @override
  String get sendError => 'Nagkaroon ng error. Subukan ulit mamaya.';

  @override
  String get sending => 'Pinapadala';

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
  String get sent => 'Naipadala';

  @override
  String get sentTo => 'Sent to';

  @override
  String get setPassword => 'Maglagay ng Password';

  @override
  String get setPasswordSuccess => 'Ang password ay nakalagay na';

  @override
  String get settingsHeader => 'Mga setting';

  @override
  String get settingsTransfer => 'Ilipat galing sa Paper Wallet';

  @override
  String get setupFailedMessage => 'Something went wrong';

  @override
  String get setWalletPassword => 'Maglagay ng Wallet Password';

  @override
  String get shareKaspium => 'I-share ang Kaspium';

  @override
  String get shareKaspiumSubject => 'Check out Kaspium Wallet';

  @override
  String get shareKaspiumText =>
      'Tignan ang Kaspium! Opisyal na mobile wallet ng Kaspa!';

  @override
  String get somethingWentWrong => 'Something went wrong';

  @override
  String get systemDefault => 'Default na System';

  @override
  String get tapToHide => 'Tapikin para itago';

  @override
  String get tapToReveal => 'Tapikin para buksan';

  @override
  String get themeDark => 'Dark Theme';

  @override
  String get themeHeader => 'Tema';

  @override
  String get themeLight => 'Light Theme';

  @override
  String get thisWallet => '#This Wallet';

  @override
  String get to => 'Sa';

  @override
  String get toAddress => 'To Address';

  @override
  String get tooManyFailedAttempts =>
      'Masyadong madaming maling unlock attempts.';

  @override
  String get totalValue => 'Total Value';

  @override
  String get transactionId => 'Transaction ID';

  @override
  String get transactionsUppercase => 'TRANSACTIONS';

  @override
  String get transfer => 'Ilipat';

  @override
  String get transferClose => 'I-tap kahit saan para isara itong window.';

  @override
  String transferComplete(String amount) {
    return '$amount KAS ay nalipat na sa iyong Kaspium Wallet.';
  }

  @override
  String transferConfirmInfo(String amount) {
    return 'Ang wallet na may balanse na $amount KAS ay na-detect.\n';
  }

  @override
  String get transferConfirmInfoSecond =>
      'I-tap ang confirm para ilipat ang pondo.\n';

  @override
  String get transferConfirmInfoThird =>
      'Ang paglipat ay maaring tumagal ng ilang segundo.';

  @override
  String get transferError =>
      'Nagkaroon ng error sa paglipat. Pakiulit mamaya.';

  @override
  String get transferHeader => 'Transfer\nFunds';

  @override
  String transferIntro(String button) {
    return 'Ang prosesong ito ay ang paglipat ng pondo galing sa paper wallet.\n\nI-tap ang \"$button\" button para umpisahan.';
  }

  @override
  String get transferLoading => 'Nililipat na';

  @override
  String get transferManualHint => 'Pakilagay seed sa ibaba.';

  @override
  String get transferNoFunds => 'Ang seed na ito ay walang KAS.';

  @override
  String get transferQrScanError =>
      'Ang QR code na ito ay hindi valid na seed.';

  @override
  String get transferQrScanHint => 'Mag-scan ng Kaspa \nseed o private key';

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
  String get unlock => 'I-unlock';

  @override
  String get unlockBiometrics => 'I-Authenticate para ma-unlock';

  @override
  String get unlockPin => 'Ilagay ang PIN mabuksan';

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
  String get warning => 'BABALA';

  @override
  String welcomeMessage(String version) {
    return 'Welcome!\n\nThis is version $version of Kaspium - the mobile wallet for Kaspa';
  }

  @override
  String get welcomeText =>
      'Maligayang pagdating sa Kaspium. Para magpatuloy, gumawa ng bagong wallet o gamitin ang dating wallet.';

  @override
  String get yes => 'Oo';

  @override
  String get yesButton => 'Yes';

  @override
  String get yesUppercase => 'YES';
}
