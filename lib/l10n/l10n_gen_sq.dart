// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n_gen.dart';

// ignore_for_file: type=lint

/// The translations for Albanian (`sq`).
class AppLocalizationsSq extends AppLocalizations {
  AppLocalizationsSq([String locale = 'sq']) : super(locale);

  @override
  String get aboutTopperDescription =>
      'Topper by Uphold is an easy to use fiat-to-crypto onramp that allows users to buy cryptocurencies using a credit/debit card or with a bank account.';

  @override
  String get aboutTopperTitle => 'About Topper';

  @override
  String get accepted => 'accepted';

  @override
  String get account => 'Llogaria';

  @override
  String get accounts => 'Llogaritë';

  @override
  String get ackBackedUp =>
      'Jeni i sigurt që e keni ruajtur frazën tuaj sekrete?';

  @override
  String get add => 'Shto';

  @override
  String get addAccount => 'Shto Llogari';

  @override
  String get addContact => 'Shto Kontakte';

  @override
  String get addingNodeMessage => 'Ju lutemi prisni gjatë kontaktit me nyjen';

  @override
  String get addingNodeTitle => 'Duke shtuar nyjen';

  @override
  String get addNode => 'Shto Nyje';

  @override
  String get addNodeFailed => 'Shtimi i nyjes Kaspa dështoi';

  @override
  String addNodeFailedMessage(String error) {
    return 'Dështoi: $error';
  }

  @override
  String get addNodeSuccess => 'Nyja u shtua me sukses';

  @override
  String get address => 'Adrresa';

  @override
  String get addressCopied => 'Adresa u kopjua';

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
  String get addressHint => 'Fut Adresën';

  @override
  String get addressMising => 'Ju lutemi shkruani një adresë';

  @override
  String get addressShare => 'Ndani adresën';

  @override
  String get advancedHeader => 'E avancuar';

  @override
  String get amount => 'Sasia';

  @override
  String amountConfirm(String amount, String coin) {
    return 'Shuma $amount $coin';
  }

  @override
  String get amountMissing => 'Ju lutemi vendosni një shumë';

  @override
  String get amountZero => 'Shuma nuk mund të jetë zero';

  @override
  String get areYouSure => 'A je i sigurt?';

  @override
  String get authBiometricMessage => 'Autentifikohu për të shtuar portofolin';

  @override
  String get authMethod => 'Metoda e vërtetimit';

  @override
  String get authPinMessage => 'Fut kodin PIN për të shtuar portofolin';

  @override
  String get autoLockHeader => 'Kyç automatikisht';

  @override
  String get available => 'Në dispozicion';

  @override
  String get backupConfirmButton => 'Unë e kam ruajtur atë';

  @override
  String get backupSecretPhrase => 'Ruaj Frazën Sekrete';

  @override
  String get balance => 'Balance';

  @override
  String get biometricsMethod => 'Biometrike';

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
  String get cancel => 'Anullo';

  @override
  String get change => 'Ndrysho';

  @override
  String get changeAddress => 'Ndrysho Adrresën';

  @override
  String get changeAddressCopied => 'Ndrysho adrresën qe keni kopjuar';

  @override
  String get changeAddressListEmpty => 'Change address list is empty';

  @override
  String get changeIndex => 'Ndrysho Indeksin';

  @override
  String changeIndexParam(String addressIndex) {
    return 'Ndrysho $addressIndex';
  }

  @override
  String get checkCameraPermission => 'Ju lutemi kontrolloni lejet e kamerës';

  @override
  String get clipboardEmpty => 'Clipboard është bosh';

  @override
  String get close => 'Mbylle';

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
  String get confirm => 'Konfirmo';

  @override
  String confirmations(String confirmations) {
    return '$confirmations konfirmime';
  }

  @override
  String get confirmed => 'konfirmuar';

  @override
  String get confirming => 'duke konfirmuar';

  @override
  String get confirmPasswordHint => 'Konfirmoni fjalëkalimin';

  @override
  String contactAdded(String contactName) {
    return '$contactName u shtua te kontaktet';
  }

