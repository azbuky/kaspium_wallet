// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n_gen.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian (`no`).
class AppLocalizationsNo extends AppLocalizations {
  AppLocalizationsNo([String locale = 'no']) : super(locale);

  @override
  String get aboutTopperDescription =>
      'Topper by Uphold is an easy to use fiat-to-crypto onramp that allows users to buy cryptocurencies using a credit/debit card or with a bank account.';

  @override
  String get aboutTopperTitle => 'About Topper';

  @override
  String get accepted => 'accepted';

  @override
  String get account => 'Konto';

  @override
  String get accounts => 'Kontoer';

  @override
  String get ackBackedUp =>
      'Er du sikker på at du har sikkerhetskopiert den hemmelige frasen din?';

  @override
  String get add => 'Legg til';

  @override
  String get addAccount => 'Legg til konto';

  @override
  String get addContact => 'Legg til kontakt';

  @override
  String get addingNodeMessage => 'Vent mens noden kontaktes';

  @override
  String get addingNodeTitle => 'Legger til node';

  @override
  String get addNode => 'Legg til node';

  @override
  String get addNodeFailed => 'Klarte ikke å legge til node';

  @override
  String addNodeFailedMessage(String error) {
    return 'Feilet: $error';
  }

  @override
  String get addNodeSuccess => 'Node lagt til';

  @override
  String get address => 'Adresse';

  @override
  String get addressCopied => 'Adresse kopiert';

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
  String get addressHint => 'Angi adresse';

  @override
  String get addressMising => 'Angi en adresse';

  @override
  String get addressShare => 'Del adresse';

  @override
  String get advancedHeader => 'Avansert';

  @override
  String get amount => 'Beløp';

  @override
  String amountConfirm(String amount, String coin) {
    return 'Beløp $amount $coin';
  }

  @override
  String get amountMissing => 'Tast inn beløp';

  @override
  String get amountZero => 'Beløp kan ikke være null';

  @override
  String get areYouSure => 'Er du sikker?';

  @override
  String get authBiometricMessage => 'Autentiser for å legge til lommebok';

  @override
  String get authMethod => 'Autentiseringsmetode';

  @override
  String get authPinMessage => 'Angi PIN for å legge til lommebok';

  @override
  String get autoLockHeader => 'Lås automatisk';

  @override
  String get available => 'Tilgjengelig';

  @override
  String get backupConfirmButton => 'Jeg har tatt sikkerhetskopi';

  @override
  String get backupSecretPhrase => 'Sikkerhetskopier hemmelig frase';

  @override
  String get balance => 'Balance';

  @override
  String get biometricsMethod => 'Biometri';

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
  String get blockExplorer => 'Blokkutforsker';

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
  String get cancel => 'Avbryt';

  @override
  String get change => 'Veksel';

  @override
  String get changeAddress => 'Vekseladresse';

  @override
  String get changeAddressCopied => 'Vekseladresse kopiert';

  @override
  String get changeAddressListEmpty => 'Change address list is empty';

  @override
  String get changeIndex => 'Vekselindeks';

  @override
  String changeIndexParam(String addressIndex) {
    return 'Veksel $addressIndex';
  }

  @override
  String get checkCameraPermission => 'Sjekk rettigheter for kamera';

  @override
  String get clipboardEmpty => 'Utklippstavlen er tom';

  @override
  String get close => 'Lukk';

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
  String get confirm => 'Bekreft';

  @override
  String confirmations(String confirmations) {
    return '$confirmations bekreftelser';
  }

  @override
  String get confirmed => 'bekreftet';

  @override
  String get confirming => 'bekrefter';

  @override
  String get confirmPasswordHint => 'Bekreft passordet';

  @override
  String contactAdded(String contactName) {
    return '$contactName er lagt til i kontakter';
  }

  @override
  String contactAddressCopied(String address) {
    return '$address adresse kopiert';
  }

  @override
  String get contactExists => 'Kontakt eksisterer allerede';

  @override
  String get contactHeader => 'Kontakt';

  @override
  String get contactInvalid => 'Ugyldig navn på kontakt';

  @override
  String get contactNameHint => 'Angi navn @';

  @override
  String get contactNameMissing => 'Velg et navn på denne kontakten';

  @override
  String contactRemoved(String contactName) {
    return '$contactName har blitt fjernet fra kontakter!';
  }

  @override
  String get contactsHeader => 'Kontakter';

  @override
  String get contactsImportErr => 'Kunne ikke importere kontakter';

  @override
  String contactsImportSuccess(String noContacts) {
    return '$noContacts kontakter importert';
  }

