// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n_gen.dart';

// ignore_for_file: type=lint

/// The translations for Basque (`eu`).
class AppLocalizationsEu extends AppLocalizations {
  AppLocalizationsEu([String locale = 'eu']) : super(locale);

  @override
  String get aboutTopperDescription =>
      'Topper by Uphold is an easy to use fiat-to-crypto onramp that allows users to buy cryptocurencies using a credit/debit card or with a bank account.';

  @override
  String get aboutTopperTitle => 'About Topper';

  @override
  String get accepted => 'onartuta';

  @override
  String get account => 'Kontua';

  @override
  String get accounts => 'Kontuak';

  @override
  String get ackBackedUp =>
      'Ziur zaude zure esaldi sekretuaren babeskopia egin duzula?';

  @override
  String get add => 'Gehitu';

  @override
  String get addAccount => 'Kontua gehitu';

  @override
  String get addContact => 'Gehitu kontaktua';

  @override
  String get addingNodeMessage =>
      'Mesedez, itxaron nodoarekin harremanetan jartzen zaren bitartean';

  @override
  String get addingNodeTitle => 'Nodoa gehitzen';

  @override
  String get addNode => 'Gehitu nodoa';

  @override
  String get addNodeFailed => 'Ezin izan da gehitu Kaspa nodoa';

  @override
  String addNodeFailedMessage(String error) {
    return 'Huts egin du: $error';
  }

  @override
  String get addNodeSuccess => 'Nodoa ondo gehitu da';

  @override
  String get address => 'Helbidea';

  @override
  String get addressCopied => 'Helbidea kopiatu da';

  @override
  String get addressCopiedFailed => 'Ezin izan da helbidea kopiatu';

  @override
  String get addressDiscovery => 'Helbidea aurkitzea';

  @override
  String get addressFilterDialogOptionAllAddresses => 'Ikusi helbide guztiak';

  @override
  String get addressFilterDialogOptionNonZeroBalances =>
      'Ikusi helbideak saldoarekin';

  @override
  String get addressFilterDialogTitle => 'Helbide-iragazkia';

  @override
  String get addressHint => 'Sartu helbidea';

  @override
  String get addressMising => 'Mesedez, sartu helbide bat';

  @override
  String get addressShare => 'Partekatu helbidea';

  @override
  String get advancedHeader => 'Aurreratua';

  @override
  String get amount => 'Kopurua';

  @override
  String amountConfirm(String amount, String coin) {
    return 'Kopurua $amount $coin';
  }

  @override
  String get amountMissing => 'Mesedez, sartu kopurua';

  @override
  String get amountZero => 'Kopurua ezin da zero izan';

  @override
  String get areYouSure => 'Ziur zaude?';

  @override
  String get authBiometricMessage => 'Autentifikatu kartera gehitzeko';

  @override
  String get authMethod => 'Autentifikazio-metodoa';

  @override
  String get authPinMessage => 'Sartu PIN zenbakia kartera gehitzeko';

  @override
  String get autoLockHeader => 'Blokeatu automatikoki';

  @override
  String get available => 'Eskuragarri';

  @override
  String get backupConfirmButton => 'babeskopia egin dut';

  @override
  String get backupSecretPhrase => 'Esaldi sekretua gorde';

  @override
  String get balance => 'Balantzea';

  @override
  String get biometricsMethod => 'Biometria';

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
  String get blockExplorer => 'Bloke esploratzailea';

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
  String get cancel => 'Bertan behera utzi';

  @override
  String get change => 'Aldatu';

  @override
  String get changeAddress => 'Helbidea aldatu';

  @override
  String get changeAddressCopied => 'Aldatzeko helbidea kopiatu da';

  @override
  String get changeAddressListEmpty => 'Aldatu helbideen zerrenda hutsik dago';

  @override
  String get changeIndex => 'Aldatu indizea';

  @override
  String changeIndexParam(String addressIndex) {
    return 'Aldatu $addressIndex';
  }

  @override
  String get checkCameraPermission => 'Mesedez, egiaztatu kameraren baimenak';

