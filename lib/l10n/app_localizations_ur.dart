// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String get account => 'اکاؤنٹ';

  @override
  String get accounts => 'اکاؤنٹس';

  @override
  String get ackBackedUp =>
      'کیا آپ کو یقین ہے کہ آپ نے اپنے خفیہ جملے کا بیک اپ لیا ہے؟';

  @override
  String get add => 'شامل کریں';

  @override
  String get addAccount => 'اکاؤنٹ شامل کریں';

  @override
  String get addContact => 'رابطہ شامل کریں';

  @override
  String get addNode => 'نوڈ شامل کریں';

  @override
  String get addNodeFailed => 'کیسپا نوڈ شامل کرنے میں ناکام';

  @override
  String addNodeFailedMessage(String error) {
    return 'ناکام: $error';
  }

  @override
  String get addNodeSuccess => 'نوڈ کامیابی کے ساتھ شامل ہو گیا';

  @override
  String get addingNodeMessage => 'براہ کرم نوڈ سے رابطہ کرتے وقت انتظار کریں';

  @override
  String get addingNodeTitle => 'نوڈ شامل کیا جا رہا ہے';

  @override
  String get address => 'پتہ';

  @override
  String get addressCopied => 'پتہ کاپی کر دیا گیا ہے';

  @override
  String get addressCopiedFailed => 'Failed to copy address';

  @override
  String get addressHint => 'پتہ درج کریں';

  @override
  String get addressMising => 'براہ کرم ایک پتہ درج کریں';

  @override
  String get addressShare => 'پتہ شیئر کریں';

  @override
  String get kaspaUriCopied => 'Kaspa URI Copied';

  @override
  String get kaspaUriCopyFailed => 'Failed to copy Kaspa URI';

  @override
  String get advancedHeader => 'اعلی درجے';

  @override
  String get amount => 'رقم';

  @override
  String amountConfirm(String amount, String coin) {
    return 'رقم $amount $coin';
  }

  @override
  String get amountMissing => 'براہ کرم ایک رقم درج کریں';

  @override
  String get amountZero => 'رقم صفر نہیں ہو سکتی';

  @override
  String get areYouSure => 'کیا آپ کو یقین ہے؟';

  @override
  String get authBiometricMessage => 'والیٹ شامل کرنے کے لیے تصدیق کریں';

  @override
  String get authMethod => 'تصدیق کا طریقہ';

  @override
  String get authPinMessage => 'والیٹ شامل کرنے کے لیے PIN درج کریں';

  @override
  String get autoLockHeader => 'خودکار طور پر لاک';

  @override
  String get available => 'دستیاب';

  @override
  String get backupConfirmButton => 'میں نے اس کا بیک اپ لیا ہے';

  @override
  String get backupSecretPhrase => 'بیک اپ خفیہ جملہ';

  @override
  String get missingSecretPhrase => 'Missing Secret Phrase';

  @override
  String get biometricsMethod => 'بایومیٹرکس';

  @override
  String get blockExplorer => 'بلاک ایکسپلورر';

  @override
  String get cancel => 'منسوخ کریں';

  @override
  String get change => ' تبدیل کریں';

  @override
  String get changeAddress => 'پتہ تبدیل کریں';

  @override
  String get changeAddressCopied => 'پتہ تبدیلی کا کاپی کیا گیا ہے';

  @override
  String get changeIndex => 'انڈیکس کو تبدیل کریں';

  @override
  String changeIndexParam(String addressIndex) {
    return '$addressIndex کو تبدیل کریں';
  }

  @override
  String get checkCameraPermission => 'براہ کرم کیمرے کی اجازتیں چیک کریں';

  @override
  String get clipboardEmpty => 'کلپ بورڈ خالی ہے';

  @override
  String get close => 'بند کریں';

  @override
  String get confirm => 'تصدیق کریں';

  @override
  String get confirmPasswordHint => 'پاس ورڈ کی تصدیق کریں';

  @override
  String confirmations(String confirmations) {
    return '$confirmations تصدیقات';
  }

  @override
  String get confirmed => 'تصدیق شدہ';

  @override
  String get confirming => 'تصدیق کی جا رہی ہے';

  @override
  String contactAdded(String contactName) {
    return '$contactName کو رابطوں میں شامل کیا گیا';
  }

  @override
  String contactAddressCopied(String address) {
    return '$address پتہ کاپی ہو گیا';
  }

  @override
  String get contactExists => 'رابطہ پہلے سے موجود ہے';

  @override
  String get contactHeader => 'رابطہ';

  @override
  String get contactInvalid => 'غلط رابطہ نام';

  @override
  String get contactNameHint => 'ایک نام درج کریں @';

  @override
  String get contactNameMissing => 'اس رابطہ کے لیے ایک نام منتخب کریں';

  @override
  String contactRemoved(String contactName) {
    return '$contactName کو رابطوں سے ہٹا دیا گیا ہے!';
  }

  @override
  String get contactsHeader => 'رابطے';

  @override
  String get contactsImportErr => 'رابطے درآمد کرنے میں ناکام';

  @override
  String contactsImportSuccess(String noContacts) {
    return '$noContacts رابطے کامیابی کے ساتھ درآمد کیے گئے';
  }

  @override
  String get copied => 'کاپی ہو گئی';

  @override
  String get copy => 'کاپی';

  @override
  String get copyAddress => 'ایڈریس کاپی کریں';

  @override
  String get copyErrorButton => 'کاپی کی خرابی';

  @override
  String get createAPasswordHeader => 'پاس ورڈ بنائیں';

  @override
  String get createPasswordFirstParagraph =>
      'آپ اپنے بٹوے میں اضافی سیکیورٹی شامل کرنے کے لیے پاس ورڈ بنا سکتے ہیں۔';

  @override
  String get createPasswordHint => 'پاس ورڈ بنائیں';

  @override
  String get createPasswordSecondParagraph =>
      'پاس ورڈ اختیاری ہے، اور آپ کے بٹوے کو آپ کے PIN یا بایومیٹرکس سے قطع نظر محفوظ رکھا جائے گا۔';

  @override
  String get createPasswordSheetHeader => 'بنائیں';

  @override
  String get currency => 'کرنسی';

  @override
  String get currencyPoweredBy => 'CoinGecko کے ذریعہ تقویت یافتہ';

  @override
  String get defaultAccountName => 'پتہ 1';

  @override
  String defaultNewAccountName(int addressIndex) {
    return 'وصول کریں $addressIndex';
  }

  @override
  String get defaultWalletName => 'میرا بٹوہ';

  @override
  String get disablePasswordSheetHeader => 'غیر فعال کریں';

  @override
  String get disablePasswordSuccess => 'پاس ورڈ کو غیر فعال کر دیا گیا ہے';

  @override
  String get disableWalletPassword => 'بٹوا پاس ورڈ کو غیر فعال کریں';

  @override
  String get doContinue => 'جاری رہے';

  @override
  String get donate => 'عطیہ کریں';

  @override
  String get donateTo => 'Donate To';

  @override
  String get dontShowAgain => 'دوبارہ مت دکھانا';

  @override
  String get emptyCardIntroUtxos =>
      'یہ UTXOs ٹیب ہے۔ آپ کے بٹوے میں موجود تمام UTXO یہاں ظاہر ہوں گے۔';

  @override
  String get emptyResult => 'خالی نتیجہ';

  @override
  String get emptyWalletName => 'بٹوا نام خالی نہیں ہو سکتا';

  @override
  String get encryptionFailedError => 'بٹوا پاس ورڈ سیٹ کرنے میں ناکام';

  @override
  String get enterAddress => 'پتہ درج کریں';

  @override
  String get enterAmount => 'رقم درج کریں';

  @override
  String get enterFiatValue => 'Enter Fiat Value';

  @override
  String get enterNote => 'نوٹ درج کریں';

  @override
  String get enterPasswordHint => 'اپنا پاس ورڈ درج کریں';

  @override
  String get errorMessageCopied => 'خرابی کا پیغام کلپ بورڈ پر کاپی ہو گیا';

  @override
  String get exampleCardIntro =>
      'یہ لین دین کا ٹیب ہے۔ ایک بار جب آپ کوئی لین دین بھیجتے یا وصول کرتے ہیں، تو یہ یہاں ظاہر ہوگا۔';

  @override
  String get export => 'برآمد کریں';

  @override
  String get fee => 'فیس';

  @override
  String feeConfirm(String amount, String coin) {
    return 'فیس $amount $coin';
  }

  @override
  String get feeTitle => 'فیس';

  @override
  String get fetchingTransactions => 'لین دین کی بازیافت';

  @override
  String get fingerprintSeedBackup => 'بیک اپ خفیہ جملے کی توثیق کریں۔';

  @override
  String get goBackButton => 'واپس جاو';

  @override
  String get gotItButton => 'سمجھ گیا!';

  @override
  String get import => 'درآمد کریں';

  @override
  String get importSecretPhrase => 'خفیہ جملہ درآمد کریں';

  @override
  String get importSecretPhraseHint =>
      'براہ کرم ذیل میں اپنا 24 الفاظ کا خفیہ جملہ درج کریں۔';

  @override
  String get importSecretPhraseHintCombo =>
      'Please enter your 12 or 24 word secret phrase below.';

  @override
  String get importSecretPhraseHintLegacy =>
      'Please enter your 12 word secret phrase below.';

  @override
  String get importWallet => 'بٹوا درآمد کریں';

  @override
  String get importWalletDescription => 'Please select an option below.';

  @override
  String get instantly => 'فوری طور پر';

  @override
  String get insufficientBalance => 'ناکافی بیلنس';

  @override
  String get insufficientBalanceDetails =>
      'آپ کے پاس اس لین دین کے لیے کافی KAS نہیں ہے';

  @override
  String get invalidAddress => 'درج کردہ پتہ غلط تھا';

  @override
  String get invalidAmount => 'غلط رقم';

  @override
  String get invalidChecksumMessage =>
      'براہ کرم چیک کریں کہ آپ کا خفیہ جملہ   درست درج کیا گیا ہے!';

  @override
  String get invalidKpubMessage =>
      'Please check that your extended public key is entered correctly!';

  @override
  String get invalidDestinationAddress => 'غلط منزل کا پتہ';

  @override
  String get invalidPassword => 'غلط پاسورڈ';

  @override
  String get kaspaDevFund => 'کاسپا دیو فنڈ';

  @override
  String get kaspiumWallet => 'کاسپیم بٹوا ';

  @override
  String get language => 'زبان';

  @override
  String get loadingTransactions => 'لین دین لوڈ ہو رہا ہے...';

  @override
  String get lockAppSetting => 'لانچ پر تصدیق کریں۔';

  @override
  String get locked => 'مقفل';

  @override
  String get loggingOutMessage => 'لاگ آؤٹ ہو رہا ہے...';

  @override
  String get logout => 'لاگ آوٹ';

  @override
  String get logoutDialogContent =>
      'کیا آپ واقعی اس بٹوے سے لاگ آؤٹ کرنا چاہتے ہیں؟';

  @override
  String get logoutOrSwitchWallet => 'لاگ آؤٹ / سوئچ بٹوا';

  @override
  String get manage => 'انتظام کریں';

  @override
  String get manualEntry => 'دستی اندراج';

  @override
  String get networkHeader => 'نیٹ ورک';

  @override
  String get newAddress => 'نیا پتہ';

  @override
  String get newWallet => 'نیا بٹوا';

  @override
  String get nextButton => 'اگلے';

  @override
  String get no => 'نہیں';

  @override
  String get noContactsExport => 'برآمد کرنے کے لیے کوئی رابطہ نہیں ہے';

  @override
  String get noContactsImport => 'درآمد کرنے کے لیے کوئی نیا رابطہ نہیں ہے';

  @override
  String get noQrCodeFound => 'کوئی QR کوڈ نہیں ملا';

  @override
  String get noSkipButton => 'نہیں، چھوڑیں';

  @override
  String get noUppercase => 'نہیں';

  @override
  String get nodeAddress => 'کاسپا نوڈ';

  @override
  String get nodeDeleteMessage => 'کیا آپ واقعی حذف کرنا چاہتے ہیں؟';

  @override
  String get nodeDeleteTitle => 'Kaspa Node Config کو حذف کریں؟';

  @override
  String get nodeNameEmpty => 'نوڈ کا نام خالی نہیں ہو سکتا';

  @override
  String get nodeNameHint => 'نوڈ کا نام درج کریں';

  @override
  String get nodeUrlHint => 'نوڈ URL درج کریں';

  @override
  String get nodeUrlInvalid => 'غلط نوڈ URL';

  @override
  String get nodesSheetTitle => 'کاسپا نوڈس';

  @override
  String get off => 'بند';

  @override
  String get on => 'آن';

  @override
  String get paperWallet => 'کاغذی بٹوا';

  @override
  String get passwordBlank => 'پاس ورڈ خالی نہیں ہو سکتا';

  @override
  String get passwordNoLongerRequiredToOpenParagraph =>
      'اس بٹوے کو کھولنے کے لیے آپ کو پاس ورڈ کی ضرورت نہیں ہوگی۔';

  @override
  String get passwordWillBeRequiredToOpenParagraph =>
      'اس بٹوا کو کھولنے کے لیے اس پاس ورڈ کی ضرورت ہوگی۔';

  @override
  String get passwordsDontMatch => 'پاس ورڈ میچ نہیں کرتے';

  @override
  String get pasteMnemonicError => 'کلپ بورڈ مواد ایک درست خفیہ جملہ نہیں ہے';

  @override
  String get pending => 'زیر التواء';

  @override
  String get pinConfirmError => 'پن میچ نہیں کرتے';

  @override
  String get pinConfirmTitle => 'اپنے PIN کی تصدیق کریں';

  @override
  String get pinCreateTitle => '6 ہندسوں کا پن بنائیں';

  @override
  String get pinEnterTitle => 'PIN درج کریں۔';

  @override
  String get pinInvalid => 'غلط PIN درج کیا گیا۔';

  @override
  String get pinMethod => 'PIN';

  @override
  String get pinSeedBackup => 'خفیہ جملہ کو بیک اپ کرنے کے لیے PIN درج کریں۔';

  @override
  String get preferences => 'ترجیحات';

  @override
  String get privacyPolicy => 'رازداری کی پالیسی';

  @override
  String get qrInvalidAddress => 'QR کوڈ میں درست پتہ نہیں ہے۔';

  @override
  String get qrInvalidSeed => 'QR کوڈ میں درست سیڈ یا نجی کلید نہیں ہے۔';

  @override
  String get qrMnemonicError => 'QR کوڈ میں ایک درست خفیہ جملہ نہیں ہے۔';

  @override
  String get receive => 'وصول کریں';

  @override
  String get receiveAddress => 'ایڈریس وصول کریں';

  @override
  String get receiveAddressCopied => 'کاپی شدہ ایڈریس وصول کریں۔';

  @override
  String get receiveIndex => 'انڈیکس وصول کریں';

  @override
  String receiveIndexParam(String addressIndex) {
    return 'وصول کریں $addressIndex';
  }

  @override
  String get received => 'موصول ہوا';

  @override
  String get removeContact => 'رابطہ کو ہٹا دیں';

  @override
  String removeContactConfirmation(String contactName) {
    return 'کیا آپ واقعی $contactName کو حذف کرنا چاہتے ہیں؟';
  }

  @override
  String get removeWalletAction => 'بٹوے کو ہٹا دیں';

  @override
  String get removeWalletBiometricsMessage =>
      'بٹوا کو ہٹانے کے لیے تصدیق کریں۔';

  @override
  String get removeWalletDetail =>
      'اس بٹوے کو ہٹانے سے اس ڈیوائس سے خفیہ جملہ اور بٹوے سے متعلق تمام ڈیٹا ہٹ جائے گا۔ اگر خفیہ جملے کا بیک اپ نہیں لیا جاتا ہے، تو آپ دوبارہ کبھی بھی اپنے فنڈز تک رسائی حاصل نہیں کر پائیں گے۔';

  @override
  String get removeWalletPinMessage => 'بٹوا کو ہٹانے کے لیے پن درج کریں۔';

  @override
  String get removeWalletReassurance =>
      'جب تک آپ نے خفیہ جملے کا بیک اپ لیا ہے آپ کو فکر کرنے کی کوئی ضرورت نہیں ہے۔';

  @override
  String get requireAPasswordToOpenHeader =>
      'اس بٹوا کو کھولنے کے لیے پاس ورڈ کی ضرورت ہے؟';

  @override
  String get restartSetupButton => 'سیٹ اپ دوبارہ شروع کریں۔';

  @override
  String get scanQrCode => 'کیو آر کوڈ اسکین کریں۔';

  @override
  String get scanQrCodeError => 'کیو آر کوڈ کو پارس کرنے میں ناکام';

  @override
  String get secretInfo =>
      'اگلی اسکرین میں، آپ کو اپنا خفیہ جملہ نظر آئے گا۔ یہ آپ کے فنڈز تک رسائی کا پاس ورڈ ہے۔ یہ بہت ضروری ہے کہ آپ اس کا بیک اپ لیں اور اسے کبھی کسی کے ساتھ شیئر نہ کریں۔';

  @override
  String get secretInfoHeader => 'پہلے حفاظت!';

  @override
  String get secretPhrase => 'خفیہ جملہ';

  @override
  String get secretPhrase12Words => '12 WORDS';

  @override
  String get secretPhrase24Words => '24 WORDS';

  @override
  String get secretWarning =>
      'اگر آپ اپنا آلہ کھو دیتے ہیں یا ایپلیکیشن ان انسٹال کرتے ہیں، تو آپ کو اپنے فنڈز کی وصولی کے لیے اپنے خفیہ جملے کی ضرورت ہوگی!';

  @override
  String get securityHeader => 'سیکورٹی';

  @override
  String get seed => 'Seed';

  @override
  String get seedInvalid => 'سیڈ غلط ہے';

  @override
  String get send => 'بھیجیں';

  @override
  String get sendConfirm => 'بھیجیں';

  @override
  String get sendError => 'ایک خرابی آگئی. دوبارہ کوشش کریں';

  @override
  String get sendNote => 'نوٹ';

  @override
  String get sendToAddressTitle => 'کو';

  @override
  String get sendTxProgressDescription =>
      'براہ کرم ٹرانزیکشن بھیجے جانے تک انتظار کریں۔';

  @override
  String get sendTxProgressTitle => 'لین دین بھیجنا';

  @override
  String get sending => 'بھیجیں';

  @override
  String get sent => 'بھیجا';

  @override
  String get sentTo => 'Sent to';

  @override
  String get setPassword => 'پاس ورڈ رکھیں';

  @override
  String get setPasswordSuccess => 'والیٹ پاس ورڈ سیٹ کر دیا گیا ہے۔';

  @override
  String get setWalletPassword => 'والیٹ پاس ورڈ سیٹ کریں۔';

  @override
  String get settingsHeader => 'ترتیبات';

  @override
  String get settingsTransfer => 'کاغذی بٹوے سے لوڈ کریں۔';

  @override
  String get setupFailedMessage => 'کچھ غلط ہو گیا';

  @override
  String get shareKaspium => 'Kaspium کا اشتراک کریں۔';

  @override
  String get shareKaspiumSubject => 'Kaspium Wallet چیک کریں۔';

  @override
  String get shareKaspiumText =>
      'Kaspium - Kaspa Mobile Wallet  ویب سائٹ - kaspium.io چیک کریں۔';

  @override
  String get somethingWentWrong => 'کچھ غلط ہو گیا';

  @override
  String get systemDefault => 'سسٹم ڈیفالٹ';

  @override
  String get tapToHide => 'چھپانے کے لئے ٹیپ';

  @override
  String get tapToReveal => 'ظاہر کرنے کے لئے ٹیپ کریں۔';

  @override
  String get themeDark => 'ڈارک تھیم';

  @override
  String get themeHeader => 'تھیم';

  @override
  String get themeLight => 'ہلکی تھیم';

  @override
  String get thisWallet => '#یہ بٹوا';

  @override
  String get to => 'کو';

  @override
  String get toAddress => 'وہ پتہ';

  @override
  String get tooManyFailedAttempts => 'غیر مقفل کرنے کی بہت ساری ناکام کوششیں۔';

  @override
  String get totalValue => 'کل قیمت';

  @override
  String get transactionId => 'ٹرانزیکشن ID';

  @override
  String get transactionsUppercase => 'لین دین';

  @override
  String get transfer => 'منتقلی';

  @override
  String get transferClose => 'کھڑکی کو بند کرنے کے لیے کہیں بھی ٹیپ کریں۔';

  @override
  String transferComplete(String amount) {
    return '$amount KAS کامیابی کے ساتھ آپ کے Kaspium Wallet میں منتقل ہو گیا۔\n';
  }

  @override
  String transferConfirmInfo(String amount) {
    return '$amount KAS کے بیلنس والے پرس کا پتہ چلا ہے۔';
  }

  @override
  String get transferConfirmInfoSecond =>
      'رقوم کی منتقلی کے لیے تصدیق پر ٹیپ کریں۔\n';

  @override
  String get transferConfirmInfoThird =>
      'منتقلی مکمل ہونے میں کئی سیکنڈ لگ سکتے ہیں۔';

  @override
  String get transferError =>
      'منتقلی کے دوران ایک خرابی پیش آگئی ہے۔ براہ کرم کچھ دیر بعد کوشش کریں.';

  @override
  String get transferHeader => 'فنڈز کی منتقلی';

  @override
  String transferIntro(String button) {
    return 'یہ عمل کاغذی بٹوے سے آپ کے Kaspium والیٹ میں رقم منتقل کر دے گا۔\n\n شروع کرنے کے لیے \"$button\" بٹن کو تھپتھپائیں  ۔';
  }

  @override
  String get transferLoading => 'منتقلی';

  @override
  String get transferManualHint => 'براہ کرم ذیل میں بیج درج کریں۔';

  @override
  String get transferNoFunds => 'اس سیڈ پر کوئی KAS نہیں ہے۔';

  @override
  String get transferQrScanError => 'اس QR کوڈ میں درست سیڈ نہیں ہے۔';

  @override
  String get transferQrScanHint => 'Kaspa سیڈ یا نجی کلید اسکین کریں۔';

  @override
  String get unconfirmed => 'غیر تصدیق شدہ';

  @override
  String get notAccepted => 'not accepted';

  @override
  String get accepted => 'accepted';

  @override
  String get unknown => 'غیر تصدیق شدہ';

  @override
  String get unlock => 'غیر مقفل کریں۔';

  @override
  String get unlockBiometrics => 'بٹوا کو غیر مقفل کرنے کے لیے تصدیق کریں۔';

  @override
  String get unlockPin => 'بٹوا کو غیر مقفل کرنے کے لیے پن درج کریں۔';

  @override
  String get utxosUppercase => 'UTXOs';

  @override
  String get viewAddress => 'پتہ دیکھیں';

  @override
  String get viewTransaction => 'لین دین دیکھیں';

  @override
  String get walletAddresses => 'بٹوے کے پتے';

  @override
  String get walletAddress => 'Wallet Address';

  @override
  String get walletName => 'بٹوے کا نام';

  @override
  String get walletNameDescription => 'اپنے بٹوے کے لیے ایک نام درج کریں۔';

  @override
  String get walletNameHint => 'بٹوے کا نام';

  @override
  String get walletSetupAddressDiscovery => 'ایڈریس ڈسکوری چل رہا ہے۔';

  @override
  String get walletSetupMessage => 'بٹوا لگانا';

  @override
  String get walletsTitle => 'بٹوے';

  @override
  String get warning => 'وارننگ';

  @override
  String welcomeMessage(String version) {
    return 'خوش آمدید!یہ \n\n  Kaspium کا ورژن $version ہے - Kaspa کے لیے موبائل والیٹ';
  }

  @override
  String get welcomeText =>
      'Kaspium میں خوش آمدید۔ شروع کرنے کے لیے، آپ ایک نیا پرس بنا سکتے ہیں یا پہلے سے موجود کو درآمد کر سکتے ہیں۔';

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
    return 'کے بعد $_temp0';
  }

  @override
  String get yes => 'جی ہاں';

  @override
  String get yesButton => 'جی ہاں';

  @override
  String get yesUppercase => 'جی ہاں';

  @override
  String get nodeNotSyncedException => 'نوڈ مطابقت پذیر نہیں ہے';

  @override
  String get nodeNoUTXOIndexException => 'نوڈ میں UTXO انڈیکس نہیں ہے';

  @override
  String get nodeSecureConnection => 'محفوظ کنکشن';

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