  @override
  String get contactSupport => 'Contact Support';

  @override
  String get copied => 'Kopiert';

  @override
  String get copy => 'Kopier';

  @override
  String get copyAddress => 'Kopier adresse';

  @override
  String get copyErrorButton => 'Kopiering feilet';

  @override
  String get copyKpub => 'Copy Kpub';

  @override
  String get createAPasswordHeader => 'Lag et passord.';

  @override
  String get createPasswordFirstParagraph =>
      'Du kan opprette et passord for ekstra sikkerhet på din lommebok.';

  @override
  String get createPasswordHint => 'Lag et passord';

  @override
  String get createPasswordSecondParagraph =>
      'Passord er valgfritt, og din lommebok vil uansett være beskyttet med din PIN-kode eller biometri.';

  @override
  String get createPasswordSheetHeader => 'Opprett';

  @override
  String get currency => 'Valuta';

  @override
  String get currencyPoweredBy => 'Leveres av CoinGecko';

  @override
  String get currentIndex => 'Current';

  @override
  String get defaultAccountName => 'Adresse 1';

  @override
  String defaultNewAccountName(int addressIndex) {
    return 'Motta $addressIndex';
  }

  @override
  String get defaultWalletName => 'Min lommebok';

  @override
  String get disablePasswordSheetHeader => 'Deaktiver';

  @override
  String get disablePasswordSuccess => 'Passordet har blitt deaktivert';

  @override
  String get disableWalletPassword => 'Deaktiver passord på lommebok';

  @override
  String get doContinue => 'Fortsett';

  @override
  String get donate => 'Doner';

  @override
  String get donateTo => 'Donate To';

  @override
  String get dontShowAgain => 'Ikke vis på nytt';

  @override
  String emailAction(String email) {
    return 'Email $email';
  }

  @override
  String get emptyCardIntroUtxos =>
      'Dette er UTXO-fanen. Alle UTXOene i din lommebok vil vises her';

  @override
  String get emptyResult => 'Tøm resultat';

  @override
  String get emptyWalletName => 'Navn på lommebok kan ikke være tom';

  @override
  String get encryptionFailedError => 'Klarte ikke å sette passord på lommebok';

  @override
  String get enterAddress => 'Angi adresse';

  @override
  String get enterAmount => 'Tast inn beløp';

  @override
  String get enterFiatValue => 'Enter Fiat Value';

  @override
  String get enterNote => 'Angi notis';

  @override
  String get enterPasswordHint => 'Tast inn ditt passord';

  @override
  String get errorMessageCopied => 'Feilmelding ble kopiert til utklippstavlen';

  @override
  String get exampleCardIntro =>
      'Dette er transaksjonsfanen. Når du sender eller mottar en transaksjon vil den vises her.';

  @override
  String get export => 'Eksporter';

  @override
  String get fee => 'Avgift';

  @override
  String get feeBaseUppercase => 'BASE FEE';