  @override
  String get clipboardEmpty => 'Paper-zorroa hutsik dago';

  @override
  String get close => 'Itxi';

  @override
  String get closeUppercased => 'ITXI';

  @override
  String get compoundFailure => 'Ezin izan dira konposatu transakzioak';

  @override
  String get compoundingMessage => 'Itxaron mesedez...';

  @override
  String get compoundingUtxos => 'Konposaketa-eragiketak';

  @override
  String get compoundRequired => 'Compound required';

  @override
  String get compoundRequiredDescription =>
      'The transaction amount requires too many UTXOs. Compounding will reduce the number of UTXOs.';

  @override
  String get compoundSuccess => 'konposizioa behar bezala egin da';

  @override
  String get compoundTooFewUtxos => 'Gutxienez bi UTXO behar dira';

  @override
  String get compoundUppercased => 'KONPOSATU';

  @override
  String get compoundUtxos => 'Transakzio konposatuak';

  @override
  String get compoundUtxosConfirmation => 'Transakzio konposatu?';

  @override
  String get compoundUtxosDescription => 'Konbinatu hainbat UTXO bakarrean';

  @override
  String get confirm => 'Baieztatu';

  @override
  String confirmations(String confirmations) {
    return '$confirmations baimenak';
  }

  @override
  String get confirmed => 'Baieztatuta';

  @override
  String get confirming => 'Baieztatzen';

  @override
  String get confirmPasswordHint => 'Pasahitza baieztatu';

  @override
  String contactAdded(String contactName) {
    return '$contactName kontaktuetara gehitu da';
  }

  @override
  String contactAddressCopied(String address) {
    return '$address Helbidea kopiatu da';
  }

  @override
  String get contactExists => 'Helbidea dagoeneko existitzen da';

  @override
  String get contactHeader => 'Kontaktua';

  @override
  String get contactInvalid => 'Kontaktuaren izen baliogabea';

  @override
  String get contactNameHint => 'Sartu izena @';

  @override
  String get contactNameMissing => 'Aukeratu kontaktu honentzako izen bat';

  @override
  String contactRemoved(String contactName) {
    return '$contactName kontaktuetatik kendu egin da!';
  }

  @override
  String get contactsHeader => 'Kontaktuak';

  @override
  String get contactsImportErr => 'Ezin izan dira inportatu kontaktuak';

  @override
  String contactsImportSuccess(String noContacts) {
    return ' $noContacts kontaktuak ondo inportatu dira';
  }

  @override
  String get contactSupport => 'Contact Support';

  @override
  String get copied => 'Kopiatutak';

  @override
  String get copy => 'Kopiatu';

  @override
  String get copyAddress => 'Helbidea kopiatu';

  @override
  String get copyErrorButton => 'Kopiaren akatsa';

  @override
  String get copyKpub => 'Copy Kpub';

  @override
  String get createAPasswordHeader => 'Pasahitza sortu';

  @override
  String get createPasswordFirstParagraph =>
      'Zure karterari segurtasun gehiago emateko pasahitz bat sor dezakezu.';

  @override
  String get createPasswordHint => 'Pasahitza sortu';

  @override
  String get createPasswordSecondParagraph =>
      'Pasahitza aukerakoa da, eta zure kartera PIN zenbakiarekin edo biometrikoekin babestuta egongo da edozein dela ere.';

  @override
  String get createPasswordSheetHeader => 'Sortu';

  @override
  String get currency => 'Moneta';

  @override
  String get currencyPoweredBy => 'CoinGecko-k garatuta';

  @override
  String get currentIndex => 'Oraingoa';

  @override
  String get defaultAccountName => 'Helbide 1';

  @override
  String defaultNewAccountName(int addressIndex) {
    return 'Jaso $addressIndex';
  }

  @override
  String get defaultWalletName => 'Nere Kartera';

  @override
  String get disablePasswordSheetHeader => 'Ezinduta utzi';

  @override
  String get disablePasswordSuccess => 'Pasahitza ezinduta izan da';

  @override
  String get disableWalletPassword => 'Ezinduta utzi karteraren pasahitza';