  @override
  String contactAddressCopied(String address) {
    return '$address adresa u kopjua';
  }

  @override
  String get contactExists => 'Kontakti tashmë ekziston';

  @override
  String get contactHeader => 'Kontaktoni';

  @override
  String get contactInvalid => 'Emri i pavlefshëm i kontaktit';

  @override
  String get contactNameHint => 'Fut një emër @';

  @override
  String get contactNameMissing => 'Zgjidhni një emër për këtë kontakt';

  @override
  String contactRemoved(String contactName) {
    return '$contactName është hequr nga kontaktet!';
  }

  @override
  String get contactsHeader => 'Kontaktet';

  @override
  String get contactsImportErr => 'Importimi i kontakteve dështoi';

  @override
  String contactsImportSuccess(String noContacts) {
    return 'Kontaktet e $noContacts u importuan me sukses';
  }

  @override
  String get contactSupport => 'Contact Support';

  @override
  String get copied => 'U kopjua';

  @override
  String get copy => 'Kopjo';

  @override
  String get copyAddress => 'Kopjo Adrresën';

  @override
  String get copyErrorButton => 'Gabim ne kopim';

  @override
  String get copyKpub => 'Copy Kpub';

  @override
  String get createAPasswordHeader => 'Krijo një fjalëkalim.';

  @override
  String get createPasswordFirstParagraph =>
      'Ju mund të krijoni një fjalëkalim për të shtuar siguri shtesë në portofolin tuaj.';

  @override
  String get createPasswordHint => 'Krijo një fjalëkalim';

  @override
  String get createPasswordSecondParagraph =>
      'Fjalëkalimi është opsional dhe kuleta juaj do të mbrohet me kodin PIN ose biometrikë pavarësisht.';

  @override
  String get createPasswordSheetHeader => 'Krijo';

  @override
  String get currency => 'Valuta';

  @override
  String get currencyPoweredBy => 'Mundësuar nga CoinGecko';

  @override
  String get currentIndex => 'Current';

  @override
  String get defaultAccountName => 'Adrresa 1';

  @override
  String defaultNewAccountName(int addressIndex) {
    return 'Merr $addressIndex';
  }

  @override
  String get defaultWalletName => 'Portofoli im';

  @override
  String get disablePasswordSheetHeader => 'Çaktivizo';

  @override
  String get disablePasswordSuccess => 'Fjalëkalimi është çaktivizuar';

  @override
  String get disableWalletPassword => 'Çaktivizo fjalëkalimin e portofolit';

  @override
  String get doContinue => 'Vazhdo';

  @override
  String get donate => 'Dhuroni';

  @override
  String get donateTo => 'Donate To';

  @override
  String get dontShowAgain => 'Mos e shfaq më';

  @override
  String emailAction(String email) {
    return 'Email $email';
  }

  @override
  String get emptyCardIntroUtxos =>
      'Kjo është skeda UTXOs. Të gjitha UTXO-të në portofolin tuaj do të shfaqen këtu';

  @override
  String get emptyResult => 'Rezultati bosh';

  @override
  String get emptyWalletName => 'Emri i portofolit nuk mund të jetë bosh';

  @override
  String get encryptionFailedError =>
      'Vendosja e fjalëkalimit të portofolit dështoi';

  @override
  String get enterAddress => 'Fut adresën';

  @override
  String get enterAmount => 'Futni shumën';

  @override
  String get enterFiatValue => 'Enter Fiat Value';

  @override
  String get enterNote => 'Shkruani Shënimin';

  @override
  String get enterPasswordHint => 'Futni fjalëkalimin tuaj';

  @override
  String get errorMessageCopied => 'Mesazhi i gabimit u kopjua';

  @override
  String get exampleCardIntro =>
      'Kjo është skeda e transaksioneve. Pasi të dërgoni ose merrni një transaksion, ai do të shfaqet këtu.';

  @override
  String get export => 'Eksporto';

  @override
  String get fee => 'Tarifa';

  @override
  String get feeBaseUppercase => 'BASE FEE';