  @override
  String feeConfirm(String amount, String coin) {
    return 'Avgift $amount $coin';
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
  String get feeTitle => 'AVGIFT';

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
  String get fetchingTransactions => 'Henter transaksjoner';

  @override
  String get fingerprintSeedBackup =>
      'Autentiser for å sikkerhetskopiere hemmelig frase.';

  @override
  String get getStarted => 'Get Started';

  @override
  String get goBackButton => 'Gå tilbake';

  @override
  String get gotItButton => 'Forstått!';

  @override
  String get hideAccountHeader => 'Hide Account?';

  @override
  String get hideAccountText =>
      'Are you sure you want to hide this account? You can re-add it later by tapping the \"Add Account\" button.';

  @override
  String get hintAddressListEmpty =>
      'Check address filter from the top right corner';

  @override
  String get import => 'Importer';

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
  String get importSecretPhrase => 'Importer hemmelig frase';

  @override
  String get importSecretPhraseHint =>
      'Vennligst angi din hemmelige 24-ords frase nedenfor.';

  @override
  String get importSecretPhraseHintCombo =>
      'Please enter your 12 or 24 word secret phrase below.';

  @override
  String get importSecretPhraseHintLegacy =>
      'Please enter your 12 word secret phrase below.';

  @override
  String get importWallet => 'Importer lommebok';

  @override
  String get importWalletAdvancedOptions => 'Advanced Options';

  @override
  String get importWalletDescription => 'Please select an option below.';

  @override
  String get indexHeader => 'Index';

  @override
  String get instantly => 'Øyeblikkelig';

  @override
  String get insufficientBalance => 'Saldo er utilstrekkelig';

  @override
  String get insufficientBalanceDetails =>
      'Du har ikke nok KAS for denne transaksjonen';

  @override
  String get invalidAddress => 'Den angitte adressen er ugyldig';

  @override
  String get invalidAmount => 'Ugyldig beløp';

  @override
  String get invalidChecksumMessage =>
      'Sjekk at den hemmelige frasen er riktig angitt!';

  @override
  String get invalidDestinationAddress => 'Ugyldig destinasjonsadresse';

  @override
  String get invalidKpubMessage =>
      'Please check that your extended public key is entered correctly!';

  @override
  String get invalidPassword => 'Ugyldig passord';

  @override
  String get invalidSecretPhrase => 'Invalid Secret Phrase';

  @override
  String get invalidSecretPhraseConfirmation => 'I know what I\'m doing';

  @override
  String get invalidSecretPhraseDetails =>
      'The Secret Phrase you entered has an invalid checksum.';

  @override
  String get kaspaDevFund => 'Kaspa utviklerfond';

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
  String get language => 'Språk';

  @override
  String get loadingTransactions => 'Laster transaksjoner...';

  @override
  String get lockAppSetting => 'Verifiser ved oppstart';

  @override
  String get locked => 'Låst';

  @override
  String get loggingOutMessage => 'Logger ut...';

  @override
  String get logout => 'Logg ut';

  @override
  String get logoutDialogContent =>
      'Er du sikker på at du vil logge ut fra denne lommeboken?';

  @override
  String get logoutOrSwitchWallet => 'Logg ut / bytt lommebok';

  @override
  String get manage => 'Administrer';

  @override
  String get manualEntry => 'Manuell inntasting';

  @override
  String get maxSend => 'Max Send';

  @override
  String get missingSecretPhrase => 'Missing Secret Phrase';

  @override
  String get moreInfo => 'More Info';

  @override
  String get networkHeader => 'Nettverk';

  @override
  String get newAddress => 'Ny adresse';

  @override
  String get newIndex => 'New';

  @override
  String get newWallet => 'Ny lommebok';

  @override
  String get nextButton => 'Neste';

  @override
  String get no => 'Nei';

  @override
  String get noContactsExport => 'Det er ingen kontakter å eksportere';

  @override
  String get noContactsImport => 'Ingen nye kontakter å importere';

  @override
  String get nodeAddress => 'Kaspa node';

  @override
  String get nodeDeleteMessage => 'Er du sikker på at du vil slette?';

  @override
  String get nodeDeleteTitle => 'Slett Kaspa nodekonfigurasjon?';

  @override
  String get nodeNameEmpty => 'Nodenavn kan ikke være tom';

  @override
  String get nodeNameHint => 'Angi nodenavn';

  @override
  String get nodeNotSyncedException => 'Noden er ikke synkronisert';

  @override
  String get nodeNoUTXOIndexException =>
      'Noden har ikke UTXO-indeksering aktivert';

  @override
  String get nodeSecureConnection => 'Sikker tilkobling';

  @override
  String get nodesSheetTitle => 'Kaspa noder';

  @override
  String get nodeUrlHint => 'Angi URL til noden';

  @override
  String get nodeUrlInvalid => 'Ugyldig URL til node';

  @override
  String get noQrCodeFound => 'Ingen QR-kode funnet';

  @override
  String get noSkipButton => 'Nei, hopp over';

  @override
  String get notAccepted => 'not accepted';

  @override
  String get noteLabel => 'Note:';

  @override
  String get noUppercase => 'NEI';

  @override
  String get off => 'Av';

  @override
  String get on => 'På';

  @override
  String get optionalLabel => '(Optional)';

  @override
  String get paperWallet => 'Papirlommebok';

  @override
  String get passwordBlank => 'Passordet kan ikke være tomt';

  @override
  String get passwordNoLongerRequiredToOpenParagraph =>
      'Du kommer ikke til å trenge et passord for å åpne denne lommeboken.';

  @override
  String get passwordsDontMatch => 'Passordene stemmer ikke overens';

  @override
  String get passwordWillBeRequiredToOpenParagraph =>
      'Dette passordet vil være påkrevd for å åpne lommeboken.';

  @override
  String get pasteMnemonicError =>
      'Utklippstavlen inneholder ikke en gyldig hemmelig frase';

  @override
  String get pending => 'venter';

  @override
  String get pinConfirmError => 'PIN-kodene stemmer ikke overens';

  @override
  String get pinConfirmTitle => 'Bekreft din PIN-kode';

  @override
  String get pinCreateTitle => 'Opprett en 6-sifret PIN-kode';

  @override
  String get pinEnterTitle => 'Tast inn PIN-kode';

  @override
  String get pinInvalid => 'Den inntastede PIN-koden er ugyldig';

  @override
  String get pinMethod => 'PIN-kode';

  @override
  String get pinSeedBackup =>
      'Angi PIN-kode for a sikkerhetskopiere hemmelig frase';

  @override
  String get preferences => 'Preferanser';

  @override
  String get privacyPolicy => 'Personvernerklæring';

  @override
  String get qrInvalidAddress => 'QR-koden inneholder ikke en gyldig adresse';

  @override
  String get qrInvalidSeed =>
      'QR-koden inneholder ikke en gyldig seed eller privatnøkkel';

  @override
  String get qrMnemonicError =>
      'QR-kode inneholder ikke en gyldig hemmelig frase';

  @override
  String get receive => 'Motta';

  @override
  String get receiveAddress => 'Mottaksadresse';

  @override
  String get receiveAddressCopied => 'Mottaksadresse kopiert';

  @override
  String get receiveAddressListEmpty => 'Receive address list is empty';

  @override
  String get received => 'Mottatt';

  @override
  String get receiveIndex => 'Mottaksindeks';

  @override
  String receiveIndexParam(String addressIndex) {
    return 'Mottak $addressIndex';
  }

  @override
  String get removeContact => 'Fjern kontakt';

  @override
  String removeContactConfirmation(String contactName) {
    return 'Er du sikker på at du vil slette $contactName?';
  }

  @override
  String get removeWalletAction => 'Fjern lommebok';

  @override
  String get removeWalletBiometricsMessage =>
      'Autentiser for å fjerne lommebok';

  @override
  String get removeWalletDetail =>
      'Fjerning av lommeboken vil fjerne den hemmelige frasen og alle relaterte data fra denne enheten. Hvis den hemmelige frasen ikke er sikkerhetskopiert, så vil du aldri få tilgang til midlene på den igjen.';

  @override
  String get removeWalletPinMessage => 'Angi PIN-kode for å fjerne lommebok';

  @override
  String get removeWalletReassurance =>
      'Så lenge du har sikkerhetskopi av den hemmelige frasen så har du ingenting å bekymre deg over.';

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
      'Krev et passord for å åpne denne lommeboken?';

  @override
  String get restartSetupButton => 'Start oppsett på nytt';

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
  String get scanQrCode => 'Skan QR-kode';

  @override
  String get scanQrCodeError => 'Klarte ikke å lese QR-kode';

  @override
  String get secretInfo =>
      'På neste skjerm vil du se din hemmelige frase. Den er et passord som gir tilgang til midlene dine. Det er avgjørende at du sikkerhetskopierer denne og aldri deler den med noen.';

  @override
  String get secretInfoHeader => 'Sikkerhet først!';

  @override
  String get secretPhrase => 'Hemmelig frase';

  @override
  String get secretPhrase12Words => '12 WORDS';

  @override
  String get secretPhrase24Words => '24 WORDS';

  @override
  String get secretWarning =>
      'Om du mister denne enheten eller avinstallerer applikasjonen, trenger du din hemmelige frase for å få tilgang til midlene dine!';

  @override
  String get securityHeader => 'Sikkerhet';

  @override
  String get seed => 'Seed';

  @override
  String get seedInvalid => 'Seed er ugyldig';

  @override
  String get selectAddress => 'Select Address';

  @override
  String get send => 'Send';

  @override
  String get sendConfirm => 'Send';

  @override
  String get sendError => 'En feil oppstod. Prøv på nytt';

  @override
  String get sending => 'Sender';

  @override
  String get sendNote => 'NOTIS';

  @override
  String get sendToAddressTitle => 'Til';

  @override
  String get sendTxProgressDescription => 'Vent mens transaksjonen sendes';

  @override
  String get sendTxProgressTitle => 'Sender transaksjon';

  @override
  String get sent => 'Sendt';

  @override
  String get sentTo => 'Sent to';

  @override
  String get setPassword => 'Sett passord';

  @override
  String get setPasswordSuccess => 'Lommebokens passord er satt';

  @override
  String get settingsHeader => 'Innstillinger';

  @override
  String get settingsTransfer => 'Last fra papirlommebok';

  @override
  String get setupFailedMessage => 'Noe gikk galt';

  @override
  String get setWalletPassword => 'Sett lommebokens passord';

  @override
  String get shareKaspium => 'Del Kaspium';

  @override
  String get shareKaspiumSubject => 'Sjekk ut Kaspium Wallet';

  @override
  String get shareKaspiumText =>
      'Sjekk ut Kaspium - Den mobile lommeboken for Kaspa.\nNettsted - kaspium.io';

  @override
  String get somethingWentWrong => 'Noe gikk galt';

  @override
  String get systemDefault => 'Systemstandard';

  @override
  String get tapToHide => 'Trykk for å skjule';

  @override
  String get tapToReveal => 'Trykk for å vise';

  @override
  String get themeDark => 'Mørkt tema';

  @override
  String get themeHeader => 'Tema';

  @override
  String get themeLight => 'Lyst tema';

  @override
  String get thisWallet => '#Denne lommeboken';

  @override
  String get to => 'Til';

  @override
  String get toAddress => 'Til adresse';

  @override
  String get tooManyFailedAttempts => 'For mange mislykkede opplåsingsforsøk';

  @override
  String get totalValue => 'Totalverdi';

  @override
  String get transactionId => 'Transaksjons-ID';

  @override
  String get transactionsUppercase => 'TRANSAKSJONER';

  @override
  String get transfer => 'Overføre';

  @override
  String get transferClose => 'Trykk hvor som helst for å lukke vinduet.';

  @override
  String transferComplete(String amount) {
    return '$amount KAS ble overført til din Kaspium lommebok.\n';
  }

  @override
  String transferConfirmInfo(String amount) {
    return 'En lommebok med balanse $amount KAS ble oppdaget.';
  }

  @override
  String get transferConfirmInfoSecond =>
      'Trykk bekreft for å overføre midlene.\n';

  @override
  String get transferConfirmInfoThird =>
      'Det kan ta flere sekunder å gjennomføre overførselen.';

  @override
  String get transferError =>
      'Det oppsto en feil under overføringen. Prøv igjen senere.';

  @override
  String get transferHeader => 'Overfør midler';

  @override
  String transferIntro(String button) {
    return 'Denne prosessen vil overføre midler fra en papirlommebok til din Kaspium lommebok.\n\nTrykk på \"$button\"-knappen for å starte.';
  }

  @override
  String get transferLoading => 'Overfører';

  @override
  String get transferManualHint => 'Tast inn seed nedenfor.';

  @override
  String get transferNoFunds => 'Det er ingen KAS på denne seeden';

  @override
  String get transferQrScanError =>
      'Denne QR-koden inneholder ikke et gyldig seed.';

  @override
  String get transferQrScanHint => 'Skan KAS \nSeed eller privat nøkkel';

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
  String get unconfirmed => 'ubekreftet';

  @override
  String get unknown => 'ukjent';

  @override
  String get unlock => 'Lås opp';

  @override
  String get unlockBiometrics => 'Autentiser for å låse opp lommebok';

  @override
  String get unlockPin => 'Angi PIN-kode for å låse opp lommebok';

  @override
  String get utxoSelectionHint => 'Please select more UTXOs';

  @override
  String get utxoSelectionTitle => 'Select UTXOs';

  @override
  String get utxosUppercase => 'UTXOer';

  @override
  String get viewAddress => 'Vis adresse';

  @override
  String get viewTransaction => 'Vis transaksjoner';

  @override
  String get walletAddress => 'Wallet Address';

  @override
  String get walletAddresses => 'Adresser i lommebok';

  @override
  String walletAddressesCopied(String addressType) {
    return 'Wallet $addressType Addresses Copied to Clipboard';
  }

  @override
  String walletAddressesCopyFailed(String addressType) {
    return 'Failed to Copy Wallet $addressType Addresses';
  }

  @override
  String get walletName => 'Navn på lommebok';

  @override
  String get walletNameDescription => 'Angi et navn for din lommebok';

  @override
  String get walletNameHint => 'Navn på lommebok';

  @override
  String get walletSetupAddressDiscovery => 'Oppdager adresser';

  @override
  String get walletSetupMessage => 'Setter opp lommebok';

  @override
  String get walletsTitle => 'Lommebøker';

  @override
  String get warning => 'Advarsel';

  @override
  String welcomeMessage(String version) {
    return 'Velkommen!\n\nDette er versjon $version av Kaspium - Den mobile lommeboken for Kaspa';
  }

  @override
  String get welcomeText =>
      'Velkommen til Kaspium. Opprett en ny lommebok eller importer en eksisterende for å begynne.';

  @override
  String get yes => 'Ja';

  @override
  String get yesButton => 'Ja';

  @override
  String get yesUppercase => 'JA';
}
