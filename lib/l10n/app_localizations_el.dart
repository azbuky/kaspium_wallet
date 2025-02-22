// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class AppLocalizationsEl extends AppLocalizations {
  AppLocalizationsEl([String locale = 'el']) : super(locale);

  @override
  String get account => 'Λογαριασμός';

  @override
  String get accounts => 'Λογαριασμοί';

  @override
  String get ackBackedUp =>
      'Είστε σίγουροι ότι έχετε κρατήσει αντίγραφο ασφαλείας της μυστικής σας φράσης;';

  @override
  String get add => 'Προσθήκη';

  @override
  String get addAccount => 'Προσθήκη Λογαριασμού';

  @override
  String get addContact => 'Προσθήκη Επαφής';

  @override
  String get addNode => 'Προσθήκη Κόμβου';

  @override
  String get addNodeFailed => 'Αποτυχία προσθήκης κόμβου Kaspa';

  @override
  String addNodeFailedMessage(String error) {
    return 'Σφάλμα: $error';
  }

  @override
  String get addNodeSuccess => 'Προσθήκη Κόμβου Επιτυχής';

  @override
  String get addingNodeMessage =>
      'Παρακαλώ περιμένετε όσο γίνεται επικοινωνία με τον κόμβο';

  @override
  String get addingNodeTitle => 'Γίνεται προσθήκη Κόμβου';

  @override
  String get address => 'Διέυθυνση';

  @override
  String get addressCopied => 'Η Διεύθυνση Αντιγράφηκε';

  @override
  String get addressCopiedFailed => 'Αποτυχία αντιγραφής διεύθυνσης';

  @override
  String get addressHint => 'Εισαγωγή Διεύθυνσης';

  @override
  String get addressMising => 'Παρακαλώ Εισάγετε μια Διεύθυνση';

  @override
  String get addressShare => 'Κοινή χρήση Διεύθυνσης';

  @override
  String get kaspaUriCopied => 'Kaspa URI Copied';

  @override
  String get kaspaUriCopyFailed => 'Failed to copy Kaspa URI';

  @override
  String get advancedHeader => 'Για προχωρημένους';

  @override
  String get amount => 'Ποσό';

  @override
  String amountConfirm(String amount, String coin) {
    return 'Ποσό $amount $coin';
  }

  @override
  String get amountMissing => 'Παρακαλώ Εισάγετε ένα Ποσό';

  @override
  String get amountZero => 'Το ποσό δεν μπορεί να είναι μηδενικό';

  @override
  String get areYouSure => 'Είστε σίγουροι;';

  @override
  String get authBiometricMessage =>
      'Πραγματοποιήστε έλεγχο ταυτότητας για να Προσθέσετε Πορτοφόλι';

  @override
  String get authMethod => 'Τρόπος ελέγχου ταυτότητας';

  @override
  String get authPinMessage =>
      'Εισάγετε το PIN για να προσθέσετε ένα πορτοφόλι';

  @override
  String get autoLockHeader => 'Αυτόματο κλείδωμα';

  @override
  String get available => 'Διαθέσιμο';

  @override
  String get backupConfirmButton => 'Κράτησα αντίγραφο ασφαλείας';

  @override
  String get backupSecretPhrase => 'Αντίγραφο ασφαλείας μυστικής φράσης';

  @override
  String get missingSecretPhrase => 'Missing Secret Phrase';

  @override
  String get biometricsMethod => 'Βιομετρικά στοιχεία';

  @override
  String get blockExplorer => 'Εξερευνητής block';

  @override
  String get cancel => 'Άκυρο';

  @override
  String get change => 'Αλλαγή';

  @override
  String get changeAddress => 'Αλλαγή διεύθυνσης';

  @override
  String get changeAddressCopied => 'Η αλλαγή της διεύθυνσης αντιγράφηκε';

  @override
  String get changeIndex => 'Αλλαγή ευρετηρίου';

  @override
  String changeIndexParam(String addressIndex) {
    return 'Αλλαγή $addressIndex';
  }

  @override
  String get checkCameraPermission => 'Παρακαλώ ελέγξτε τα δικαιώματα κάμερας';

  @override
  String get clipboardEmpty => 'Το πρόχειρο είναι κενό';

  @override
  String get close => 'Κλείσιμο';

  @override
  String get confirm => 'Επιβεβαίωση';

  @override
  String get confirmPasswordHint => 'Επιβεβαιώστε των κωδικό πρόσβασης';

  @override
  String confirmations(String confirmations) {
    return '$confirmations επιβεβαιώσεις';
  }

  @override
  String get confirmed => 'επιβεβαιωμένο';

  @override
  String get confirming => 'γίνεται επιβεβαίωση';

  @override
  String contactAdded(String contactName) {
    return '$contactName προστέθηκε στις επαφές';
  }

  @override
  String contactAddressCopied(String address) {
    return '$address η διεύθυνση αντιγράφηκε ';
  }

  @override
  String get contactExists => 'Η επαφή υπάρχει ήδη';

  @override
  String get contactHeader => 'Επαφή';

  @override
  String get contactInvalid => 'Μη έγκυρο όνομα επαφής';

  @override
  String get contactNameHint => 'Προσθήκη ονόματος @';

  @override
  String get contactNameMissing => 'Επιλέγξτε ένα όνομα για αυτήν την επαφή';

  @override
  String contactRemoved(String contactName) {
    return '$contactName αφαιρέθηκε από τις επαφές! ';
  }

  @override
  String get contactsHeader => 'Επαφές';

  @override
  String get contactsImportErr => 'Αποτυχία εισαγωγής επαφών';

  @override
  String contactsImportSuccess(String noContacts) {
    return 'Εισάχθηκαν με επιτυχία $noContacts επαφές';
  }

  @override
  String get copied => 'Αντιγράφηκε';

  @override
  String get copy => 'Αντιγραφή';

  @override
  String get copyAddress => 'Αντιγραφή διεύθυνσης';

  @override
  String get copyErrorButton => 'Σφάλμα αντιγραφής';

  @override
  String get createAPasswordHeader => 'Δημιουργία κωδικού πρόσβασης.';

  @override
  String get createPasswordFirstParagraph =>
      'Μπορείτε να δημιουργήσετε έναν κωδικό πρόσβασης για την περαιτέρω ασφάλεια του πορτοφολιού σας.';

  @override
  String get createPasswordHint => 'Δημιουργία κωδικού πρόσβασης';

  @override
  String get createPasswordSecondParagraph =>
      'Ο κωδικός πρόσβασης είναι προαιρετικός και το πορτοφόλι σας θα προστατεύεται απο το PIN ή τα βιομετρικά σας στοχεία σας σε κάθε περίπτωση.';

  @override
  String get createPasswordSheetHeader => 'Δημιουργία';

  @override
  String get currency => 'Νόμισμα';

  @override
  String get currencyPoweredBy => 'Σε συνεργασία με το CoinGecko';

  @override
  String get defaultAccountName => 'Διεύθυνση 1';

  @override
  String defaultNewAccountName(int addressIndex) {
    return 'Λήψη $addressIndex';
  }

  @override
  String get defaultWalletName => 'Το πορτοφόλι μου';

  @override
  String get disablePasswordSheetHeader => 'Απενεργοποίηση';

  @override
  String get disablePasswordSuccess =>
      'Ο κωδικός πρόσβασης έχει απενεργοποιηθεί';

  @override
  String get disableWalletPassword =>
      'Απενεργοποίηση κωδικού πρόσβασης πορτοφολιού';

  @override
  String get doContinue => 'Συνέχεια';

  @override
  String get donate => 'Δωρίστε';

  @override
  String get donateTo => 'Donate To';

  @override
  String get dontShowAgain => 'Να μην εμφανιστεί ξανά';

  @override
  String get emptyCardIntroUtxos =>
      'Αυτή είναι η ταμπέλα συνναλαγών UTXO. Όλες οι UTXO συνναλαγές τους πορτοφολιού σας θα εμφανιστούν εδώ';

  @override
  String get emptyResult => 'Κενό αποτέλεσμα';

  @override
  String get emptyWalletName =>
      'Το όνομα του πορτοφολιού δεν μπορεί ναι είναι κενό';

  @override
  String get encryptionFailedError =>
      'Δεν ήταν δυνατή η ενεργοποίηση κωδικού πρόσβασης πορτοφολιού';

  @override
  String get enterAddress => 'Εισάγετε διεύθυνση';

  @override
  String get enterAmount => 'Εισάγετε ποσό';

  @override
  String get enterFiatValue => 'Enter Fiat Value';

  @override
  String get enterNote => 'Εισάγετε σημείωση';

  @override
  String get enterPasswordHint => 'Εισάγετε τον κωδικό πρόσβασης';

  @override
  String get errorMessageCopied =>
      'Το μήνυμα λάθους έχει αντιγραφεί στο πρόχειρο';

  @override
  String get exampleCardIntro =>
      'Αυτή είναι η ταμπέλα συνναλαγών. Αν στείλετε η λάβετε μία συνναλαγή, θα εμφανιστεί εδώ.';

  @override
  String get export => 'Εξαγωγή';

  @override
  String get fee => 'Τέλος';

  @override
  String feeConfirm(String amount, String coin) {
    return 'Τέλος $amount $coin';
  }

  @override
  String get feeTitle => 'ΤΕΛΟΣ';

  @override
  String get fetchingTransactions => 'Λήψη συναλλαγών';

  @override
  String get fingerprintSeedBackup =>
      'Πιστοποιήστε την ταυτότητά σας για να κάνετε αντίγραφο ασφαλείας της μυστικής σας φράσης';

  @override
  String get goBackButton => 'Πάνε πίσω';

  @override
  String get gotItButton => 'Το κατάλαβα!';

  @override
  String get import => 'Εισαγωγή';

  @override
  String get importSecretPhrase => 'Εισαγωγή μυστικής φράσης';

  @override
  String get importSecretPhraseHint =>
      'Παρακαλώ εισάγετε την μυστική φράση των 24 λέξεων παρακάτω.';

  @override
  String get importSecretPhraseHintCombo =>
      'Εισάγετε παρακάτω τη μυστική φράση 12 ή 24 λέξεων';

  @override
  String get importSecretPhraseHintLegacy =>
      'Εισάγετε παρακάτω τη μυστική φράση 12 λέξεων';

  @override
  String get importWallet => 'Εισαγωγή πορτοφολιού';

  @override
  String get importWalletDescription =>
      'Παρακαλούμε διαλέξτε μία επιλογή παρακάτω';

  @override
  String get instantly => 'Στιγμιαία';

  @override
  String get insufficientBalance => 'Ανεπαρκές υπόλοιπο';

  @override
  String get insufficientBalanceDetails =>
      'Δεν έχετε αρκετά KAS για αυτήν την συναλλαγή';

  @override
  String get invalidAddress => 'Η διεύθυνση που έχετε εισάγει δεν είναι έγκυρη';

  @override
  String get invalidAmount => 'Το ποσό που έχετε εισάγει δεν είναι έγκυρο';

  @override
  String get invalidChecksumMessage =>
      'Παρακαλώ ελέγξτε ότι η μυστική σας φράση έχει εισαχθεί σωστά!';

  @override
  String get invalidKpubMessage =>
      'Παρακαλούμε ελέγξτε ότι το εκτεταμένο δημόσιο κλειδί σας έχει εισαχθεί σωστά!';

  @override
  String get invalidDestinationAddress => 'Άκυρη διεύθυνση αποστολής';

  @override
  String get invalidPassword => 'Άκυρος κωδικός πρόσβασης';

  @override
  String get kaspaDevFund => 'Κονδύλιο προγραμματιστών KASPA';

  @override
  String get kaspiumWallet => 'Το πορτοφόλι Kaspium';

  @override
  String get language => 'Επιλογή γλώσσας';

  @override
  String get loadingTransactions => 'Λήψη συνναλαγών...';

  @override
  String get lockAppSetting => 'Πιστοποίηση με την έναρξη του προγράμματος';

  @override
  String get locked => 'Κλειδωμένο';

  @override
  String get loggingOutMessage => 'Αποσυνδέεστε...';

  @override
  String get logout => 'Αποσύνδεση';

  @override
  String get logoutDialogContent =>
      'Είστε σίγουροι ότι θέλετε να αποσυνδεθείτε από αυτό το πορτοφόλι;';

  @override
  String get logoutOrSwitchWallet => 'Αποσύνδεση / Αλλαγή Πορτοφολιού';

  @override
  String get manage => 'Διαχείρηση';

  @override
  String get manualEntry => 'Χειροκίνητη εισαγωγή';

  @override
  String get networkHeader => 'Δίκτυο';

  @override
  String get newAddress => 'Νέα διεύθυνση';

  @override
  String get newWallet => 'Νέο πορτοφόλι';

  @override
  String get nextButton => 'Επόμενο';

  @override
  String get no => 'Όχι';

  @override
  String get noContactsExport => 'Δεν υπάρχουν διαθέσιμες επαφές για εξαγωγή';

  @override
  String get noContactsImport => 'Δεν υπάρχουν νέες επαφές για εισαγωγή';

  @override
  String get noQrCodeFound => 'Δεν βρέθηκε κανένας κωδικός QR';

  @override
  String get noSkipButton => 'Όχι, αγνόησέ το';

  @override
  String get noUppercase => 'ΟΧΙ';

  @override
  String get nodeAddress => 'Κόμβος Kaspa';

  @override
  String get nodeDeleteMessage => 'Είστε σίγουροι ότι θέλετε να το διαγράψετε;';

  @override
  String get nodeDeleteTitle => 'Να διαγραφούν οι ρυθμίσεις του κόμβου Kaspa;';

  @override
  String get nodeNameEmpty => 'Το όνομα του κόμβου δεν μπορεί να είναι κενό';

  @override
  String get nodeNameHint => 'Εισάγετε το όνομα του κόμβου';

  @override
  String get nodeUrlHint =>
      'Εισάγετε την διέυθυνση ιστοσελίδας του κόμβου \"URL\"';

  @override
  String get nodeUrlInvalid =>
      'Η διεύθυνση ιστοσελίδας του κόμβου δεν είναι έκγυρη';

  @override
  String get nodesSheetTitle => 'Κόμβοι Kaspa';

  @override
  String get off => 'Κλειστό';

  @override
  String get on => 'Ανοιχτό';

  @override
  String get paperWallet => 'Χάρτινο πορτοφόλι';

  @override
  String get passwordBlank => 'Ο κωδικός πρόσβασης δεν μπορεί να είναι κενός';

  @override
  String get passwordNoLongerRequiredToOpenParagraph =>
      'Δεν θα χρειαστείτε κωδικό πρόσβασης για να ανοίξετε αυτό το πορτοφόλι';

  @override
  String get passwordWillBeRequiredToOpenParagraph =>
      'Αυτός ο κωδικός πρόσβασης θα χρειαστεί για να ανοίξετε αυτό το πορτοφόλι';

  @override
  String get passwordsDontMatch => 'Οι κωδικοί πρόσβασης δεν είναι όμοιοι';

  @override
  String get pasteMnemonicError =>
      'Το πρόχειρο δεν περιέχει μία έγκυρη μυστική φράση';

  @override
  String get pending => 'εκκρεμεί ';

  @override
  String get pinConfirmError => 'Οι κωδικοί Pin δεν είναι όμοιοι';

  @override
  String get pinConfirmTitle => 'Επικυρώστε τον κωδικό σας PIN';

  @override
  String get pinCreateTitle => 'Δημιουργείστε έναν 6-ψήφιο κωδικό PIN';

  @override
  String get pinEnterTitle => 'Εισάγετε τον κωδικό PIN';

  @override
  String get pinInvalid => 'Ο κωδικός PIN που εισάγατε δεν είναι έγκυρος';

  @override
  String get pinMethod => 'PIN';

  @override
  String get pinSeedBackup =>
      'Εισάγετε τον κωδικό PIN για να δημιουργήσετε αντίγραφο της μυστικής φράσης';

  @override
  String get preferences => 'Ρυθμίσεις';

  @override
  String get privacyPolicy => 'Πολιτική απορρήτου';

  @override
  String get qrInvalidAddress =>
      'Ο κωδικός QR δεν περιέχει μία έγκυρη διεύθυνση';

  @override
  String get qrInvalidSeed =>
      'Ο κωδικός QR δεν περιέχει έγκυρο seed ή ιδιωτικό κλειδί';

  @override
  String get qrMnemonicError =>
      'Ο κωδικός QR δεν περιέχει έγκυρη μυστική φράση';

  @override
  String get receive => 'Λήψη';

  @override
  String get receiveAddress => 'Διεύθυνση λήψης';

  @override
  String get receiveAddressCopied => 'Η διεύθυνση λήψης αντιγράφηκε';

  @override
  String get receiveIndex => 'Ευρετήριο λήψεων';

  @override
  String receiveIndexParam(String addressIndex) {
    return 'Λήψη $addressIndex';
  }

  @override
  String get received => 'Ελήφθησαν ';

  @override
  String get removeContact => 'Διαγραφή επαφής';

  @override
  String removeContactConfirmation(String contactName) {
    return 'Είστε σίγουροι ότι θέλετε αν διαγράψατε την επαφή $contactName;';
  }

  @override
  String get removeWalletAction => 'Διαγραφή πορτοφολιού';

  @override
  String get removeWalletBiometricsMessage =>
      'Πιστοποιήστε τον εαυτό σας για να διαγράψετε το πορτοφόλι';

  @override
  String get removeWalletDetail =>
      'Κατά την διαγραφή αυτού του πορτοφολιού, θα διαγραφεί και η μυστική φράση και ότι άλλα δεδομένα σχετίζονται με αυτό. Αν δεν έχετε αντίγραφο της μυστικής φράσης, θα χάσετε για πάντα την πρόσβαση σε αυτό το πορτοφόλι.';

  @override
  String get removeWalletPinMessage =>
      'Εισάγετε το PIN για να διαγράψετε το πορτοφόλι';

  @override
  String get removeWalletReassurance =>
      'Εφόσον έχετε ένα αντίγραφο της μυστικής σας φράσης, δεν χρειάζεται να ανησυχείτε για τίποτα';

  @override
  String get requireAPasswordToOpenHeader =>
      'Να είναι ένας κωδικός πρόσβασης απαραίτητος για το άνοιγμα αυτού του πορτοφολιού;';

  @override
  String get restartSetupButton => 'Επανεκκίνηση των ρυθμίσεων';

  @override
  String get scanQrCode => 'Σαρώστε έναν κωδικό QR';

  @override
  String get scanQrCodeError => 'Η σάρωση του κωδικού QR απέτυχε';

  @override
  String get secretInfo =>
      'Στην επόμενη οθόνη θα δείτε την μυστικής σας φράση. Αυτή είναι ο κωδικός για να έχετε πρόσβαση στα κεφάλαιά σας. Είναι εξαιρετικά σημαντικό να κάνετε ένα αντίγραφο ασφαλείας και να μην μοιραστείτε αυτή την φράση με κανέναν άλλο.';

  @override
  String get secretInfoHeader => 'Η ασφάλεια πρώτα!';

  @override
  String get secretPhrase => 'Μυστική φράση';

  @override
  String get secretPhrase12Words => '12 WORDS';

  @override
  String get secretPhrase24Words => '24 WORDS';

  @override
  String get secretWarning =>
      'Άμα χάσετε την συσκευή σας ή απεγκαταστήσετε την εφαρμοφή, θα χρειαστείτε την μυστική σας φράση για αν έχετε πρόσβαση στα κεφάλαιά σας.';

  @override
  String get securityHeader => 'Ασφάλεια';

  @override
  String get seed => 'Η φράση';

  @override
  String get seedInvalid => 'Η μυστική σας φράση δεν είναι έγκυρη.';

  @override
  String get send => 'Αποστολή';

  @override
  String get sendConfirm => 'Αποστολή';

  @override
  String get sendError => 'Έγινε κάποιο λάθος. Παρακαλώ προσπαθείστε ξανά.';

  @override
  String get sendNote => 'ΣΗΜΕΙΩΣΗ';

  @override
  String get sendToAddressTitle => 'Σε';

  @override
  String get sendTxProgressDescription =>
      'Παρακαλώ περιμένετε μέχρι να ολοκληρωθεί η συναλλαγή.';

  @override
  String get sendTxProgressTitle => 'Αποστολής συναλλαγής';

  @override
  String get sending => 'Αποστολή';

  @override
  String get sent => 'Απεστάλη';

  @override
  String get sentTo => 'Sent to';

  @override
  String get setPassword => 'Ενεργοποίηση κωδικού πρόσβασης';

  @override
  String get setPasswordSuccess =>
      'Ο κωδικός πρόσβασης του πορτοφολιού ενεργοποιήθηκε';

  @override
  String get setWalletPassword => 'Ενεργοποίηση κωδικού πρόσβασης πορτοφολιού';

  @override
  String get settingsHeader => 'Ρυθμίσεις';

  @override
  String get settingsTransfer =>
      'Φορτώστε τα στοιχεία από το χάρτινο <<εκτυπωμένο>> πορτοφόλι.';

  @override
  String get setupFailedMessage => 'Κάτι πήγε στραβά';

  @override
  String get shareKaspium => 'Μοιράστε το Kaspium';

  @override
  String get shareKaspiumSubject => 'Τσεκάρετε το πορτοφόλι Kaspium!';

  @override
  String get shareKaspiumText =>
      'Τσεκάρετε το Kaspium! Το φορητό πορτοφόλι για το Kaspa. Ιστοσελίδα - kaspium.io';

  @override
  String get somethingWentWrong => 'Κάτι πήγε στραβά';

  @override
  String get systemDefault => 'Προκαθορισμένες επιλογές του συστήματος';

  @override
  String get tapToHide => 'Πατήστε εδώ για να το κρύψετε';

  @override
  String get tapToReveal => 'Πατήστε εδώ για να το εμφανίσετε';

  @override
  String get themeDark => 'Σκοτεινό θέμα';

  @override
  String get themeHeader => 'Θέμα';

  @override
  String get themeLight => 'Φωτεινό θέμα';

  @override
  String get thisWallet => '#Αυτό το πορτοφόλι';

  @override
  String get to => 'Σε';

  @override
  String get toAddress => 'Στην διεύθυνση';

  @override
  String get tooManyFailedAttempts =>
      'Πάρα πολλές λανθασμένες απόπειρες ξεκλειδώματος του πορτοφολιού';

  @override
  String get totalValue => 'Συνολική αξία';

  @override
  String get transactionId => 'Ταυτότητα συναλλαγής';

  @override
  String get transactionsUppercase => 'ΣΥΝΑΛΛΑΓΕΣ';

  @override
  String get transfer => 'Μεταφορά';

  @override
  String get transferClose =>
      'Πατήστε οπουδήποτε για να κλείσετε αυτό το παράθυρο.';

  @override
  String transferComplete(String amount) {
    return '$amount KAS μεταφέρθηκαν επιτυχώς στο Kaspium πορτοφόλι σας.\n';
  }

  @override
  String transferConfirmInfo(String amount) {
    return 'Εντοπίσθηκε ένα πορτοφόλι με υπόλοιπο $amount KAS.';
  }

  @override
  String get transferConfirmInfoSecond =>
      'Πατήστε για να επιβεβαιώσετε την μεταφορά του κεφαλαίου.\n';

  @override
  String get transferConfirmInfoThird =>
      'Η συναλλαγή μπορεί να χρειαστεί αρκετά δευτερόλεπτα για να ολοκληρωθεί.';

  @override
  String get transferError =>
      'Κατά την διάρκεια της συναλλαγής συνέβη κάποιο λάθος. Παρακαλώ προσπαθήστε ξανά αργότερα.';

  @override
  String get transferHeader => 'Μεταφορά κεφαλαίου.';

  @override
  String transferIntro(String button) {
    return 'Η διαδικασία αυτή θα μεταφέρει τα κεφάλαιο από το χάρτινο πορτοφόλι στο πορτοφόλι Kaspium.\n\nΠατήστε το  \"$button\" κουμπί για να ξεκινήσετε.';
  }

  @override
  String get transferLoading => 'Η μεταφορά βρίσκεται σε εξέλιξη';

  @override
  String get transferManualHint =>
      'Παρακαλώ εισάγετε την μυστική φράση παρακάτω.';

  @override
  String get transferNoFunds =>
      'Το πορτοφόλι που αντιστοιχεί σε αυτήν την μυστική φράση, δεν διαθέτει υπόλοιπο KAS.';

  @override
  String get transferQrScanError =>
      'Αυτός ο κωδικός QR δεν αντιστοιχεί σε μία έγκυρη μυστική φράση.';

  @override
  String get transferQrScanHint =>
      'Σαρώστε μία μυστική φράση Kaspa ή ένα ιδιωτικό κλειδί.';

  @override
  String get unconfirmed => 'Ανεπιβαιβέωτο';

  @override
  String get notAccepted => 'δεν έγινε αποδεκτή';

  @override
  String get accepted => 'έγινε αποδεκτή';

  @override
  String get unknown => 'Άγνωστο';

  @override
  String get unlock => 'Ξεκλείδωμα';

  @override
  String get unlockBiometrics =>
      'Κάντε πιστοποίηση για να ξεκλειδώσετε το πορτοφόλι';

  @override
  String get unlockPin =>
      'Εισάγετε το εξαψήφιο PIN για να ξεκλειδώσετε το πορτοφόλι';

  @override
  String get utxosUppercase => 'UTXOs';

  @override
  String get viewAddress => 'Δείτε την διεύθυνση';

  @override
  String get viewTransaction => 'Δείτε την συναλλαγή';

  @override
  String get walletAddresses => 'Διευθύνσεις πορτοφολιού';

  @override
  String get walletAddress => 'Wallet Address';

  @override
  String get walletName => 'Όνομα πορτοφολιού';

  @override
  String get walletNameDescription => 'Εισάγετε όνομα για το πορτοφόλι σας';

  @override
  String get walletNameHint => 'Όνομα πορτοφολιού';

  @override
  String get walletSetupAddressDiscovery =>
      'Η εύρεση διεύθυνσης βρίσκεται σε εξέλιξη.';

  @override
  String get walletSetupMessage => 'Δημιουργία ενός πορτοφολιού.';

  @override
  String get walletsTitle => 'Πορτοφόλια';

  @override
  String get warning => 'Προειδοποίηση';

  @override
  String welcomeMessage(String version) {
    return 'Καλως ήρθατε!\n\nΑυτή είναι η έκδοση $version του Kaspium - το φορητό πορτοφόλι για το Kaspa\n ';
  }

  @override
  String get welcomeText =>
      'Καλώς ήρθατε στο Kaspium. Για να ξεκινήσετε, μπορείτε να δημιουργήσετε ένα νέο πορτοφόλι ή να εισάγετε ένα υπάρχον πορτοφόλι.';

  @override
  String xMinutes(int minutes) {
    final intl.NumberFormat minutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutesString λεπτά',
      one: '1 λεπτό',
    );
    return 'Μετά από $_temp0';
  }

  @override
  String get yes => 'Ναι';

  @override
  String get yesButton => 'Ναι';

  @override
  String get yesUppercase => 'ΝΑΙ';

  @override
  String get nodeNotSyncedException => 'Ο κόμβος δεν είναι συγχρονισμένος.';

  @override
  String get nodeNoUTXOIndexException => 'Ο κόμβος δεν έχει ευρετήριο UTXO.';

  @override
  String get nodeSecureConnection => 'Ασφαλής σύνδεση.';

  @override
  String get kaspaUriInvalid =>
      'Μη έγκυρο ενιαίο αναγνωριστικό πόρων του Κάσπα';

  @override
  String get compoundUtxos => 'Σύνθετες συναλλαγές';

  @override
  String get compoundRequired => 'Compound required';

  @override
  String get compoundRequiredDescription =>
      'The transaction amount requires too many UTXOs. Compounding will reduce the number of UTXOs.';

  @override
  String get compoundUtxosDescription =>
      'Συνδυάστε πολλαπλές εκροές αδιάθετων συναλλαγών σε μία';

  @override
  String get compoundUtxosConfirmation => 'Σύνθετες συναλλαγές?';

  @override
  String get compoundingUtxos => 'Γίνεται σύνθεση συναλλαγών';

  @override
  String get compoundingMessage => 'Παρακαλούμε περιμένετε...';

  @override
  String get compoundSuccess => 'Σύνθεση επιτυχής';

  @override
  String get compoundFailure => 'Αποτυχία σύνθεσης συναλλαγών';

  @override
  String get compoundTooFewUtxos =>
      'Απαιτούνται τουλάχιστον δύο εκροές αδιάθετων συναλλαγών';

  @override
  String get balance => 'Υπόλοιπο';

  @override
  String get maxSend => 'Μέγιστη Αποστολή';

  @override
  String get compoundUppercased => 'ΣΥΝΘΕΣΗ';

  @override
  String get closeUppercased => 'ΚΛΕΙΣΙΜΟ';

  @override
  String get scanMoreAddresses => 'Σάρωση για περισσότερες διευθύνσεις';

  @override
  String get addressDiscovery => 'Ανακάλυψη Διεύθυνσης';

  @override
  String get scanningTitle => 'Γίνεται Σάρωση';

  @override
  String get scanningDescription => 'Γίνεται σάρωση για νέες διευθύνσεις';

  @override
  String get scanMore => 'ΣΑΡΩΣΗ ΠΕΡΙΣΣΟΤΕΡΩΝ';

  @override
  String get scanFailedMessage =>
      'Η σάρωση απέτυχε, παρακαλούμε προσπαθήστε ξανά αργότερα';

  @override
  String get indexHeader => 'Ευρετήριο';

  @override
  String get currentIndex => 'Τρέχων';

  @override
  String get scannedIndex => 'Σαρώθηκαν';

  @override
  String get newIndex => 'Νέο';

  @override
  String get addressFilterDialogTitle => 'Φίλτρο Δισυθύνσεων';

  @override
  String get addressFilterDialogOptionAllAddresses =>
      'Εμφάνιση Όλων των Διευθύνσεων';

  @override
  String get addressFilterDialogOptionNonZeroBalances =>
      'Εμφάνιση Διευθύνσεων Με Υπόλοιπο';

  @override
  String get importOption24WordsTitle => 'Εισάγετε τη Μυστική Φράση 24 Λέξεων';

  @override
  String get importOption24WordsDescription =>
      'Συμβατό με πορτοφόλι CLI και Ledger';

  @override
  String get importOption12WordsTitle => 'Εισάγετε τη Μυστική Φράση 12 Λέξεων';

  @override
  String get importOption12WordsDescription =>
      'Συμβατό με πορτοφόλι Web και KDX';

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
  String get importOptionKpubTitle =>
      'Εισάγετε το πορτοφόλι που είναι μόνο για παρακολούθηση';

  @override
  String get importOptionKpubDescription =>
      'Παρακολουθήστε το υπόλοιπο και τις συναλλαγές ενός πορτοφολιού χρησιμοποιώντας ένα εκτεταμένο δημόσιο κλειδί';

  @override
  String get importKpub =>
      'Εισάγετε το πορτοφόλι που είναι μόνο για παρακολούθηση';

  @override
  String get importKpubHint => 'Εισαγάγετε το εκτεταμένο δημόσιο κλειδί σας.';

  @override
  String get importKpubClipboardError =>
      'Το περιεχόμενο του προχείρου δεν είναι έγκυρο εκτεταμένο δημόσιο κλειδί';

  @override
  String get importKpubQrCodeError =>
      'Ο κωδικός QR δεν περιέχει έγκυρο εκτεταμένο δημόσιο κλειδί';

  @override
  String get importKpubInvalidMessage =>
      'Ελέγξτε ότι το εκτεταμένο δημόσιο κλειδί σας έχει εισαχθεί σωστά!';

  @override
  String get receiveAddressListEmpty => 'Η λίστα διεύθυνσης λήψης είναι κενή';

  @override
  String get changeAddressListEmpty => 'Η λίστα διεύθυνσης αλλαγής είναι κενή';

  @override
  String get hintAddressListEmpty =>
      'Τσεκάρετε το φίλτρο διεύθυνσης από την επάνω δεξιά γωνία';

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