  @override
  String feeConfirm(String amount, String coin) {
    return 'Tarifa $amount $coin';
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
  String get feeTitle => 'TARIFA';

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
  String get fetchingTransactions => 'Marrja e transaksioneve';

  @override
  String get fingerprintSeedBackup =>
      'Vërtetoni për të ruajtur frazën sekrete.';

  @override
  String get getStarted => 'Get Started';

  @override
  String get goBackButton => 'Shko Mbrapa';

  @override
  String get gotItButton => 'E kuptova!';

  @override
  String get hideAccountHeader => 'Hide Account?';

  @override
  String get hideAccountText =>
      'Are you sure you want to hide this account? You can re-add it later by tapping the \"Add Account\" button.';

  @override
  String get hintAddressListEmpty =>
      'Check address filter from the top right corner';

  @override
  String get import => 'Importo';

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
  String get importSecretPhrase => 'Importo Frazën Sekrete';

  @override
  String get importSecretPhraseHint =>
      'Ju lutemi shkruani frazën tuaj sekrete prej 24 fjalësh më poshtë.';

  @override
  String get importSecretPhraseHintCombo =>
      'Please enter your 12 or 24 word secret phrase below.';

  @override
  String get importSecretPhraseHintLegacy =>
      'Please enter your 12 word secret phrase below.';

  @override
  String get importWallet => 'Importo Portofolin';

  @override
  String get importWalletAdvancedOptions => 'Advanced Options';

  @override
  String get importWalletDescription => 'Please select an option below.';

  @override
  String get indexHeader => 'Index';

  @override
  String get instantly => 'Menjëherë';

  @override
  String get insufficientBalance => 'Bilanci i pamjaftueshëm';

  @override
  String get insufficientBalanceDetails =>
      'Nuk keni mjaftueshëm KAS për këtë transaksion';

  @override
  String get invalidAddress => 'Adresa e futur ishte e pavlefshme';

  @override
  String get invalidAmount => 'Shuma e pavlefshme';

  @override
  String get invalidChecksumMessage =>
      'Ju lutemi kontrolloni që fraza juaj sekrete\nështë futur saktë!';

  @override
  String get invalidDestinationAddress => 'Adresa e destinacionit e pavlefshme';

  @override
  String get invalidKpubMessage =>
      'Please check that your extended public key is entered correctly!';

  @override
  String get invalidPassword => 'Fjalëkalim i pavlefshëm';

  @override
  String get invalidSecretPhrase => 'Invalid Secret Phrase';

  @override
  String get invalidSecretPhraseConfirmation => 'I know what I\'m doing';

  @override
  String get invalidSecretPhraseDetails =>
      'The Secret Phrase you entered has an invalid checksum.';

  @override
  String get kaspaDevFund => 'Fondi i Dev te Kaspa';

  @override
  String get kaspaUriCopied => 'Kaspa URI Copied';

  @override
  String get kaspaUriCopyFailed => 'Failed to copy Kaspa URI';

  @override
  String get kaspaUriInvalid => 'Invalid Kaspa URI';

  @override
  String get kaspiumWallet => 'Portofoli i Kaspiumit';

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
  String get language => 'Gjuhë';

  @override
  String get loadingTransactions => 'Transaksionet po ngarkohen...';

  @override
  String get lockAppSetting => 'Autentifikojeni në nisje';

  @override
  String get locked => 'Kycur';

  @override
  String get loggingOutMessage => 'Po dilni...';

  @override
  String get logout => 'Dil';

  @override
  String get logoutDialogContent =>
      'Jeni i sigurt që dëshironi të dilni nga ky portofol?';

  @override
  String get logoutOrSwitchWallet => 'Dilni / Ndërroni portofolin';

  @override
  String get manage => 'Menaxho';

  @override
  String get manualEntry => 'Hyrja manuale';

  @override
  String get maxSend => 'Max Send';

  @override
  String get missingSecretPhrase => 'Missing Secret Phrase';

  @override
  String get moreInfo => 'More Info';

  @override
  String get networkHeader => 'Rrjeti';

  @override
  String get newAddress => 'Adrresë e re';

  @override
  String get newIndex => 'New';

  @override
  String get newWallet => 'Portofol i ri';

  @override
  String get nextButton => 'Tjetra';

  @override
  String get no => 'Jo';

  @override
  String get noContactsExport => 'Nuk ka kontakte për të eksportuar';

  @override
  String get noContactsImport => 'Nuk ka kontakte të reja për të eksportuar';

  @override
  String get nodeAddress => 'Nyje Kaspa';

  @override
  String get nodeDeleteMessage => 'Jeni i sigurt që dëshironi ta fshini?';

  @override
  String get nodeDeleteTitle => 'Të fshihet konfigurimi i Nyjes Kaspa?';

  @override
  String get nodeNameEmpty => 'Emri i nyjes nuk mund të jetë bosh';

  @override
  String get nodeNameHint => 'Futni emrin e nyjes';

  @override
  String get nodeNotSyncedException => 'Nyja nuk sinkronizohet';

  @override
  String get nodeNoUTXOIndexException => 'Nyja nuk ka indeks UTXO';

  @override
  String get nodeSecureConnection => 'Lidhje e sigurt';

  @override
  String get nodesSheetTitle => 'Nyjet Kaspa';

  @override
  String get nodeUrlHint => 'Fut URL-në e nyjes';

  @override
  String get nodeUrlInvalid => 'URL e pavlefshme e nyjes';

  @override
  String get noQrCodeFound => 'Nuk u gjet asnjë kod QR';

  @override
  String get noSkipButton => 'Jo, Kalo';

  @override
  String get notAccepted => 'not accepted';

  @override
  String get noteLabel => 'Note:';

  @override
  String get noUppercase => 'JO';

  @override
  String get off => 'Fik';

  @override
  String get on => 'Ndiz';

  @override
  String get optionalLabel => '(Optional)';

  @override
  String get paperWallet => 'Portofoli prej letre';

  @override
  String get passwordBlank => 'Fjalëkalimi nuk mund të jetë bosh';

  @override
  String get passwordNoLongerRequiredToOpenParagraph =>
      'Nuk do t\'ju duhet një fjalëkalim për të hapur këtë portofol.';

  @override
  String get passwordsDontMatch => 'Fjalëkalimet nuk përputhen';

  @override
  String get passwordWillBeRequiredToOpenParagraph =>
      'Ky fjalëkalim do të kërkohet për të hapur këtë portofol.';

  @override
  String get pasteMnemonicError =>
      'Përmbajtja e kujtesës nuk është një frazë e vlefshme sekrete';

  @override
  String get pending => 'në pritje';

  @override
  String get pinConfirmError => 'Pinet nuk përputhen';

  @override
  String get pinConfirmTitle => 'Konfirmoni PIN-in tuaj';

  @override
  String get pinCreateTitle => 'Krijo një PIN 6-shifror';

  @override
  String get pinEnterTitle => 'Fut kodin PIN';

  @override
  String get pinInvalid => 'Është futur kodi PIN i pavlefshëm';

  @override
  String get pinMethod => 'PIN';

  @override
  String get pinSeedBackup => 'Fut kodin PIN për të rezervuar frazën sekrete';

  @override
  String get preferences => 'Preferancat';

  @override
  String get privacyPolicy => 'Politika e privatësisë';

  @override
  String get qrInvalidAddress => 'Kodi QR nuk përmban një adresë të vlefshme';

  @override
  String get qrInvalidSeed =>
      'Kodi QR nuk përmban një seed të vlefshme ose çelës privat';

  @override
  String get qrMnemonicError =>
      'Kodi QR nuk përmban një frazë të vlefshme sekrete';

  @override
  String get receive => 'Merrni';

  @override
  String get receiveAddress => 'Merrni Adrresën';

  @override
  String get receiveAddressCopied => 'Adressa e marrjes është kopjuar';

  @override
  String get receiveAddressListEmpty => 'Receive address list is empty';

  @override
  String get received => 'Marrë';

  @override
  String get receiveIndex => 'Merr Indeksin';

  @override
  String receiveIndexParam(String addressIndex) {
    return 'Marrë $addressIndex';
  }

  @override
  String get removeContact => 'Hiq kontaktin';

  @override
  String removeContactConfirmation(String contactName) {
    return 'Jeni i sigurt që dëshironi të fshini $contactName?';
  }

  @override
  String get removeWalletAction => 'Hiq portofolin';

  @override
  String get removeWalletBiometricsMessage =>
      'Autentifikohu për të hequr portofolin';

  @override
  String get removeWalletDetail =>
      'Heqja e këtij portofoli do të heqë frazën sekrete dhe të gjitha të dhënat e lidhura me portofolin nga kjo pajisje. Nëse Fraza Sekrete nuk është e rezervuar, nuk do të mund të përdorni më kurrë fondet tuaja.';

  @override
  String get removeWalletPinMessage => 'Fut kodin PIN për të hequr portofolin';

  @override
  String get removeWalletReassurance =>
      'Për sa kohë që e keni ruajtur Frazën Sekrete, nuk keni asgjë për t\'u shqetësuar.';

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
      'Kërkohet një fjalëkalim për të hapur këtë portofol?';

  @override
  String get restartSetupButton => 'Rinis konfigurimin';

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
  String get scanQrCode => 'Skanoni kodin QR';

  @override
  String get scanQrCodeError => 'Analizimi i kodit qr dështoi';

  @override
  String get secretInfo =>
      'Në ekranin tjetër, do të shihni frazën tuaj sekrete. Është një fjalëkalim për të hyrë në fondet tuaja. Është thelbësore që ta mbështesni atë dhe të mos e ndani kurrë me askënd.';

  @override
  String get secretInfoHeader => 'Siguaria Primare!';

  @override
  String get secretPhrase => 'Fraze Sekrete';

  @override
  String get secretPhrase12Words => '12 WORDS';

  @override
  String get secretPhrase24Words => '24 WORDS';

  @override
  String get secretWarning =>
      'Nëse humbni pajisjen tuaj ose çinstaloni aplikacionin, do t\'ju duhet fraza juaj sekrete për të rikuperuar fondet tuaja!';

  @override
  String get securityHeader => 'Siguria';

  @override
  String get seed => 'Seed';

  @override
  String get seedInvalid => 'Seed është i pavlefshëm';

  @override
  String get selectAddress => 'Select Address';

  @override
  String get send => 'Dërgo';

  @override
  String get sendConfirm => 'Dërgo';

  @override
  String get sendError => 'Ka ndodhur një problem. Provoni përsëri';

  @override
  String get sending => 'Dërgo';

  @override
  String get sendNote => 'SHËNIM';

  @override
  String get sendToAddressTitle => 'Në';

  @override
  String get sendTxProgressDescription =>
      'Ju lutemi prisni derisa transaksioni të dërgohet';

  @override
  String get sendTxProgressTitle => 'Dërgimi i transaksionit';

  @override
  String get sent => 'Dërguar';

  @override
  String get sentTo => 'Sent to';

  @override
  String get setPassword => 'Vendosni fjalëkalimin';

  @override
  String get setPasswordSuccess => 'Është vendosur fjalëkalimi i portofolit';

  @override
  String get settingsHeader => 'Cilësimet';

  @override
  String get settingsTransfer => 'Ngarkoni nga Portofoli i letrës';

  @override
  String get setupFailedMessage => 'Dicka shkoj keq';

  @override
  String get setWalletPassword => 'Vendosni fjalëkalimin e portofolit';

  @override
  String get shareKaspium => 'Shpërnda Kaspium';

  @override
  String get shareKaspiumSubject => 'Shikoni Portofolin Kaspium';

  @override
  String get shareKaspiumText =>
      'Shikoni Kaspium - Kaspa Mobile Wallet.\nFaqja e internetit - kaspium.io';

  @override
  String get somethingWentWrong => 'Dicka shkoj keq';

  @override
  String get systemDefault => 'Parazgjedhjet e sistemit';

  @override
  String get tapToHide => 'Trokit për ta fshehur';

  @override
  String get tapToReveal => 'Trokit për të zbuluar';

  @override
  String get themeDark => 'Temë e errët';

  @override
  String get themeHeader => 'Tema';

  @override
  String get themeLight => 'Tema e lehtë';

  @override
  String get thisWallet => '#Ky Portofol';

  @override
  String get to => 'Në';

  @override
  String get toAddress => 'Në adresën';

  @override
  String get tooManyFailedAttempts =>
      'Shumë përpjekje të dështuara për shkyçje.';

  @override
  String get totalValue => 'Vlera Totale';

  @override
  String get transactionId => 'ID Transaksionit';

  @override
  String get transactionsUppercase => 'TRANSAKSION';

  @override
  String get transfer => 'Transfertë';

  @override
  String get transferClose => 'Prekni kudo për të mbyllur dritaren.';

  @override
  String transferComplete(String amount) {
    return '$amount KAS u transferua me sukses në portofolin tuaj Kaspium.\n';
  }

  @override
  String transferConfirmInfo(String amount) {
    return 'Është zbuluar një portofol me një bilanc prej $amount KAS.';
  }

  @override
  String get transferConfirmInfoSecond =>
      'Prekni konfirmoni për të transferuar fondet.\n';

  @override
  String get transferConfirmInfoThird =>
      'Transferimi mund të marrë disa sekonda për të përfunduar.';

  @override
  String get transferError =>
      'Ka ndodhur një gabim gjatë transferimit. Ju lutemi provoni përsëri më vonë.';

  @override
  String get transferHeader => 'Transfero Fondet';

  @override
  String transferIntro(String button) {
    return 'Ky proces do të transferojë fondet nga një portofol letre në portofolin tuaj Kaspium.\n\nPrekni butonin \"$button\" për të filluar.';
  }

  @override
  String get transferLoading => 'Duke transferuar';

  @override
  String get transferManualHint => 'Ju lutemi shkruani seed më poshtë.';

  @override
  String get transferNoFunds => 'Ky seed nuk ka asnjë KAS mbi të';

  @override
  String get transferQrScanError =>
      'Ky kod QR nuk përmban një seed të vlefshme.';

  @override
  String get transferQrScanHint => 'Skanoni një seed Kaspa\n ose çelës privat';

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
  String get unconfirmed => 'e pakonfirmuar';

  @override
  String get unknown => 'e paditur';

  @override
  String get unlock => 'Hap';

  @override
  String get unlockBiometrics => 'Autentifikohu për të zhbllokuar portofolin';

  @override
  String get unlockPin => 'Fut kodin PIN për të zhbllokuar portofolin';

  @override
  String get utxoSelectionHint => 'Please select more UTXOs';

  @override
  String get utxoSelectionTitle => 'Select UTXOs';

  @override
  String get utxosUppercase => 'UTXOs';

  @override
  String get viewAddress => 'Shiko adresën';

  @override
  String get viewTransaction => 'Shikoni transaksionin';

  @override
  String get walletAddress => 'Wallet Address';

  @override
  String get walletAddresses => 'Adresat e portofolit';

  @override
  String walletAddressesCopied(String addressType) {
    return 'Wallet $addressType Addresses Copied to Clipboard';
  }

  @override
  String walletAddressesCopyFailed(String addressType) {
    return 'Failed to Copy Wallet $addressType Addresses';
  }

  @override
  String get walletName => 'Emri i portofolit';

  @override
  String get walletNameDescription => 'Futni një emër për portofolin tuaj';

  @override
  String get walletNameHint => 'Emri i portofolit';

  @override
  String get walletSetupAddressDiscovery => 'Zbulimi i adresës në punë';

  @override
  String get walletSetupMessage => 'Vendosja e portofolit';

  @override
  String get walletsTitle => 'Portofolat';

  @override
  String get warning => 'Paralajmërim';

  @override
  String welcomeMessage(String version) {
    return 'Mirë se vini!\n\nKy është versioni $version i Kaspium - portofoli celular për Kaspa';
  }

  @override
  String get welcomeText =>
      'Mirë se vini në Kaspium. Për të filluar, mund të krijoni një portofol të ri ose të importoni një ekzistues.';

  @override
  String get yes => 'Po';

  @override
  String get yesButton => 'Po';

  @override
  String get yesUppercase => 'PO';
}
