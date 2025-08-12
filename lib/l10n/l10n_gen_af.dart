// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n_gen.dart';

// ignore_for_file: type=lint

/// The translations for Afrikaans (`af`).
class AppLocalizationsAf extends AppLocalizations {
  AppLocalizationsAf([String locale = 'af']) : super(locale);

  @override
  String get aboutTopperDescription =>
      'Topper deur Uphold is \'n maklik om te gebruik fiat-tot-kripto-oprit wat gebruikers in staat stel om kripto-geldeenhede te koop met \'n krediet-/debietkaart of met \'n bankrekening.';

  @override
  String get aboutTopperTitle => 'Omtrent Topper';

  @override
  String get accepted => 'aanvaar';

  @override
  String get account => 'Rekening';

  @override
  String get accounts => 'Rekeninge';

  @override
  String get ackBackedUp =>
      'Is jy seker dat jy \'n rugsteun van jou geheime frase het?';

  @override
  String get add => 'Voeg by';

  @override
  String get addAccount => 'Voeg Rekening By';

  @override
  String get addContact => 'Voeg Kontak By';

  @override
  String get addingNodeMessage => 'Wag asb. terwyl nodus gekontak word ';

  @override
  String get addingNodeTitle => 'Nodus Word Bygevoeg';

  @override
  String get addNode => 'Voeg Nodus By';

  @override
  String get addNodeFailed => 'Kon nie Kaspa-nodus byvoeg nie';

  @override
  String addNodeFailedMessage(String error) {
    return 'Fout: $error';
  }

  @override
  String get addNodeSuccess => 'Nodus Suksesvol Bygevoeg';

  @override
  String get address => 'Adres';

  @override
  String get addressCopied => 'Adres Gekopieer';

  @override
  String get addressCopiedFailed => 'Adres kopiëring onsuksesvol';

  @override
  String get addressDiscovery => 'Adresopsporing';

  @override
  String get addressFilterDialogOptionAllAddresses => 'Besigtig Alle Adresse';

  @override
  String get addressFilterDialogOptionNonZeroBalances =>
      'Besigtig Adresse Met Balanse';

  @override
  String get addressFilterDialogTitle => 'Adresfilter';

  @override
  String get addressHint => 'Sleutel Adres In';

  @override
  String get addressMising => 'Sleutel Asseblief \'n Adres In';

  @override
  String get addressShare => 'Deel Adres';

  @override
  String get advancedHeader => 'Gevorderd';

  @override
  String get amount => 'Hoeveelheid';

  @override
  String amountConfirm(String amount, String coin) {
    return 'Hoeveelheid $amount $coin';
  }

  @override
  String get amountMissing => 'Sleutel asb. die Hoeveelheid in';

  @override
  String get amountZero => 'Hoeveelheid kan nie nul wees nie';

  @override
  String get areYouSure => 'Is jy seker?';

  @override
  String get authBiometricMessage => 'Verifieer om Kriptobeursie by te Voeg';

  @override
  String get authMethod => 'Verifikasiemetode';

  @override
  String get authPinMessage => 'Sleutel PIN in om Kriptobeurse by te Voeg';

  @override
  String get autoLockHeader => 'Sluit Outomaties';

  @override
  String get available => 'Beskikbaar';

  @override
  String get backupConfirmButton => 'Ek het dit Gerugsteun';

  @override
  String get backupSecretPhrase => 'Rugsteun Geheime Frase';

  @override
  String get balance => 'Saldo';

  @override
  String get biometricsMethod => 'Biometrika';

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
  String get blockExplorer => 'Blokverkenner';

  @override
  String get buyKaspaMessage => 'Koop \$KAS vinnig & maklik.';

  @override
  String get buyKaspaMessageSecondary =>
      'Diens aangebied deur Topper, Uphold se fiat-na-kripto oprit.';

  @override
  String get buyKaspaSubtitle => 'Via Topper deur Uphold';

  @override
  String get buyKaspaTitle => 'Koop Kaspa';

  @override
  String get cancel => 'Kanselleer';

  @override
  String get change => 'Verander';

