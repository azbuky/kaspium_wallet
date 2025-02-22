// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get account => 'Account';

  @override
  String get accounts => 'Accounts';

  @override
  String get ackBackedUp =>
      'Weet je zeker dat je een back-up hebt gemaakt van jouw Secret Phrase?';

  @override
  String get add => 'Toevoegen';

  @override
  String get addAccount => 'Account toevoegen';

  @override
  String get addContact => 'Contact toevoegen';

  @override
  String get addNode => 'Node toevoegen';

  @override
  String get addNodeFailed => 'Kaspa node toevoegen mislukt';

  @override
  String addNodeFailedMessage(String error) {
    return 'Mislukt: $error';
  }

  @override
  String get addNodeSuccess => 'Node Succesvol Toegevoegd';

  @override
  String get addingNodeMessage => 'Wacht even terwijl de node wordt verbonden';

  @override
  String get addingNodeTitle => 'Node wordt toegevoegd';

  @override
  String get address => 'Adres';

  @override
  String get addressCopied => 'Adres gekopieerd';

  @override
  String get addressCopiedFailed => 'Adres kopiëren is mislukt';

  @override
  String get addressHint => 'Voer adres in';

  @override
  String get addressMising => 'Voer a.u.b. een adres in';

  @override
  String get addressShare => 'Deel adres';

  @override
  String get kaspaUriCopied => 'Kaspa URI gekopiëerd';

  @override
  String get kaspaUriCopyFailed => 'Kaspa URI kopiëren is mislukt';

  @override
  String get advancedHeader => 'Geavanceerd';

  @override
  String get amount => 'Hoeveelheid';

  @override
  String amountConfirm(String amount, String coin) {
    return 'Hoeveelheid $amount $coin';
  }

  @override
  String get amountMissing => 'Voer a.u.b. een hoeveelheid in';

  @override
  String get amountZero => 'Hoeveelheid kan geen nul zijn';

  @override
  String get areYouSure => 'Weet je het zeker?';

  @override
  String get authBiometricMessage => 'Verificatie om wallet toe te voegen';

  @override
  String get authMethod => 'Verificatiemethode';

  @override
  String get authPinMessage => 'Vul pincode in om wallet toe te voegen';

  @override
  String get autoLockHeader => 'Automatisch vergrendelen';

  @override
  String get available => 'Beschikbaar';

  @override
  String get backupConfirmButton => 'Ik heb er een back-up van gemaakt';

  @override
  String get backupSecretPhrase => 'Backup Secret Phrase';

  @override
  String get missingSecretPhrase => 'Missing Secret Phrase';

  @override
  String get biometricsMethod => 'Biometrie';

  @override
  String get blockExplorer => 'Blok verkenner';

  @override
  String get cancel => 'Annuleer';

  @override
  String get change => 'Verander';

  @override
  String get changeAddress => 'Verander adres';

  @override
  String get changeAddressCopied => 'Verander adres gekopiëerd';

  @override
  String get changeIndex => 'Verander Index';

  @override
  String changeIndexParam(String addressIndex) {
    return 'Verander $addressIndex';
  }

  @override
  String get checkCameraPermission => 'Controleer aub camera toestemming';

  @override
  String get clipboardEmpty => 'Klembord is leeg';

  @override
  String get close => 'Sluiten';

  @override
  String get confirm => 'Bevestig';

  @override
  String get confirmPasswordHint => 'Bevestig het wachtwoord';

  @override
  String confirmations(String confirmations) {
    return '$confirmations bevestigingen';
  }

  @override
  String get confirmed => 'bevestigd';

  @override
  String get confirming => 'bevestigen';

  @override
  String contactAdded(String contactName) {
    return '$contactName is toegevoegd aan contacten';
  }

  @override
  String contactAddressCopied(String address) {
    return '$address adres gekopieerd';
  }

  @override
  String get contactExists => 'Contact bestaat al';

  @override
  String get contactHeader => 'Contact';

  @override
  String get contactInvalid => 'Ongeldige contact naam';

  @override
  String get contactNameHint => 'Voer naam in @';

  @override
  String get contactNameMissing => 'Kies een naam voor dit contact';

  @override
  String contactRemoved(String contactName) {
    return '$contactName is verwijderd uit contacten!';
  }

  @override
  String get contactsHeader => 'Contacten';

  @override
  String get contactsImportErr => 'Contacten importeren mislukt';

  @override
  String contactsImportSuccess(String noContacts) {
    return '$noContacts contacten succesvol geïmporteerd';
  }

  @override
  String get copied => 'Gekopieerd';

  @override
  String get copy => 'Kopiëren';

  @override
  String get copyAddress => 'Kopieer adres';

  @override
  String get copyErrorButton => 'Kopieer fout';

  @override
  String get createAPasswordHeader => 'Creëer een wachtwoord.';

  @override
  String get createPasswordFirstParagraph =>
      'Je kan een wachtwoord maken om extra beveiliging aan jouw wallet toe te voegen.';

  @override
  String get createPasswordHint => 'Creëer een wachtwoord';

  @override
  String get createPasswordSecondParagraph =>
      'Wachtwoord is optioneel en jouw wallet wordt in ieder geval met je pincode of biometrisch beveiligd.';

  @override
  String get createPasswordSheetHeader => 'Creëer';

  @override
  String get currency => 'Valuta';

  @override
  String get currencyPoweredBy => 'Powered by CoinGecko';

  @override
  String get defaultAccountName => 'Adres 1';

  @override
  String defaultNewAccountName(int addressIndex) {
    return 'Ontvang $addressIndex';
  }

  @override
  String get defaultWalletName => 'Mijn wallet';

  @override
  String get disablePasswordSheetHeader => 'Uitschakelen';

  @override
  String get disablePasswordSuccess => 'Wachtwoord is uitgeschakeld';

  @override
  String get disableWalletPassword => 'Wachtwoord van je wallet uitschakelen';

  @override
  String get doContinue => 'Doorgaan';

  @override
  String get donate => 'Doneer';

  @override
  String get donateTo => 'Doneren aan';

  @override
  String get dontShowAgain => 'Niet meer laten zien';

  @override
  String get emptyCardIntroUtxos =>
      'Dit is de UTXOs tab. Alle UTXOs in je wallet zullen hier te zien zijn';

  @override
  String get emptyResult => 'Leeg resultaat';

  @override
  String get emptyWalletName => 'Naam wallet kan niet leeg zijn';

  @override
  String get encryptionFailedError =>
      'Kan geen wachtwoord voor je wallet instellen';

  @override
  String get enterAddress => 'Vul adres in';

  @override
  String get enterAmount => 'Vul bedrag in';

  @override
  String get enterFiatValue => 'Voer fiatwaarde in';

  @override
  String get enterNote => 'Notitie invoeren';

  @override
  String get enterPasswordHint => 'Voer je wachtwoord in';

  @override
  String get errorMessageCopied => 'Fout melding gekopieerd naar klembord';

  @override
  String get exampleCardIntro =>
      'Dit is de transactie Tab. Wanneer je een transactie stuurt of ontvangt, is deze hier te zien.';

  @override
  String get export => 'Exporteren';

  @override
  String get fee => 'Tarief';

  @override
  String feeConfirm(String amount, String coin) {
    return 'Tarief $amount $coin';
  }

  @override
  String get feeTitle => 'TARIEF';

  @override
  String get fetchingTransactions => 'Transacties ophalen';

  @override
  String get fingerprintSeedBackup =>
      'Authoriseer om een back-up van je Secret Phrase te maken';

  @override
  String get goBackButton => 'Ga terug';

  @override
  String get gotItButton => 'Begrepen!';

  @override
  String get import => 'Importeren';

  @override
  String get importSecretPhrase => 'Importeer Secret Phrase';

  @override
  String get importSecretPhraseHint =>
      'Vul hieronder jouw uit 24 woorden bestaande Secret Phrase in';

  @override
  String get importSecretPhraseHintCombo =>
      'Voer hieronder alsjeblieft jouw seed phrase bestaande uit 12 of 24 woorden in.';

  @override
  String get importSecretPhraseHintLegacy =>
      'Voer hieronder uw seed phrase van 12 woorden in.';

  @override
  String get importWallet => 'Importeer wallet';

  @override
  String get importWalletDescription => 'Selecteer hieronder een optie.';

  @override
  String get instantly => 'Direct';

  @override
  String get insufficientBalance => 'Onvoldoende saldo';

  @override
  String get insufficientBalanceDetails =>
      'Je hebt niet genoeg KAS voor deze transactie';

  @override
  String get invalidAddress => 'Ongeldig adres van ontvanger';

  @override
  String get invalidAmount => 'Ongeldige hoeveelheid';

  @override
  String get invalidChecksumMessage =>
      'Controleer a.u.b. of je Secret Phrase\n goed is ingevoerd!';

  @override
  String get invalidKpubMessage =>
      'Controleer alsjeblieft of je extended public key juist is ingevoerd!';

  @override
  String get invalidDestinationAddress => 'Ongeldig ontvangstadres';

  @override
  String get invalidPassword => 'Wachtwoord ongeldig';

  @override
  String get kaspaDevFund => 'Kaspa Dev Fund';

  @override
  String get kaspiumWallet => 'Kaspium Wallet';

  @override
  String get language => 'Taal';

  @override
  String get loadingTransactions => 'Laden Transacties...';

  @override
  String get lockAppSetting => 'Authoriseer bij opstarten';

  @override
  String get locked => 'Vergrendeld';

  @override
  String get loggingOutMessage => 'Uitloggen...';

  @override
  String get logout => 'Uitloggen';

  @override
  String get logoutDialogContent =>
      'Weet je zeker dat je uit wil loggen bij deze portemonnee?';

  @override
  String get logoutOrSwitchWallet => 'Uitloggen / Portemonnee wisselen';

  @override
  String get manage => 'Beheren';

  @override
  String get manualEntry => 'Handmatige invoer';

  @override
  String get networkHeader => 'Netwerk';

  @override
  String get newAddress => 'Nieuw adres';

  @override
  String get newWallet => 'Nieuwe wallet';

  @override
  String get nextButton => 'Volgende';

  @override
  String get no => 'Nee';

  @override
  String get noContactsExport =>
      'Er zijn geen contacten aanwezig om te exporteren';

  @override
  String get noContactsImport =>
      'Geen nieuwe contacten gevonden om te importeren';

  @override
  String get noQrCodeFound => 'Geen QR code gevonden';

  @override
  String get noSkipButton => 'Nee, overslaan';

  @override
  String get noUppercase => 'Nee';

  @override
  String get nodeAddress => 'Kaspa Node';

  @override
  String get nodeDeleteMessage => 'Weet je zeker dat je het wil verwijderen?';

  @override
  String get nodeDeleteTitle => 'Verwijderen Kaspa Node configuratie?';

  @override
  String get nodeNameEmpty => 'Node naam kan niet leeg zijn';

  @override
  String get nodeNameHint => 'Node Naam invoeren';

  @override
  String get nodeUrlHint => 'Invoeren Node URL';

  @override
  String get nodeUrlInvalid => 'Invalide node URL';

  @override
  String get nodesSheetTitle => 'Kaspa Nodes';

  @override
  String get off => 'Uit';

  @override
  String get on => 'Aan';

  @override
  String get paperWallet => 'Paper wallet';

  @override
  String get passwordBlank => 'Wachtwoord mag niet leeg zijn';

  @override
  String get passwordNoLongerRequiredToOpenParagraph =>
      'Je hebt geen wachtwoord meer nodig deze wallet te openen.';

  @override
  String get passwordWillBeRequiredToOpenParagraph =>
      'Dit wachtwoord is vereist om deze wallet mee te openen.';

  @override
  String get passwordsDontMatch => 'Wachtwoorden komen niet overeen';

  @override
  String get pasteMnemonicError =>
      'Klembord inhoud is geen geldige Secret Phrase';

  @override
  String get pending => 'Afwachten';

  @override
  String get pinConfirmError => 'Pincodes komen niet overeen';

  @override
  String get pinConfirmTitle => 'Bevestig pincode';

  @override
  String get pinCreateTitle => 'Creëer een 6-cijferige pincode';

  @override
  String get pinEnterTitle => 'Voer pincode in';

  @override
  String get pinInvalid => 'Ongeldige pincode ingevoerd';

  @override
  String get pinMethod => 'Pincode';

  @override
  String get pinSeedBackup =>
      'Vul je pincode in om een back up te maken van je Secret Phrase';

  @override
  String get preferences => 'Voorkeuren';

  @override
  String get privacyPolicy => 'Privacybeleid';

  @override
  String get qrInvalidAddress => 'QR code bevat geen geldig adres';

  @override
  String get qrInvalidSeed => 'QR code bevat geen geldige seed of private key';

  @override
  String get qrMnemonicError => 'QR code bevat geen geldige Secret Phrase';

  @override
  String get receive => 'Ontvang';

  @override
  String get receiveAddress => 'Ontvangstadres';

  @override
  String get receiveAddressCopied => 'Ontvangstadres gekopieerd';

  @override
  String get receiveIndex => 'Ontvang Index';

  @override
  String receiveIndexParam(String addressIndex) {
    return 'Ontvang $addressIndex';
  }

  @override
  String get received => 'Ontvangen';

  @override
  String get removeContact => 'Verwijder contact';

  @override
  String removeContactConfirmation(String contactName) {
    return 'Weet je zeker dat je het contact $contactName wilt verwijderen?';
  }

  @override
  String get removeWalletAction => 'Verwijder wallet';

  @override
  String get removeWalletBiometricsMessage =>
      'Authenticatie om wallet te verwijderen';

  @override
  String get removeWalletDetail =>
      'Als u deze wallet verwijdert, worden je Secret Phrase en alle aan de wallet gerelateerde gegevens van dit apparaat verwijderd. Als er geen back-up wordt gemaakt van je Secret Phrase, heb je nooit meer toegang tot je fondsen.';

  @override
  String get removeWalletPinMessage => 'Vul PIN in om wallet te verwijderen';

  @override
  String get removeWalletReassurance =>
      'Zolang je een back-up van de Secret Phrase hebt gemaakt, hoef je je nergens zorgen over te maken.';

  @override
  String get requireAPasswordToOpenHeader =>
      'Wachtwoord vereist om deze wallet te openen';

  @override
  String get restartSetupButton => 'Setup herstarten';

  @override
  String get scanQrCode => 'Scan QR Code';

  @override
  String get scanQrCodeError => 'Kan QR-code niet analyseren';

  @override
  String get secretInfo =>
      'In het volgende scherm zie je jouw Secret Phrase. Het is een wachtwoord voor toegang tot jouw fondsen. Het is cruciaal dat je er een back-up van maakt en het nooit met iemand deelt.';

  @override
  String get secretInfoHeader => 'Veiligheid eerst!';

  @override
  String get secretPhrase => 'Secret Phrase';

  @override
  String get secretPhrase12Words => '12 WORDS';

  @override
  String get secretPhrase24Words => '24 WORDS';

  @override
  String get secretWarning =>
      'Als je jouw apparaat verliest of deze app verwijdert, heb je jouw Secret Phrase nodig om je fondsen te herstellen!';

  @override
  String get securityHeader => 'Beveiliging';

  @override
  String get seed => 'Seed';

  @override
  String get seedInvalid => 'Seed is ongeldig';

  @override
  String get send => 'Verstuur';

  @override
  String get sendConfirm => 'Stuur';

  @override
  String get sendError =>
      'Er is een fout opgetreden. Probeer het later nog eens.';

  @override
  String get sendNote => 'NOTITIE';

  @override
  String get sendToAddressTitle => 'naar';

  @override
  String get sendTxProgressDescription =>
      'Wacht even tot de transactie is verstuurd';

  @override
  String get sendTxProgressTitle => 'Transactie versturen';

  @override
  String get sending => 'Versturen';

  @override
  String get sent => 'Verstuurd';

  @override
  String get sentTo => 'Verzenden naar';

  @override
  String get setPassword => 'Wachtwoord aanmaken';

  @override
  String get setPasswordSuccess =>
      'Wachtwoord van je wallet is succesvol ingesteld';

  @override
  String get setWalletPassword => 'Stel een wachtwoord voor je portemonnee in';

  @override
  String get settingsHeader => 'Instellingen';

  @override
  String get settingsTransfer => 'Van Paper Wallet importeren';

  @override
  String get setupFailedMessage => 'Er is iets verkeerd gegaan';

  @override
  String get shareKaspium => 'Deel Kaspium';

  @override
  String get shareKaspiumSubject => 'Probeer de Kaspium Wallet';

  @override
  String get shareKaspiumText =>
      'Probeer Kaspium! Kaspa Mobiele Wallet.\nWebsite - kaspium.io';

  @override
  String get somethingWentWrong => 'Er is iets verkeerd gegaan';

  @override
  String get systemDefault => 'Systeem standaardinsteliingen';

  @override
  String get tapToHide => 'Tik om te verbergen';

  @override
  String get tapToReveal => 'Tik om zichtbaar te maken';

  @override
  String get themeDark => 'Donker thema';

  @override
  String get themeHeader => 'Thema';

  @override
  String get themeLight => 'Licht thema';

  @override
  String get thisWallet => '#Deze Wallet';

  @override
  String get to => 'Naar';

  @override
  String get toAddress => 'Naar Adres';

  @override
  String get tooManyFailedAttempts => 'Te veel mislukte ontgrendelpogingen.';

  @override
  String get totalValue => 'Totale Waarde';

  @override
  String get transactionId => 'Transactie ID';

  @override
  String get transactionsUppercase => 'TRANSACTIES';

  @override
  String get transfer => 'Overzetten';

  @override
  String get transferClose => 'Tik ergens om het venster te sluiten.';

  @override
  String transferComplete(String amount) {
    return '$amount Kaspa succesvol overgezet naar jouw Kaspium Wallet.\n';
  }

  @override
  String transferConfirmInfo(String amount) {
    return 'Een wallet met een saldo van $amount KAS is gedetecteerd.';
  }

  @override
  String get transferConfirmInfoSecond =>
      'Tik op bevestigen om het saldo over te zetten.\n';

  @override
  String get transferConfirmInfoThird =>
      'Het overzetten kan enkele seconden duren om te voltooien.';

  @override
  String get transferError =>
      'Tijdens het overzetten is er een fout opgetreden. Probeer het later nog eens.';

  @override
  String get transferHeader => 'Saldo overzetten';

  @override
  String transferIntro(String button) {
    return 'Met dit proces wordt het saldo van een paper wallet overgezet naar jouw Kaspium Wallet.\n\nTik op de \"$button\" knop om te starten.';
  }

  @override
  String get transferLoading => 'Overzetten';

  @override
  String get transferManualHint => 'A.u.b. hieronder de seed invoeren.';

  @override
  String get transferNoFunds => 'Op deze seed staat geen KAS.';

  @override
  String get transferQrScanError => 'Deze QR-code bevat geen geldige seed.';

  @override
  String get transferQrScanHint => 'Scan een Kaspa \nseed of een private key';

  @override
  String get unconfirmed => 'onbevestigd';

  @override
  String get notAccepted => 'niet geaccepteerd';

  @override
  String get accepted => 'geaccepteerd';

  @override
  String get unknown => 'Onbekend';

  @override
  String get unlock => 'Ontgrendelen';

  @override
  String get unlockBiometrics => 'Verifiëren om wallet te ontgrendelen';

  @override
  String get unlockPin => 'PIN invoeren om wallet te ontgrendelen';

  @override
  String get utxosUppercase => 'UTXOs';

  @override
  String get viewAddress => 'Bekijk adres';

  @override
  String get viewTransaction => 'Bekijk transactie';

  @override
  String get walletAddresses => 'Adressen van je Wallet';

  @override
  String get walletAddress => 'Walletadres';

  @override
  String get walletName => 'Naam van je wallet';

  @override
  String get walletNameDescription => 'Vul een naam voor je Wallet in';

  @override
  String get walletNameHint => 'Naam van je Wallet';

  @override
  String get walletSetupAddressDiscovery => 'Lopende adresdetectie';

  @override
  String get walletSetupMessage => 'Set up van je Wallet';

  @override
  String get walletsTitle => 'Wallets';

  @override
  String get warning => 'WAARSCHUWING';

  @override
  String welcomeMessage(String version) {
    return 'Welkom!\n\nDit is versie $version van Kaspium - de mobiele wallet voor Kaspa';
  }

  @override
  String get welcomeText =>
      'Welkom bij Kaspium. Creëer een nieuwe wallet of importeer een bestaande wallet om verder te gaan.';

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
    return 'Na $_temp0';
  }

  @override
  String get yes => 'Ja';

  @override
  String get yesButton => 'Ja';

  @override
  String get yesUppercase => 'JA';

  @override
  String get nodeNotSyncedException => 'Node draait niet synchroon';

  @override
  String get nodeNoUTXOIndexException => 'Node heeft geen UTXO index';

  @override
  String get nodeSecureConnection => 'Beveiligde verbinding';

  @override
  String get kaspaUriInvalid => 'Ongeldige Kaspa URI';

  @override
  String get compoundUtxos => 'Transacties compounden';

  @override
  String get compoundRequired => 'Compounden nodig';

  @override
  String get compoundRequiredDescription =>
      'Het transactiebedrag vereist te veel UTXO\'s. Compounding zal het aantal UTXO\'s verminderen.';

  @override
  String get compoundUtxosDescription => 'Combineer meerdere UTXOs in één';

  @override
  String get compoundUtxosConfirmation => 'Transacties compounden?';

  @override
  String get compoundingUtxos => 'Transacties aan het compounden';

  @override
  String get compoundingMessage => 'Even wachten...';

  @override
  String get compoundSuccess => 'Compounden gelukt';

  @override
  String get compoundFailure => 'Transacties compounden is mislukt';

  @override
  String get compoundTooFewUtxos => 'Ten minste twee UTXO\'s zijn vereist';

  @override
  String get balance => 'Saldo';

  @override
  String get maxSend => 'Max verzonden';

  @override
  String get compoundUppercased => 'COMPOUND';

  @override
  String get closeUppercased => 'SLUITEN';

  @override
  String get scanMoreAddresses => 'Scan voor meer adressen';

  @override
  String get addressDiscovery => 'Adres opzoeken';

  @override
  String get scanningTitle => 'Scannen';

  @override
  String get scanningDescription => 'Scannen naar nieuwe adressen...';

  @override
  String get scanMore => 'MEER SCANNEN';

  @override
  String get scanFailedMessage => 'Scan mislukt, probeer het later opnieuw';

  @override
  String get indexHeader => 'Index';

  @override
  String get currentIndex => 'Huidige';

  @override
  String get scannedIndex => 'Gescand';

  @override
  String get newIndex => 'Nieuw';

  @override
  String get addressFilterDialogTitle => 'Filter adressen';

  @override
  String get addressFilterDialogOptionAllAddresses => 'Bekijk alle adressen';

  @override
  String get addressFilterDialogOptionNonZeroBalances =>
      'Bekijk alle adressen met saldo';

  @override
  String get importOption24WordsTitle => 'Importeer 24-woordige seed phrase';

  @override
  String get importOption24WordsDescription =>
      'Compatibel met de Cli Wallet en Ledger';

  @override
  String get importOption12WordsTitle => 'Importeer 12-woordige seed phrase';

  @override
  String get importOption12WordsDescription =>
      'Compatibel met web wallet en KDX';

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
  String get importOptionKpubTitle => 'Importeer Watch Only Wallet';

  @override
  String get importOptionKpubDescription =>
      'Monitor de balans en transacties van een wallet met behulp van een extended public key';

  @override
  String get importKpub => 'Importeer Watch Only Wallet';

  @override
  String get importKpubHint => 'Voer alsjeblieft je extended public key in.';

  @override
  String get importKpubClipboardError =>
      'Klembordinhoud is geen geldige extended public key';

  @override
  String get importKpubQrCodeError =>
      'QR-code bevat geen geldige extended public key';

  @override
  String get importKpubInvalidMessage =>
      'Controleer alsjeblieft of je extended public key correct is ingevoerd!';

  @override
  String get receiveAddressListEmpty => 'Ontvangstadreslijst is leeg';

  @override
  String get changeAddressListEmpty => 'Wisseladreslijst is leeg';

  @override
  String get hintAddressListEmpty =>
      'Controleer het adresfilter vanuit de rechterbovenhoek';

  @override
  String get invalidSecretPhrase => 'Ongeldige Secret Phrase';

  @override
  String get invalidSecretPhraseDetails =>
      'De Secret Phrase die je hebt ingevoerd, heeft een ongeldige controlesom.';

  @override
  String get invalidSecretPhraseConfirmation =>
      'Ik weet wat ik aan het doen ben';

  @override
  String get contactSupport => 'Contact opnemen met Support';

  @override
  String emailAction(String email) {
    return 'Email $email';
  }

  @override
  String get noteLabel => 'Notitie:';

  @override
  String get optionalLabel => '(Optioneel)';

  @override
  String get buyKaspaSubtitle => 'Via Topper bij Uphold';

  @override
  String get buyKaspaTitle => 'Koop Kaspa';

  @override
  String get buyKaspaMessage => 'Koop \$Kas snel & gemakkelijk.';

  @override
  String get buyKaspaMessageSecondary =>
      'Service geleverd door Topper, Uphold\'s fiat-naar-crypto-onramp.';

  @override
  String get getStarted => 'Aan de slag';

  @override
  String get aboutTopperTitle => 'Over Topper';

  @override
  String get aboutTopperDescription =>
      'Topper van Uphold is een eenvoudig te gebruiken fiat-naar-crypto-onramp waarmee gebruikers cryptocurrencies kunnen kopen met een creditcard/betaalkaart of met een bankrekening.';

  @override
  String get moreInfo => 'Meer informatie';

  @override
  String get selectAddress => 'Selecteer adres';

  @override
  String get kpubTitle => 'Verlengde Public Key';

  @override
  String get kpubAuth => 'Bekijk verlengde Public Key';

  @override
  String get kpubDescription =>
      'De verlengde Public Key kan gebruikt worden om je wallet te importeren als een ‘alleen bekijken’ wallet.\n \n\n \n \n \n \n ';

  @override
  String get copyKpub => 'Kopiëer Kpub';

  @override
  String get kpubCopied => 'Verlengde Public Key gekopiëerd';

  @override
  String get kpubCopyFailed => 'Kopiëren van de verlengde Public Key mislukt';

  @override
  String walletAddressesCopied(String addressType) {
    return 'Walletadressen $addressType gekopiëerd naar klembord';
  }

  @override
  String walletAddressesCopyFailed(String addressType) {
    return 'Kopiëren van walletadressen $addressType mislukt';
  }

  @override
  String get txReport => 'Transactierapport';

  @override
  String get txReportSubtitle =>
      'Ontvang een CSV-bestand met transactiegeschiedenis';

  @override
  String get txReportDetails =>
      'Genereer een transactierapport in CSV-format, dat de hele transactiegeschiedenis van de wallet bevat.';

  @override
  String get txReportOptionIgnoreCompound => 'Negeer gecompounde transacties';

  @override
  String get txReportOptionIgnoreSelfTxs =>
      'Negeer naar jezelf verzonden transacties';

  @override
  String get txReportOptionRefreshTxs => 'Ververs transacties';

  @override
  String get txReportGenerate => 'Genereren';

  @override
  String get txReportStatusRefreshing => 'Transacties verversen';

  @override
  String get txReportStatusLoading => 'Transacties laden';

  @override
  String get txReportStatusReady => 'Transactierapport is gereed!';

  @override
  String get txReportGetReport => 'Ontvang rapport';

  @override
  String get txReportDate => 'Datum';

  @override
  String get txReportSentAmount => 'Verzend bedrag';

  @override
  String get txReportSentCurrency => 'Verzend valuta';

  @override
  String get txReportReceivedAmount => 'Bedrag ontvangen';

  @override
  String get txReportReceivedCurrency => 'Valuta ontvangen';

  @override
  String get txReportFeeAmount => 'Vergoedingsbedrag';

  @override
  String get txReportFeeCurrency => 'Tarief valuta';

  @override
  String get txReportLabel => 'Label';

  @override
  String get txReportDescription => 'Omschrijving';

  @override
  String get txReportTxHash => 'TxHash';

  @override
  String get txReportNote => 'Notitie';

  @override
  String get txReportLabelCost => 'kosten';

  @override
  String get txReportFeeForCompound => 'Vergoeding voor gecompounde transactie';

  @override
  String get txReportFeeForSelfSend =>
      'Tarief voor het verzenden naar eigen adressen';

  @override
  String get txReportError => 'Fout bij genereren van rapport';

  @override
  String txReportNoTxs(int numberOf) {
    return 'Gevonden $numberOf transacties';
  }

  @override
  String txReportNoLoadedTxs(int loadedTxs, int totalTxs) {
    return '($loadedTxs of $totalTxs)';
  }

  @override
  String get txFilterDialogTitle => 'Transactie filter';

  @override
  String get txFilterDialogOptionAllTxs => 'Laat alle transacties zien';

  @override
  String get txFilterDialogOptionHideNotAcceptedCoinbase =>
      'Verberg niet geaccepteerde coinbase-transacties';

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
