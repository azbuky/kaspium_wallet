// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class AppLocalizationsSk extends AppLocalizations {
  AppLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get account => 'Účet';

  @override
  String get accounts => 'Účty';

  @override
  String get ackBackedUp =>
      'Ste si istí, že ste si zálohovali svoju tajnú frázu?';

  @override
  String get add => 'Pridať';

  @override
  String get addAccount => 'Pridať Účet';

  @override
  String get addContact => 'Pridať kontakt';

  @override
  String get addNode => 'Pridať Uzol';

  @override
  String get addNodeFailed => 'Nepodarilo sa pridať Kaspa uzol ';

  @override
  String addNodeFailedMessage(String error) {
    return 'Failed: $error';
  }

  @override
  String get addNodeSuccess => 'Uzol Úspešne Pridaný';

  @override
  String get addingNodeMessage => 'Čakajte prosím, kontaktuje sa uzol';

  @override
  String get addingNodeTitle => 'Uzol sa pridáva';

  @override
  String get address => 'Adresa';

  @override
  String get addressCopied => 'Adresa Skopírovaná';

  @override
  String get addressCopiedFailed => 'Nepodarilo sa skopírovať adresu';

  @override
  String get addressHint => 'Zadajte Adresu';

  @override
  String get addressMising => 'Prosím Zadajte Adresu';

  @override
  String get addressShare => 'Zdieľať Adresu';

  @override
  String get kaspaUriCopied => 'Kaspa URI Copied';

  @override
  String get kaspaUriCopyFailed => 'Failed to copy Kaspa URI';

  @override
  String get advancedHeader => 'Rozšírené nastavenia';

  @override
  String get amount => 'Čiastka';

  @override
  String amountConfirm(String amount, String coin) {
    return 'Čiastka $amount $coin';
  }

  @override
  String get amountMissing => 'Prosím Zadajte Čiastku';

  @override
  String get amountZero => 'Čiastka sa nesmie rovnať nule';

  @override
  String get areYouSure => 'Ste si istí?';

  @override
  String get authBiometricMessage => 'Authenticate to Add Wallet';

  @override
  String get authMethod => 'Spôsob Overovania';

  @override
  String get authPinMessage => 'Zadajte PIN pre Pridanie Peňaženky';

  @override
  String get autoLockHeader => 'Automaticky Zamknúť';

  @override
  String get available => 'Available';

  @override
  String get backupConfirmButton => 'I\'ve Backed It Up';

  @override
  String get backupSecretPhrase => 'Zálohovať Tajnú Frázu';

  @override
  String get missingSecretPhrase => 'Missing Secret Phrase';

  @override
  String get biometricsMethod => 'Biometrické údaje';

  @override
  String get blockExplorer => 'Prieskumník Blokov';

  @override
  String get cancel => 'Zrušiť';

  @override
  String get change => 'Zmeniť';

  @override
  String get changeAddress => 'Change Address';

  @override
  String get changeAddressCopied => 'Change address copied';

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
  String get close => 'Zavrieť';

  @override
  String get confirm => 'Potvrdiť';

  @override
  String get confirmPasswordHint => 'Potvrdiť heslo';

  @override
  String confirmations(String confirmations) {
    return '$confirmations potvrdení';
  }

  @override
  String get confirmed => 'potvrdená';

  @override
  String get confirming => 'potvrdzovanie';

  @override
  String contactAdded(String contactName) {
    return 'Kontakt $contactName bol pridaný';
  }

  @override
  String contactAddressCopied(String address) {
    return '$address address copied';
  }

  @override
  String get contactExists => 'Kontakt už Existuje';

  @override
  String get contactHeader => 'Kontakt';

  @override
  String get contactInvalid => 'Neplatný Názov Kontaktu';

  @override
  String get contactNameHint => 'Zadajte Názov @';

  @override
  String get contactNameMissing => 'Zadajte názov pre tento Kontakt';

  @override
  String contactRemoved(String contactName) {
    return 'Kontakt $contactName bol odstránený!';
  }

  @override
  String get contactsHeader => 'Kontakty';

  @override
  String get contactsImportErr => 'Nepodarilo sa importovať kontakty';

  @override
  String contactsImportSuccess(String noContacts) {
    return 'Úspešne importované kontakty v počte - $noContacts';
  }

  @override
  String get copied => 'Skopírované';

  @override
  String get copy => 'Kopírovať';

  @override
  String get copyAddress => 'Kopírovať Adresu';

  @override
  String get copyErrorButton => 'Chyba pri Kopírovaní';

  @override
  String get createAPasswordHeader => 'Vytvorte heslo.';

  @override
  String get createPasswordFirstParagraph =>
      'Môžete vytvoriť heslo pre dodatočné zabezpečenie svojej peňaženky.';

  @override
  String get createPasswordHint => 'Vytvoriť heslo';

  @override
  String get createPasswordSecondParagraph =>
      'Heslo je voliteľné a vaša peňaženka bude chránená PIN kódom alebo biometrickými údajmi.';

  @override
  String get createPasswordSheetHeader => 'Vytvoriť';

  @override
  String get currency => 'Mena';

  @override
  String get currencyPoweredBy => 'Powered by CoinGecko';

  @override
  String get defaultAccountName => 'Adresa 1';

  @override
  String defaultNewAccountName(int addressIndex) {
    return 'Receive $addressIndex';
  }

  @override
  String get defaultWalletName => 'Moja Peňaženka';

  @override
  String get disablePasswordSheetHeader => 'Disable';

  @override
  String get disablePasswordSuccess => 'Password has been disabled';

  @override
  String get disableWalletPassword => 'Disable Wallet Password';

  @override
  String get doContinue => 'Pokračovať';

  @override
  String get donate => 'Darovať';

  @override
  String get donateTo => 'Donate To';

  @override
  String get dontShowAgain => 'Don\'t show again';

  @override
  String get emptyCardIntroUtxos =>
      'Toto je karta UTXO. Tu sa zobrazia všetky UTXO vo vašej peňaženke';

  @override
  String get emptyResult => 'Empty Result';

  @override
  String get emptyWalletName => 'Názov Peňaženky nesmie byť prázdny';

  @override
  String get encryptionFailedError => 'Failed to set a wallet password';

  @override
  String get enterAddress => 'Enter Address';

  @override
  String get enterAmount => 'Enter Amount';

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
      'This is the transactions tab. Once you send or receive a transaction, it will show up here.';

  @override
  String get export => 'Export';

  @override
  String get fee => 'Fee';

  @override
  String feeConfirm(String amount, String coin) {
    return 'Fee $amount $coin';
  }

  @override
  String get feeTitle => 'FEE';

  @override
  String get fetchingTransactions => 'Získavanie Transakcií';

  @override
  String get fingerprintSeedBackup => 'Authenticate to Backup Secret Phrase.';

  @override
  String get goBackButton => 'Go Back';

  @override
  String get gotItButton => 'Got It!';

  @override
  String get import => 'Import';

  @override
  String get importSecretPhrase => 'Import Secret Phrase';

  @override
  String get importSecretPhraseHint =>
      'Please enter your 24 word secret phrase below.';

  @override
  String get importSecretPhraseHintCombo =>
      'Please enter your 12 or 24 word secret phrase below.';

  @override
  String get importSecretPhraseHintLegacy =>
      'Please enter your 12 word secret phrase below.';

  @override
  String get importWallet => 'Import Wallet';

  @override
  String get importWalletDescription => 'Please select an option below.';

  @override
  String get instantly => 'Instantly';

  @override
  String get insufficientBalance => 'Insufficient Balance';

  @override
  String get insufficientBalanceDetails =>
      'Na túto transakciu nemáte dostatok KAS';

  @override
  String get invalidAddress => 'Address entered was invalid';

  @override
  String get invalidAmount => 'Invalid Amount';

  @override
  String get invalidChecksumMessage =>
      'Please check that your Secret Phrase\n is entered correctly!';

  @override
  String get invalidKpubMessage =>
      'Please check that your extended public key is entered correctly!';

  @override
  String get invalidDestinationAddress => 'Invalid Destination Address';

  @override
  String get invalidPassword => 'Invalid Password';

  @override
  String get kaspaDevFund => 'Kaspa Dev Fund';

  @override
  String get kaspiumWallet => 'Kaspium Wallet';

  @override
  String get language => 'Jazyk';

  @override
  String get loadingTransactions => 'Načítavanie Transakcií...';

  @override
  String get lockAppSetting => 'Authenticate on Launch';

  @override
  String get locked => 'Locked';

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
  String get manage => 'Manage';

  @override
  String get manualEntry => 'Manual Entry';

  @override
  String get networkHeader => 'Sieť';

  @override
  String get newAddress => 'New Address';

  @override
  String get newWallet => 'New Wallet';

  @override
  String get nextButton => 'Next';

  @override
  String get no => 'No';

  @override
  String get noContactsExport => 'There\'s no contacts to export';

  @override
  String get noContactsImport => 'No new contacts to import';

  @override
  String get noQrCodeFound => 'No QR code found';

  @override
  String get noSkipButton => 'No, Skip';

  @override
  String get noUppercase => 'NO';

  @override
  String get nodeAddress => 'Kaspa Node';

  @override
  String get nodeDeleteMessage => 'Are you sure you want to delete?';

  @override
  String get nodeDeleteTitle => 'Delete Kaspa Node Config?';

  @override
  String get nodeNameEmpty => 'Názov Uzla nesmie byť prázdny';

  @override
  String get nodeNameHint => 'Zadajte Názov Uzla';

  @override
  String get nodeUrlHint => 'Enter Node URL';

  @override
  String get nodeUrlInvalid => 'Invalid node URL';

  @override
  String get nodesSheetTitle => 'Kaspa Nodes';

  @override
  String get off => 'Off';

  @override
  String get on => 'On';

  @override
  String get paperWallet => 'Paper Wallet';

  @override
  String get passwordBlank => 'Password cannot be empty';

  @override
  String get passwordNoLongerRequiredToOpenParagraph =>
      'You will not need a password to open this wallet.';

  @override
  String get passwordWillBeRequiredToOpenParagraph =>
      'This password will be required to open this wallet.';

  @override
  String get passwordsDontMatch => 'Passwords do not match';

  @override
  String get pasteMnemonicError =>
      'Clipboard content is not a valid secret phrase';

  @override
  String get pending => 'pending';

  @override
  String get pinConfirmError => 'Pins do not match';

  @override
  String get pinConfirmTitle => 'Confirm your PIN';

  @override
  String get pinCreateTitle => 'Create a 6-digit PIN';

  @override
  String get pinEnterTitle => 'Enter PIN';

  @override
  String get pinInvalid => 'Invalid PIN entered';

  @override
  String get pinMethod => 'PIN';

  @override
  String get pinSeedBackup => 'Enter PIN to Backup Secret Phrase';

  @override
  String get preferences => 'Preferences';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get qrInvalidAddress => 'QR code does not contain a valid address';

  @override
  String get qrInvalidSeed =>
      'QR code does not contain a valid seed or private key';

  @override
  String get qrMnemonicError =>
      'QR code does not contain a valid secret phrase';

  @override
  String get receive => 'Receive';

  @override
  String get receiveAddress => 'Receive Address';

  @override
  String get receiveAddressCopied => 'Receive address copied';

  @override
  String get receiveIndex => 'Receive Index';

  @override
  String receiveIndexParam(String addressIndex) {
    return 'Receive $addressIndex';
  }

  @override
  String get received => 'Received';

  @override
  String get removeContact => 'Remove Contact';

  @override
  String removeContactConfirmation(String contactName) {
    return 'Ste si istí, že chcete odstrániť kontakt $contactName?';
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
  String get requireAPasswordToOpenHeader =>
      'Require a password to open this wallet?';

  @override
  String get restartSetupButton => 'Restart Setup';

  @override
  String get scanQrCode => 'Naskenovať QR Kód';

  @override
  String get scanQrCodeError => 'Failed to parse qr code';

  @override
  String get secretInfo =>
      'In the next screen, you will see your secret phrase. It is a password to access your funds. It is crucial that you back it up and never share it with anyone.';

  @override
  String get secretInfoHeader => 'Safety First!';

  @override
  String get secretPhrase => 'Secret Phrase';

  @override
  String get secretPhrase12Words => '12 WORDS';

  @override
  String get secretPhrase24Words => '24 WORDS';

  @override
  String get secretWarning =>
      'If you lose your device or uninstall the application, you\'ll need your secret phrase to recover your funds!';

  @override
  String get securityHeader => 'Zabezpečenie';

  @override
  String get seed => 'Seed';

  @override
  String get seedInvalid => 'Seed is Invalid';

  @override
  String get send => 'Send';

  @override
  String get sendConfirm => 'Send';

  @override
  String get sendError => 'An error occurred. Please try again';

  @override
  String get sendNote => 'NOTE';

  @override
  String get sendToAddressTitle => 'To';

  @override
  String get sendTxProgressDescription => 'Počkajte, kým sa transakcia odošle';

  @override
  String get sendTxProgressTitle => 'Odosielanie Transakcie';

  @override
  String get sending => 'Send';

  @override
  String get sent => 'Sent';

  @override
  String get sentTo => 'Sent to';

  @override
  String get setPassword => 'Set Password';

  @override
  String get setPasswordSuccess => 'Wallet password has been set';

  @override
  String get setWalletPassword => 'Set Wallet Password';

  @override
  String get settingsHeader => 'Settings';

  @override
  String get settingsTransfer => 'Load from Paper Wallet';

  @override
  String get setupFailedMessage => 'Something went wrong';

  @override
  String get shareKaspium => 'Share Kaspium';

  @override
  String get shareKaspiumSubject => 'Check out Kaspium Wallet';

  @override
  String get shareKaspiumText =>
      'Check out Kaspium - Kaspa Mobile Wallet.\nWebsite - kaspium.io';

  @override
  String get somethingWentWrong => 'Something went wrong';

  @override
  String get systemDefault => 'System Default';

  @override
  String get tapToHide => 'Tap to hide';

  @override
  String get tapToReveal => 'Tap to reveal';

  @override
  String get themeDark => 'Tmavá Téma';

  @override
  String get themeHeader => 'Téma';

  @override
  String get themeLight => 'Svetlá Téma';

  @override
  String get thisWallet => '#This Wallet';

  @override
  String get to => 'To';

  @override
  String get toAddress => 'To Address';

  @override
  String get tooManyFailedAttempts => 'Too many failed unlock attempts.';

  @override
  String get totalValue => 'Total Value';

  @override
  String get transactionId => 'ID Transakcie';

  @override
  String get transactionsUppercase => 'TRANSAKCIE';

  @override
  String get transfer => 'Transfer';

  @override
  String get transferClose => 'Tap anywhere to close the window.';

  @override
  String transferComplete(String amount) {
    return '$amount KAS successfully transferred to your Kaspium Wallet.\n';
  }

  @override
  String transferConfirmInfo(String amount) {
    return 'A wallet with a balance of $amount KAS has been detected.';
  }

  @override
  String get transferConfirmInfoSecond =>
      'Tap confirm to transfer the funds.\n';

  @override
  String get transferConfirmInfoThird =>
      'Transfer may take several seconds to complete.';

  @override
  String get transferError =>
      'An error has occurred during the transfer. Please try again later.';

  @override
  String get transferHeader => 'Transfer Funds';

  @override
  String transferIntro(String button) {
    return 'This process will transfer the funds from a paper wallet to your Kaspium wallet.\n\nTap the \"$button\" button to start.';
  }

  @override
  String get transferLoading => 'Transferring';

  @override
  String get transferManualHint => 'Please enter the seed below.';

  @override
  String get transferNoFunds => 'This seed does not have any KAS on it';

  @override
  String get transferQrScanError =>
      'This QR code does not contain a valid seed.';

  @override
  String get transferQrScanHint => 'Vyhľadať Kaspa\nseed alebo privátny kľúč';

  @override
  String get unconfirmed => 'unconfirmed';

  @override
  String get notAccepted => 'not accepted';

  @override
  String get accepted => 'accepted';

  @override
  String get unknown => 'unknown';

  @override
  String get unlock => 'Unlock';

  @override
  String get unlockBiometrics => 'Authenticate to Unlock Wallet';

  @override
  String get unlockPin => 'Enter PIN to Unlock Wallet';

  @override
  String get utxosUppercase => 'UTXO';

  @override
  String get viewAddress => 'View Address';

  @override
  String get viewTransaction => 'Zobraziť Transakciu';

  @override
  String get walletAddresses => 'Adresy Peňaženiek';

  @override
  String get walletAddress => 'Wallet Address';

  @override
  String get walletName => 'Meno peňaženky';

  @override
  String get walletNameDescription => 'Zadajte názov svojej peňaženky';

  @override
  String get walletNameHint => 'Názov Peňaženky';

  @override
  String get walletSetupAddressDiscovery => 'Running Address Discovery';

  @override
  String get walletSetupMessage => 'Setting up wallet';

  @override
  String get walletsTitle => 'Peňaženky';

  @override
  String get warning => 'Upozornenie';

  @override
  String welcomeMessage(String version) {
    return 'Welcome!\n\nThis is version $version of Kaspium - the mobile wallet for Kaspa';
  }

  @override
  String get welcomeText =>
      'Welcome to Kaspium. To begin, you may create a new wallet or import an existing one.';

  @override
  String xMinutes(int minutes) {
    final intl.NumberFormat minutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutesString minutes',
      one: '1 minute',
    );
    return 'After $_temp0';
  }

  @override
  String get yes => 'Áno';

  @override
  String get yesButton => 'Áno';

  @override
  String get yesUppercase => 'ÁNO';

  @override
  String get nodeNotSyncedException => 'Uzol nie je synchronizovaný';

  @override
  String get nodeNoUTXOIndexException => 'Uzol nemá index UTXO';

  @override
  String get nodeSecureConnection => 'Bezpečné pripojenie';

  @override
  String get kaspaUriInvalid => 'Neplatné Kaspa URI';

  @override
  String get compoundUtxos => 'Compound transactions';

  @override
  String get compoundRequired => 'Compound required';

  @override
  String get compoundRequiredDescription =>
      'The transaction amount requires too many UTXOs. Compounding will reduce the number of UTXOs.';

  @override
  String get compoundUtxosDescription => 'Kombinácia viacerých UTXO do jedného';

  @override
  String get compoundUtxosConfirmation => 'Compound transactions?';

  @override
  String get compoundingUtxos => 'Compounding transactions';

  @override
  String get compoundingMessage => 'Čakajte prosím...';

  @override
  String get compoundSuccess => 'Compound successful';

  @override
  String get compoundFailure => 'Failed to compound transactions';

  @override
  String get compoundTooFewUtxos => 'Vyžadujú sa najmenej dve UTXO';

  @override
  String get balance => 'Zostatok';

  @override
  String get maxSend => 'Max Send';

  @override
  String get compoundUppercased => 'ZLOŽIŤ';

  @override
  String get closeUppercased => 'ZAVRIEŤ';

  @override
  String get scanMoreAddresses => 'Vyhľadávanie Ďalších Adries';

  @override
  String get addressDiscovery => 'Address Discovery';

  @override
  String get scanningTitle => 'Vyhľadávanie';

  @override
  String get scanningDescription => 'Vyhľadávanie nových adries...';

  @override
  String get scanMore => 'VYHĽADAŤ VIAC';

  @override
  String get scanFailedMessage =>
      'Vyhľadávanie zlyhalo, skúste to prosím neskôr';

  @override
  String get indexHeader => 'Index';

  @override
  String get currentIndex => 'Current';

  @override
  String get scannedIndex => 'Naskenované';

  @override
  String get newIndex => 'New';

  @override
  String get addressFilterDialogTitle => 'Address Filter';

  @override
  String get addressFilterDialogOptionAllAddresses => 'Zobraziť Všetky Adresy';

  @override
  String get addressFilterDialogOptionNonZeroBalances =>
      'Zobraziť Adresy so Zostatkom';

  @override
  String get importOption24WordsTitle => 'Import 24 Word Secret Phrase';

  @override
  String get importOption24WordsDescription =>
      'Compatible with Cli Wallet and Ledger';

  @override
  String get importOption12WordsTitle => 'Import 12 Word Secret Phrase';

  @override
  String get importOption12WordsDescription =>
      'Compatible with Web Wallet and KDX';

  @override
  String get importOptionStandardWalletTitle => 'Import Standard Wallet';

  @override
  String get importOptionStandardWalletDescription =>
      'Standard derivation 12 or 24 word wallets with optional BIP39 passphrase';

  @override
  String get importOptionLegacyWalletTitle => 'Import Legacy Wallet';

  @override
  String get importOptionLegacyWalletDescription =>
      'Legacy derivation 12 word wallets compatible with legacy Web Wallet and KDX';

  @override
  String get importOptionKpubTitle => 'Import Watch Only Wallet';

  @override
  String get importOptionKpubDescription =>
      'Monitor the balance and transactions of a wallet using an extended public key';

  @override
  String get importKpub => 'Import Watch Only Wallet';

  @override
  String get importKpubHint => 'Zadajte prosím svoj rozšírený verejný kľúč.';

  @override
  String get importKpubClipboardError =>
      'Clipboard content is not a valid extended public key';

  @override
  String get importKpubQrCodeError =>
      'QR code does not contain a valid extended public key';

  @override
  String get importKpubInvalidMessage =>
      'Please check that your extended public key is entered correctly!';

  @override
  String get receiveAddressListEmpty => 'Receive address list is empty';

  @override
  String get changeAddressListEmpty => 'Change address list is empty';

  @override
  String get hintAddressListEmpty =>
      'Check address filter from the top right corner';

  @override
  String get invalidSecretPhrase => 'Invalid Secret Phrase';

  @override
  String get invalidSecretPhraseDetails =>
      'The Secret Phrase you entered has an invalid checksum.';

  @override
  String get invalidSecretPhraseConfirmation => 'I know what I\'m doing';

  @override
  String get contactSupport => 'Contact Support';

  @override
  String emailAction(String email) {
    return 'Email $email';
  }

  @override
  String get noteLabel => 'Note:';

  @override
  String get optionalLabel => '(Optional)';

  @override
  String get buyKaspaSubtitle => 'Via Topper by Uphold';

  @override
  String get buyKaspaTitle => 'Buy Kaspa';

  @override
  String get buyKaspaMessage => 'Buy \$KAS quickly & easily.';

  @override
  String get buyKaspaMessageSecondary =>
      'Service provided by Topper, Uphold\'s fiat-to-crypto onramp.';

  @override
  String get getStarted => 'Get Started';

  @override
  String get aboutTopperTitle => 'About Topper';

  @override
  String get aboutTopperDescription =>
      'Topper by Uphold is an easy to use fiat-to-crypto onramp that allows users to buy cryptocurencies using a credit/debit card or with a bank account.';

  @override
  String get moreInfo => 'More Info';

  @override
  String get selectAddress => 'Select Address';

  @override
  String get kpubTitle => 'Extended Public Key';

  @override
  String get kpubAuth => 'View Extended Public Key';

  @override
  String get kpubDescription =>
      'The extended public key can be used to import your wallet as a \'watch only\' wallet.';

  @override
  String get copyKpub => 'Copy Kpub';

  @override
  String get kpubCopied => 'Extended Public Key Copied';

  @override
  String get kpubCopyFailed => 'Failed to copy Extended Public Key';

  @override
  String walletAddressesCopied(String addressType) {
    return 'Wallet $addressType Addresses Copied to Clipboard';
  }

  @override
  String walletAddressesCopyFailed(String addressType) {
    return 'Failed to Copy Wallet $addressType Addresses';
  }

  @override
  String get txReport => 'Transaction Report';

  @override
  String get txReportSubtitle => 'Get CSV file with transaction history';

  @override
  String get txReportDetails =>
      'Generate a transaction report, in CSV format, that contains all the wallet\'s transaction history.';

  @override
  String get txReportOptionIgnoreCompound => 'Ignore compound transactions';

  @override
  String get txReportOptionIgnoreSelfTxs => 'Ignore transactions sent to self';

  @override
  String get txReportOptionRefreshTxs => 'Refresh transactions';

  @override
  String get txReportGenerate => 'Generate';

  @override
  String get txReportStatusRefreshing => 'Refreshing transactions';

  @override
  String get txReportStatusLoading => 'Loading transactions';

  @override
  String get txReportStatusReady => 'Transaction report is ready!';

  @override
  String get txReportGetReport => 'Get Report';

  @override
  String get txReportDate => 'Date';

  @override
  String get txReportSentAmount => 'Sent Amount';

  @override
  String get txReportSentCurrency => 'Sent Currency';

  @override
  String get txReportReceivedAmount => 'Received Amount';

  @override
  String get txReportReceivedCurrency => 'Received Currency';

  @override
  String get txReportFeeAmount => 'Fee Amount';

  @override
  String get txReportFeeCurrency => 'Fee Currency';

  @override
  String get txReportLabel => 'Label';

  @override
  String get txReportDescription => 'Description';

  @override
  String get txReportTxHash => 'TxHash';

  @override
  String get txReportNote => 'Note';

  @override
  String get txReportLabelCost => 'cost';

  @override
  String get txReportFeeForCompound => 'Fee for Compound Transaction';

  @override
  String get txReportFeeForSelfSend => 'Fee to send to own addresses';

  @override
  String get txReportError => 'Error generating report';

  @override
  String txReportNoTxs(int numberOf) {
    return 'Found $numberOf transactions.';
  }

  @override
  String txReportNoLoadedTxs(int loadedTxs, int totalTxs) {
    return '($loadedTxs of $totalTxs)';
  }

  @override
  String get txFilterDialogTitle => 'Transaction Filter';

  @override
  String get txFilterDialogOptionAllTxs => 'Show All Transactions';

  @override
  String get txFilterDialogOptionHideNotAcceptedCoinbase =>
      'Hide Not Accepted Coinbase Transactions';

  @override
  String get requestPasswordHeader => 'Request Password';

  @override
  String get requestPasswordAtLaunch => 'At Launch';

  @override
  String get requestPasswordWhenLocked => 'When Locked';

  @override
  String get requestPasswordWhenSigning => 'When Signing';

  @override
  String get importWalletAdvancedOptions => 'Advanced Options';

  @override
  String get bip39Passphrase => 'BIP39 Passphrase';

  @override
  String get bip39PassphraseWarning =>
      'NOTE: This is not a wallet password, different BIP39 passphrases will open different wallets.';

  @override
  String get bip39PassphraseEnter => 'Enter Passphrase';

  @override
  String get bip39PassphraseConfirm => 'Confirm Passphrase';

  @override
  String get bip39PassphraseMismatch => 'Passphrases do not match!';

  @override
  String get bip39PassphraseNote => 'Wallet with BIP39 passphrase.';

  @override
  String get feePriorityHint => 'Enter Priority Fee';

  @override
  String get feeBaseUppercase => 'BASE FEE';

  @override
  String get feePriorityUppsercase => 'PRIORITY FEE';

  @override
  String get feeUpdateAddressError => 'Failed to recognise destination address';

  @override
  String get feeUpdateRebuildError => 'Failed to rebuild transaction';

  @override
  String get feeUpdateRebuildError2 =>
      'Failed to rebuild transaction with new fee';

  @override
  String get feeUpdateError => 'Failed to update fee';

  @override
  String get feeUpdate => 'Update Fee';

  @override
  String get feeUpdateTitle => 'Updating fee';

  @override
  String get feeSheetRecommendedPriority => 'Recommended Priority Fees';

  @override
  String feeSheetPriorityFeeWarning(String amount, String symbol) {
    return 'New priority fee must be at least $amount $symbol';
  }

  @override
  String get txPending => 'PENDING';

  @override
  String get txPendingMessage => 'This transaction is pending';

  @override
  String get txPendingTitle => 'Pending Transaction';

  @override
  String get txPendingContent =>
      'There is a pending transactions in the mempool.';

  @override
  String get txPendingActionUpdateFee => 'Update Tx Fee';

  @override
  String get txPendingActionRbf => 'Replace By Fee';

  @override
  String get txInMempool => 'in mempool';

  @override
  String get utxoSelectionTitle => 'Select UTXOs';

  @override
  String get utxoSelectionHint => 'Please select more UTXOs';
}
