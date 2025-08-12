// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n_gen.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get aboutTopperDescription =>
      'Topper od Uphold to łatwa w użyciu platforma fiat-to-crypto, która pozwala użytkownikom kupować kryptowaluty za pomocą karty kredytowej/debetowej lub konta bankowego.';

  @override
  String get aboutTopperTitle => 'O Topperze';

  @override
  String get accepted => 'zaakceptowane';

  @override
  String get account => 'Konto';

  @override
  String get accounts => 'Konta';

  @override
  String get ackBackedUp =>
      'Czy jesteś pewny/a że zapisałeś/aś sekretną frazę?';

  @override
  String get add => 'Dodaj';

  @override
  String get addAccount => 'Dodaj konto';

  @override
  String get addContact => 'Dodaj kontakt';

  @override
  String get addingNodeMessage => 'Poczekaj na połączenie z węzłem sieciowym';

  @override
  String get addingNodeTitle => 'Dodawanie węzła sieciowego';

  @override
  String get addNode => 'Dodać węzeł sieciowy';

  @override
  String get addNodeFailed => 'Nie udało się dodać węzła sieciowego Kaspa';

  @override
  String addNodeFailedMessage(String error) {
    return 'Błąd: $error';
  }

  @override
  String get addNodeSuccess => 'Węzeł sieciowy dodany pomyślnie';

  @override
  String get address => 'Adres';

  @override
  String get addressCopied => 'Skopiowano adres';

  @override
  String get addressCopiedFailed => 'Nie udało się skopiować adresu';

  @override
  String get addressDiscovery => 'Poszukiwanie adresów';

  @override
  String get addressFilterDialogOptionAllAddresses =>
      'Wyświetl wszystkie adresy';

  @override
  String get addressFilterDialogOptionNonZeroBalances =>
      'Wyświetl adresy, na których jest Kaspa';

  @override
  String get addressFilterDialogTitle => 'Filtr adresów';

  @override
  String get addressHint => 'Wpisz adres';

  @override
  String get addressMising => 'Proszę wpisać adres';

  @override
  String get addressShare => 'Udostępnij adres';

  @override
  String get advancedHeader => 'Zaawansowane';

  @override
  String get amount => 'Kwota';

  @override
  String amountConfirm(String amount, String coin) {
    return 'Kwota $amount $coin';
  }

  @override
  String get amountMissing => 'Wpisz kwotę';

  @override
  String get amountZero => 'Kwota nie może wynosić zero';

  @override
  String get areYouSure => 'Na pewno?';

  @override
  String get authBiometricMessage => 'Zaloguj się, aby stworzyć nowy portfel';

  @override
  String get authMethod => 'Metoda logowania';

  @override
  String get authPinMessage => 'Wpisz PIN, aby dodać portfel';

  @override
  String get autoLockHeader => 'Blokuj automatycznie';

  @override
  String get available => 'Dostępny';

  @override
  String get backupConfirmButton => 'Zapisałem\\am frazę';

  @override
  String get backupSecretPhrase => 'Zapisz sekretną frazę';

  @override
  String get balance => 'Stan konta';

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
  String get blockExplorer => 'Eksplorer bloków';

  @override
  String get buyKaspaMessage => 'Kup \$KAS szybko & łatwo.';

  @override
  String get buyKaspaMessageSecondary =>
      'Usługa świadczona przez Topper, wejście Uphold do wymiany fiat na kryptowaluty.';

  @override
  String get buyKaspaSubtitle => 'Przez Topper od Uphold';

  @override
  String get buyKaspaTitle => 'Kup Kaspa';

  @override
  String get cancel => 'Anuluj';

  @override
  String get change => 'Reszta';

  @override
  String get changeAddress => 'Adres reszty';

  @override
  String get changeAddressCopied => 'Adres reszty skopiowano';

  @override
  String get changeAddressListEmpty => 'Lista adresów do zmiany jest pusta';

  @override
  String get changeIndex => 'Indeks reszty';

  @override
  String changeIndexParam(String addressIndex) {
    return 'Reszta $addressIndex';
  }

  @override
  String get checkCameraPermission => 'Sprawdź uprawnienia do kamery';

  @override
  String get clipboardEmpty => 'Schowek jest pusty';

  @override
  String get close => 'Zamknij';

  @override
  String get closeUppercased => 'ZAMKNIJ';

  @override
  String get compoundFailure => 'Nie udało się dokonać złożenia transakcji';

  @override
  String get compoundingMessage => 'Proszę czekać...';

  @override
  String get compoundingUtxos => 'Składanie transakcji';

  @override
  String get compoundRequired => 'Wymagane złożenie';

  @override
  String get compoundRequiredDescription =>
      'Kwota transakcji wymaga zbyt wielu UTXO. Złożenie zmniejszy liczbę UTXO.';

  @override
  String get compoundSuccess => 'Złożenie udane';

  @override
  String get compoundTooFewUtxos => 'Wymagane są co najmniej dwa UTXO';

  @override
  String get compoundUppercased => 'ZŁÓŻ';

  @override
  String get compoundUtxos => 'Złóż transakcje';

  @override
  String get compoundUtxosConfirmation => 'Złożyć transakcje?';

  @override
  String get compoundUtxosDescription => 'Złóż wiele UTXO w jedno';

  @override
  String get confirm => 'Potwierdź';

  @override
  String confirmations(String confirmations) {
    return '$confirmations potwierdzeń';
  }

  @override
  String get confirmed => 'potwierdzone';

  @override
  String get confirming => 'potwierdzanie';

  @override
  String get confirmPasswordHint => 'Potwierdź hasło';

  @override
  String contactAdded(String contactName) {
    return '$contactName został dodany do kontaktów!';
  }

  @override
  String contactAddressCopied(String address) {
    return '$address adres skopiowano';
  }

  @override
  String get contactExists => 'Kontakt już istnieje';

  @override
  String get contactHeader => 'Kontakt';

  @override
  String get contactInvalid => 'Niewłaściwa nazwa kontaktu';

  @override
  String get contactNameHint => 'Wpisz imię @';

  @override
  String get contactNameMissing => 'Wpisz nazwę dla tego kontaktu';

  @override
  String contactRemoved(String contactName) {
    return '$contactName został usunięty z kontaktów';
  }

  @override
  String get contactsHeader => 'Kontakty';

  @override
  String get contactsImportErr => 'Nie udało się importować kontaktów';

  @override
  String contactsImportSuccess(String noContacts) {
    return 'Udało się zaimportować $noContacts kontaktów';
  }

  @override
  String get contactSupport => 'Skontaktuj się z pomocą techniczną';

  @override
  String get copied => 'Skopiowano';

  @override
  String get copy => 'Skopiuj';

  @override
  String get copyAddress => 'Skopiuj adres';

  @override
  String get copyErrorButton => 'Skopiuj błąd';

  @override
  String get copyKpub => 'Skopiuj Kpub';

  @override
  String get createAPasswordHeader => 'Utwórz hasło.';

  @override
  String get createPasswordFirstParagraph =>
      'Możesz ustawić hasło, aby zwiększyć bezpieczeństwo swojego portfela.';

  @override
  String get createPasswordHint => 'Utwórz hasło';

  @override
  String get createPasswordSecondParagraph =>
      'Hasło jest opcjonalne, a twój portfel niezależnie od niego będzie chroniony za pomocą kodu PIN lub biometrii.';

  @override
  String get createPasswordSheetHeader => 'Stwórz';

  @override
  String get currency => 'Waluta';

  @override
  String get currencyPoweredBy => 'Zasilane przez CoinGecko';

  @override
  String get currentIndex => 'Obecny';

  @override
  String get defaultAccountName => 'Adres 1';

  @override
  String defaultNewAccountName(int addressIndex) {
    return 'Adres $addressIndex';
  }

  @override
  String get defaultWalletName => 'Mój portfel';

  @override
  String get disablePasswordSheetHeader => 'Wyłącz';

  @override
  String get disablePasswordSuccess => 'Hasło zostało wyłączone';

  @override
  String get disableWalletPassword => 'Wyłącz hasło portfela';

  @override
  String get doContinue => 'Kontynuuj';

  @override
  String get donate => 'Wspomóż';

  @override
  String get donateTo => 'Przekaż darowiznę na';

  @override
  String get dontShowAgain => 'Nie pokazuj ponownie';

  @override
  String emailAction(String email) {
    return 'Email $email';
  }

  @override
  String get emptyCardIntroUtxos =>
      'Tu jest sekcja niewydanej reszty UTXO, wszystkie UTXO w twoim portfelu pojawią się tutaj.';

  @override
  String get emptyResult => 'Pusty wynik';

  @override
  String get emptyWalletName => 'Nazwa portfela nie może być pusta';

  @override
  String get encryptionFailedError => 'Nie udało się ustawić hasła portfela';

  @override
  String get enterAddress => 'Wpisz adres';

  @override
  String get enterAmount => 'Wpisz kwotę';

  @override
  String get enterFiatValue => 'Wprowadź wartość fiat';

  @override
  String get enterNote => 'Wpisz notatkę';

  @override
  String get enterPasswordHint => 'Wpisz swoje hasło';

  @override
  String get errorMessageCopied => 'Informacja o błędzie skopiowana do schowka';

  @override
  String get exampleCardIntro =>
      'Tu znajduje się zakładka transakcji. Gdy wyślesz lub otrzymasz transakcję, pojawi się tutaj.';

  @override
  String get export => 'Eksportuj';

  @override
  String get fee => 'Opłata';

  @override
  String get feeBaseUppercase => 'BASE FEE';

  @override
  String feeConfirm(String amount, String coin) {
    return 'Opłata $amount $coin';
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
  String get feeTitle => 'OPŁATA';

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
  String get fetchingTransactions => 'Pobieranie transakcji';

  @override
  String get fingerprintSeedBackup =>
      'Autoryzuj się, aby utworzyć kopię zapasową sekretnego hasła.';

  @override
  String get getStarted => 'Rozpocznij';

  @override
  String get goBackButton => 'Wróć';

  @override
  String get gotItButton => 'Zrozumiałem/am!';

  @override
  String get hideAccountHeader => 'Hide Account?';

  @override
  String get hideAccountText =>
      'Are you sure you want to hide this account? You can re-add it later by tapping the \"Add Account\" button.';

  @override
  String get hintAddressListEmpty =>
      'Sprawdź filtr adresów w prawym górnym rogu';

  @override
  String get import => 'Importuj';

  @override
  String get importAsLegacyWallet => 'Import as Legacy Wallet';

  @override
  String get importAsStandardWallet => 'Import as Standard Wallet';

  @override
  String get importKpub => 'Importuj portfel w trybie tylko do oglądania';

  @override
  String get importKpubClipboardError =>
      'Zawartość schowka nie jest prawidłowym rozszerzonym kluczem publicznym';

  @override
  String get importKpubHint => 'Podaj swój rozszerzony klucz publiczny.';

  @override
  String get importKpubInvalidMessage =>
      'Sprawdź, czy rozszerzony klucz publiczny został wprowadzony poprawnie!';

  @override
  String get importKpubQrCodeError =>
      'Kod QR nie zawiera prawidłowego rozszerzonego klucza publicznego';

  @override
  String get importLegacyWalletDetectedDetails =>
      'Do you want to import your wallet in legacy mode?';

  @override
  String get importLegacyWalletDetectedTitle => 'Legacy Wallet Detected';

  @override
  String get importOption12WordsDescription =>
      'Kompatybilny z portfelem Web i KDX';

  @override
  String get importOption12WordsTitle => 'Importuj 12-słowną tajną frazę';

  @override
  String get importOption24WordsDescription =>
      'Kompatybilny z portfelem Cli i Ledger';

  @override
  String get importOption24WordsTitle => 'Importuj 24-słowną tajną frazę';

  @override
  String get importOptionKpubDescription =>
      'Monitoruj saldo i transakcje portfela, korzystając z rozszerzonego klucza publicznego';

  @override
  String get importOptionKpubTitle =>
      'Importuj portfel w trybie tylko do oglądania';

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
  String get importSecretPhrase => 'Importuj sekretną frazę';

  @override
  String get importSecretPhraseHint =>
      'Wpisz swoją sekretną frazę, która składa się z 24 słów. Każde słowo powinno być oddzielone spacją.';

  @override
  String get importSecretPhraseHintCombo =>
      'Wprowadź swoją sekretna frazę składającą się z 12 lub 24 słów poniżej.';

  @override
  String get importSecretPhraseHintLegacy =>
      'Wprowadź swoją sekretną frazę składającą się z 12 słów poniżej.';

  @override
  String get importWallet => 'Importuj portfel';

  @override
  String get importWalletAdvancedOptions => 'Advanced Options';

  @override
  String get importWalletDescription => 'Wybierz opcję poniżej.';

  @override
  String get indexHeader => 'Indeks';

  @override
  String get instantly => 'Natychmiastowo';

  @override
  String get insufficientBalance => 'Niewystarczające środki';

  @override
  String get insufficientBalanceDetails =>
      'Nie masz wystarczającej ilości KAS, aby dokonać tej transakcji';

  @override
  String get invalidAddress => 'Podany adres jest nieprawidłowy';

  @override
  String get invalidAmount => 'Nieprawidłowa kwota';

  @override
  String get invalidChecksumMessage =>
      'Proszę sprawdzić, czy poprawnie wpisałeś \nswój sekretny seed!';

  @override
  String get invalidDestinationAddress => 'Nieprawidłowy adres docelowy';

  @override
  String get invalidKpubMessage =>
      'Sprawdź czy twój rozszerzony klucz publiczny jest wprowadzony poprawnie!';

  @override
  String get invalidPassword => 'Nieprawidłowe hasło';

  @override
  String get invalidSecretPhrase => 'Nieprawidłowa fraza tajna';

  @override
  String get invalidSecretPhraseConfirmation => 'Wiem, co robię';

  @override
  String get invalidSecretPhraseDetails =>
      'Wprowadzona fraza tajna ma nieprawidłową sumę kontrolną.';

  @override
  String get kaspaDevFund => 'Fundusz rozwoju Kaspa';

  @override
  String get kaspaUriCopied => 'Skopiowano adres URI Kaspa';

  @override
  String get kaspaUriCopyFailed => 'Nie udało się skopiować adresu URI Kaspa';

  @override
  String get kaspaUriInvalid => 'Nieprawidłowe URI Kaspa';

  @override
  String get kaspiumWallet => 'Portfel Kaspium';

  @override
  String get kpubAuth => 'Wyświetl rozszerzony klucz publiczny';

  @override
  String get kpubCopied => 'Skopiowano rozszerzony klucz publiczny';

  @override
  String get kpubCopyFailed =>
      'Nie udało się skopiować rozszerzonego klucza publicznego';

  @override
  String get kpubDescription =>
      'Rozszerzony klucz publiczny może być użyty do zaimportowania portfela jako portfela \'tylko do oglądania\'.';

  @override
  String get kpubTitle => 'Rozszerzony klucz publiczny';

  @override
  String get language => 'Język';

  @override
  String get loadingTransactions => 'Ładowanie transakcji...';

  @override
  String get lockAppSetting => 'Autentykacja przy uruchamianiu';

  @override
  String get locked => 'Zablokowane';

  @override
  String get loggingOutMessage => 'Wylogowywanie...';

  @override
  String get logout => 'Wyloguj';

  @override
  String get logoutDialogContent =>
      'Czy na pewno chcesz wylogować się z tego portfela?';

  @override
  String get logoutOrSwitchWallet => 'Wyloguj się / Przełącz portfel';

  @override
  String get manage => 'Zarządzanie';

  @override
  String get manualEntry => 'Wpis manualny';

  @override
  String get maxSend => 'Wyślij maksymalną kwotę';

  @override
  String get missingSecretPhrase => 'Missing Secret Phrase';

  @override
  String get moreInfo => 'Więcej informacji';

  @override
  String get networkHeader => 'Sieć';

  @override
  String get newAddress => 'Nowy adres';

  @override
  String get newIndex => 'Nowy';

  @override
  String get newWallet => 'Nowy portfel';

  @override
  String get nextButton => 'Dalej';

  @override
  String get no => 'Nie';

  @override
  String get noContactsExport => 'Nie ma żadnych kontaktów do eksportowania';

  @override
  String get noContactsImport => 'Brak nowych kontaktów do importowania';

  @override
  String get nodeAddress => 'Węzeł sieciowy Kaspa';

  @override
  String get nodeDeleteMessage => 'Czy na pewno chcesz usunąć?';

  @override
  String get nodeDeleteTitle => 'Usunąć konfigurację węzła sieciowego Kaspa?';

  @override
  String get nodeNameEmpty => 'Nazwa węzła sieciowego nie może być pusta';

  @override
  String get nodeNameHint => 'Wpisz nazwę węzła sieciowego';

  @override
  String get nodeNotSyncedException => 'Węzeł nie jest zsynchronizowany';

  @override
  String get nodeNoUTXOIndexException => 'Węzeł nie zawiera indeksu UTXO';

  @override
  String get nodeSecureConnection => 'Bezpieczne połączenie';

  @override
  String get nodesSheetTitle => 'Węzły sieciowe Kaspa';

  @override
  String get nodeUrlHint => 'Wpisz adres URL węzła sieciowego';

  @override
  String get nodeUrlInvalid => 'Nieprawidłowy adres URL węzła sieciowego';

  @override
  String get noQrCodeFound => 'Nie znaleziono kodu QR';

  @override
  String get noSkipButton => 'Nie, pomiń';

  @override
  String get notAccepted => 'nie zaakceptowane';

  @override
  String get noteLabel => 'Notatka:';

  @override
  String get noUppercase => 'NIE';

  @override
  String get off => 'Wyłącz';

  @override
  String get on => 'Włącz';

  @override
  String get optionalLabel => '(Opcjonalne)';

  @override
  String get paperWallet => 'Portfel papierowy';

  @override
  String get passwordBlank => 'Hasło nie może być puste';

  @override
  String get passwordNoLongerRequiredToOpenParagraph =>
      ' Nie będziesz potrzebował hasła do otworzenia tego portfela.';

  @override
  String get passwordsDontMatch => 'Hasła nie zgadzają się';

  @override
  String get passwordWillBeRequiredToOpenParagraph =>
      'To hasło będzie wymagane do otwarcia tego portfela.';

  @override
  String get pasteMnemonicError =>
      'Zawartość schowka nie jest poprawną tajną frazą';

  @override
  String get pending => 'oczekujący';

  @override
  String get pinConfirmError => 'Kody PIN się nie zgadzają';

  @override
  String get pinConfirmTitle => 'Potwierdź swój PIN';

  @override
  String get pinCreateTitle => 'Utwórz 6-cyfrowy kod PIN';

  @override
  String get pinEnterTitle => 'Wpisz PIN';

  @override
  String get pinInvalid => 'Wprowadzono nieprawidłowy kod PIN';

  @override
  String get pinMethod => 'PIN';

  @override
  String get pinSeedBackup =>
      'Wprowadź kod PIN w celu zabezpieczenia frazy sekretnej';

  @override
  String get preferences => 'Ustawienia';

  @override
  String get privacyPolicy => 'Polityka prywatności';

  @override
  String get qrInvalidAddress => 'Kod QR nie zawiera prawidłowego adresu';

  @override
  String get qrInvalidSeed =>
      'Kod QR nie zawiera poprawnego seed\'a lub klucza prywatnego';

  @override
  String get qrMnemonicError => 'Kod QR nie zawiera poprawnej tajnej frazy';

  @override
  String get receive => 'Otrzymaj';

  @override
  String get receiveAddress => 'Adres otrzymania';

  @override
  String get receiveAddressCopied => ' Skopiowano adres otrzymania';

  @override
  String get receiveAddressListEmpty => 'Lista adresów odbioru jest pusta';

  @override
  String get received => 'Otrzymano';

  @override
  String get receiveIndex => 'Indeks otrzymania';

  @override
  String receiveIndexParam(String addressIndex) {
    return 'Otrzymać $addressIndex';
  }

  @override
  String get removeContact => 'Usuń Kontakt';

  @override
  String removeContactConfirmation(String contactName) {
    return 'Czy jesteś pewny/a że chcesz usunąć $contactName?';
  }

  @override
  String get removeWalletAction => 'Usuń portfel';

  @override
  String get removeWalletBiometricsMessage =>
      'Wprowadź hasło, aby usunąć portfel';

  @override
  String get removeWalletDetail =>
      'Usunięcie tego portfela spowoduje usunięcie z tego urządzenia hasła i wszystkich danych związanych z portfelem. Jeśli sekretna fraza nie zostanie zapisana w innym miejscu, nigdy nie będziesz mógł/a ponownie uzyskać dostępu do swoich środków.';

  @override
  String get removeWalletPinMessage => 'Wpisz kod PIN, aby usunąć portfel';

  @override
  String get removeWalletReassurance =>
      'Dopóki masz kopię zapasową sekretnej frazy w bezpiecznym miejscu - nie masz nad czym martwić.';

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
      'Wymagać hasła, aby otworzyć ten portfel?';

  @override
  String get restartSetupButton => 'Ponowne uruchomienie konfiguracji';

  @override
  String get scanFailedMessage =>
      'Skanowanie nie powiodło się, spróbuj ponownie później';

  @override
  String get scanMore => 'SKANUJ WIĘCEJ';

  @override
  String get scanMoreAddresses => 'Skanuj w poszukiwaniu dodatkowych adresów';

  @override
  String get scannedIndex => 'Zeskanowano';

  @override
  String get scanningDescription => 'Skanowanie nowych adresów...';

  @override
  String get scanningTitle => 'Skanowanie';

  @override
  String get scanQrCode => 'Skanuj kod QR';

  @override
  String get scanQrCodeError => 'Nie udało się odczytać kodu QR';

  @override
  String get secretInfo =>
      'Na następnym ekranie zobaczysz swoją sekretną frazę. Jest to hasło umożliwiające dostęp do twoich środków. Ważne jest, aby ją zapisać i nigdy nie udostępniać komukolwiek.';

  @override
  String get secretInfoHeader => 'Bezpieczeństwo na pierwszym miejscu!';

  @override
  String get secretPhrase => 'Sekretna fraza';

  @override
  String get secretPhrase12Words => '12 WORDS';

  @override
  String get secretPhrase24Words => '24 WORDS';

  @override
  String get secretWarning =>
      'Jeśli zgubisz urządzenie lub odinstalujesz aplikację, będziesz potrzebował\\a tajnej frazy, aby odzyskać swoje fundusze!';

  @override
  String get securityHeader => 'Bezpieczeństwo';

  @override
  String get seed => 'Seed';

  @override
  String get seedInvalid => 'Nieprawidłowy seed';

  @override
  String get selectAddress => 'Wybierz adres';

  @override
  String get send => 'Wyślij';

  @override
  String get sendConfirm => 'Wyślij';

  @override
  String get sendError => 'Wystąpił błąd. Spróbój ponownie';

  @override
  String get sending => 'Wyślij';

  @override
  String get sendNote => 'NOTATKA';

  @override
  String get sendToAddressTitle => 'Do';

  @override
  String get sendTxProgressDescription =>
      'Proszę poczekać, aż transakcja zostanie wysłana';

  @override
  String get sendTxProgressTitle => 'Wysyłanie transakcji';

  @override
  String get sent => 'Wysłano';

  @override
  String get sentTo => 'Wysłano do';

  @override
  String get setPassword => 'Ustaw hasło';

  @override
  String get setPasswordSuccess => 'Hasło do portfela zostało ustawione';

  @override
  String get settingsHeader => 'Ustawienia';

  @override
  String get settingsTransfer => 'Załaduj z portfela papierowego';

  @override
  String get setupFailedMessage => 'Coś poszło nie tak';

  @override
  String get setWalletPassword => 'Ustaw hasło portfela';

  @override
  String get shareKaspium => 'Udostępnij Kaspium';

  @override
  String get shareKaspiumSubject => 'Zapoznaj się z Kaspium';

  @override
  String get shareKaspiumText =>
      'Zapoznaj się z mobilnym portfelem Kaspium. \nStrona internetowa - kaspium.io.';

  @override
  String get somethingWentWrong => 'Coś poszło nie tak';

  @override
  String get systemDefault => 'Domyślny język systemu';

  @override
  String get tapToHide => 'Dotknij, aby ukryć';

  @override
  String get tapToReveal => 'Dotknij, aby ujawnić';

  @override
  String get themeDark => 'Ciemny motyw ';

  @override
  String get themeHeader => 'Motyw';

  @override
  String get themeLight => 'Jasny motyw';

  @override
  String get thisWallet => '#Ten portfel';

  @override
  String get to => 'Do';

  @override
  String get toAddress => 'Na adres';

  @override
  String get tooManyFailedAttempts =>
      'Zbyt wiele nieudanych prób odblokowania.';

  @override
  String get totalValue => 'Ogólna wartość';

  @override
  String get transactionId => 'Identyfikator transakcji';

  @override
  String get transactionsUppercase => 'TRANSAKCJE';

  @override
  String get transfer => 'Przelew';

  @override
  String get transferClose => 'Naciśnij gdziekolwiek, żeby zamknąć okno.';

  @override
  String transferComplete(String amount) {
    return '$amount KAS zostało pomyślnie przekazanych na twój portfel Kaspium.\n';
  }

  @override
  String transferConfirmInfo(String amount) {
    return 'Został wykryty portfel z saldem $amount KAS.';
  }

  @override
  String get transferConfirmInfoSecond =>
      'Naciśnij potwierdź, aby transferować środki.\n';

  @override
  String get transferConfirmInfoThird =>
      'Transfer może potrwać kilka sekund, zanim zostanie zakończony.';

  @override
  String get transferError =>
      'Podczas transferu wystąpił błąd. Spróbuj ponownie później.';

  @override
  String get transferHeader => 'Przelew środków';

  @override
  String transferIntro(String button) {
    return 'Ten proces przeniesie środki z papierowego portfela do portfela Kaspium.\n\nStuknij w przycisk \"$button\", aby rozpocząć.';
  }

  @override
  String get transferLoading => 'Transferowanie';

  @override
  String get transferManualHint => 'Proszę wpisać tajną frazę seed poniżej.';

  @override
  String get transferNoFunds => 'Ta seed fraza nie zawiera żadnego KAS';

  @override
  String get transferQrScanError =>
      'Ten kod QR nie zawiera poprawnej frazy seed.';

  @override
  String get transferQrScanHint =>
      'Zeskanuj seed frazę\nKaspa lub klucz prywatny';

  @override
  String get txFilterDialogOptionAllTxs => 'Pokaż wszystkie transakcje';

  @override
  String get txFilterDialogOptionHideNotAcceptedCoinbase =>
      'Ukryj niezaakceptowane transakcje Coinbase';

  @override
  String get txFilterDialogTitle => 'Filtr transakcji';

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
  String get txReport => 'Raport transakcji';

  @override
  String get txReportDate => 'Data';

  @override
  String get txReportDescription => 'Opis';

  @override
  String get txReportDetails =>
      'Generuj raport transakcji w formacie CSV, zawierający całą historię transakcji portfela.';

  @override
  String get txReportError => 'Błąd podczas generowania raportu';

  @override
  String get txReportFeeAmount => 'Kwota opłaty';

  @override
  String get txReportFeeCurrency => 'Waluta opłaty';

  @override
  String get txReportFeeForCompound => 'Opłata za transakcję złożoną';

  @override
  String get txReportFeeForSelfSend => 'Opłata za wysyłkę na własne adresy';

  @override
  String get txReportGenerate => 'Generuj';

  @override
  String get txReportGetReport => 'Pobierz raport';

  @override
  String get txReportLabel => 'Etykieta';

  @override
  String get txReportLabelCost => 'koszt';

  @override
  String txReportNoLoadedTxs(int loadedTxs, int totalTxs) {
    return '($loadedTxs z $totalTxs)';
  }

  @override
  String get txReportNote => 'Notatka';

  @override
  String txReportNoTxs(int numberOf) {
    return 'Znaleziono $numberOf transakcji.';
  }

  @override
  String get txReportOptionIgnoreCompound => 'Ignoruj transakcje złożone';

  @override
  String get txReportOptionIgnoreSelfTxs =>
      'Ignoruj transakcje wysłane do siebie';

  @override
  String get txReportOptionRefreshTxs => 'Odśwież transakcje';

  @override
  String get txReportReceivedAmount => 'Otrzymana kwota';

  @override
  String get txReportReceivedCurrency => 'Otrzymana waluta';

  @override
  String get txReportSentAmount => 'Przesłana kwota';

  @override
  String get txReportSentCurrency => 'Przesłana waluta';

  @override
  String get txReportStatusLoading => 'Ładowanie transakcji';

  @override
  String get txReportStatusReady => 'Raport transakcji jest gotowy!';

  @override
  String get txReportStatusRefreshing => 'Odświeżanie transakcji';

  @override
  String get txReportSubtitle => 'Pobierz plik CSV z historią transakcji';

  @override
  String get txReportTxHash => 'TxHash';

  @override
  String get unconfirmed => 'niepotwierdzono';

  @override
  String get unknown => 'nieznany';

  @override
  String get unlock => 'Odblokuj';

  @override
  String get unlockBiometrics => 'Potwierdź tożsamość aby odblokować portfel';

  @override
  String get unlockPin => 'Wpisz kod PIN, aby odblokować portfel';

  @override
  String get utxoSelectionHint => 'Please select more UTXOs';

  @override
  String get utxoSelectionTitle => 'Select UTXOs';

  @override
  String get utxosUppercase => 'UTXOs';

  @override
  String get viewAddress => 'Zobacz adres';

  @override
  String get viewTransaction => 'Zobacz transakcję';

  @override
  String get walletAddress => 'Adres portfela';

  @override
  String get walletAddresses => 'Adresy portfela';

  @override
  String walletAddressesCopied(String addressType) {
    return 'Adresy portfela $addressType zostały skopiowane do schowka';
  }

  @override
  String walletAddressesCopyFailed(String addressType) {
    return 'Nie udało się skopiować adresów portfela $addressType';
  }

  @override
  String get walletName => 'Nazwa portfela';

  @override
  String get walletNameDescription => 'Wpisz nazwę dla swojego portfela';

  @override
  String get walletNameHint => 'Nazwa portfela';

  @override
  String get walletSetupAddressDiscovery => 'Prowadzenie wyszukiwania adresów';

  @override
  String get walletSetupMessage => 'Konfigurowanie portfela';

  @override
  String get walletsTitle => 'Portfele';

  @override
  String get warning => 'Uwaga';

  @override
  String welcomeMessage(String version) {
    return 'Witaj!\n\nTo wersja $version Kaspium - portfela mobilnego Kaspa.';
  }

  @override
  String get welcomeText =>
      'Witaj w Kaspium. Aby rozpocząć, możesz stworzyć nowy portfel lub zaimportować istniejący.';

  @override
  String get yes => 'Tak';

  @override
  String get yesButton => 'Tak';

  @override
  String get yesUppercase => 'TAK';
}