  @override
  String get changeAddress => 'Verander Adres';

  @override
  String get changeAddressCopied => 'Adresverandering Gekopieer';

  @override
  String get changeAddressListEmpty => 'Verander adreslys is leeg';

  @override
  String get changeIndex => 'Verander Indeks';

  @override
  String changeIndexParam(String addressIndex) {
    return 'Verander $addressIndex';
  }

  @override
  String get checkCameraPermission => 'Gaan asseblief kamera toestemmings na';

  @override
  String get clipboardEmpty => 'Knipbord is leeg';

  @override
  String get close => 'Sluit';

  @override
  String get closeUppercased => 'SLUIT';

  @override
  String get compoundFailure => 'Kombinering van transaksies onsuksesvol';

  @override
  String get compoundingMessage => 'Wag assebleif...';

  @override
  String get compoundingUtxos => 'Kombinering van transaksies';

  @override
  String get compoundRequired => 'Kombinering vereis';

  @override
  String get compoundRequiredDescription =>
      'Die transaksiebedrag vereis te veel UTXOs. Kombinering sal die aantal UTXOs verminder.';

  @override
  String get compoundSuccess => 'Kombinering suksesvol';

  @override
  String get compoundTooFewUtxos => 'Ten minste twee UTXOs word benodig';

  @override
  String get compoundUppercased => 'KOMBINEER';

  @override
  String get compoundUtxos => 'Kombineer transaksies';

  @override
  String get compoundUtxosConfirmation => 'Kombineer transaksies?';

  @override
  String get compoundUtxosDescription =>
      'Kombineer veelvuldige UTXOs in hierdie een';

  @override
  String get confirm => 'Bevestig';

  @override
  String confirmations(String confirmations) {
    return '$confirmations bevestigings';
  }

  @override
  String get confirmed => 'Bevestig';

  @override
  String get confirming => 'Besig om te bevestig';

  @override
  String get confirmPasswordHint => 'Bevestig die wagwoord';

  @override
  String contactAdded(String contactName) {
    return '$contactName bygevoeg by kontakte';
  }

  @override
  String contactAddressCopied(String address) {
    return '$address adres gekopieer';
  }

  @override
  String get contactExists => 'Kontak Bestaan Reeds';

  @override
  String get contactHeader => 'Kontak';

  @override
  String get contactInvalid => 'Ongeldige Kontaknaam';

  @override
  String get contactNameHint => 'Sleutel \'n Naam in @';

  @override
  String get contactNameMissing => 'Kies \'n Naam vir hierdie Kontak';

  @override
  String contactRemoved(String contactName) {
    return '$contactName is verwyder van kontakte!';
  }

  @override
  String get contactsHeader => 'Kontakte';

  @override
  String get contactsImportErr => 'Kon nie kontakte invoer nie';

  @override
  String contactsImportSuccess(String noContacts) {
    return ' $noContacts kontakte suksesvol ingevoer';
  }

  @override
  String get contactSupport => 'Kontak Ondersteuning';

  @override
  String get copied => 'Gekopieer';

  @override
  String get copy => 'Kopieer';

  @override
  String get copyAddress => 'Kopieer Adres';

  @override
  String get copyErrorButton => 'Kopieerfout';

  @override
  String get copyKpub => 'Kopieer Kpub';

  @override
  String get createAPasswordHeader => 'Skep \'n wagwoord';

  @override
  String get createPasswordFirstParagraph =>
      'Jy kan \'n wagwoord skep om bykomende sekuriteit by jou kriptobeursie te voeg.';

  @override
  String get createPasswordHint => 'Skep \'n wagwoord';

  @override
  String get createPasswordSecondParagraph =>
      'Wagwoord is opsioneel, en jou kriptobeursie sal ongeag jou PIN of biometrie beskerm word.';

  @override
  String get createPasswordSheetHeader => 'Skep';

  @override
  String get currency => 'Geldeenheid';

  @override
  String get currencyPoweredBy => 'Aangedryf deur CoinGecko';

  @override
  String get currentIndex => 'Huidige';