  @override
  String get doContinue => 'Jarraitu';

  @override
  String get donate => 'Dohanik eman';

  @override
  String get donateTo => 'Donate To';

  @override
  String get dontShowAgain => 'Berriro ez erakutsi';

  @override
  String emailAction(String email) {
    return 'Email $email';
  }

  @override
  String get emptyCardIntroUtxos =>
      'Hau da UTXOren fitxa. Zure karterako UTXO guztiak hemen agertuko dira';

  @override
  String get emptyResult => 'Emaitza hutsa';

  @override
  String get emptyWalletName => 'Karterako izena ezin da hutsik egon';

  @override
  String get encryptionFailedError =>
      'Ezin izan da karteraren pasahitza ezarri';

  @override
  String get enterAddress => 'Helbidea jarri';

  @override
  String get enterAmount => 'Zenbatekoa sartu';

  @override
  String get enterFiatValue => 'Enter Fiat Value';

  @override
  String get enterNote => 'Sartu oharra';

  @override
  String get enterPasswordHint => 'Sartu zure pasahitza';

  @override
  String get errorMessageCopied => 'Akats mezua paperzorroan kopiatu egin da';

  @override
  String get exampleCardIntro =>
      'Hau da transakzioen fitxa. Transakzio bat bidali edo jasotzen duzunean, hemen agertuko da.';

  @override
  String get export => 'Esportatu';

  @override
  String get fee => 'Kuota';

  @override
  String get feeBaseUppercase => 'BASE FEE';

