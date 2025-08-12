// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n_gen.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get aboutTopperDescription =>
      'Topper von Uphold ist ein leicht zu verwendender Fiat-zu-Crypo-Einstieg, welcher es den Anwendern erlaubt, Crypto-Währungen via Kredit- bzw. Debitkarte oder Bankkonto zu kaufen.';

  @override
  String get aboutTopperTitle => 'Über Topper';

  @override
  String get accepted => 'akzeptiert';

  @override
  String get account => 'Konto';

  @override
  String get accounts => 'Konten';

  @override
  String get ackBackedUp =>
      'Sind Sie sich sicher, dass Sie Ihre Geheimsequenz oder den Seed gesichert haben?';

  @override
  String get add => 'Hinzufügen';

  @override
  String get addAccount => 'Konto hinzufügen';

  @override
  String get addContact => 'Kontakt hinzufügen';

  @override
  String get addingNodeMessage =>
      'Bitte warten während der Knoten kontaktiert wird';

  @override
  String get addingNodeTitle => 'Knoten wird hinzugefügt';

  @override
  String get addNode => 'Knoten hinzufügen';

  @override
  String get addNodeFailed => 'Kaspa-Knoten hinzufügen fehlgeschlagen';

  @override
  String addNodeFailedMessage(String error) {
    return 'Fehlgeschlagen: $error';
  }

  @override
  String get addNodeSuccess => 'Knoten erfolgreich hinzugefügt';

  @override
  String get address => 'Adresse';

  @override
  String get addressCopied => 'Adresse kopiert';

  @override
  String get addressCopiedFailed => 'Kopieren der Adresse fehlgeschlagen';

  @override
  String get addressDiscovery => 'Adresssuche';

  @override
  String get addressFilterDialogOptionAllAddresses => 'Zeige alle Adressen';

  @override
  String get addressFilterDialogOptionNonZeroBalances =>
      'Zeige Adressen mit Guthaben';

  @override
  String get addressFilterDialogTitle => 'Adressfilter';

  @override
  String get addressHint => 'Adresse eingeben';

  @override
  String get addressMising => 'Bitte Adresse eingeben';

  @override
  String get addressShare => 'Adresse teilen';

  @override
  String get advancedHeader => 'Erweitert';

  @override
  String get amount => 'Betrag';

  @override
  String amountConfirm(String amount, String coin) {
    return 'Betrag $amount $coin';
  }

  @override
  String get amountMissing => 'Bitte Betrag eingeben';

  @override
  String get amountZero => 'Betrag kann nicht 0 sein';

  @override
  String get areYouSure => 'Sind Sie sicher?';

  @override
  String get authBiometricMessage => 'Authentifizieren um Wallet hinzuzufügen';

  @override
  String get authMethod => 'Authentifizierungsverfahren';

  @override
  String get authPinMessage => 'PIN eingeben, um Wallet hinzuzufügen';

  @override
  String get autoLockHeader => 'Automatisch sperren';

  @override
  String get available => 'Verfügbar';

  @override
  String get backupConfirmButton => 'Ich habe den Seed gesichert';

  @override
  String get backupSecretPhrase => 'Geheimsequenz sichern';

  @override
  String get balance => 'Saldo';

  @override
  String get biometricsMethod => 'Biometrie';

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
  String get buyKaspaMessage => 'Kaufe \$KAS schnell und einfach.';

  @override
  String get buyKaspaMessageSecondary =>
      'Service angeboten von Topper, Upholds Fiat-zu-Crypto-Einstieg';

  @override
  String get buyKaspaSubtitle => 'Via Topper von Uphold';

  @override
  String get buyKaspaTitle => 'Kaufe Kaspa';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get change => 'Wechselgeld';

  @override
  String get changeAddress => 'Wechselgeldadresse';

  @override
  String get changeAddressCopied => 'Wechselgeldadresse kopiert';

  @override
  String get changeAddressListEmpty => 'Liste der Wechsel-Adressen ist leer';

  @override
  String get changeIndex => 'Index ändern';

  @override
  String changeIndexParam(String addressIndex) {
    return '$addressIndex ändern';
  }

  @override
  String get checkCameraPermission => 'Bitte Kamera-Berechtigung prüfen';

  @override
  String get clipboardEmpty => 'Zwischenablage ist leer';

  @override
  String get close => 'Schließen';

  @override
  String get closeUppercased => 'SCHLIESSEN';

  @override
  String get compoundFailure =>
      'Zusammenfassen der Transaktionen fehlgeschlagen';

  @override
  String get compoundingMessage => 'Bitte warten...';

  @override
  String get compoundingUtxos => 'Transaktionen werden zusammengefasst';

  @override
  String get compoundRequired => 'Mischung notwendig';

  @override
  String get compoundRequiredDescription =>
      'Der Transaktionsbetrag benötigt zu viele UTXOs. Eine Mischung kann die Anzahl der UTXOs reduzieren.';

  @override
  String get compoundSuccess => 'Kummulieren erfolgreich';

  @override
  String get compoundTooFewUtxos => 'Es werden mindestens zwei UTXOs benötigt';

  @override
  String get compoundUppercased => 'KUMMULIEREN';

  @override
  String get compoundUtxos => 'Transaktionen zusammenfassen';

  @override
  String get compoundUtxosConfirmation => 'Transaktionen zusammenfassen?';

  @override
  String get compoundUtxosDescription => 'Mehrere UTXOs in eine kombinieren';

  @override
  String get confirm => 'Bestätigen';

  @override
  String confirmations(String confirmations) {
    return '$confirmations Bestätigungen';
  }

  @override
  String get confirmed => 'bestätigt';

  @override
  String get confirming => 'bestätige';

  @override
  String get confirmPasswordHint => 'Passwort bestätigen';

  @override
  String contactAdded(String contactName) {
    return '$contactName zu Kontakten hinzugefügt!';
  }

  @override
  String contactAddressCopied(String address) {
    return 'Adresse $address kopiert';
  }

  @override
  String get contactExists => 'Kontakt bereits vorhanden';

  @override
  String get contactHeader => 'Kontakt';

  @override
  String get contactInvalid => 'Ungültiger Kontaktname';

  @override
  String get contactNameHint => 'Namen eingeben @';

  @override
  String get contactNameMissing => 'Diesem Kontakt einen Namen geben';

  @override
  String contactRemoved(String contactName) {
    return '$contactName wurde aus den Kontakten gelöscht!';
  }

  @override
  String get contactsHeader => 'Kontakte';

  @override
  String get contactsImportErr => 'Import der Kontakte fehlgeschlagen';

  @override
  String contactsImportSuccess(String noContacts) {
    return 'Erfolgreich $noContacts Kontakte importiert';
  }

  @override
  String get contactSupport => 'Support kontaktieren';

  @override
  String get copied => 'Kopiert';

  @override
  String get copy => 'Kopieren';

  @override
  String get copyAddress => 'Adresse kopieren';

  @override
  String get copyErrorButton => 'Fehler kopieren';

  @override
  String get copyKpub => 'Kopiere Kpub';

  @override
  String get createAPasswordHeader => 'Wähle ein Passwort.';

  @override
  String get createPasswordFirstParagraph =>
      'Für zusätzliche Sicherheit können Sie ein Passwort festlegen.';

  @override
  String get createPasswordHint => 'Ein Passwort wählen';

  @override
  String get createPasswordSecondParagraph =>
      'Das Passwort ist optional. Ihr Wallet wird immer mithilfe einer PIN oder biometrischen Daten geschützt.';

  @override
  String get createPasswordSheetHeader => 'Erzeugen';

  @override
  String get currency => 'Währung';

  @override
  String get currencyPoweredBy => 'Zur Verfügung gestellt von CoinGecko';

  @override
  String get currentIndex => 'Aktuell';

  @override
  String get defaultAccountName => 'Hauptkonto';

  @override
  String defaultNewAccountName(int addressIndex) {
    return 'Empfange $addressIndex';
  }

  @override
  String get defaultWalletName => 'Mein Wallet';

  @override
  String get disablePasswordSheetHeader => 'Deaktivieren';

  @override
  String get disablePasswordSuccess => 'Passwort wurde deaktiviert';

  @override
  String get disableWalletPassword => 'Wallet-Passwort deaktivieren';

  @override
  String get doContinue => 'Fortfahren';

  @override
  String get donate => 'Spenden';

  @override
  String get donateTo => 'Spenden an';

  @override
  String get dontShowAgain => 'Nicht mehr anzeigen';

  @override
  String emailAction(String email) {
    return 'Email $email';
  }

  @override
  String get emptyCardIntroUtxos =>
      'Dies ist der UTXO-Reiter. Alle UTXOs in Ihrem Wallet werden hier aufgeführt.';

  @override
  String get emptyResult => 'Leeres Ergebnis';

  @override
  String get emptyWalletName => 'Wallet-Name kann nicht leer sein';

  @override
  String get encryptionFailedError =>
      'Wallet-Passwort konnte nicht festgelegt werden';

  @override
  String get enterAddress => 'Adresse eingeben';

  @override
  String get enterAmount => 'Betrag eingeben';

  @override
  String get enterFiatValue => 'Fiat-Betrag eingeben';

  @override
  String get enterNote => 'Notiz eingeben';

  @override
  String get enterPasswordHint => 'Passwort eingeben';

  @override
  String get errorMessageCopied =>
      'Fehlermeldung in die Zwischenablage kopiert';

  @override
  String get exampleCardIntro =>
      'Dies ist der Transaktions-Reiter. Wenn Sie KAS senden oder empfangen, wird das hier zu sehen sein.';

  @override
  String get export => 'Exportieren';

  @override
  String get fee => 'Gebühr';

  @override
  String get feeBaseUppercase => 'BASE FEE';

  @override
  String feeConfirm(String amount, String coin) {
    return 'Gebühr $amount $coin';
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
  String get feeTitle => 'GEBÜHR';

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
  String get fetchingTransactions => 'Rufe Transaktionen ab';

  @override
  String get fingerprintSeedBackup => 'Authentifizieren, um Seed zu sichern.';

  @override
  String get getStarted => 'Beginne';

  @override
  String get goBackButton => 'Zurück';

  @override
  String get gotItButton => 'Verstanden!';

  @override
  String get hideAccountHeader => 'Hide Account?';

  @override
  String get hideAccountText =>
      'Are you sure you want to hide this account? You can re-add it later by tapping the \"Add Account\" button.';

  @override
  String get hintAddressListEmpty =>
      'Adressfilter in der oberen rechten Ecke prüfen';

  @override
  String get import => 'Importieren';

  @override
  String get importAsLegacyWallet => 'Import as Legacy Wallet';

  @override
  String get importAsStandardWallet => 'Import as Standard Wallet';

  @override
  String get importKpub => 'Beobachtungswallet importieren';

  @override
  String get importKpubClipboardError =>
      'Inhalt der Zwischenablage ist kein gültiger erweiterter öffentlicher Schlüssel';

  @override
  String get importKpubHint =>
      'Bitte erweiterten öffentlichen Schlüssel eingeben';

  @override
  String get importKpubInvalidMessage =>
      'Bitte prüfen, dass der erweiterte öffentliche Schlüssel korrekt eingegeben wurde!';

  @override
  String get importKpubQrCodeError =>
      'QR-Code enthält keinen gültigen erweiterten öffentlichen Schlüssel';

  @override
  String get importLegacyWalletDetectedDetails =>
      'Do you want to import your wallet in legacy mode?';

  @override
  String get importLegacyWalletDetectedTitle => 'Legacy Wallet Detected';

  @override
  String get importOption12WordsDescription =>
      'Kompatibel mit Web Wallet und KDX';

  @override
  String get importOption12WordsTitle => '12 Wort Seed Phrase importieren';

  @override
  String get importOption24WordsDescription =>
      'Kompatibel mit Cli Wallet und Ledger';

  @override
  String get importOption24WordsTitle => '24 Wort Seed Phrase importieren';

  @override
  String get importOptionKpubDescription =>
      'Saldo und Transaktionen eines Wallet mit einem erweiterten öffentlichen Schlüssel überwachen';

  @override
  String get importOptionKpubTitle => 'Beobachtungswallet importieren';

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
  String get importSecretPhrase => 'Geheimsequenz importieren';

  @override
  String get importSecretPhraseHint =>
      'Bitte geben Sie unten Ihre 24-wörtige Geheimsequenz ein. Trennen Sie dabei die Wörter mit Leerzeichen.';

  @override
  String get importSecretPhraseHintCombo =>
      'Bitte unten die 12 oder 24 Wörter der Seed Phrase eingeben.';

  @override
  String get importSecretPhraseHintLegacy =>
      'Bitte unten die 12 Wörter der Seed Phrase eingeben.';

  @override
  String get importWallet => 'Wallet importieren';

  @override
  String get importWalletAdvancedOptions => 'Advanced Options';

  @override
  String get importWalletDescription => 'Bitte unten eine Option wählen.';

  @override
  String get indexHeader => 'Index';

  @override
  String get instantly => 'Sofort';

  @override
  String get insufficientBalance => 'Nicht genügend Guthaben';

  @override
  String get insufficientBalanceDetails =>
      'Sie haben nicht genügend KAS für diese Transaktion';

  @override
  String get invalidAddress => 'Ungültige Empfänger-Adresse';

  @override
  String get invalidAmount => 'Ungültiger Betrag';

  @override
  String get invalidChecksumMessage =>
      'Bitte prüfen, dass die Geheimsequenz korrekt eingegeben wurde!';

  @override
  String get invalidDestinationAddress => 'Ungültige Empfängeradresse';

  @override
  String get invalidKpubMessage =>
      'Bitte prüfen, dass der erweiterte öffentliche Schlüssel korrekt eingegeben wurde!';

  @override
  String get invalidPassword => 'Ungültiges Passwort';

  @override
  String get invalidSecretPhrase => 'Ungültige Geheimwörter';

  @override
  String get invalidSecretPhraseConfirmation => 'Ich weiss was ich tue';

  @override
  String get invalidSecretPhraseDetails =>
      'Die eingegebenen Geheimwörter haben eine ungültige Prüfsumme.';

  @override
  String get kaspaDevFund => 'Kaspa Entwickler Fonds';

  @override
  String get kaspaUriCopied => 'Kaspa URI kopiert';

  @override
  String get kaspaUriCopyFailed => 'Kopieren der Kaspa URI fehlgeschlagen';

  @override
  String get kaspaUriInvalid => 'Invalide Kaspa URI';

  @override
  String get kaspiumWallet => 'Kaspium Wallet';

  @override
  String get kpubAuth => 'Zeige erweiterten öffentlichen Schlüssel';

  @override
  String get kpubCopied => 'Erweiterter öffentlicher Schlüssel kopiert';

  @override
  String get kpubCopyFailed =>
      'Kopieren des erweiterten öffentlichen Schlüssels fehlgeschlagen';

  @override
  String get kpubDescription =>
      'Der erweiterte öffentliche Schlüssel kann verwendet werden, um ein Wallet \"nur-zum-anzeigen\" zu verwenden.';

  @override
  String get kpubTitle => 'Erweiterter öffentlicher Schlüssel';

  @override
  String get language => 'Sprache';

  @override
  String get loadingTransactions => 'Lade Transaktionen...';

  @override
  String get lockAppSetting => 'Authentifizierung beim Öffnen';

  @override
  String get locked => 'Gesperrt';

  @override
  String get loggingOutMessage => 'Melde ab...';

  @override
  String get logout => 'Abmelden';

  @override
  String get logoutDialogContent =>
      'Sind Sie sicher, dass Sie sich von diesem Wallet abmelden wollen?';

  @override
  String get logoutOrSwitchWallet => 'Abmelden / Wallet wechseln';

  @override
  String get manage => 'Verwalten';

  @override
  String get manualEntry => 'Manueller Eintrag';

  @override
  String get maxSend => 'Sende Maximum';

  @override
  String get missingSecretPhrase => 'Missing Secret Phrase';

  @override
  String get moreInfo => 'Mehr Informationen';

  @override
  String get networkHeader => 'Netzwerk';

  @override
  String get newAddress => 'Neue Adresse';

  @override
  String get newIndex => 'Neu';

  @override
  String get newWallet => 'Neues Wallet';

  @override
  String get nextButton => 'Weiter';

  @override
  String get no => 'Nein';

  @override
  String get noContactsExport => 'Keine Kontakte zum Exportieren gefunden';

  @override
  String get noContactsImport => 'Keine Kontakte zum Importieren gefunden';

  @override
  String get nodeAddress => 'Kaspa-Knoten';

  @override
  String get nodeDeleteMessage => 'Wirklich löschen?';

  @override
  String get nodeDeleteTitle => 'Konfiguration des Kaspa-Knoten löschen?';

  @override
  String get nodeNameEmpty => 'Name des Knoten kann nicht leer sein';

  @override
  String get nodeNameHint => 'Name für Knoten eingeben';

  @override
  String get nodeNotSyncedException => 'Knoten ist nicht synchronisiert';

  @override
  String get nodeNoUTXOIndexException => 'Knoten hat keinen UTXO-Index';

  @override
  String get nodeSecureConnection => 'Sichere Verbindung';

  @override
  String get nodesSheetTitle => 'Kaspa-Knoten';

  @override
  String get nodeUrlHint => 'Knoten-URL eingeben';

  @override
  String get nodeUrlInvalid => 'Ungültige Knoten-URL';

  @override
  String get noQrCodeFound => 'Kein QR-Code gefunden';

  @override
  String get noSkipButton => 'Nein, überspringen';

  @override
  String get notAccepted => 'nicht akzeptiert';

  @override
  String get noteLabel => 'Notiz:';

  @override
  String get noUppercase => 'NEIN';

  @override
  String get off => 'Aus';

  @override
  String get on => 'An';

  @override
  String get optionalLabel => '(Optional)';

  @override
  String get paperWallet => 'Papier Wallet';

  @override
  String get passwordBlank => 'Passwort darf nicht leer sein';

  @override
  String get passwordNoLongerRequiredToOpenParagraph =>
      'Zum Öffnen der App wird jetzt kein Passwort mehr benötigt.';

  @override
  String get passwordsDontMatch => 'Passwörter stimmen nicht überein';

  @override
  String get passwordWillBeRequiredToOpenParagraph =>
      'Dieses Passwort wird benötigt, um Kaspium zu öffnen.';

  @override
  String get pasteMnemonicError =>
      'Inhalt der Zwischenablage ist keine gültige Geheimsequenz';

  @override
  String get pending => 'ausstehend';

  @override
  String get pinConfirmError => 'PINs stimmen nicht überein';

  @override
  String get pinConfirmTitle => 'Bestätigen Sie Ihre PIN';

  @override
  String get pinCreateTitle => 'Erstellen Sie eine 6-stellige PIN';

  @override
  String get pinEnterTitle => 'PIN eingeben';

  @override
  String get pinInvalid => 'Falsche PIN eingegeben';

  @override
  String get pinMethod => 'PIN';

  @override
  String get pinSeedBackup => 'PIN eingeben, um Seed zu sehen.';

  @override
  String get preferences => 'Einstellungen';

  @override
  String get privacyPolicy => 'Datenschutz';

  @override
  String get qrInvalidAddress =>
      'QR-Code enthält keine gültige Empfängeradresse';

  @override
  String get qrInvalidSeed =>
      'Der QR-Code enthält keinen gültigen Seed oder Private Key';

  @override
  String get qrMnemonicError =>
      'Der QR-Code enthält keine gültige Geheimsequenz';

  @override
  String get receive => 'Empfangen';

  @override
  String get receiveAddress => 'Empfangsadresse';

  @override
  String get receiveAddressCopied => 'Empfangene Adresse kopiert';

  @override
  String get receiveAddressListEmpty => 'Liste der Empfangsadressen ist leer';

  @override
  String get received => 'Empfangen';

  @override
  String get receiveIndex => 'Empfangsindex';

  @override
  String receiveIndexParam(String addressIndex) {
    return 'Empfange $addressIndex ';
  }

  @override
  String get removeContact => 'Kontakt löschen';

  @override
  String removeContactConfirmation(String contactName) {
    return 'Wollen Sie $contactName wirklich löschen?';
  }

  @override
  String get removeWalletAction => 'Wallet entfernen';

  @override
  String get removeWalletBiometricsMessage =>
      'Authentifizieren, um Wallet zu löschen';

  @override
  String get removeWalletDetail =>
      'Das Löschen dieses Wallet wird die Geheimsequenz sowie alle Wallet-relevanten Daten von diesem Gerät entfernen. Wenn die Geheimsequenz nicht gesichert wurde, werden Sie nie wieder auf dieses Guthaben zugreifen können.';

  @override
  String get removeWalletPinMessage => 'Zum Entfernen des Wallet PIN eingeben';

  @override
  String get removeWalletReassurance =>
      'Solange Sie die Geheimsequenz gesichert haben, müssen Sie sich keine Sorgen machen.';

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
      'Passwortabfrage beim Öffnen der App?';

  @override
  String get restartSetupButton => 'Setup erneut beginnen';

  @override
  String get scanFailedMessage =>
      'Suche fehlgeschlagen, bitte später erneut versuchen';

  @override
  String get scanMore => 'NACH WEITEREN SUCHEN';

  @override
  String get scanMoreAddresses => 'Nach weiteren Adressen suchen';

  @override
  String get scannedIndex => 'Gesucht';

  @override
  String get scanningDescription => 'Suche neue Adressen...';

  @override
  String get scanningTitle => 'Suche';

  @override
  String get scanQrCode => 'QR-Code scannen';

  @override
  String get scanQrCodeError => 'Auswertung des QR-Codes fehlgeschlagen';

  @override
  String get secretInfo =>
      'Auf der nächsten Seite sehen Sie Ihre Geheimsequenz. Diese erlaubt den Zugriff auf Ihr Guthaben. Es ist sehr wichtig, dass Sie sie sichern und geheim halten.';

  @override
  String get secretInfoHeader => 'Sicherheit geht vor!';

  @override
  String get secretPhrase => 'Geheimsequenz';

  @override
  String get secretPhrase12Words => '12 WORDS';

  @override
  String get secretPhrase24Words => '24 WORDS';

  @override
  String get secretWarning =>
      'Sollten Sie Ihr Gerät verlieren oder die App löschen, benötigen Sie die Geheimsequenz, um auf Ihr Guthaben zugreifen zu können!';

  @override
  String get securityHeader => 'Sicherheit';

  @override
  String get seed => 'Seed';

  @override
  String get seedInvalid => 'Seed ist ungültig.';

  @override
  String get selectAddress => 'Adresse auswählen';

  @override
  String get send => 'Senden';

  @override
  String get sendConfirm => 'Senden';

  @override
  String get sendError => 'Ein Fehler ist aufgetreten, bitte erneut versuchen';

  @override
  String get sending => 'Senden';

  @override
  String get sendNote => 'NOTIZ';

  @override
  String get sendToAddressTitle => 'An';

  @override
  String get sendTxProgressDescription =>
      'Bitte warten, Transaktion wird gesendet';

  @override
  String get sendTxProgressTitle => 'Sende Transaktion';

  @override
  String get sent => 'Gesendet';

  @override
  String get sentTo => 'Senden an';

  @override
  String get setPassword => 'Passwort festlegen';

  @override
  String get setPasswordSuccess => 'Passwort erfolgreich festgelegt';

  @override
  String get settingsHeader => 'Einstellungen';

  @override
  String get settingsTransfer => 'Von Papier-Wallet importieren';

  @override
  String get setupFailedMessage => 'Da hat etwas nicht funktioniert';

  @override
  String get setWalletPassword => 'Wallet-Passwort festlegen';

  @override
  String get shareKaspium => 'Teile Kaspium';

  @override
  String get shareKaspiumSubject => 'Kaspium-Wallet ausprobieren';

  @override
  String get shareKaspiumText =>
      'Probiere Kaspium, Kaspas offizielles mobiles Wallet!';

  @override
  String get somethingWentWrong => 'Da hat etwas nicht funktioniert';

  @override
  String get systemDefault => 'Standardeinstellung';

  @override
  String get tapToHide => 'Zum Verbergen tippen';

  @override
  String get tapToReveal => 'Zum Anzeigen tippen';

  @override
  String get themeDark => 'Dunkel';

  @override
  String get themeHeader => 'Thema';

  @override
  String get themeLight => 'Hell';

  @override
  String get thisWallet => '#Dieses Wallet';

  @override
  String get to => 'An';

  @override
  String get toAddress => 'An Adresse';

  @override
  String get tooManyFailedAttempts => 'Zu viele Fehlversuche.';

  @override
  String get totalValue => 'Gesamtbetrag';

  @override
  String get transactionId => 'Transaktions ID';

  @override
  String get transactionsUppercase => 'TRANSAKTIONEN';

  @override
  String get transfer => 'Transferieren';

  @override
  String get transferClose => 'Tippe, um das Fenster zu schließen.';

  @override
  String transferComplete(String amount) {
    return '$amount KAS wurden erfolgreich an Ihr Kaspium Wallet gesendet.\n';
  }

  @override
  String transferConfirmInfo(String amount) {
    return 'Ein Wallet mit einem Guthaben von $amount KAS wurde gefunden.';
  }

  @override
  String get transferConfirmInfoSecond =>
      'Tippe, um den Transfer zu bestätigen.\n';

  @override
  String get transferConfirmInfoThird =>
      'Der Vorgang kann einige Sekunden dauern.';

  @override
  String get transferError =>
      'Während des Transfers ist ein Fehler aufgetreten. Bitte versuchen Sie es später erneut.';

  @override
  String get transferHeader => 'Guthaben transferieren';

  @override
  String transferIntro(String button) {
    return 'Dieser Vorgang wird das Guthaben vom Papier-Wallet in Ihr Kaspium Wallet transferieren.\n\nTippe zum Starten auf \"$button\".';
  }

  @override
  String get transferLoading => 'Transfer läuft';

  @override
  String get transferManualHint => 'Bitte Seed eingeben.';

  @override
  String get transferNoFunds => 'Dieser Seed enthält keine KAS.';

  @override
  String get transferQrScanError =>
      'Dieser QR Code enthält keinen gültigen Seed.';

  @override
  String get transferQrScanHint => 'Scanne einen Kaspa \nSeed oder Private-Key';

  @override
  String get txFilterDialogOptionAllTxs => 'Zeige alle Transaktionen';

  @override
  String get txFilterDialogOptionHideNotAcceptedCoinbase =>
      'Verberge alle nicht akzeptierten Coinbase-Transaktionen';

  @override
  String get txFilterDialogTitle => 'Transaktionsfilter';

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
  String get txReport => 'Transaktionsbericht';

  @override
  String get txReportDate => 'Datum';

  @override
  String get txReportDescription => 'Beschreibung';

  @override
  String get txReportDetails =>
      'Transaktionsbericht im CSV-Format erzeugen, welcher die gesamte Liste der Transaktionen dieses Wallet enthält.';

  @override
  String get txReportError => 'Fehler beim Erzeugen des Berichtes';

  @override
  String get txReportFeeAmount => 'Betrag der Gebühren';

  @override
  String get txReportFeeCurrency => 'Währung der Gebühren';

  @override
  String get txReportFeeForCompound => 'Gebühr für Mischungstransaktion';

  @override
  String get txReportFeeForSelfSend => 'Gebühr um an eigene Adresse zu senden';

  @override
  String get txReportGenerate => 'Erzeugen';

  @override
  String get txReportGetReport => 'Bericht herunterladen';

  @override
  String get txReportLabel => 'Bezeichnung';

  @override
  String get txReportLabelCost => 'kostet';

  @override
  String txReportNoLoadedTxs(int loadedTxs, int totalTxs) {
    return '($loadedTxs von $totalTxs)';
  }

  @override
  String get txReportNote => 'Notiz';

  @override
  String txReportNoTxs(int numberOf) {
    return '$numberOf Transaktionen gefunden.';
  }

  @override
  String get txReportOptionIgnoreCompound =>
      'Vermischungstransaktionen ignorieren';

  @override
  String get txReportOptionIgnoreSelfTxs =>
      'Transaktionen an sich selbst ignorieren';

  @override
  String get txReportOptionRefreshTxs => 'Transaktionen neu laden';

  @override
  String get txReportReceivedAmount => 'Empfangener Betrag';

  @override
  String get txReportReceivedCurrency => 'Empfangene Währung';

  @override
  String get txReportSentAmount => 'Gesendeter Betrag';

  @override
  String get txReportSentCurrency => 'Gesendete Währung';

  @override
  String get txReportStatusLoading => 'Lade Transaktionen';

  @override
  String get txReportStatusReady => 'Transaktionsbericht ist fertig!';

  @override
  String get txReportStatusRefreshing => 'Transaktionen werden neu geladen';

  @override
  String get txReportSubtitle =>
      'CSV-Datei des Transaktionsverlaufen herunterladen';

  @override
  String get txReportTxHash => 'TxHash';

  @override
  String get unconfirmed => 'unbestätigt';

  @override
  String get unknown => 'unbekannt';

  @override
  String get unlock => 'Entsperren';

  @override
  String get unlockBiometrics => 'Authentifizieren, um Kaspium zu entsperren';

  @override
  String get unlockPin => 'PIN eingeben, um Kaspium zu entsperren';

  @override
  String get utxoSelectionHint => 'Please select more UTXOs';

  @override
  String get utxoSelectionTitle => 'Select UTXOs';

  @override
  String get utxosUppercase => 'UTXOs';

  @override
  String get viewAddress => 'Adresse anzeigen';

  @override
  String get viewTransaction => 'Transaktion anzeigen';

  @override
  String get walletAddress => 'Wallet-Adresse';

  @override
  String get walletAddresses => 'Wallet-Adressen';

  @override
  String walletAddressesCopied(String addressType) {
    return 'Wallet $addressType Adressen in die Zwischenablage kopiert';
  }

  @override
  String walletAddressesCopyFailed(String addressType) {
    return 'Kopieren der Wallet $addressType Adressen fehlgeschlagen';
  }

  @override
  String get walletName => 'Wallet Name';

  @override
  String get walletNameDescription => 'Bitte Name für das Wallet eingeben';

  @override
  String get walletNameHint => 'Wallet Name';

  @override
  String get walletSetupAddressDiscovery => 'Adressensuche läuft';

  @override
  String get walletSetupMessage => 'Wallet-Einrichtung läuft';

  @override
  String get walletsTitle => 'Wallets';

  @override
  String get warning => 'Warnung';

  @override
  String welcomeMessage(String version) {
    return 'Willkommen!\n\nDies ist Version $version von Kaspium - dem mobilen Wallet für Kaspa';
  }

  @override
  String get welcomeText =>
      'Willkommen bei Kaspium. Um fortzufahren, bitte ein neues Wallet erstellen oder ein bereits existierendes Wallet importieren.';

  @override
  String get yes => 'Ja';

  @override
  String get yesButton => 'Ja';

  @override
  String get yesUppercase => 'JA';
}