  @override
  String get defaultAccountName => 'Adres 1';

  @override
  String defaultNewAccountName(int addressIndex) {
    return 'Ontvang $addressIndex';
  }

  @override
  String get defaultWalletName => 'My Kriptobeursie';

  @override
  String get disablePasswordSheetHeader => 'Deaktiveer';

  @override
  String get disablePasswordSuccess => 'Wagwoord is gedeaktiveer';

  @override
  String get disableWalletPassword => 'Deaktiveer Kriptobeursiewagwoord';

  @override
  String get doContinue => 'Gaan Voort';

  @override
  String get donate => 'Skenk';

  @override
  String get donateTo => 'Skenk Aan';

  @override
  String get dontShowAgain => 'Moenie weer vertoon nie';

  @override
  String emailAction(String email) {
    return 'E-pos $email';
  }

  @override
  String get emptyCardIntroUtxos =>
      'Dit is die UTXO\'s-oortjie. Alle UTXO\'s in jou beursie sal hier verskyn';

  @override
  String get emptyResult => 'Leë Resultaat';

  @override
  String get emptyWalletName => 'Beursienaam kan nie leeg wees nie';

  @override
  String get encryptionFailedError => 'Kon nie \'n beursiewagwoord instel nie';

  @override
  String get enterAddress => 'Sleutel Adres in';

  @override
  String get enterAmount => 'Sleutel  Hoeveelheid in';

  @override
  String get enterFiatValue => 'Sleuetl Fiat Waarde in';

  @override
  String get enterNote => 'Sleutel Nota in';

  @override
  String get enterPasswordHint => 'Sleutel jou wagwoord in';

  @override
  String get errorMessageCopied => 'Foutboodskap na knipbord gekopieer';

  @override
  String get exampleCardIntro =>
      'Hierdie is die transaksies-oortjie. Sodra jy \'n transaksie stuur of ontvang, sal dit hier verskyn.';

  @override
  String get export => 'Voer uit';

  @override
  String get fee => 'Fooi';

  @override
  String get feeBaseUppercase => 'BASE FEE';