  @override
  String feeConfirm(String amount, String coin) {
    return 'Kouta $amount $coin';
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
  String get feeTitle => 'KUOTA';

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
  String get fetchingTransactions => 'Transakzioak eskuratzen';

  @override
  String get fingerprintSeedBackup =>
      'Autentifikatu esaldi sekretua gordetzeko.';

  @override
  String get getStarted => 'Get Started';

  @override
  String get goBackButton => 'Atzera Egin';

  @override
  String get gotItButton => 'Ulertuta!';

  @override
  String get hideAccountHeader => 'Hide Account?';

  @override
  String get hideAccountText =>
      'Are you sure you want to hide this account? You can re-add it later by tapping the \"Add Account\" button.';

  @override
  String get hintAddressListEmpty =>
      'Egiaztatu helbide-iragazkia goiko eskuineko izkinan';

  @override
  String get import => 'Inportatu';

  @override
  String get importAsLegacyWallet => 'Import as Legacy Wallet';

  @override
  String get importAsStandardWallet => 'Import as Standard Wallet';

  @override
  String get importKpub => 'Inportatu zorroa ikusteko moduan bakarrik';

  @override
  String get importKpubClipboardError =>
      'Arbeleko edukia ez da baliozko gako publiko hedatua';

  @override
  String get importKpubHint => 'Mesedez, sartu zure gako publiko hedatua.';

  @override
  String get importKpubInvalidMessage =>
      'Mesedez, egiaztatu zure gako publiko hedatua behar bezala sartu dela!';

  @override
  String get importKpubQrCodeError =>
      'QR kodeak ez du baliozko gako publiko hedatua';

  @override
  String get importLegacyWalletDetectedDetails =>
      'Do you want to import your wallet in legacy mode?';

  @override
  String get importLegacyWalletDetectedTitle => 'Legacy Wallet Detected';

  @override
  String get importOption12WordsDescription =>
      'Web Wallet eta KDX-rekin bateragarria';

  @override
  String get importOption12WordsTitle => 'Inportatu 12 hitz esaldi sekretua';

  @override
  String get importOption24WordsDescription =>
      'Cli Wallet eta Ledger-ekin bateragarria';

  @override
  String get importOption24WordsTitle => 'Inportatu 24 hitz esaldi sekretua';

  @override
  String get importOptionKpubDescription =>
      'Kontrolatu diru-zorro baten saldoa eta transakzioak gako publiko hedatua erabiliz';

  @override
  String get importOptionKpubTitle =>
      'Inportatu zorroa ikusteko moduan bakarrik';

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
  String get importSecretPhrase => 'Esaldi sekretua inportatu';

  @override
  String get importSecretPhraseHint =>
      'Mesedez, idatzi behean zure 24 hitzeko esaldi sekretua.';

  @override
  String get importSecretPhraseHintCombo =>
      'Sar ezazu 12 edo 24 hitzeko esaldi sekretua jarraian.';

  @override
  String get importSecretPhraseHintLegacy =>
      'Sar ezazu 12 hitzeko esaldi sekretua jarraian.';

  @override
  String get importWallet => 'Kartera inportatu';

  @override
  String get importWalletAdvancedOptions => 'Advanced Options';

  @override
  String get importWalletDescription => 'Mesedez, hautatu aukera bat jarraian.';

  @override
  String get indexHeader => 'Aurkibidea';

  @override
  String get instantly => 'Berehala';

  @override
  String get insufficientBalance => 'Oreka Eskasa';

  @override
  String get insufficientBalanceDetails =>
      'Ez duzu KAS nahikoa transakzio honetarako';

  @override
  String get invalidAddress => 'Sartutako helbidea okerra da';

  @override
  String get invalidAmount => 'Kopuru okerra';

  @override
  String get invalidChecksumMessage =>
      'Mesedez, egiaztatu zure esaldi sekretua\nbehar bezala sartu dela!';

  @override
  String get invalidDestinationAddress => 'Helmuga-helbide okerra';

  @override
  String get invalidKpubMessage =>
      'Egiaztatu zure gako publiko hedatua behar bezala sartuta dagoela!';

  @override
  String get invalidPassword => 'Pasahitza okerra';

  @override
  String get invalidSecretPhrase => 'Invalid Secret Phrase';

  @override
  String get invalidSecretPhraseConfirmation => 'I know what I\'m doing';

  @override
  String get invalidSecretPhraseDetails =>
      'The Secret Phrase you entered has an invalid checksum.';

  @override
  String get kaspaDevFund => 'Kaspa Dev fondoa';

  @override
  String get kaspaUriCopied => 'Kaspa URI Copied';

  @override
  String get kaspaUriCopyFailed => 'Failed to copy Kaspa URI';

  @override
  String get kaspaUriInvalid => 'Kaspa URI baliogabea';

  @override
  String get kaspiumWallet => 'Kaspium Kartera';

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
  String get language => 'Hezkuntza';

  @override
  String get loadingTransactions => 'Transakzioak kargatzen';

  @override
  String get lockAppSetting => 'Hasieran autentifikatu';

  @override
  String get locked => 'Blokeatuta';

  @override
  String get loggingOutMessage => 'Saioa amaitzen...';

  @override
  String get logout => 'Saioa amaitu';

  @override
  String get logoutDialogContent =>
      'Ziur zaude kartera honetatik saioa amaitu nahi duzula?';

  @override
  String get logoutOrSwitchWallet => 'Amaitu / Aldatu Kartera';

  @override
  String get manage => 'Kudeatu';

  @override
  String get manualEntry => 'Eskuzko Sarrera';

  @override
  String get maxSend => 'Gehienezko bidalketa';

  @override
  String get missingSecretPhrase => 'Missing Secret Phrase';

  @override
  String get moreInfo => 'More Info';

  @override
  String get networkHeader => 'Sarea';

  @override
  String get newAddress => 'Helbide Berria';

  @override
  String get newIndex => 'Berria';

  @override
  String get newWallet => 'Kartera Berria';

  @override
  String get nextButton => 'Hurrengoa';

  @override
  String get no => 'Ez';

  @override
  String get noContactsExport => 'Ez dago kontakturik esportatzeko';

  @override
  String get noContactsImport => 'Ez dago inportatzeko kontaktu berririk';

  @override
  String get nodeAddress => 'Kaspa Nodoa';

  @override
  String get nodeDeleteMessage => 'Ziur al zaude ezabatu nahi duzula?';

  @override
  String get nodeDeleteTitle => 'Kaspa Nodoaren konfigurazioa ezabatu?';

  @override
  String get nodeNameEmpty => 'Nodoaren izena ezin da hutsik egon';

  @override
  String get nodeNameHint => 'Sartu Nodoaren Izena';

  @override
  String get nodeNotSyncedException => 'Nodoa ez dago sinkronizatuta';

  @override
  String get nodeNoUTXOIndexException => 'Nodoak ez du UTXO indizerik';

  @override
  String get nodeSecureConnection => 'Secure connection';

  @override
  String get nodesSheetTitle => 'Kaspa Nodoak';

  @override
  String get nodeUrlHint => 'Sartu Nodoaren URL';

  @override
  String get nodeUrlInvalid => 'Nodoaren URL okerra';

  @override
  String get noQrCodeFound => 'Ez da QR koderik aurkitu';

  @override
  String get noSkipButton => 'Ez. Saltatu.';

  @override
  String get notAccepted => 'ez da onartu';

  @override
  String get noteLabel => 'Note:';

  @override
  String get noUppercase => 'EZ';

  @override
  String get off => 'Itzali';

  @override
  String get on => 'Piztu';

  @override
  String get optionalLabel => '(Optional)';

  @override
  String get paperWallet => 'Paperezko Kartera';

  @override
  String get passwordBlank => 'Pasahitza ezin da hutsik egon';

  @override
  String get passwordNoLongerRequiredToOpenParagraph =>
      'Ez duzu pasahitzik beharko kartera hau irekitzeko.';

  @override
  String get passwordsDontMatch => 'Pasahitzak ez dira berdinak';

  @override
  String get passwordWillBeRequiredToOpenParagraph =>
      'Pasahitz hau beharrezkoa izango da kartera hau irekitzeko.';

  @override
  String get pasteMnemonicError =>
      'Paper zorroan dagoen esaldi sekretua okerra da';

  @override
  String get pending => 'zain';

  @override
  String get pinConfirmError => 'Pin zenbakiak ezberdinak dira';

  @override
  String get pinConfirmTitle => 'Balieztatu zure PIN zenbakia';

  @override
  String get pinCreateTitle => 'Sortu 6 digituko PIN zenbakia';

  @override
  String get pinEnterTitle => 'Satu PIN zenbakia';

  @override
  String get pinInvalid => 'PIN zenbakia okerra';

  @override
  String get pinMethod => 'PIN';

  @override
  String get pinSeedBackup => 'Sartu PIN zenbakia esaldi sekretua gordetzeko';

  @override
  String get preferences => 'Lehentasunak';

  @override
  String get privacyPolicy => 'Pribatutasun-politika';

  @override
  String get qrInvalidAddress => 'QR kodeak ez du baliozko helbiderik';

  @override
  String get qrInvalidSeed =>
      'QR kodeak ez du baliozko hazia edo gako pribaturik';

  @override
  String get qrMnemonicError => 'QR kodeak ez du baliozko esaldi sekreturik';

  @override
  String get receive => 'Jaso';

  @override
  String get receiveAddress => 'Jasotzeko Helbidea';

  @override
  String get receiveAddressCopied => 'Jasotezko helbidea kopiatuta';

  @override
  String get receiveAddressListEmpty =>
      'Jasotzeko helbide-zerrenda hutsik dago';

  @override
  String get received => 'Jasotuta';

  @override
  String get receiveIndex => 'Jaso Indizea';

  @override
  String receiveIndexParam(String addressIndex) {
    return 'Jaso $addressIndex';
  }

  @override
  String get removeContact => 'Ezabatu Kontaktua';

  @override
  String removeContactConfirmation(String contactName) {
    return 'Ziur zaude $contactName ezabatu nahi duzula?';
  }

  @override
  String get removeWalletAction => 'Kartera Ezabatu';

  @override
  String get removeWalletBiometricsMessage => 'Autentifikatu Kartera kentzeko';

  @override
  String get removeWalletDetail =>
      'Kartera hau kentzen baduzu, esaldi sekretua eta karterarekin erlazionatutako datu guztiak kenduko dira gailutik. Esaldi sekretuaren babeskopia egiten ez bada, ezingo dituzu berriro zure fondoei sartu.';

  @override
  String get removeWalletPinMessage => 'Sartu PIN zenbakia Kartera Kentzeko';

  @override
  String get removeWalletReassurance =>
      'Esaldi sekretuaren babeskopia egiten duzun bitartean, ez duzu zertaz kezkatu.';

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
      'Pasahitz bat beharra jar nahi duzu kartera hau irekitzeko?';

  @override
  String get restartSetupButton => 'Konfigurazioa berriro hazi';

  @override
  String get scanFailedMessage =>
      'Ezin izan da eskaneatu. Saiatu berriro geroago';

  @override
  String get scanMore => 'GEHIAGO ESKANEATU';

  @override
  String get scanMoreAddresses => 'Eskaneatu helbide gehiago bilatzeko';

  @override
  String get scannedIndex => 'Eskaneatuta';

  @override
  String get scanningDescription => 'Helbide berriak bilatzen...';

  @override
  String get scanningTitle => 'Eskaneatzen';

  @override
  String get scanQrCode => 'Eskaneatu QR kodea';

  @override
  String get scanQrCodeError => 'Ezin izan da qr kodea ulertzea';

  @override
  String get secretInfo =>
      'Hurrengo pantailan, zure esaldi sekretua ikusiko duzu. Zure fondoak sartzeko pasahitza da. Funtsezkoa da babeskopia egitea eta inoiz inorekin partekatzea.';

  @override
  String get secretInfoHeader => 'Segurtasuna lehenik!';

  @override
  String get secretPhrase => 'Esaldi sekretua';

  @override
  String get secretPhrase12Words => '12 WORDS';

  @override
  String get secretPhrase24Words => '24 WORDS';

  @override
  String get secretWarning =>
      'Zure gailua galtzen baduzu edo aplikazioa desinstalatzen baduzu, zure esaldi sekretua beharko duzu zure fondoak berreskuratzeko!';

  @override
  String get securityHeader => 'Segurtasuna';

  @override
  String get seed => 'Hazia';

  @override
  String get seedInvalid => 'Hazia okerra da';

  @override
  String get selectAddress => 'Select Address';

  @override
  String get send => 'Bidali';

  @override
  String get sendConfirm => 'Bidali';

  @override
  String get sendError => 'Akats bat gertatu da. Saiatu berriro mesedez';

  @override
  String get sending => 'Bidali';

  @override
  String get sendNote => 'OHARRA';

  @override
  String get sendToAddressTitle => 'Nori';

  @override
  String get sendTxProgressDescription =>
      'Mesedez, itxaron transakzioa bidaltzen den bitartean';

  @override
  String get sendTxProgressTitle => 'Transakzioa bidaltzen';

  @override
  String get sent => 'Bidalita';

  @override
  String get sentTo => 'Sent to';

  @override
  String get setPassword => 'Ezarri Pasahitza';

  @override
  String get setPasswordSuccess => 'Karteraren pasahitza ezarri da';

  @override
  String get settingsHeader => 'Ezarpenak';

  @override
  String get settingsTransfer => 'Kargatu Paper-karteratik';

  @override
  String get setupFailedMessage => 'Zerbait gaizki joan da';

  @override
  String get setWalletPassword => 'Ezarri kartearen pasahitza';

  @override
  String get shareKaspium => 'Partekatu Kaspium';

  @override
  String get shareKaspiumSubject => 'Ikusi Kaspium Kartera';

  @override
  String get shareKaspiumText =>
      'Ikusi Kaspium - Kaspa mugikorren Kartera. \nWebgunea - kaspium.io';

  @override
  String get somethingWentWrong => 'Zerbait gaizki joan da';

  @override
  String get systemDefault => 'Sistema lehenetsia';

  @override
  String get tapToHide => 'Sakatu ezkutatzeko';

  @override
  String get tapToReveal => 'Sakatu erakusteko';

  @override
  String get themeDark => 'Gai iluna';

  @override
  String get themeHeader => 'Gaia';

  @override
  String get themeLight => 'Gai Argia';

  @override
  String get thisWallet => '#Kartera hau';

  @override
  String get to => 'Nori';

  @override
  String get toAddress => 'Helbidera';

  @override
  String get tooManyFailedAttempts => 'Huts gehigi saiatu dira desblokeatzeko.';

  @override
  String get totalValue => 'Balio Osoa';

  @override
  String get transactionId => 'Transakzio ID';

  @override
  String get transactionsUppercase => 'TRANSAKZIOAK';

  @override
  String get transfer => 'Transferentzia';

  @override
  String get transferClose => 'Sakatu edozein lekutan leihoa ixteko.';

  @override
  String transferComplete(String amount) {
    return '$amount KAS behar bezala transferitu da zure Kaspium Karterera.\n';
  }

  @override
  String transferConfirmInfo(String amount) {
    return '$amount KAS-ko saldoa duen kartera bat detektatu da.';
  }

  @override
  String get transferConfirmInfoSecond =>
      'Ukitu berretsi funtsak transferitzeko.\n';

  @override
  String get transferConfirmInfoThird =>
      'Baliteke transferentzia segundo batzuk behar izatea burutzeko.';

  @override
  String get transferError =>
      'Akats bat gertatu da transferentzian. Saiatu berriro geroago.';

  @override
  String get transferHeader => 'Funtsak transferitzea';

  @override
  String transferIntro(String button) {
    return 'Prozesu honek funtsak paperezko kartera batetik zure Kaspium Kartera transferituko ditu. \n\nSakatu \"$button\" botoia hasteko.';
  }

  @override
  String get transferLoading => 'Bidaltzen';

  @override
  String get transferManualHint => 'Mesedez, sartu behean hazia.';

  @override
  String get transferNoFunds => 'Hazi honek ez du KASrik';

  @override
  String get transferQrScanError => 'QR kode honek ez du baliozko hazirik.';

  @override
  String get transferQrScanHint =>
      'Eskaneatu Kaspa \nhazia edo giltza pribatu bat';

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
  String get unconfirmed => 'Baieztatu gabe';

  @override
  String get unknown => 'ezezaguna';

  @override
  String get unlock => 'desblokeatu';

  @override
  String get unlockBiometrics => 'Autentifikatu kartera desblokeatzeko';

  @override
  String get unlockPin => 'Sartu PIN zenbakia kartera desblokeatzeko';

  @override
  String get utxoSelectionHint => 'Please select more UTXOs';

  @override
  String get utxoSelectionTitle => 'Select UTXOs';

  @override
  String get utxosUppercase => 'UTXOak';

  @override
  String get viewAddress => 'Helbidea Ikusi';

  @override
  String get viewTransaction => 'Transakzioa Ikusi';

  @override
  String get walletAddress => 'Wallet Address';

  @override
  String get walletAddresses => 'Karteraren Helbideak';

  @override
  String walletAddressesCopied(String addressType) {
    return 'Wallet $addressType Addresses Copied to Clipboard';
  }

  @override
  String walletAddressesCopyFailed(String addressType) {
    return 'Failed to Copy Wallet $addressType Addresses';
  }

  @override
  String get walletName => 'Helbidearen izena';

  @override
  String get walletNameDescription => 'Sartu izen bat zure helbidearentzat';

  @override
  String get walletNameHint => 'Helbidearen Izena';

  @override
  String get walletSetupAddressDiscovery => 'Helbideen aurkikuntza martxan';

  @override
  String get walletSetupMessage => 'Diru kartera konfiguratzen';

  @override
  String get walletsTitle => 'Karterak';

  @override
  String get warning => 'Abisua';

  @override
  String welcomeMessage(String version) {
    return 'Ongi etorri!\n\nHau da $version Kaspium-en bertsioa - Kaspa-ren mugikorren kartera';
  }

  @override
  String get welcomeText =>
      'Ongi etorri Kaspium-era. Hasteko, diru kartera berri bat sor dezakezu edo lehendik dagoen bat inporta dezakezu.';

  @override
  String get yes => 'Bai';

  @override
  String get yesButton => 'Bai';

  @override
  String get yesUppercase => 'BAI';
}
