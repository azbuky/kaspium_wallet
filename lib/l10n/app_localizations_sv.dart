// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get account => 'Konto';

  @override
  String get accounts => 'Konton';

  @override
  String get ackBackedUp =>
      'Är du säker på att du har sparat ner din hemliga fras eller seed?';

  @override
  String get add => 'Lägg till';

  @override
  String get addAccount => 'Lägg till konto';

  @override
  String get addContact => 'Lägg till kontakt';

  @override
  String get addNode => 'Lägg till nod';

  @override
  String get addNodeFailed => 'Misslyckades att lägga till en Kaspa nod';

  @override
  String addNodeFailedMessage(String error) {
    return 'Misslyckades $error';
  }

  @override
  String get addNodeSuccess => 'Nod tillagd';

  @override
  String get addingNodeMessage => 'Vänligen vänta medan noden kontaktas ';

  @override
  String get addingNodeTitle => 'Lägger till nod';

  @override
  String get address => 'Adress';

  @override
  String get addressCopied => 'Adress kopierad';

  @override
  String get addressCopiedFailed => 'Failed to copy address';

  @override
  String get addressHint => 'Ange adress';

  @override
  String get addressMising => 'Ange en adress';

  @override
  String get addressShare => 'Dela adress';

  @override
  String get kaspaUriCopied => 'Kaspa URI Copied';

  @override
  String get kaspaUriCopyFailed => 'Failed to copy Kaspa URI';

  @override
  String get advancedHeader => 'Avancerad ';

  @override
  String get amount => 'Belopp';

  @override
  String amountConfirm(String amount, String coin) {
    return 'Belopp $amount $coin';
  }

  @override
  String get amountMissing => 'Vänligen ange ett belopp';

  @override
  String get amountZero => 'Beloppet kan inte vara noll';

  @override
  String get areYouSure => 'Är du säker?';

  @override
  String get authBiometricMessage => 'Verifiera för att lägga till plånbok';

  @override
  String get authMethod => 'Autentiseringsmetod';

  @override
  String get authPinMessage => 'Skriv in PIN-koden för att lägga till plånbok';

  @override
  String get autoLockHeader => 'Lås automatiskt';

  @override
  String get available => 'Tillgängligt';

  @override
  String get backupConfirmButton => 'Jag har sparat den';

  @override
  String get backupSecretPhrase => 'Säkerhetskopiera fras';

  @override
  String get missingSecretPhrase => 'Missing Secret Phrase';

  @override
  String get biometricsMethod => 'Biometrik';

  @override
  String get blockExplorer => 'Utforskare';

  @override
  String get cancel => 'Avbryt';

  @override
  String get change => 'Ändra';

  @override
  String get changeAddress => 'Ändra adress';

  @override
  String get changeAddressCopied => 'Ändra adress kopierad ';

  @override
  String get changeIndex => 'Ändra index';

  @override
  String changeIndexParam(String addressIndex) {
    return 'Ändra $addressIndex';
  }

  @override
  String get checkCameraPermission => 'Vänligen kontrollera kameraåtkomst ';

  @override
  String get clipboardEmpty => 'Urklippet är tomt';

  @override
  String get close => 'Stäng';

  @override
  String get confirm => 'Bekräfta';

  @override
  String get confirmPasswordHint => 'Bekräfta lösenordet';

  @override
  String confirmations(String confirmations) {
    return '$confirmations bekräftelser ';
  }

  @override
  String get confirmed => 'bekräftad ';

  @override
  String get confirming => 'bekräftas';

  @override
  String contactAdded(String contactName) {
    return '$contactName har lagts till under kontakter!';
  }

  @override
  String contactAddressCopied(String address) {
    return '$address adress kopierad ';
  }

  @override
  String get contactExists => 'Kontakten existerar redan';

  @override
  String get contactHeader => 'Kontakter';

  @override
  String get contactInvalid => 'Ogiltigt kontaktnamn';

  @override
  String get contactNameHint => 'Ange ett namn @';

  @override
  String get contactNameMissing => 'Välj ett namn för den här kontakten';

  @override
  String contactRemoved(String contactName) {
    return '$contactName har raderats från dina kontakter!';
  }

  @override
  String get contactsHeader => 'Kontakter';

  @override
  String get contactsImportErr => 'Gick ej att importera kontakter';

  @override
  String contactsImportSuccess(String noContacts) {
    return 'Lyckad import av $noContacts kontakter';
  }

  @override
  String get copied => 'Kopierad';

  @override
  String get copy => 'Kopiera';

  @override
  String get copyAddress => 'Kopiera adress';

  @override
  String get copyErrorButton => 'Kopiera felet';

  @override
  String get createAPasswordHeader => 'Ställ in ett lösenord.';

  @override
  String get createPasswordFirstParagraph =>
      'Du kan ställa in ett lösenord för att öka säkerheten av din plånbok.';

  @override
  String get createPasswordHint => 'Ställ in ett lösenord';

  @override
  String get createPasswordSecondParagraph =>
      'Ett lösenord är valfritt och din plånbok kommer ändå att skyddas av din PIN-kod eller av biometri.';

  @override
  String get createPasswordSheetHeader => 'Skapa';

  @override
  String get currency => 'Valuta';

  @override
  String get currencyPoweredBy => 'Powered by CoinGecko';

  @override
  String get defaultAccountName => 'Huvudkonto';

  @override
  String defaultNewAccountName(int addressIndex) {
    return 'Konto $addressIndex';
  }

  @override
  String get defaultWalletName => 'Min plånbok';

  @override
  String get disablePasswordSheetHeader => 'Avaktivera';

  @override
  String get disablePasswordSuccess => 'Lösenordet har avaktiverats';

  @override
  String get disableWalletPassword => 'Avaktivera plånbokslösenord';

  @override
  String get doContinue => 'Fortsätt';

  @override
  String get donate => 'Donera';

  @override
  String get donateTo => 'Donate To';

  @override
  String get dontShowAgain => 'Visa inte igen';

  @override
  String get emptyCardIntroUtxos =>
      'Det här är fliken för unspent transaction outputs. Alla UTXOs i din plånbok kommer att visas här';

  @override
  String get emptyResult => 'Inget resultat';

  @override
  String get emptyWalletName => 'Plånboken måste ha ett namn';

  @override
  String get encryptionFailedError =>
      'Misslyckades med att ställa in ett lösenord';

  @override
  String get enterAddress => 'Ange adress';

  @override
  String get enterAmount => 'Ange belopp';

  @override
  String get enterFiatValue => 'Enter Fiat Value';

  @override
  String get enterNote => 'Ange notering ';

  @override
  String get enterPasswordHint => 'Ange ditt lösenord';

  @override
  String get errorMessageCopied => 'Felkodmeddelande kopierad till urklipp';

  @override
  String get exampleCardIntro =>
      'Det är här är fliken för transaktioner, när du har tagit emot eller skickat en transaktion så kommer den visas här. ';

  @override
  String get export => 'Exportera';

  @override
  String get fee => 'Avgift';

  @override
  String feeConfirm(String amount, String coin) {
    return 'Avgift $amount $coin';
  }

  @override
  String get feeTitle => 'AVGIFT';

  @override
  String get fetchingTransactions => 'Hämtar transaktioner';

  @override
  String get fingerprintSeedBackup =>
      'Verifiera dig för att göra en backup på din hemliga fras.';

  @override
  String get goBackButton => 'Tillbaka';

  @override
  String get gotItButton => 'Jag fattar!';

  @override
  String get import => 'Importera';

  @override
  String get importSecretPhrase => 'Importera hemlig fras';

  @override
  String get importSecretPhraseHint =>
      'Ange din hemliga fras på 24 ord. Varje ord ska separeras med ett mellanslag.';

  @override
  String get importSecretPhraseHintCombo =>
      'Please enter your 12 or 24 word secret phrase below.';

  @override
  String get importSecretPhraseHintLegacy =>
      'Please enter your 12 word secret phrase below.';

  @override
  String get importWallet => 'Importera plånbok';

  @override
  String get importWalletDescription => 'Please select an option below.';

  @override
  String get instantly => 'Omedelbart';

  @override
  String get insufficientBalance => 'Otillräckligt saldo';

  @override
  String get insufficientBalanceDetails =>
      'Du har inte nog med KAS för att genomföra transaktionen';

  @override
  String get invalidAddress => 'Ogiltig mottagaradress';

  @override
  String get invalidAmount => 'Ogiltig summa';

  @override
  String get invalidChecksumMessage =>
      'Snälla kontrollera att din hemliga fras är korrekt angiven!';

  @override
  String get invalidKpubMessage =>
      'Please check that your extended public key is entered correctly!';

  @override
  String get invalidDestinationAddress => 'Ogiltig destination adress';

  @override
  String get invalidPassword => 'Ogiltigt lösenord';

  @override
  String get kaspaDevFund => 'Kaspas utvecklingsfond';

  @override
  String get kaspiumWallet => 'Kaspium plånbok';

  @override
  String get language => 'Språk';

  @override
  String get loadingTransactions => 'Laddar transaktioner...';

  @override
  String get lockAppSetting => 'Verifiera vid uppstart';

  @override
  String get locked => 'Låst';

  @override
  String get loggingOutMessage => 'Loggar ut...';

  @override
  String get logout => 'Logga ut';

  @override
  String get logoutDialogContent =>
      'Är du säker på att du vill logga ut från den här plånboken?';

  @override
  String get logoutOrSwitchWallet => 'Logga ut / byt plånbok ';

  @override
  String get manage => 'Hantera';

  @override
  String get manualEntry => 'Ange manuellt';

  @override
  String get networkHeader => 'Nätverk';

  @override
  String get newAddress => 'Ny adress';

  @override
  String get newWallet => 'Ny plånbok';

  @override
  String get nextButton => 'Nästa';

  @override
  String get no => 'Nej';

  @override
  String get noContactsExport => 'Det finns inga kontakter att exportera';

  @override
  String get noContactsImport => 'Hittade inga kontakter att importera';

  @override
  String get noQrCodeFound => 'Ingen QR-kod hittad';

  @override
  String get noSkipButton => 'Nej, hoppa över';

  @override
  String get noUppercase => 'NEJ';

  @override
  String get nodeAddress => 'Kaspa nod';

  @override
  String get nodeDeleteMessage => 'Är du säker på att du vill radera?';

  @override
  String get nodeDeleteTitle => 'Radera Kaspa nod konfiguration?\n';

  @override
  String get nodeNameEmpty => 'Namnet på noden kan inte vara tomt';

  @override
  String get nodeNameHint => 'Skriv nodens namn';

  @override
  String get nodeUrlHint => 'Skriv nodens URL';

  @override
  String get nodeUrlInvalid => 'Ogiltig nod URL';

  @override
  String get nodesSheetTitle => 'Kaspa noder';

  @override
  String get off => 'Av';

  @override
  String get on => 'På';

  @override
  String get paperWallet => 'Pappersplånbok';

  @override
  String get passwordBlank => 'Lösenordsfältet kan ej lämnas tomt';

  @override
  String get passwordNoLongerRequiredToOpenParagraph =>
      'Du kommer inte behöva ett lösenord för att öppna Kaspium längre.';

  @override
  String get passwordWillBeRequiredToOpenParagraph =>
      'Lösenordet behövs för att öppna Kaspium.';

  @override
  String get passwordsDontMatch => 'Lösenorden stämmer ej överens';

  @override
  String get pasteMnemonicError =>
      'Urklippet innehåller inte en giltig hemlig fras';

  @override
  String get pending => 'pågående';

  @override
  String get pinConfirmError => 'PIN-kod matchar ej';

  @override
  String get pinConfirmTitle => 'Bekräfta din PIN-kod';

  @override
  String get pinCreateTitle => 'Skapa en 6-siffrig PIN-kod';

  @override
  String get pinEnterTitle => 'Ange PIN-kod';

  @override
  String get pinInvalid => 'Felaktig PIN-kod angiven';

  @override
  String get pinMethod => 'PIN';

  @override
  String get pinSeedBackup =>
      'Ange PIN-kod för att säkerhetskopiera din hemliga fras';

  @override
  String get preferences => 'Preferenser';

  @override
  String get privacyPolicy => 'Integritetspolicy';

  @override
  String get qrInvalidAddress =>
      'QR-koden innehåller inte en giltig destination';

  @override
  String get qrInvalidSeed => 'QR-koden innehåller ingen giltig hemlig fras';

  @override
  String get qrMnemonicError => 'QR innehåller ingen giltig hemlig fras';

  @override
  String get receive => 'Ta emot';

  @override
  String get receiveAddress => 'Mottagande adress kopierad';

  @override
  String get receiveAddressCopied => 'Mottagande adress kopierad';

  @override
  String get receiveIndex => 'Mottagande index';

  @override
  String receiveIndexParam(String addressIndex) {
    return 'Ta emot $addressIndex';
  }

  @override
  String get received => 'Mottagit';

  @override
  String get removeContact => 'Ta bort kontakt';

  @override
  String removeContactConfirmation(String contactName) {
    return 'Är du säker på att du vill radera $contactName?';
  }

  @override
  String get removeWalletAction => 'Ta bort plånbok';

  @override
  String get removeWalletBiometricsMessage =>
      'Verifiera för att ta bort plånbok';

  @override
  String get removeWalletDetail =>
      'Genom att ta bort den här plånboken så kommer den hemliga frasen och all plånboksrelaterade data raderas. Om den hemliga frasen inte är tryggt förvarad så kommer du aldrig åt dina tillgångar igen.';

  @override
  String get removeWalletPinMessage => 'Skriv in PIN för att ta bort plånbok';

  @override
  String get removeWalletReassurance =>
      'Så länge du har säkerhetskopierat den hemliga frasen så har du inget att oroa dig över.';

  @override
  String get requireAPasswordToOpenHeader =>
      'Kräv lösenord för att öppna Kaspium?';

  @override
  String get restartSetupButton => 'Starta om setup';

  @override
  String get scanQrCode => 'Skanna QR-kod';

  @override
  String get scanQrCodeError => 'Misslyckades att tolka QR-kod';

  @override
  String get secretInfo =>
      'På nästa skärm kommer du att se din hemliga fras. Det är ett lösenord för att komma åt dina tillgångar. Det är viktigt att du sparar ner den och aldrig delar den med någon.';

  @override
  String get secretInfoHeader => 'Säkerheten först!';

  @override
  String get secretPhrase => 'Hemlig fras';

  @override
  String get secretPhrase12Words => '12 WORDS';

  @override
  String get secretPhrase24Words => '24 WORDS';

  @override
  String get secretWarning =>
      'Om du tappar bort din enhet eller avinstallerar applikationen så behöver du din hemliga fras eller ditt seed för att återfå dina tillgångar!';

  @override
  String get securityHeader => 'Säkerhet';

  @override
  String get seed => 'Seed';

  @override
  String get seedInvalid => 'Angiven hemlig fras är ogiltig';

  @override
  String get send => 'Skicka';

  @override
  String get sendConfirm => 'Skicka';

  @override
  String get sendError => 'Ett fel inträffade. Försök igen senare.';

  @override
  String get sendNote => 'Notering';

  @override
  String get sendToAddressTitle => 'Till';

  @override
  String get sendTxProgressDescription =>
      'Vänligen vänta medans transaktionen skickas';

  @override
  String get sendTxProgressTitle => 'Skickar transaktion';

  @override
  String get sending => 'Skicka';

  @override
  String get sent => 'Skickat';

  @override
  String get sentTo => 'Sent to';

  @override
  String get setPassword => 'Ställ in lösenord';

  @override
  String get setPasswordSuccess => 'Lösenordet har ställts in';

  @override
  String get setWalletPassword => 'Ställ in plånbokslösenord';

  @override
  String get settingsHeader => 'Inställningar';

  @override
  String get settingsTransfer => 'Ladda från pappersplånbok';

  @override
  String get setupFailedMessage => 'Något gick fel';

  @override
  String get shareKaspium => 'Dela Kaspium';

  @override
  String get shareKaspiumSubject => 'Kolla in Kaspium plånboken';

  @override
  String get shareKaspiumText =>
      'Prova Kaspium! Kaspas mobila plånbok. Webbsida - kaspium.io';

  @override
  String get somethingWentWrong => 'Något gick fel';

  @override
  String get systemDefault => 'Standardinställning';

  @override
  String get tapToHide => 'Tryck för att dölja';

  @override
  String get tapToReveal => 'Tryck för att visa';

  @override
  String get themeDark => 'Mörkt tema';

  @override
  String get themeHeader => 'Tema';

  @override
  String get themeLight => 'Ljust tema';

  @override
  String get thisWallet => '#Den här plånboken';

  @override
  String get to => 'Till';

  @override
  String get toAddress => 'Till adress';

  @override
  String get tooManyFailedAttempts => 'För många ogiltiga försök.';

  @override
  String get totalValue => 'Totalt värde';

  @override
  String get transactionId => 'Transaktions ID';

  @override
  String get transactionsUppercase => 'Transaktioner';

  @override
  String get transfer => 'Överför';

  @override
  String get transferClose => 'Tryck någonstans för att stänga fönstret.';

  @override
  String transferComplete(String amount) {
    return '$amount KAS har överförts till din Kaspium-plånbok.';
  }

  @override
  String transferConfirmInfo(String amount) {
    return 'En plånbok med ett saldo på $amount KAS har upptäckts.\n';
  }

  @override
  String get transferConfirmInfoSecond =>
      'Tryck på bekräfta för att överföra tillgångar.\n';

  @override
  String get transferConfirmInfoThird =>
      'Överföringen kan ta upp till flera sekunder att genomföras.';

  @override
  String get transferError =>
      'Ett fel uppstod vid överföringen. Försök igen senare.';

  @override
  String get transferHeader => 'Överför\nmedel';

  @override
  String transferIntro(String button) {
    return 'Den här processen kommer att överföra tillgångar från en pappersplånbok till din Kaspium-plånbok.\n\nTryck på \"$button\" knappen för att starta.';
  }

  @override
  String get transferLoading => 'Överför';

  @override
  String get transferManualHint => 'Vänligen ange din hemliga fras nedan.';

  @override
  String get transferNoFunds => 'Detta seed innehåller inga KAS.';

  @override
  String get transferQrScanError =>
      'Denna QR-kod innehåller inget giltigt seed.';

  @override
  String get transferQrScanHint =>
      'Skanna en Kaspa \nseed eller en privat nyckel';

  @override
  String get unconfirmed => 'obekräftade';

  @override
  String get notAccepted => 'not accepted';

  @override
  String get accepted => 'accepted';

  @override
  String get unknown => 'okänd';

  @override
  String get unlock => 'Lås upp';

  @override
  String get unlockBiometrics => 'Verifiera för att låsa upp Kaspium';

  @override
  String get unlockPin => 'Ange PIN för att låsa upp Kaspium';

  @override
  String get utxosUppercase => 'UTXOs';

  @override
  String get viewAddress => 'Kolla adress';

  @override
  String get viewTransaction => 'Kolla transaktion';

  @override
  String get walletAddresses => 'Plånboks adresser';

  @override
  String get walletAddress => 'Wallet Address';

  @override
  String get walletName => 'Plånbokens namn';

  @override
  String get walletNameDescription => 'Skriv in ett namn för din plånbok';

  @override
  String get walletNameHint => 'Plånbokens namn';

  @override
  String get walletSetupAddressDiscovery => 'Genomför adress upptäckt';

  @override
  String get walletSetupMessage => 'Sätta upp plånbok';

  @override
  String get walletsTitle => 'Plånböcker';

  @override
  String get warning => 'Varning';

  @override
  String welcomeMessage(String version) {
    return 'Välkommen! Det här är version $version för Kaspium - den mobila appen för Kaspa';
  }

  @override
  String get welcomeText =>
      'Välkommen till Kaspium. För att fortsätta så behöver du skapa en ny plånbok eller importera en befintlig plånbok.';

  @override
  String xMinutes(int minutes) {
    final intl.NumberFormat minutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutesString minuter',
      one: '1 minut',
    );
    return 'Efter $_temp0';
  }

  @override
  String get yes => 'Ja';

  @override
  String get yesButton => 'Ja';

  @override
  String get yesUppercase => 'JA';

  @override
  String get nodeNotSyncedException => 'Noden är inte synkroniserad ';

  @override
  String get nodeNoUTXOIndexException => 'Noden har inte ett UTXO index';

  @override
  String get nodeSecureConnection => 'Säkra anslutning';

  @override
  String get kaspaUriInvalid => 'Invalid Kaspa URI';

  @override
  String get compoundUtxos => 'Compound transactions';

  @override
  String get compoundRequired => 'Compound required';

  @override
  String get compoundRequiredDescription =>
      'The transaction amount requires too many UTXOs. Compounding will reduce the number of UTXOs.';

  @override
  String get compoundUtxosDescription => 'Combine multiple UTXOs into one';

  @override
  String get compoundUtxosConfirmation => 'Compound transactions?';

  @override
  String get compoundingUtxos => 'Compounding transactions';

  @override
  String get compoundingMessage => 'Please wait...';

  @override
  String get compoundSuccess => 'Compound successful';

  @override
  String get compoundFailure => 'Failed to compound transactions';

  @override
  String get compoundTooFewUtxos => 'At least two UTXOs are required';

  @override
  String get balance => 'Balance';

  @override
  String get maxSend => 'Max Send';

  @override
  String get compoundUppercased => 'COMPOUND';

  @override
  String get closeUppercased => 'CLOSE';

  @override
  String get scanMoreAddresses => 'Scan For More Addresses';

  @override
  String get addressDiscovery => 'Address Discovery';

  @override
  String get scanningTitle => 'Scanning';

  @override
  String get scanningDescription => 'Scanning for new addresses...';

  @override
  String get scanMore => 'SCAN MORE';

  @override
  String get scanFailedMessage => 'Scan failed, please try again later';

  @override
  String get indexHeader => 'Index';

  @override
  String get currentIndex => 'Current';

  @override
  String get scannedIndex => 'Scanned';

  @override
  String get newIndex => 'New';

  @override
  String get addressFilterDialogTitle => 'Address Filter';

  @override
  String get addressFilterDialogOptionAllAddresses => 'View All Addresses';

  @override
  String get addressFilterDialogOptionNonZeroBalances =>
      'View Addresses With Balance';

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
  String get importKpubHint => 'Please enter your extended public key.';

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
