// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n_gen.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get aboutTopperDescription =>
      'Topper de la Uphold este o rampă fiat-crypto ușor de folosit care permite utilizatorilor să cumpere criptomonede folosind o carte de credit/debit sau un cont bancar.';

  @override
  String get aboutTopperTitle => 'Despre Topper';

  @override
  String get accepted => 'acceptat';

  @override
  String get account => 'Cont';

  @override
  String get accounts => 'Conturi';

  @override
  String get ackBackedUp =>
      'Ești sigur/ă că ai salvat formula secretă ori seed-ul portofelului?';

  @override
  String get add => 'Adaugă';

  @override
  String get addAccount => 'Adaugă cont';

  @override
  String get addContact => 'Adaugă contact';

  @override
  String get addingNodeMessage =>
      'Vă rugăm să așteptați cât se contactează nodul';

  @override
  String get addingNodeTitle => 'Se adaugă nodul';

  @override
  String get addNode => 'Adaugă notă';

  @override
  String get addNodeFailed => 'Adăugare eșuată a nodului Kaspa';

  @override
  String addNodeFailedMessage(String error) {
    return 'Eroare: $error';
  }

  @override
  String get addNodeSuccess => 'Nodul a fost adăugat cu succes';

  @override
  String get address => 'Adresă';

  @override
  String get addressCopied => 'Adresă copiată';

  @override
  String get addressCopiedFailed => 'Adresa nu a putut fi copiată';

  @override
  String get addressDiscovery => 'Explorează adresa';

  @override
  String get addressFilterDialogOptionAllAddresses => 'Vezi toate Adresele';

  @override
  String get addressFilterDialogOptionNonZeroBalances =>
      'Vezi Adresele cu sold';

  @override
  String get addressFilterDialogTitle => 'Filtru Adresă';

  @override
  String get addressHint => 'Introdu adresa';

  @override
  String get addressMising => 'Introduceți o Adresă';

  @override
  String get addressShare => 'Distribuie Adresa';

  @override
  String get advancedHeader => 'Avansat';

  @override
  String get amount => 'Cantitate';

  @override
  String amountConfirm(String amount, String coin) {
    return 'Cantitate $amount $coin';
  }

  @override
  String get amountMissing => 'Introduceți o sumă';

  @override
  String get amountZero => 'Cantitatea nu poate fi zero';

  @override
  String get areYouSure => 'Sunteți sigur?';

  @override
  String get authBiometricMessage =>
      'Autentificați-vă pentru a adăuga portofelul';

  @override
  String get authMethod => 'Metoda de Autentificare';

  @override
  String get authPinMessage =>
      'Introduceți codul PIN pentru a adăuga portofelul';

  @override
  String get autoLockHeader => 'Blocare automată';

  @override
  String get available => 'Disponibil';

  @override
  String get backupConfirmButton => 'Am salvat-o într-un loc sigur';

  @override
  String get backupSecretPhrase => 'Backup formulă secretă';

  @override
  String get balance => 'Balanță';

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
  String get blockExplorer => 'Explorator de blocuri';

  @override
  String get buyKaspaMessage => 'Cumpără \$KAS rapid și ușor.';

  @override
  String get buyKaspaMessageSecondary =>
      'Serviciu furnizat de Topper, rampă fiat-crypto a Uphold.';

  @override
  String get buyKaspaSubtitle => 'Prin Topper de la Uphold';

  @override
  String get buyKaspaTitle => 'Cumpără Kaspa';

  @override
  String get cancel => 'Anulare';

  @override
  String get change => 'Schimbare';

  @override
  String get changeAddress => 'Modifică adresa';

  @override
  String get changeAddressCopied => 'Modificarea adresei a fost copiată';

  @override
  String get changeAddressListEmpty =>
      'Modificarea listei de adresa este goală';

  @override
  String get changeIndex => 'Modifică indexul';

  @override
  String changeIndexParam(String addressIndex) {
    return 'Modifică $addressIndex';
  }

  @override
  String get checkCameraPermission =>
      'Vă rugăm să verificați permisiunile camerei foto';

  @override
  String get clipboardEmpty => 'Clipboard-ul este gol';

  @override
  String get close => 'Închide';

  @override
  String get closeUppercased => 'ÎNCHIDE';

  @override
  String get compoundFailure => 'Eroare la agregarea tranzacțiilor.';

  @override
  String get compoundingMessage => 'Te rog să astepți...';

  @override
  String get compoundingUtxos => 'Tranzacțiile se agregă';

  @override
  String get compoundRequired => 'Compus este necesar';

  @override
  String get compoundRequiredDescription =>
      'Suma tranzacției necesită prea multe UTXO-uri. Compunerea va reduce numărul de UTXO-uri.';

  @override
  String get compoundSuccess => 'Agregare cu succes';

  @override
  String get compoundTooFewUtxos => 'Cel putin două UTXOs sunt necesare';

  @override
  String get compoundUppercased => 'AGREGĂ';

  @override
  String get compoundUtxos => 'Agrega tranzacțiile';

  @override
  String get compoundUtxosConfirmation => 'Agregare tranzacții?';

  @override
  String get compoundUtxosDescription =>
      'Combină mai multe tranzacții in una singură';

  @override
  String get confirm => 'Confirmare';

  @override
  String confirmations(String confirmations) {
    return '$confirmations confirmări';
  }

  @override
  String get confirmed => 'confirmat';

  @override
  String get confirming => 'în confirmare';

  @override
  String get confirmPasswordHint => 'Confirmă parola';

  @override
  String contactAdded(String contactName) {
    return '$contactName a fost adăugat la contacte';
  }

  @override
  String contactAddressCopied(String address) {
    return '$address adresa copiată';
  }

  @override
  String get contactExists => 'Contactul deja există';

  @override
  String get contactHeader => 'Contact';

  @override
  String get contactInvalid => 'Nume de Contact invalid';

  @override
  String get contactNameHint => 'Introdu un nume @';

  @override
  String get contactNameMissing => 'Alege un Nume pentru acest Contact';

  @override
  String contactRemoved(String contactName) {
    return '$contactName a fost șters din lista contactelor!';
  }

  @override
  String get contactsHeader => 'Contacte';

  @override
  String get contactsImportErr => 'Importarea contactelor a eșuat';

  @override
  String contactsImportSuccess(String noContacts) {
    return 'Am importat $noContacts contacte';
  }

  @override
  String get contactSupport => 'Contactează Suport-ul';

  @override
  String get copied => 'Copiat';

  @override
  String get copy => 'Copiere';

  @override
  String get copyAddress => 'Copiază adresa';

  @override
  String get copyErrorButton => 'Copiaza eroarea';

  @override
  String get copyKpub => 'Copiază Kpub';

  @override
  String get createAPasswordHeader => 'Creați o parolă.';

  @override
  String get createPasswordFirstParagraph =>
      'Puteți adauga o parolă pentru a spori securitatea portofelului.';

  @override
  String get createPasswordHint => 'Creează parola';

  @override
  String get createPasswordSecondParagraph =>
      'Parola este opțională, portofelul este protejat indiferent de către codul PIN sau datele biometrice.';

  @override
  String get createPasswordSheetHeader => 'Creează';

  @override
  String get currency => 'Valută';

  @override
  String get currencyPoweredBy => 'Susținut de CoinGecko';

  @override
  String get currentIndex => 'Curent';

  @override
  String get defaultAccountName => 'Adresa 1';

  @override
  String defaultNewAccountName(int addressIndex) {
    return 'Primește $addressIndex';
  }

  @override
  String get defaultWalletName => 'Portofelul meu';

  @override
  String get disablePasswordSheetHeader => 'Dezactivează';

  @override
  String get disablePasswordSuccess => 'Parola a fost dezactivată';

  @override
  String get disableWalletPassword => 'Dezactivați parola portofelului';

  @override
  String get doContinue => 'Continuă';

  @override
  String get donate => 'Donează';

  @override
  String get donateTo => 'Donează către';

  @override
  String get dontShowAgain => 'Nu arăta din nou';

  @override
  String emailAction(String email) {
    return 'Email $email';
  }

  @override
  String get emptyCardIntroUtxos =>
      'Aceasta este fila UTXO. Toate UTXO-urile din portofelul tău vor apărea aici';

  @override
  String get emptyResult => 'Rezultatul este gol';

  @override
  String get emptyWalletName =>
      'Numele portofelului nu poate rămâne necompletat';

  @override
  String get encryptionFailedError => 'Setarea parolei a eșuat';

  @override
  String get enterAddress => 'Introdu adresa';

  @override
  String get enterAmount => 'Introdu suma';

  @override
  String get enterFiatValue => 'Introduceți valoarea fiat';

  @override
  String get enterNote => 'Introdu nota';

  @override
  String get enterPasswordHint => 'Introdu parola';

  @override
  String get errorMessageCopied =>
      'Mesajul de eroare a fost copiat în clipboard';

  @override
  String get exampleCardIntro =>
      'Bine ai venit! Odată ce primești sau trimiți KAS, tranzacțiile vor fi afișate aici.';

  @override
  String get export => 'Exportă';

  @override
  String get fee => 'Taxă';

  @override
  String get feeBaseUppercase => 'BASE FEE';

  @override
  String feeConfirm(String amount, String coin) {
    return 'Taxă $amount $coin';
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
  String get feeTitle => 'TAXĂ';

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
  String get fetchingTransactions => 'Tranzactiile sunt în curs de primire';

  @override
  String get fingerprintSeedBackup =>
      'Autentifică-te pentru a efectua back-up-ul cuvintelor secrete.';

  @override
  String get getStarted => 'Începeți';

  @override
  String get goBackButton => 'Înapoi';

  @override
  String get gotItButton => 'Am înțeles!';

  @override
  String get hideAccountHeader => 'Hide Account?';

  @override
  String get hideAccountText =>
      'Are you sure you want to hide this account? You can re-add it later by tapping the \"Add Account\" button.';

  @override
  String get hintAddressListEmpty =>
      'Verificati filtrul de adrese din colțul din dreapta sus';

  @override
  String get import => 'Importă';

  @override
  String get importAsLegacyWallet => 'Import as Legacy Wallet';

  @override
  String get importAsStandardWallet => 'Import as Standard Wallet';

  @override
  String get importKpub => 'Importă Portofelul Watch Only';

  @override
  String get importKpubClipboardError =>
      'Conținutul clipboard-ului nu este o cheie publică extinsă validă';

  @override
  String get importKpubHint => 'Te rog să introduci cheia ta publica extinsă.';

  @override
  String get importKpubInvalidMessage =>
      'Te rog să verifici dacă cheia ta publica extinsă este introdusă corect!';

  @override
  String get importKpubQrCodeError =>
      'Codul QR nu conține o cheie publică extinsă validă';

  @override
  String get importLegacyWalletDetectedDetails =>
      'Do you want to import your wallet in legacy mode?';

  @override
  String get importLegacyWalletDetectedTitle => 'Legacy Wallet Detected';

  @override
  String get importOption12WordsDescription =>
      'Compatibil cu Web Wallet și KDX';

  @override
  String get importOption12WordsTitle => 'Importă cele 12 cuvinte secrete';

  @override
  String get importOption24WordsDescription =>
      'Compatibil cu Portofel Cli si Ledger';

  @override
  String get importOption24WordsTitle => 'Importă cele 24 cuvinte secrete';

  @override
  String get importOptionKpubDescription =>
      'Monitorizați soldul și tranzacțiile unui portofel folosind o cheie publică extinsă';

  @override
  String get importOptionKpubTitle => 'Importă Portofelul Watch Only';

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
  String get importSecretPhrase => 'Importare formulă secretă';

  @override
  String get importSecretPhraseHint =>
      'Introduceți fraza de 24 de cuvinte mai jos. Fiecare cuvânt trebuie să fie separat printr-un spațiu.';

  @override
  String get importSecretPhraseHintCombo =>
      'Te rog să introduci cele 12 sau 24 cuvinte secrete mai jos.';

  @override
  String get importSecretPhraseHintLegacy =>
      'Te rog să introduci cele 12 cuvinte secrete mai jos.';

  @override
  String get importWallet => 'Importă portofelul';

  @override
  String get importWalletAdvancedOptions => 'Advanced Options';

  @override
  String get importWalletDescription => 'Selectează o opțiune de mai jos.';

  @override
  String get indexHeader => 'Index';

  @override
  String get instantly => 'Instant';

  @override
  String get insufficientBalance => 'Fonduri insuficiente';

  @override
  String get insufficientBalanceDetails =>
      'Nu aveți destui KAS pentru această tranzacție';

  @override
  String get invalidAddress => 'Adresa introdusă este invalidă';

  @override
  String get invalidAmount => 'Cantitate greșită';

  @override
  String get invalidChecksumMessage =>
      'Vă rugăm să verifcați dacă fraza secretă\neste introdusă corect!';

  @override
  String get invalidDestinationAddress => 'Adresa destinatarului este greșită';

  @override
  String get invalidKpubMessage =>
      'Verifică dacă cheia ta publică extinsă este introdusă corect!';

  @override
  String get invalidPassword => 'Parolă incorectă';

  @override
  String get invalidSecretPhrase => 'Fraza secreta este invalidă';

  @override
  String get invalidSecretPhraseConfirmation => 'Înțeleg ce fac';

  @override
  String get invalidSecretPhraseDetails =>
      'Fraza secretă introdusă are o sumă de verificare invalidă.';

  @override
  String get kaspaDevFund => 'Fondul Kaspa Dev';

  @override
  String get kaspaUriCopied => 'Kaspa URI a fost copiat';

  @override
  String get kaspaUriCopyFailed => 'Kaspa URI nu a putut fi copiat';

  @override
  String get kaspaUriInvalid => 'Adresa URL Kaspa este invalidă';

  @override
  String get kaspiumWallet => 'Portofelul Kaspium';

  @override
  String get kpubAuth => 'Vezi Cheia Publică Extinsă';

  @override
  String get kpubCopied => 'Cheia Publică Extinsă a fost copiată';

  @override
  String get kpubCopyFailed => 'Nu s-a putut copia Cheia Publică Extinsă';

  @override
  String get kpubDescription =>
      'Cheia publică extinsă poate fi folosită pentru a importa portofelul dvs. ca un portofel \'doar pentru vizualizare\'.';

  @override
  String get kpubTitle => 'Cheia Publică Extinsă';

  @override
  String get language => 'Limba';

  @override
  String get loadingTransactions => 'Tranzacțiile se încarcă...';

  @override
  String get lockAppSetting => 'Autentificare la deschidere';

  @override
  String get locked => 'Închis';

  @override
  String get loggingOutMessage => 'Deconectare...';

  @override
  String get logout => 'Deconectare';

  @override
  String get logoutDialogContent =>
      'Sunteți sigur că doriți să vă deconectați de la acest portofel?';

  @override
  String get logoutOrSwitchWallet => 'Deconectare / Schimbare Portofel';

  @override
  String get manage => 'Administrare';

  @override
  String get manualEntry => 'Introducere manuală';

  @override
  String get maxSend => 'Trimite Max';

  @override
  String get missingSecretPhrase => 'Missing Secret Phrase';

  @override
  String get moreInfo => 'Mai multe informații';

  @override
  String get networkHeader => 'Rețea';

  @override
  String get newAddress => 'Adresă nouă';

  @override
  String get newIndex => 'Nou';

  @override
  String get newWallet => 'Portofel nou';

  @override
  String get nextButton => 'Continuă';

  @override
  String get no => 'Nu';

  @override
  String get noContactsExport => 'Nu există contacte pentru export';

  @override
  String get noContactsImport => ' Nu am gasit contacte pentru import';

  @override
  String get nodeAddress => 'Nod Kaspa';

  @override
  String get nodeDeleteMessage => 'Sigur doriți să ștergeți?';

  @override
  String get nodeDeleteTitle => 'Ștergeți configurația nodului Kaspa?';

  @override
  String get nodeNameEmpty => 'Numele nodului nu poate rămâne necompletat';

  @override
  String get nodeNameHint => 'Introduceți numele nodului';

  @override
  String get nodeNotSyncedException => 'Nodul nu este sincronizat';

  @override
  String get nodeNoUTXOIndexException => 'Nodul nu are un index UTXO.';

  @override
  String get nodeSecureConnection => 'Conexiune securizată';

  @override
  String get nodesSheetTitle => 'Noduri Kaspa';

  @override
  String get nodeUrlHint => 'Introduceți URL-ul nodului';

  @override
  String get nodeUrlInvalid => 'URL-ul nodului este greșit';

  @override
  String get noQrCodeFound => 'Codul QR nu a fost găsit';

  @override
  String get noSkipButton => 'Sari peste';

  @override
  String get notAccepted => 'neacceptat';

  @override
  String get noteLabel => 'Notă:';

  @override
  String get noUppercase => 'NU';

  @override
  String get off => 'Dezactivate';

  @override
  String get on => 'Activate';

  @override
  String get optionalLabel => '(Opțional)';

  @override
  String get paperWallet => 'Paper Wallet';

  @override
  String get passwordBlank => 'Parola nu poate fi goală';

  @override
  String get passwordNoLongerRequiredToOpenParagraph =>
      'Deschideți aplicația fără a mai introduce parola.';

  @override
  String get passwordsDontMatch => 'Parolele nu corespund';

  @override
  String get passwordWillBeRequiredToOpenParagraph =>
      'Această parolă va fi necesară pentru a deschide Kaspium.';

  @override
  String get pasteMnemonicError =>
      'Clipboard-ul nu conține o frază secretă validă';

  @override
  String get pending => 'în așteptare';

  @override
  String get pinConfirmError => 'PIN-urile nu corespund';

  @override
  String get pinConfirmTitle => 'Confirmă PIN-ul';

  @override
  String get pinCreateTitle => 'Creați un PIN cu 6 cifre';

  @override
  String get pinEnterTitle => 'Introdu PIN-ul';

  @override
  String get pinInvalid => 'PIN invalid';

  @override
  String get pinMethod => 'PIN';

  @override
  String get pinSeedBackup =>
      'Introdu PIN-ul pentru a vedea seed-ul portofelului.';

  @override
  String get preferences => 'Preferințe';

  @override
  String get privacyPolicy => 'Politica de confidențialitate';

  @override
  String get qrInvalidAddress => 'Codul QR nu conține o adresă validă';

  @override
  String get qrInvalidSeed =>
      'Codul QR nu conține un seed sau private key valid';

  @override
  String get qrMnemonicError => 'Codul QR nu conține o formulă secretă corectă';

  @override
  String get receive => 'Primește';

  @override
  String get receiveAddress => 'Adresa destinatarului';

  @override
  String get receiveAddressCopied => 'Adresa destinatarului este copiată';

  @override
  String get receiveAddressListEmpty =>
      'Lista de adrese pentru primire este goală';

  @override
  String get received => 'Ai primit';

  @override
  String get receiveIndex => 'Indexul destinatarului';

  @override
  String receiveIndexParam(String addressIndex) {
    return 'Primește $addressIndex';
  }

  @override
  String get removeContact => 'Șterge contactul';

  @override
  String removeContactConfirmation(String contactName) {
    return 'Dorești să elimini contactul $contactName?';
  }

  @override
  String get removeWalletAction => 'Șterge portofelul';

  @override
  String get removeWalletBiometricsMessage =>
      'Autentificați-vă pentru a șterge portofelul';

  @override
  String get removeWalletDetail =>
      'Ștergerea acestui portofel va înlătura de pe dspozitiv fraza secretă și toate datele refertoare la acest portofel. Dacă fraza secretă nu a fost salvată de Dvs., nu veți putea accesa acest portofel niciodată. ';

  @override
  String get removeWalletPinMessage =>
      'Introduceți codul PIN pentru a șterge portofelul';

  @override
  String get removeWalletReassurance =>
      'Atât timp cât ați salvat faza secretă, nu aveți de ce sa vă faceți griji. ';

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
      'Doriți să setați o parolă pentru a deschide Kaspium?';

  @override
  String get restartSetupButton => 'Reporniți configurarea';

  @override
  String get scanFailedMessage => 'Scanarea a eșuat, încearca mai târziu';

  @override
  String get scanMore => 'SCANEAZĂ MAI MULT';

  @override
  String get scanMoreAddresses => 'Scanează pentru mai multe adrese';

  @override
  String get scannedIndex => 'Scanat';

  @override
  String get scanningDescription => 'Se scanează pentru noi adrese...';

  @override
  String get scanningTitle => 'Scanare';

  @override
  String get scanQrCode => 'Scanare cod QR';

  @override
  String get scanQrCodeError => 'Codul QR nu a putut fi analizat';

  @override
  String get secretInfo =>
      'În continuare, veți vedea formula secretă a portofelului. Aceasta este o parolă care permite accesul la fonduri. Este vital să fie notată într-un caiet și să nu fie arătată vreodată nimănui.';

  @override
  String get secretInfoHeader => 'Siguranța înainte de toate!';

  @override
  String get secretPhrase => 'Formula secretă';

  @override
  String get secretPhrase12Words => '12 WORDS';

  @override
  String get secretPhrase24Words => '24 WORDS';

  @override
  String get secretWarning =>
      'Dacă vă pierdeți dispozitivul sau dezinstalați aplicația, aveți nevoie de seed sau de formula secretă pentru a recupera fondurile!';

  @override
  String get securityHeader => 'Securitate';

  @override
  String get seed => 'Seed';

  @override
  String get seedInvalid => 'Seed invalid';

  @override
  String get selectAddress => 'Selectează Adresa';

  @override
  String get send => 'Trimite';

  @override
  String get sendConfirm => 'Trimite';

  @override
  String get sendError => 'A apărut o eroare. Încercați din nou mai târziu.';

  @override
  String get sending => 'Trimitere...';

  @override
  String get sendNote => 'NOTĂ';

  @override
  String get sendToAddressTitle => 'Către';

  @override
  String get sendTxProgressDescription =>
      'Vă rugăm să așteptați cât se timp se efectuează tranzacția';

  @override
  String get sendTxProgressTitle => 'Se efectuează tranzacția';

  @override
  String get sent => 'Trimis';

  @override
  String get sentTo => 'Trimis către';

  @override
  String get setPassword => 'Setează parola';

  @override
  String get setPasswordSuccess => 'Parola a fost setată cu succes';

  @override
  String get settingsHeader => 'Setări';

  @override
  String get settingsTransfer => 'Încarcă din Paper Wallet';

  @override
  String get setupFailedMessage => 'Ceva nu a mers bine';

  @override
  String get setWalletPassword => 'Setați o parolă portofelului';

  @override
  String get shareKaspium => 'Distribuie Kaspium';

  @override
  String get shareKaspiumSubject => 'Verifică portofelul Kaspium';

  @override
  String get shareKaspiumText =>
      'Descoperă Kaspium - Portofelul mobil KAS.\nWebsite - kaspium.io';

  @override
  String get somethingWentWrong => 'Ceva nu a mers bine';

  @override
  String get systemDefault => 'Limba implicită';

  @override
  String get tapToHide => 'Apăsați pentru a ascunde';

  @override
  String get tapToReveal => 'Apăsați pentru a afișa';

  @override
  String get themeDark => 'Aspect întunecat';

  @override
  String get themeHeader => 'Aspect';

  @override
  String get themeLight => 'Aspect deschis';

  @override
  String get thisWallet => '#Acest Portofel';

  @override
  String get to => 'Către';

  @override
  String get toAddress => 'Către adresa';

  @override
  String get tooManyFailedAttempts =>
      'Prea multe încercări de deblocare eșuate.';

  @override
  String get totalValue => 'Valoare totală';

  @override
  String get transactionId => 'ID-ul tranzacției';

  @override
  String get transactionsUppercase => 'TRANZACȚII';

  @override
  String get transfer => 'Transferă';

  @override
  String get transferClose =>
      'Apăsați oriunde pentru a închide această fereastră.';

  @override
  String transferComplete(String amount) {
    return '$amount KAS au fost transferate cu succes în portofelul dvs. Kaspium.\n';
  }

  @override
  String transferConfirmInfo(String amount) {
    return 'Un portofel cu un sold de $amount KAS a fost găsit.';
  }

  @override
  String get transferConfirmInfoSecond =>
      'Apăsați pentru a confirma transferul.\n';

  @override
  String get transferConfirmInfoThird =>
      'Transferul poate dura câteva secunde.';

  @override
  String get transferError =>
      'A avut loc o eroare în timpul transferului. Vă rugăm să încercați din nou mai târziu.';

  @override
  String get transferHeader => 'Transferă Fonduri';

  @override
  String transferIntro(String button) {
    return 'Acest proces va transfera fondurile dintr-un Paper Wallet către contul dvs. Kaspium.\n\nAtingeți butonul \"$button\" pentru a începe.';
  }

  @override
  String get transferLoading => 'Se transferă...';

  @override
  String get transferManualHint => 'Introduceți seed-ul mai jos.';

  @override
  String get transferNoFunds => 'Acest seed nu conține KAS.';

  @override
  String get transferQrScanError => 'Acest cod QR nu conține un seed valid.';

  @override
  String get transferQrScanHint =>
      'Scanați un seed pentru KAS\n sau un private key';

  @override
  String get txFilterDialogOptionAllTxs => 'Arată toate Tranzacțiile';

  @override
  String get txFilterDialogOptionHideNotAcceptedCoinbase =>
      'Ascundeți tranzacțiile Coinbase care nu sunt acceptate';

  @override
  String get txFilterDialogTitle => 'Filtru de tranzacție';

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
  String get txReport => 'Raport Tranzacție';

  @override
  String get txReportDate => 'Data';

  @override
  String get txReportDescription => 'Descriere';

  @override
  String get txReportDetails =>
      'Generați un raport de tranzacții, în format CSV, care conține întregul istoric al tranzacțiilor portofelului.';

  @override
  String get txReportError => 'Eroare la generarea raportului';

  @override
  String get txReportFeeAmount => 'Suma taxei';

  @override
  String get txReportFeeCurrency => 'Suma Valutei';

  @override
  String get txReportFeeForCompound => 'Taxa pentru tranzacția compusă';

  @override
  String get txReportFeeForSelfSend =>
      'Taxa pentru a trimite către propriile adrese';

  @override
  String get txReportGenerate => 'Generează';

  @override
  String get txReportGetReport => 'Obțineți Raportul';

  @override
  String get txReportLabel => 'Etichetă';

  @override
  String get txReportLabelCost => 'cost';

  @override
  String txReportNoLoadedTxs(int loadedTxs, int totalTxs) {
    return '($loadedTxs din $totalTxs)';
  }

  @override
  String get txReportNote => 'Notă';

  @override
  String txReportNoTxs(int numberOf) {
    return 'Au fost găsite $numberOf tranzacții.';
  }

  @override
  String get txReportOptionIgnoreCompound => 'Ignorați tranzacțiile compuse';

  @override
  String get txReportOptionIgnoreSelfTxs =>
      'Ignorați tranzacțiile trimise către sine';

  @override
  String get txReportOptionRefreshTxs => 'Reîmprospătați tranzacțiile';

  @override
  String get txReportReceivedAmount => 'Suma primită';

  @override
  String get txReportReceivedCurrency => 'Valuta primită';

  @override
  String get txReportSentAmount => 'Sumă Trimisă';

  @override
  String get txReportSentCurrency => 'Monedă Trimisă';

  @override
  String get txReportStatusLoading => 'Se încarcă tranzacțiile';

  @override
  String get txReportStatusReady => 'Raportul de tranzacții este pregătit!';

  @override
  String get txReportStatusRefreshing => 'Se reîmprospătează tranzacțiile';

  @override
  String get txReportSubtitle =>
      'Obțineți fișierul CSV cu istoricul tranzacțiilor';

  @override
  String get txReportTxHash => 'TxHash';

  @override
  String get unconfirmed => 'neconfirmat';

  @override
  String get unknown => 'necunoscut';

  @override
  String get unlock => 'Deblochează';

  @override
  String get unlockBiometrics => 'Autentificaţi-vă pentru a debloca Kaspium';

  @override
  String get unlockPin => 'Introduceți codul PIN pentru a debloca Kaspium';

  @override
  String get utxoSelectionHint => 'Please select more UTXOs';

  @override
  String get utxoSelectionTitle => 'Select UTXOs';

  @override
  String get utxosUppercase => 'UTXO-uri';

  @override
  String get viewAddress => 'Vezi adresa';

  @override
  String get viewTransaction => 'Vezi tranzacția';

  @override
  String get walletAddress => 'Adresa Portofelului';

  @override
  String get walletAddresses => 'Adresele portofelelor';

  @override
  String walletAddressesCopied(String addressType) {
    return 'Adresele portofelului $addressType au fost copiate în clipboard';
  }

  @override
  String walletAddressesCopyFailed(String addressType) {
    return 'Nu s-au putut copia adresele portofelului $addressType';
  }

  @override
  String get walletName => 'Numele portofelului';

  @override
  String get walletNameDescription =>
      'Introduceți un nume pentru portofelul Dvs.';

  @override
  String get walletNameHint => 'Numele Portofelului';

  @override
  String get walletSetupAddressDiscovery => 'Descoperă adresa de rulare';

  @override
  String get walletSetupMessage => 'Setează portofelul';

  @override
  String get walletsTitle => 'Portofele';

  @override
  String get warning => 'Avertisment';

  @override
  String welcomeMessage(String version) {
    return 'Bine ați venit!\n\nAceasta este versunea $version a Kaspium - portofelului mobil pentru Kaspa';
  }

  @override
  String get welcomeText =>
      'Bine ai venit! Pentru a continua, creează un portofel nou sau importă unul deja existent.';

  @override
  String get yes => 'Da';

  @override
  String get yesButton => 'Da';

  @override
  String get yesUppercase => 'DA';
}