  @override
  String feeConfirm(String amount, String coin) {
    return 'Fooi $amount $coin';
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
  String get feeTitle => 'FOOI';

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
  String get fetchingTransactions => 'Kry Transaksies';

  @override
  String get fingerprintSeedBackup => 'Verifieer om Geheime Frase te Rugsteun';

  @override
  String get getStarted => 'Begin';

  @override
  String get goBackButton => 'Gaan Terug';

  @override
  String get gotItButton => 'Het dit!';

  @override
  String get hideAccountHeader => 'Hide Account?';

  @override
  String get hideAccountText =>
      'Are you sure you want to hide this account? You can re-add it later by tapping the \"Add Account\" button.';

  @override
  String get hintAddressListEmpty => 'Kyk adresfilter bo-regs';

  @override
  String get import => 'Voer in';

  @override
  String get importAsLegacyWallet => 'Import as Legacy Wallet';

  @override
  String get importAsStandardWallet => 'Import as Standard Wallet';

  @override
  String get importKpub => 'Voer Slegs-besigtiging Beursie in';

  @override
  String get importKpubClipboardError =>
      'Knipbord inhoud is nie \'n geldige uitgebreide publieke sleutel nie';

  @override
  String get importKpubHint =>
      'Sleutel asb.jou uitgebreide publieke sleutel in.';

  @override
  String get importKpubInvalidMessage =>
      'Maak asb. seker dat jy jou uitgebreide publieke sleutel korrek ingevoer het!';

  @override
  String get importKpubQrCodeError =>
      'QR-kode bevat nie \'n geldige uitgebreide publieke sleutel nie';

  @override
  String get importLegacyWalletDetectedDetails =>
      'Do you want to import your wallet in legacy mode?';

  @override
  String get importLegacyWalletDetectedTitle => 'Legacy Wallet Detected';

  @override
  String get importOption12WordsDescription =>
      'Versoenbaar met Web Wallet en KDX';

  @override
  String get importOption12WordsTitle => 'Voer 12-Woord Geheime Frase in';

  @override
  String get importOption24WordsDescription =>
      'Versoenbaar met Cli Wallet en Ledger';

  @override
  String get importOption24WordsTitle => 'Voer 24-Woord Geheime Frase in';

  @override
  String get importOptionKpubDescription =>
      'Moniteer die balans en transaksies van \'n kriptobeursie d.m.v. \'n uitgebreide publieke sleutel';

  @override
  String get importOptionKpubTitle => 'Voer Slegs-besigtiging Beursie in';

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
  String get importSecretPhrase => 'Voer Geheime Frase in';

  @override
  String get importSecretPhraseHint =>
      'Sleutel asb. jou 24-woord geheime frase hieronder in.';

  @override
  String get importSecretPhraseHintCombo =>
      'Sleutel asb. jou 12- of 24-woord geheime frase hieronder in.';

  @override
  String get importSecretPhraseHintLegacy =>
      'Sleutel asb. jou 12-woord geheime frase hieronder in.';

  @override
  String get importWallet => 'Voer Kriptobeursie in';

  @override
  String get importWalletAdvancedOptions => 'Advanced Options';

  @override
  String get importWalletDescription => 'Kies asseblief \'n opsie hieronder.';

  @override
  String get indexHeader => 'Indeks';

  @override
  String get instantly => 'Onmiddelik';

  @override
  String get insufficientBalance => 'Onvoldoende Saldo';

  @override
  String get insufficientBalanceDetails =>
      'Jy het nie genoeg KAS vir hierdie transaksie nie';

  @override
  String get invalidAddress => 'Adres ingesleutel is ongeldig';

  @override
  String get invalidAmount => 'Ongeldige Hoeveelheid';

  @override
  String get invalidChecksumMessage =>
      'Maak asb. seker dat jou Geheime Frase reg ingesleutel is!';

  @override
  String get invalidDestinationAddress => 'Ongeldige Bestemmingadres';

  @override
  String get invalidKpubMessage =>
      'Maak asb. seker dat jou uitgebreide publieke sleutel reg ingesleutel is!';

  @override
  String get invalidPassword => 'Ongeldige Wagwoord';

  @override
  String get invalidSecretPhrase => 'Ongeldige Geheime Frase';

  @override
  String get invalidSecretPhraseConfirmation => 'Ek weet wat ek doen';

  @override
  String get invalidSecretPhraseDetails =>
      'Die Geheime Frase wat jy ingevoer het, het \'n ongeldige kontrolesom.';

  @override
  String get kaspaDevFund => 'Kaspa Ontwikkelingsfonds';

  @override
  String get kaspaUriCopied => 'Kaspa URI Gekopieer';

  @override
  String get kaspaUriCopyFailed => 'Kaspa URI kopiëring onsuksesvol';

  @override
  String get kaspaUriInvalid => 'Ongeldige Kaspa URI';

  @override
  String get kaspiumWallet => 'Kaspium Kriptobeursie';

  @override
  String get kpubAuth => 'Besigtig Uitgebreide Publieke Sleutel';

  @override
  String get kpubCopied => 'Uitgebreide Publieke Sleutel Gekopieer';

  @override
  String get kpubCopyFailed =>
      'Kopieer van Uitgebreide Publieke Sleutel Onsuksesvol';

  @override
  String get kpubDescription =>
      'Die uitgebreide publieke sleutel kan gebruik word om jou beursie as \'n \'slegs-besigtig\' beursie in te voer.';

  @override
  String get kpubTitle => 'Uitgebreide Publieke Sleutel';

  @override
  String get language => 'Taal';

  @override
  String get loadingTransactions => 'Besig om Transaksies te laai...';

  @override
  String get lockAppSetting => 'Verifieer by Aanvang';

  @override
  String get locked => 'Gesluit';

  @override
  String get loggingOutMessage => 'Teken uit...';

  @override
  String get logout => 'Uitteken';

  @override
  String get logoutDialogContent =>
      'Is jy seker jy wil van hierdie kriptobeursie uitteken?';

  @override
  String get logoutOrSwitchWallet => 'Teken uit / Verander Beursie';

  @override
  String get manage => 'Bestuur';

  @override
  String get manualEntry => 'Handmatige Invoer';

  @override
  String get maxSend => 'Maksimum Stuur';

  @override
  String get missingSecretPhrase => 'Missing Secret Phrase';

  @override
  String get moreInfo => 'Meer Inligting';

  @override
  String get networkHeader => 'Netwerk';

  @override
  String get newAddress => 'Nuwe Adres';

  @override
  String get newIndex => 'Nuut';

  @override
  String get newWallet => 'Nuwe Kriptobeursie';

  @override
  String get nextButton => 'Volgende';

  @override
  String get no => 'Nee';

  @override
  String get noContactsExport => 'Daar\'s geen kontakte om uit te voer nie';

  @override
  String get noContactsImport => 'Geen nuwe kontakte om in te voer nie';

  @override
  String get nodeAddress => 'Kaspa Nodus';

  @override
  String get nodeDeleteMessage => 'Is jy seker jy wil dit uitwis?';

  @override
  String get nodeDeleteTitle => 'Wis Kaspa Nodus Opstelling uit';

  @override
  String get nodeNameEmpty => 'Nodusnaam kan nie leeg wees nie';

  @override
  String get nodeNameHint => 'Sleutel Nodusnaam in';

  @override
  String get nodeNotSyncedException => 'Nodus is nie gesinkroniseer nie';

  @override
  String get nodeNoUTXOIndexException => 'Nodus het nie \'n UTXO indeks nie';

  @override
  String get nodeSecureConnection => 'Veilige verbinding';

  @override
  String get nodesSheetTitle => 'Kaspa Nodus';

  @override
  String get nodeUrlHint => 'Sleutel Nodus URL in';

  @override
  String get nodeUrlInvalid => 'Ongeldige Nodus URL';

  @override
  String get noQrCodeFound => 'Geen QR-kode gevind nie';

  @override
  String get noSkipButton => 'Nee, Slaan Oor';

  @override
  String get notAccepted => 'nie aanvaar nie';

  @override
  String get noteLabel => 'Nota:';

  @override
  String get noUppercase => 'NEE';

  @override
  String get off => 'Af';

  @override
  String get on => 'Aan';

  @override
  String get optionalLabel => '(Optioneel)';

  @override
  String get paperWallet => 'Papier Kriptobeursie';

  @override
  String get passwordBlank => 'Wagwoord kan nie leeg wees nie';

  @override
  String get passwordNoLongerRequiredToOpenParagraph =>
      'Jy sal nie \'n wagwoord benodig om hierdie kriptobeursie oop te maak nie.';

  @override
  String get passwordsDontMatch => 'Wagwoorde stem nie ooreen nie';

  @override
  String get passwordWillBeRequiredToOpenParagraph =>
      'Hierdie wagwoord sal benodig word om hierdie kriptobeursie oop te maak.';

  @override
  String get pasteMnemonicError =>
      'Knipbord-inhoud is nie \'n geldige geheime frase nie';

  @override
  String get pending => 'Hangend';

  @override
  String get pinConfirmError => 'PIN\'s stem nie ooreen nie';

  @override
  String get pinConfirmTitle => 'Bevestig jou PIN';

  @override
  String get pinCreateTitle => 'Skep \'n 6-syfer PIN';

  @override
  String get pinEnterTitle => 'Sleutel PIN in';

  @override
  String get pinInvalid => 'Ongeldige PIN ingesleutel';

  @override
  String get pinMethod => 'PIN';

  @override
  String get pinSeedBackup => 'Sleutel PIN in om Geheime Frase te Rugsteun';

  @override
  String get preferences => 'Voorkeure';

  @override
  String get privacyPolicy => 'Privaatheid Beleid';

  @override
  String get qrInvalidAddress => 'QR-kode bevat nie \'n geldige adres nie';

  @override
  String get qrInvalidSeed =>
      'QR-kode bevat nie \'n geldig saadfrase of private sleutel nie';

  @override
  String get qrMnemonicError =>
      'QR-kode bevat nie \'n geldige geheime frase nie';

  @override
  String get receive => 'Ontvang';

  @override
  String get receiveAddress => 'Ontvangadres';

  @override
  String get receiveAddressCopied => 'Ontvangadres gekopieer';

  @override
  String get receiveAddressListEmpty => 'Ontvangeradreslys is leeg';

  @override
  String get received => 'Ontvang';

  @override
  String get receiveIndex => 'Ontvangindeks';

  @override
  String receiveIndexParam(String addressIndex) {
    return 'Ontvang $addressIndex';
  }

  @override
  String get removeContact => 'Verwyder Kontak';

  @override
  String removeContactConfirmation(String contactName) {
    return 'Is jy seker jy wil $contactName verwyder?';
  }

  @override
  String get removeWalletAction => 'Verwyder Kriptobeursie';

  @override
  String get removeWalletBiometricsMessage =>
      'Verifieer om Kriptobeursie te Verwyder';

  @override
  String get removeWalletDetail =>
      'Deur hierdie kriptobeursie te verwyder, sal die geheime frase en alle beursie-verwante data van hierdie toestel verwyder word. As die geheime frase nie gerugsteun word nie, sal jy nooit weer toegang tot jou fondse kan kry nie.';

  @override
  String get removeWalletPinMessage =>
      'Sleutel PIN in om Kriptobeursie te verwyder';

  @override
  String get removeWalletReassurance =>
      'Solank as wat jy die Geheime Frase gerugsteun het, het jy niks om oor bekommerd te wees nie.';

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
      'Vereis \'n wagwoord om hierdie kriptobeursie oop te maak?';

  @override
  String get restartSetupButton => 'Herbegin Opstelling';

  @override
  String get scanFailedMessage =>
      'Skandering onsuksesvol, probeer asb. later weer';

  @override
  String get scanMore => 'SOEK MEER';

  @override
  String get scanMoreAddresses => 'Soek Vir Meer Adresse';

  @override
  String get scannedIndex => 'Geskandeer';

  @override
  String get scanningDescription => 'Soek vir nuwe adresse...';

  @override
  String get scanningTitle => 'Skandering';

  @override
  String get scanQrCode => 'Skandeer QR-Kode';

  @override
  String get scanQrCodeError => 'Kon nie QR-kode ontleed nie';

  @override
  String get secretInfo =>
      'In die volgende skerm sal jy jou geheime frase sien. Dit is \'n wagwoord om toegang tot jou fondse te kry. Dit is van kardinale belang dat jy dit rugsteun en dit nooit met iemand deel nie.';

  @override
  String get secretInfoHeader => 'Sekuriteit Eerste!';

  @override
  String get secretPhrase => 'Geheime Frase';

  @override
  String get secretPhrase12Words => '12 WORDS';

  @override
  String get secretPhrase24Words => '24 WORDS';

  @override
  String get secretWarning =>
      'As jy jou toestel verloor of die toepassing deïnstalleer, sal jy jou geheime frase nodig hê om jou fondse te verhaal!';

  @override
  String get securityHeader => 'Sekuriteit';

  @override
  String get seed => 'Saad';

  @override
  String get seedInvalid => 'Saad is ongeldig';

  @override
  String get selectAddress => 'Kies Adres';

  @override
  String get send => 'Stuur';

  @override
  String get sendConfirm => 'Stuur';

  @override
  String get sendError => '\'n Fout het voorgekom. Probeer asseblief weer';

  @override
  String get sending => 'Stuur';

  @override
  String get sendNote => 'KENNISGEWING';

  @override
  String get sendToAddressTitle => 'Aan';

  @override
  String get sendTxProgressDescription =>
      'Wag asb. terwyl die transaksie gestuur word';

  @override
  String get sendTxProgressTitle => 'Transaksie Word Gestuur';

  @override
  String get sent => 'Gestuur';

  @override
  String get sentTo => 'Stuur aan';

  @override
  String get setPassword => 'Stel Wagwoord In';

  @override
  String get setPasswordSuccess => 'Kriptobeursie wagwoord is ingestel';

  @override
  String get settingsHeader => 'Instellings';

  @override
  String get settingsTransfer => 'Laai vanaf Papierbeursie';

  @override
  String get setupFailedMessage => 'Iets het verkeerd geloop';

  @override
  String get setWalletPassword => 'Stel Kriptobeursie Wagwoord In';

  @override
  String get shareKaspium => 'Deel Kaspium';

  @override
  String get shareKaspiumSubject => 'Kyk na Kaspium Kriptobeursie';

  @override
  String get shareKaspiumText =>
      'Kyk na Kaspium - Kaspa Selfoonbeursie.\nWebblad - kaspium.io';

  @override
  String get somethingWentWrong => 'Iets het verkeerd geloop';

  @override
  String get systemDefault => 'Stelsel Verstek';

  @override
  String get tapToHide => 'Tik om te versteek';

  @override
  String get tapToReveal => 'Tik om te vertoon';

  @override
  String get themeDark => 'Donker Tema';

  @override
  String get themeHeader => 'Tema';

  @override
  String get themeLight => 'Ligte Tema';

  @override
  String get thisWallet => '#Hierdie Beursie';

  @override
  String get to => 'Aan';

  @override
  String get toAddress => 'Ontvanger Adres';

  @override
  String get tooManyFailedAttempts => 'Te veel mislukte ontsluitpogings.';

  @override
  String get totalValue => 'Totale Waarde';

  @override
  String get transactionId => 'Transaksie ID';

  @override
  String get transactionsUppercase => 'TRANSAKSIES';

  @override
  String get transfer => 'Oordrag';

  @override
  String get transferClose => 'Tik enige plek om die venster toe te maak.';

  @override
  String transferComplete(String amount) {
    return '$amount KAS suksesvol oorgedra na jou Kaspium Kriptobeursie.\n';
  }

  @override
  String transferConfirmInfo(String amount) {
    return '\'n Kriptobeursie met \'n balans van $amount KAS is waargeneem.';
  }

  @override
  String get transferConfirmInfoSecond =>
      'Tik op bevestig om die fondse oor te dra..\n';

  @override
  String get transferConfirmInfoThird =>
      'Oordrag mag etlike sekondes neem om af te handel.';

  @override
  String get transferError =>
      '\'n Fout het voorgegekom gedurende die oordrag. Probeer asb. later weer.';

  @override
  String get transferHeader => 'Plaas Fondse oor';

  @override
  String transferIntro(String button) {
    return 'Hierdie proses sal die fondse vanaf \'n papierbeursie oordra na jou Kaspium Kriptobeursie.\n\nTik die  \"$button\" knoppie om te begin.';
  }

  @override
  String get transferLoading => 'Besig met oordrag';

  @override
  String get transferManualHint => 'Sleutel asb. die saadfrase hieronder in.';

  @override
  String get transferNoFunds => 'Hierdie saadfrase het geen KAS op dit nie';

  @override
  String get transferQrScanError =>
      'Hierdie QR-kode bevat nie \'n geldige saadfrase nie.';

  @override
  String get transferQrScanHint =>
      'Skandeer \'n Kaspa\nsaadfrase of privaatsleutel';

  @override
  String get txFilterDialogOptionAllTxs => 'Wys Alle Transaksies';

  @override
  String get txFilterDialogOptionHideNotAcceptedCoinbase =>
      'Verberg Nie-aanvaarde Coinbase Transaksies';

  @override
  String get txFilterDialogTitle => 'Transaksie Filter';

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
  String get txReport => 'Transaksieverslag';

  @override
  String get txReportDate => 'Datum';

  @override
  String get txReportDescription => 'Beskrywing';

  @override
  String get txReportDetails =>
      'Genereer \'n transaksieverslag, in CSV-formaat, wat die beursie se hele transaksiegeskiedenis bevat.';

  @override
  String get txReportError => 'Fout met opstel van verslag';

  @override
  String get txReportFeeAmount => 'Fooi Bedrag';

  @override
  String get txReportFeeCurrency => 'Fooi Geldeenheid';

  @override
  String get txReportFeeForCompound => 'Fooi vir Gekombineerde Transaksie';

  @override
  String get txReportFeeForSelfSend => 'Fooi om na eie adresse te stuur';

  @override
  String get txReportGenerate => 'Genereer';

  @override
  String get txReportGetReport => 'Kry Verslag';

  @override
  String get txReportLabel => 'Opskrif';

  @override
  String get txReportLabelCost => 'koste';

  @override
  String txReportNoLoadedTxs(int loadedTxs, int totalTxs) {
    return '($loadedTxs van $totalTxs)';
  }

  @override
  String get txReportNote => 'Nota';

  @override
  String txReportNoTxs(int numberOf) {
    return '$numberOf Transaksies Gevind';
  }

  @override
  String get txReportOptionIgnoreCompound =>
      'Ignoreer gekombineerde transaksies';

  @override
  String get txReportOptionIgnoreSelfTxs =>
      'Ignoreer transaksies gestuur aan myself';

  @override
  String get txReportOptionRefreshTxs => 'Herlaai transaksies';

  @override
  String get txReportReceivedAmount => 'Bedrag Ontvang';

  @override
  String get txReportReceivedCurrency => 'Geldeenheid Ontvang';

  @override
  String get txReportSentAmount => 'Bedrag Gestuur';

  @override
  String get txReportSentCurrency => 'Geldeenheid Gestuur';

  @override
  String get txReportStatusLoading => 'Laai transaksies';

  @override
  String get txReportStatusReady => 'Transaksieverslag is gereed!';

  @override
  String get txReportStatusRefreshing => 'Besig om transaksies te herlaai';

  @override
  String get txReportSubtitle => 'Kry CSV-lêer met transaksiegeskiedenis';

  @override
  String get txReportTxHash => 'TxHash';

  @override
  String get unconfirmed => 'onbevestig';

  @override
  String get unknown => 'onbekend';

  @override
  String get unlock => 'Ontsluit';

  @override
  String get unlockBiometrics => 'Verifieer om Kriptobeursie te Ontsluit';

  @override
  String get unlockPin => 'Sleutel PIN in om Kriptobeursie te Ontsluit';

  @override
  String get utxoSelectionHint => 'Please select more UTXOs';

  @override
  String get utxoSelectionTitle => 'Select UTXOs';

  @override
  String get utxosUppercase => 'UTXOs';

  @override
  String get viewAddress => 'Besigtig Adres';

  @override
  String get viewTransaction => 'Besigtig Transaksie';

  @override
  String get walletAddress => 'Kriptobeursie Adres';

  @override
  String get walletAddresses => 'Kriptobeursie Adresse';

  @override
  String walletAddressesCopied(String addressType) {
    return 'Kriptobeursie $addressType Adresse na Knipbord Gekopieer';
  }

  @override
  String walletAddressesCopyFailed(String addressType) {
    return 'Kopieer van Kriptobeursie $addressType Adresse Onsuksesvol';
  }

  @override
  String get walletName => 'Kriptobeursie Naam';

  @override
  String get walletNameDescription =>
      'Sleutel \'n naam vir jou kriptobeursie in';

  @override
  String get walletNameHint => 'Kriptobeursie Naam';

  @override
  String get walletSetupAddressDiscovery => 'Besig met Adresopsporing';

  @override
  String get walletSetupMessage => 'Besig met beursieopstelling';

  @override
  String get walletsTitle => 'Kriptobeursies';

  @override
  String get warning => 'Waarskuwing';

  @override
  String welcomeMessage(String version) {
    return 'Wekom!\n\nHierdie is weergawe $version van Kaspium - die selfoonbeursie vir Kaspa';
  }

  @override
  String get welcomeText =>
      'Welkom by Kaspium. Om te begin, kan jy \'n nuwe kriptobeursie  skep of \'n bestaande een invoer.';

  @override
  String get yes => 'Ja';

  @override
  String get yesButton => 'Ja';

  @override
  String get yesUppercase => 'JA';
}
