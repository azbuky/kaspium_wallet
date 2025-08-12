// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n_gen.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class AppLocalizationsHe extends AppLocalizations {
  AppLocalizationsHe([String locale = 'he']) : super(locale);

  @override
  String get aboutTopperDescription =>
      'Topper by Uphold is an easy to use fiat-to-crypto onramp that allows users to buy cryptocurencies using a credit/debit card or with a bank account.';

  @override
  String get aboutTopperTitle => 'About Topper';

  @override
  String get accepted => 'התקבל';

  @override
  String get account => 'חשבון';

  @override
  String get accounts => 'חשבונות';

  @override
  String get ackBackedUp => 'האם אתם בטוחים ששמרתם את הביטוי הסודי שלכם?';

  @override
  String get add => 'הוספה';

  @override
  String get addAccount => 'הוסף חשבון';

  @override
  String get addContact => 'הוסף איש קשר';

  @override
  String get addingNodeMessage => 'אנא המתינו בזמן יצירת קשר עם צומת';

  @override
  String get addingNodeTitle => 'מוסיף צומת';

  @override
  String get addNode => 'הוסף צומת';

  @override
  String get addNodeFailed => 'הוספת צומת כספא נכשלה';

  @override
  String addNodeFailedMessage(String error) {
    return 'שגיאה: $error';
  }

  @override
  String get addNodeSuccess => 'צומת הוספה בהצלחה';

  @override
  String get address => 'כתובת ';

  @override
  String get addressCopied => 'כתובת הועתקה';

  @override
  String get addressCopiedFailed => 'נכשל להעתיק את הכתובת';

  @override
  String get addressDiscovery => 'גילוי כתובות';

  @override
  String get addressFilterDialogOptionAllAddresses => 'הצג את כל הכתובות';

  @override
  String get addressFilterDialogOptionNonZeroBalances => 'הצג כתובות עם יתרה ';

  @override
  String get addressFilterDialogTitle => 'סנן כתובות';

  @override
  String get addressHint => 'הזן כתובת';

  @override
  String get addressMising => 'אנא הזן כתובת';

  @override
  String get addressShare => 'שתף כתובת';

  @override
  String get advancedHeader => 'מתקדם ';

  @override
  String get amount => 'סכום ';

  @override
  String amountConfirm(String amount, String coin) {
    return 'סכום $amount $coin';
  }

  @override
  String get amountMissing => 'הזן סכום';

  @override
  String get amountZero => 'הסכום לא יכול להיות אפס';

  @override
  String get areYouSure => 'את/ה בטוח/ה?';

  @override
  String get authBiometricMessage => 'התאמתו על מנת להוסיף ארנק';

  @override
  String get authMethod => 'שיטת אימות';

  @override
  String get authPinMessage => 'הזן קוד להוספת ארנק';

  @override
  String get autoLockHeader => 'נעל באופן אוטומטי';

  @override
  String get available => 'זמין';

  @override
  String get backupConfirmButton => 'גיביתי במקום בטוח';

  @override
  String get backupSecretPhrase => 'גבה את הביטוי הסודי';

  @override
  String get balance => 'יתרה';

  @override
  String get biometricsMethod => 'ביומטריה';

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
  String get blockExplorer => 'בלוק אקספלורר';

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
  String get cancel => 'בטל';

  @override
  String get change => 'עודף ';

  @override
  String get changeAddress => 'כתובת עודף';

  @override
  String get changeAddressCopied => 'כתובת עודף הועתקה';

  @override
  String get changeAddressListEmpty => 'רשימת הכתובות לשינוי ריקה';

  @override
  String get changeIndex => 'עודף אינדקס';

  @override
  String changeIndexParam(String addressIndex) {
    return 'עודף $addressIndex';
  }

  @override
  String get checkCameraPermission => 'אנא בדקו הרשאות מצלמה';

  @override
  String get clipboardEmpty => 'לוח העתקה ריק';

  @override
  String get close => 'סגור';

  @override
  String get closeUppercased => 'סגור';

  @override
  String get compoundFailure => 'נכשל בהרכבת העסקאות';

  @override
  String get compoundingMessage => 'בבקשה תחכה...';

  @override
  String get compoundingUtxos => 'עסקאות מורכבות';

  @override
  String get compoundRequired => 'Compound required';

  @override
  String get compoundRequiredDescription =>
      'The transaction amount requires too many UTXOs. Compounding will reduce the number of UTXOs.';

  @override
  String get compoundSuccess => 'הרכבה הוצלחה';

  @override
  String get compoundTooFewUtxos => 'נדרשים לפחות שני UTXOs';

  @override
  String get compoundUppercased => 'תרכובת';

  @override
  String get compoundUtxos => 'עסקאות מורכבות';

  @override
  String get compoundUtxosConfirmation => 'עסקאות מורכבות?';

  @override
  String get compoundUtxosDescription => 'שלב מספר UTXOs לאחד';

  @override
  String get confirm => 'אשר';

  @override
  String confirmations(String confirmations) {
    return '$confirmations אישורים';
  }

  @override
  String get confirmed => 'מאושר';

  @override
  String get confirming => 'מאשר';

  @override
  String get confirmPasswordHint => 'אשר את הסיסמה';

  @override
  String contactAdded(String contactName) {
    return '$contactName נוסף לאנשי הקשר';
  }

  @override
  String contactAddressCopied(String address) {
    return 'הכתובת $address הועתקה';
  }

  @override
  String get contactExists => 'איש קשר כבר קיים';

  @override
  String get contactHeader => 'איש קשר';

  @override
  String get contactInvalid => 'שם איש קשר לא תקין';

  @override
  String get contactNameHint => 'הזן שם @';

  @override
  String get contactNameMissing => 'בחרו שם עבור איש קשר זה';

  @override
  String contactRemoved(String contactName) {
    return '$contactName הוסר מאנשי הקשר!';
  }

  @override
  String get contactsHeader => 'אנשי קשר';

  @override
  String get contactsImportErr => 'ייבוא איש קשר נכשל';

  @override
  String contactsImportSuccess(String noContacts) {
    return 'יבוא אנשי הקשר של $noContacts עבר בהצלחה';
  }

  @override
  String get contactSupport => 'Contact Support';

  @override
  String get copied => 'הועתק';

  @override
  String get copy => 'העתק';

  @override
  String get copyAddress => 'העתק כתובת';

  @override
  String get copyErrorButton => 'שגיאת העתקה';

  @override
  String get copyKpub => 'Copy Kpub';

  @override
  String get createAPasswordHeader => 'צור סיסמה';

  @override
  String get createPasswordFirstParagraph =>
      'ניתן לבחור סיסמה כדי להוסיף אבטחה נוספת לארנק';

  @override
  String get createPasswordHint => 'צור סיסמה';

  @override
  String get createPasswordSecondParagraph =>
      'ניתן לדלג על בחירת הסיסמה. הארנק מאובטח על ידי הקוד הסודי או טביעת אצבע בכל מקרה.';

  @override
  String get createPasswordSheetHeader => 'צור';

  @override
  String get currency => 'מטבע חליפין';

  @override
  String get currencyPoweredBy => 'מופעל על ידי CoinGecko';

  @override
  String get currentIndex => 'נוכחי';

  @override
  String get defaultAccountName => 'כתובת 1';

  @override
  String defaultNewAccountName(int addressIndex) {
    return 'כתובת $addressIndex';
  }

  @override
  String get defaultWalletName => 'הארנק שלי';

  @override
  String get disablePasswordSheetHeader => 'בטל';

  @override
  String get disablePasswordSuccess => 'הסיסמה בוטלה';

  @override
  String get disableWalletPassword => 'בטל את סיסמת הארנק';

  @override
  String get doContinue => 'המשך';

  @override
  String get donate => 'תרומה';

  @override
  String get donateTo => 'Donate To';

  @override
  String get dontShowAgain => 'אל תציג שוב';

  @override
  String emailAction(String email) {
    return 'Email $email';
  }

  @override
  String get emptyCardIntroUtxos => 'לשונית ה-UTXO. כל ה-UTXO בארנק יופיעו פה';

  @override
  String get emptyResult => 'תוצאה ריקה';

  @override
  String get emptyWalletName => 'שם הארנק אינו יכול להיות ריק';

  @override
  String get encryptionFailedError => 'הגדרת סיסמת הארנק נכשלה';

  @override
  String get enterAddress => 'הזן כתובת';

  @override
  String get enterAmount => 'הזן כמות';

  @override
  String get enterFiatValue => 'Enter Fiat Value';

  @override
  String get enterNote => 'הזן הערה';

  @override
  String get enterPasswordHint => 'הזן סיסמה';

  @override
  String get errorMessageCopied => 'הודעת שגיאת הועתקה ללוח העתקות';

  @override
  String get exampleCardIntro =>
      'זוהי לשונית עסקאות. לאחר שתשלחו או תקבלו עסקה, היא תופיע פה.';

  @override
  String get export => 'יצוא';

  @override
  String get fee => 'עמלה';

  @override
  String get feeBaseUppercase => 'BASE FEE';

  @override
  String feeConfirm(String amount, String coin) {
    return 'עמלה $amount $coin';
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
  String get feeTitle => 'עמלה';

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
  String get fetchingTransactions => 'הבאת עסקאות';

  @override
  String get fingerprintSeedBackup => 'התאמתו כדי לגבות את הביטוי הסודי';

  @override
  String get getStarted => 'Get Started';

  @override
  String get goBackButton => 'חזור';

  @override
  String get gotItButton => 'הבנתי!';

  @override
  String get hideAccountHeader => 'Hide Account?';

  @override
  String get hideAccountText =>
      'Are you sure you want to hide this account? You can re-add it later by tapping the \"Add Account\" button.';

  @override
  String get hintAddressListEmpty =>
      'בדוק את מסנן הכתובות מהפינה השמאלית העליונה';

  @override
  String get import => 'יבוא';

  @override
  String get importAsLegacyWallet => 'Import as Legacy Wallet';

  @override
  String get importAsStandardWallet => 'Import as Standard Wallet';

  @override
  String get importKpub => 'ייבוא ארנק צפייה בלבד';

  @override
  String get importKpubClipboardError =>
      'תוכן ההתעקה אינו מפתח ציבורי מורחב חוקי';

  @override
  String get importKpubHint => 'אנא הזן את המפתח הציבורי המורחב שלך.';

  @override
  String get importKpubInvalidMessage =>
      'אנא בדוק שהמפתח הציבורי המורחב שלך הוזן כראוי!';

  @override
  String get importKpubQrCodeError => 'קוד QR אינו מכיל מפתח ציבורי מורחב תקין';

  @override
  String get importLegacyWalletDetectedDetails =>
      'Do you want to import your wallet in legacy mode?';

  @override
  String get importLegacyWalletDetectedTitle => 'Legacy Wallet Detected';

  @override
  String get importOption12WordsDescription => 'תואם עם ארנק Web ו-KDX';

  @override
  String get importOption12WordsTitle => 'ייבוא ​​ביטוי סודי של 12 מילים';

  @override
  String get importOption24WordsDescription => 'תואם עם Cli Wallet ו- Ledger';

  @override
  String get importOption24WordsTitle => 'יבוא ביטוי סודי של 24 מילים';

  @override
  String get importOptionKpubDescription =>
      'עקוב אחר היתרה והעסקאות של ארנק באמצעות מפתח ציבורי מורחב';

  @override
  String get importOptionKpubTitle => 'ייבוא ארנק צפייה בלבד';

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
  String get importSecretPhrase => 'יבוא ביטוי סודי';

  @override
  String get importSecretPhraseHint => 'הזן את 24 מילות הביטוי הסודי למטה ';

  @override
  String get importSecretPhraseHintCombo =>
      'אנא הזן את הביטוי הסודי שלך בן 12 או 24 מילים למטה';

  @override
  String get importSecretPhraseHintLegacy =>
      'הזן את 12 מילות הביטוי הסודי למטה ';

  @override
  String get importWallet => 'יבוא ארנק';

  @override
  String get importWalletAdvancedOptions => 'Advanced Options';

  @override
  String get importWalletDescription => 'אנא בחר אפשרות למטה';

  @override
  String get indexHeader => 'אינדקס';

  @override
  String get instantly => 'באופן מידי';

  @override
  String get insufficientBalance => 'אין מספיק מטבעות בחשבון';

  @override
  String get insufficientBalanceDetails => 'אין מספיק כספא לעסקה זו';

  @override
  String get invalidAddress => 'כתובת יעד שהוזנה אינה תקינה';

  @override
  String get invalidAmount => 'סכום לא חוקי';

  @override
  String get invalidChecksumMessage => 'בבקשה תבדוק שהזנת נכון את הביטוי הסודי';

  @override
  String get invalidDestinationAddress => 'כתובת יעד לא חוקית';

  @override
  String get invalidKpubMessage =>
      'אנא בדוק שהמפתח הציבורי המורחב שלך הוזן כראוי!';

  @override
  String get invalidPassword => 'סיסמה לא חוקית';

  @override
  String get invalidSecretPhrase => 'Invalid Secret Phrase';

  @override
  String get invalidSecretPhraseConfirmation => 'I know what I\'m doing';

  @override
  String get invalidSecretPhraseDetails =>
      'The Secret Phrase you entered has an invalid checksum.';

  @override
  String get kaspaDevFund => 'קרן פיתוח כספא';

  @override
  String get kaspaUriCopied => 'Kaspa URI Copied';

  @override
  String get kaspaUriCopyFailed => 'Failed to copy Kaspa URI';

  @override
  String get kaspaUriInvalid => 'URI של כספא לא חוקי';

  @override
  String get kaspiumWallet => 'ארנק כספיום';

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
  String get language => 'שפה';

  @override
  String get loadingTransactions => 'טוען עסקאות...';

  @override
  String get lockAppSetting => 'בצע אימות בעת הפעלה';

  @override
  String get locked => 'נעול';

  @override
  String get loggingOutMessage => 'מתנתק מהמערכת...';

  @override
  String get logout => 'התנתקות';

  @override
  String get logoutDialogContent => 'בטוחים שאתם רוצים להתנתק מהארנק?';

  @override
  String get logoutOrSwitchWallet => 'התנתקות / שינוי ארנק';

  @override
  String get manage => 'נהל';

  @override
  String get manualEntry => 'הזנה ידנית';

  @override
  String get maxSend => 'מקסימום שליחה';

  @override
  String get missingSecretPhrase => 'Missing Secret Phrase';

  @override
  String get moreInfo => 'More Info';

  @override
  String get networkHeader => 'רשת';

  @override
  String get newAddress => 'כתובת חדשה';

  @override
  String get newIndex => 'חדש';

  @override
  String get newWallet => 'ארנק חדש';

  @override
  String get nextButton => 'הבא';

  @override
  String get no => 'לא';

  @override
  String get noContactsExport => 'לא קיימים אנשי קשר לייצא';

  @override
  String get noContactsImport => 'לא נמצאו אנשי קשר לייבוא';

  @override
  String get nodeAddress => 'צומת כספא';

  @override
  String get nodeDeleteMessage => 'בטוחים שברצונכם למחוק?';

  @override
  String get nodeDeleteTitle => 'למחוק את הגדרות צומת הכספא?';

  @override
  String get nodeNameEmpty => 'שם הצומת אינו יכול להיות ריק';

  @override
  String get nodeNameHint => 'הזן את שם הצומת';

  @override
  String get nodeNotSyncedException => 'הצומת אינה בסנכרון מלא';

  @override
  String get nodeNoUTXOIndexException => 'בצומת אין אינדקס UTXO';

  @override
  String get nodeSecureConnection => 'חיבור מאובטח';

  @override
  String get nodesSheetTitle => 'צמתי כספא';

  @override
  String get nodeUrlHint => 'הזן את כתובת הצומת';

  @override
  String get nodeUrlInvalid => 'כתובת הצומת אינה חוקית';

  @override
  String get noQrCodeFound => 'קוד QR לא נמצא';

  @override
  String get noSkipButton => 'לא, דלג';

  @override
  String get notAccepted => 'לא התקבל';

  @override
  String get noteLabel => 'Note:';

  @override
  String get noUppercase => 'לא';

  @override
  String get off => 'כבוי';

  @override
  String get on => 'פועל';

  @override
  String get optionalLabel => '(Optional)';

  @override
  String get paperWallet => 'ארנק נייר';

  @override
  String get passwordBlank => 'הסיסמה לא יכולה להיות ריקה';

  @override
  String get passwordNoLongerRequiredToOpenParagraph =>
      'אין צורך בסיסמה לפתיחת ארנק זה';

  @override
  String get passwordsDontMatch => 'הסיסמאות לא תואמות';

  @override
  String get passwordWillBeRequiredToOpenParagraph =>
      'חייבים להשתמש בסיסמה זו לפתיחת הארנק.';

  @override
  String get pasteMnemonicError => 'תוכן לוח העתקה אינו ביטוי סודי חוקי';

  @override
  String get pending => 'בהמתנה';

  @override
  String get pinConfirmError => 'הקודים אינם תואמים';

  @override
  String get pinConfirmTitle => 'אשר את הקוד';

  @override
  String get pinCreateTitle => 'יצר קוד באורך 6 ספרות';

  @override
  String get pinEnterTitle => 'הזן קוד';

  @override
  String get pinInvalid => 'הוזן קוד לא תקין';

  @override
  String get pinMethod => 'קוד';

  @override
  String get pinSeedBackup => 'הזן קוד כדי לגבות את הביטוי הסודי';

  @override
  String get preferences => 'העדפות';

  @override
  String get privacyPolicy => 'מדיניות הפרטיות';

  @override
  String get qrInvalidAddress => 'קוד ה-QR לא מכיל כתובת חוקית';

  @override
  String get qrInvalidSeed => 'הברקוד אינו מכיל \"סיד\" תקין או מפתח פרטי';

  @override
  String get qrMnemonicError => 'ה-QR קוד לא מכיל ביטוי סודי חוקי';

  @override
  String get receive => 'קבל';

  @override
  String get receiveAddress => 'כתובת קבלה';

  @override
  String get receiveAddressCopied => 'כתובת קבלה הועתקה';

  @override
  String get receiveAddressListEmpty => 'רשימת כתובות קבלה ריקה';

  @override
  String get received => 'התקבל';

  @override
  String get receiveIndex => 'אינדקס קבלה';

  @override
  String receiveIndexParam(String addressIndex) {
    return 'אינדקס כתובת מקבלת $addressIndex';
  }

  @override
  String get removeContact => 'הסר איש קשר';

  @override
  String removeContactConfirmation(String contactName) {
    return 'האם אתה בטוח שאתה רוצה למחוק את $contactName?';
  }

  @override
  String get removeWalletAction => 'הסר ארנק';

  @override
  String get removeWalletBiometricsMessage => 'אישור הסרת ארנק';

  @override
  String get removeWalletDetail =>
      'אזהרה 🛑\nהסרת הארנק יגרום למחיקת הביטוי הסודי וכל המידע והנתונים הקשורים \nלארנק מהמכשיר הזה.\nאם הביטוי הסודי לא מגובה / שמור בנפרד איתכם, אתם תאבדו את הגישה לארנק והכספים שלכם!';

  @override
  String get removeWalletPinMessage => 'הזן קוד להסרת הארנק';

  @override
  String get removeWalletReassurance =>
      'כל עוד הביטוי הסודי שלכם מגובה / שמור בנפרד איתכם אז אין לכם על מה לדאוג ';

  @override
  String get requestPasswordAtLaunch => 'At Launch';

  @override
  String get requestPasswordHeader => 'Request Password';

  @override
  String get requestPasswordWhenLocked => 'When Locked';

  @override
  String get requestPasswordWhenSigning => 'When Signing';

  @override
  String get requireAPasswordToOpenHeader => 'האם לדרוש סיסמה לפתיחת הארנק?';

  @override
  String get restartSetupButton => 'הפעל מחדש את ההכנה';

  @override
  String get scanFailedMessage => 'סריקה נכשלה, בבקשה נסה/י מאוחר יותר';

  @override
  String get scanMore => 'סרוק עוד';

  @override
  String get scanMoreAddresses => 'סרוק לקבלת כתובות נוספות';

  @override
  String get scannedIndex => 'נסרק';

  @override
  String get scanningDescription => 'סורק בשביל כתובות חדשות...';

  @override
  String get scanningTitle => 'סורק';

  @override
  String get scanQrCode => 'סרוק ברקוד';

  @override
  String get scanQrCodeError => 'ניתוח קוד ה-QR נכשל';

  @override
  String get secretInfo =>
      'המסך הבא יראה את הביטוי הסודי שלכם. זה ביטוי שמאפשר לכם גישה לכספים שלכם.\nמאוד חשוב שתשמרו את הביטוי במקום בטוח בנפרד למכשיר ושלא תשתפו אותו עם אנשים אחרים!';

  @override
  String get secretInfoHeader => 'בטיחות קודמת לכול!';

  @override
  String get secretPhrase => 'ביטוי סודי';

  @override
  String get secretPhrase12Words => '12 WORDS';

  @override
  String get secretPhrase24Words => '24 WORDS';

  @override
  String get secretWarning =>
      'אם תאבדו את המכשיר או תורידו את האפליקציה מהמכשיר אתם תצטרכו להשתמש בביטוי הסודי כדי לגשת לכספים שלכם! ';

  @override
  String get securityHeader => 'אבטחה';

  @override
  String get seed => 'סיד';

  @override
  String get seedInvalid => 'ה\"סיד\" אינו תקין';

  @override
  String get selectAddress => 'Select Address';

  @override
  String get send => 'שלח';

  @override
  String get sendConfirm => 'שלח';

  @override
  String get sendError => 'קרתה תקלה. נסה שוב מאוחר יותר';

  @override
  String get sending => 'שלח';

  @override
  String get sendNote => 'הערה';

  @override
  String get sendToAddressTitle => 'אל';

  @override
  String get sendTxProgressDescription => 'אנא המתינו בעת שליחת העסקה';

  @override
  String get sendTxProgressTitle => 'העסקה נשלחת';

  @override
  String get sent => 'נשלח';

  @override
  String get sentTo => 'Sent to';

  @override
  String get setPassword => 'הגדר סיסמה';

  @override
  String get setPasswordSuccess => 'סיסמת הארנק הוגדרה';

  @override
  String get settingsHeader => 'הגדרות';

  @override
  String get settingsTransfer => 'טען מארנק נייר';

  @override
  String get setupFailedMessage => 'משהו השתבש';

  @override
  String get setWalletPassword => 'הגדר סיסמת הארנק';

  @override
  String get shareKaspium => 'שתף את כספיום';

  @override
  String get shareKaspiumSubject => 'תראו כמה מגניב כספיום';

  @override
  String get shareKaspiumText =>
      'תראו את כספיום - ארנק כספא לנייד.\nאתר - kaspium.io';

  @override
  String get somethingWentWrong => 'משהו השתבש';

  @override
  String get systemDefault => 'ברירת מחדל';

  @override
  String get tapToHide => 'הקש להחביא';

  @override
  String get tapToReveal => 'הקש להראות';

  @override
  String get themeDark => 'מצב תצוגה כהה';

  @override
  String get themeHeader => 'ערכת נושא';

  @override
  String get themeLight => 'מצב תצוגה בהיר';

  @override
  String get thisWallet => '#ארנק זה';

  @override
  String get to => 'מ-';

  @override
  String get toAddress => 'לכתובת';

  @override
  String get tooManyFailedAttempts => 'יותר מדי נסיונות כושלים לשחרור הנעילה.';

  @override
  String get totalValue => 'ערך כולל ';

  @override
  String get transactionId => 'מספר עסקה';

  @override
  String get transactionsUppercase => 'עסקאות';

  @override
  String get transfer => 'העבר';

  @override
  String get transferClose => 'לחץ בכל מקום בכדי לסגור את החלון.';

  @override
  String transferComplete(String amount) {
    return '$amount כספא הועברו לארנק כספיום בהצלחה.\n';
  }

  @override
  String transferConfirmInfo(String amount) {
    return 'ארנק עם מאזן של $amount כספא אותר.';
  }

  @override
  String get transferConfirmInfoSecond => 'לחץ על אשר בכדי להעביר את הסכום.\n';

  @override
  String get transferConfirmInfoThird => 'העברה יכולה לקחת מספר שניות';

  @override
  String get transferError => 'חלה תקלה במהלך ההעברה. בבקשה נסה מאוחר יותר.';

  @override
  String get transferHeader => 'העבר כספים';

  @override
  String transferIntro(String button) {
    return 'התהליך יעביר את הסכום שברשותך מארנק הנייר לארנק כספיום\n\nלחץ על כפתור ה-\"$button\" כדי להתחיל.';
  }

  @override
  String get transferLoading => 'מעביר';

  @override
  String get transferManualHint => 'אנא הזן את ה\"סיד\" למטה';

  @override
  String get transferNoFunds => 'ה\"סיד\" אינו מכיל שום כספא';

  @override
  String get transferQrScanError => 'הברקוד אינו מכיל \"סיד\" תקין';

  @override
  String get transferQrScanHint => 'סרוק \"סיד\" של \nכספא או מפתח פרטי';

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
  String get unconfirmed => 'לא מאושר';

  @override
  String get unknown => 'לא ידוע';

  @override
  String get unlock => 'שחרר מנעילה';

  @override
  String get unlockBiometrics => 'התאמתו כדי לשחרר ארנק מנעילה';

  @override
  String get unlockPin => 'הזן קוד על מנת לשחרר ארנק מנעילה';

  @override
  String get utxoSelectionHint => 'Please select more UTXOs';

  @override
  String get utxoSelectionTitle => 'Select UTXOs';

  @override
  String get utxosUppercase => 'UTXOs';

  @override
  String get viewAddress => 'הצג כתובת';

  @override
  String get viewTransaction => 'הצג עסקה';

  @override
  String get walletAddress => 'Wallet Address';

  @override
  String get walletAddresses => 'כתובות הארנקים';

  @override
  String walletAddressesCopied(String addressType) {
    return 'Wallet $addressType Addresses Copied to Clipboard';
  }

  @override
  String walletAddressesCopyFailed(String addressType) {
    return 'Failed to Copy Wallet $addressType Addresses';
  }

  @override
  String get walletName => 'שם הארנק';

  @override
  String get walletNameDescription => 'הזן שם לארנק שלך';

  @override
  String get walletNameHint => 'שם הארנק';

  @override
  String get walletSetupAddressDiscovery => 'מריץ גילוי כתובות';

  @override
  String get walletSetupMessage => 'הכנת ארנק';

  @override
  String get walletsTitle => 'ארנקים';

  @override
  String get warning => 'אזהרה';

  @override
  String welcomeMessage(String version) {
    return 'ברוכים הבאים!\n\nזו גרסה $version של כספיום - ארנק כספא לנייד';
  }

  @override
  String get welcomeText =>
      'ברוך הבא לכספיום. כדי להתחיל, ניתן ליצור ארנק חדש או לייבא אחד קיים.';

  @override
  String get yes => 'כן';

  @override
  String get yesButton => 'כן';

  @override
  String get yesUppercase => 'כן';
}
