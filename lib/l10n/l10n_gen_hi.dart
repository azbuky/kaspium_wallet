// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n_gen.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get aboutTopperDescription =>
      'Topper by Uphold is an easy to use fiat-to-crypto onramp that allows users to buy cryptocurencies using a credit/debit card or with a bank account.';

  @override
  String get aboutTopperTitle => 'About Topper';

  @override
  String get accepted => 'स्वीकृत';

  @override
  String get account => 'खाता';

  @override
  String get accounts => 'खाते';

  @override
  String get ackBackedUp =>
      'क्या आप सुनिश्चित हैं कि आपने अपने गुप्त वाक्यांश या सीड का बैकअप ले लिया है?';

  @override
  String get add => 'जोड़ना';

  @override
  String get addAccount => 'खाता जोड़ो';

  @override
  String get addContact => 'संपर्क जोड़ें';

  @override
  String get addingNodeMessage => 'कृपया नोड से संपर्क करते समय प्रतीक्षा करें';

  @override
  String get addingNodeTitle => 'नोड जोड़ना';

  @override
  String get addNode => 'नोड जोड़ें';

  @override
  String get addNodeFailed => 'कास्पा नोड जोड़ने में विफल';

  @override
  String addNodeFailedMessage(String error) {
    return 'असफल: $error';
  }

  @override
  String get addNodeSuccess => 'नोड सफलतापूर्वक जोड़ा गया';

  @override
  String get address => 'एड्रेस';

  @override
  String get addressCopied => 'एड्रेस कॉपी हो गया है';

  @override
  String get addressCopiedFailed => 'एड्रेस कॉपी करने में विफल';

  @override
  String get addressDiscovery => 'एड्रेस खोजे';

  @override
  String get addressFilterDialogOptionAllAddresses => 'सभी एड्रेस देखें';

  @override
  String get addressFilterDialogOptionNonZeroBalances =>
      'शेष राशि के साथ एड्रेस देखें';

  @override
  String get addressFilterDialogTitle => 'एड्रेस फ़िल्टर';

  @override
  String get addressHint => 'एड्रेस दर्ज करें';

  @override
  String get addressMising => 'कृपया एक एड्रेस डालें';

  @override
  String get addressShare => 'एड्रेस शेयर करें';

  @override
  String get advancedHeader => 'विकसित';

  @override
  String get amount => 'मात्रा';

  @override
  String amountConfirm(String amount, String coin) {
    return 'राशि $coin $amount';
  }

  @override
  String get amountMissing => 'कृपया राशि दर्ज करें';

  @override
  String get amountZero => 'राशि शून्य नहीं हो सकती';

  @override
  String get areYouSure => 'क्या आप निश्चित है?';

  @override
  String get authBiometricMessage => 'वॉलेट जोड़ने के लिए प्रमाणित करें';

  @override
  String get authMethod => 'प्रमाणीकरण का तरीका';

  @override
  String get authPinMessage => 'वॉलेट जोड़ने के लिए पिन दर्ज करें';

  @override
  String get autoLockHeader => 'स्वचालित रूप से लॉक करें';

  @override
  String get available => 'उपलब्ध';

  @override
  String get backupConfirmButton => 'मैंने इसका बैकअप कर लिया है';

  @override
  String get backupSecretPhrase => 'गुप्त वाक्यांश बैकअप करें';

  @override
  String get balance => 'बैलेंस';

  @override
  String get biometricsMethod => 'बॉयोमेट्रिक्स';

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
  String get blockExplorer => 'ब्लॉक एक्सप्लोरर';

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
  String get cancel => 'रद्द करें';

  @override
  String get change => 'बदलाव';

  @override
  String get changeAddress => 'एड्रेस बदलाव करें';

  @override
  String get changeAddressCopied => 'एड्रेस बदलें कॉपी किया गया';

  @override
  String get changeAddressListEmpty => 'एड्रेस परिवर्तन सूची खाली है';

  @override
  String get changeIndex => 'सूचकांक बदलें';

  @override
  String changeIndexParam(String addressIndex) {
    return 'बदलें $addressIndex';
  }

  @override
  String get checkCameraPermission => 'कृपया कैमरे की अनुमति जांचें';

  @override
  String get clipboardEmpty => 'क्लिपबोर्ड खाली है';

  @override
  String get close => 'बंद करें';

  @override
  String get closeUppercased => 'बंद करना';

  @override
  String get compoundFailure => 'लेन-देन संयोजित करने में विफल';

  @override
  String get compoundingMessage => 'कृपया प्रतीक्षा करें...';

  @override
  String get compoundingUtxos => 'शेष राशि के साथ एड्रेस देखें';

  @override
  String get compoundRequired => 'Compound required';

  @override
  String get compoundRequiredDescription =>
      'The transaction amount requires too many UTXOs. Compounding will reduce the number of UTXOs.';

  @override
  String get compoundSuccess => 'यौगिक सफल';

  @override
  String get compoundTooFewUtxos => 'कम से कम दो UTXOs की आवश्यकता है';

  @override
  String get compoundUppercased => 'मिश्रण';

  @override
  String get compoundUtxos => 'यौगिक लेनदेन';

  @override
  String get compoundUtxosConfirmation => 'मिश्रित लेनदेन?';

  @override
  String get compoundUtxosDescription => 'एकाधिक UTXOs को एक में संयोजित करें';

  @override
  String get confirm => 'पुष्टि करें';

  @override
  String confirmations(String confirmations) {
    return '$confirmations पुष्टिकरण';
  }

  @override
  String get confirmed => 'पुष्टीकृत';

  @override
  String get confirming => 'इस बात की पुष्टि';

  @override
  String get confirmPasswordHint => 'पासवर्ड की पुष्टि करें';

  @override
  String contactAdded(String contactName) {
    return '$contactName अब आपके सम्पर्को में है।';
  }

  @override
  String contactAddressCopied(String address) {
    return '$address एड्रेस कॉपी किया गया';
  }

  @override
  String get contactExists => 'इस संपर्क का नाम पहले से मौजूद है';

  @override
  String get contactHeader => 'संपर्क ';

  @override
  String get contactInvalid => 'संपर्क के नाम में गलती है';

  @override
  String get contactNameHint => 'संपर्क का @नाम डालें';

  @override
  String get contactNameMissing => 'इस संपर्क के लिए एक नाम चुनें';

  @override
  String contactRemoved(String contactName) {
    return '$contactName का नाम संपर्कों में से हट दिया गया है!';
  }

  @override
  String get contactsHeader => 'संपर्क';

  @override
  String get contactsImportErr => 'संपर्क आयात नहीं हो सकें';

  @override
  String contactsImportSuccess(String noContacts) {
    return '$noContacts संपर्क सफलतापूर्वक आयात हो गए हैं।';
  }

  @override
  String get contactSupport => 'Contact Support';

  @override
  String get copied => 'कॉपी हो गया';

  @override
  String get copy => 'कॉपी';

  @override
  String get copyAddress => 'एड्रेस कॉपी करें';

  @override
  String get copyErrorButton => 'कॉपी त्रुटि हो रहा है';

  @override
  String get copyKpub => 'Copy Kpub';

  @override
  String get createAPasswordHeader => 'एक पासवर्ड बनाएं।';

  @override
  String get createPasswordFirstParagraph =>
      'आप अपने वॉलेट में अतिरिक्त सुरक्षा जोड़ने के लिए एक पासवर्ड बना सकते हैं।';

  @override
  String get createPasswordHint => 'एक पासवर्ड बनाएं';

  @override
  String get createPasswordSecondParagraph =>
      'पासवर्ड वैकल्पिक है, और आपका वॉलेट आपके पिन या बायोमेट्रिक्स से सुरक्षित रहेगा ही।';

  @override
  String get createPasswordSheetHeader => 'बनाएं';

  @override
  String get currency => 'मुद्रा';

  @override
  String get currencyPoweredBy => 'कॉइनगेको द्वारा संचालित';

  @override
  String get currentIndex => 'वर्तमान';

  @override
  String get defaultAccountName => 'एड्रेस 1';

  @override
  String defaultNewAccountName(int addressIndex) {
    return 'खाता $addressIndex';
  }

  @override
  String get defaultWalletName => 'मेरा वॉलेट';

  @override
  String get disablePasswordSheetHeader => 'अक्षम';

  @override
  String get disablePasswordSuccess => 'पासवर्ड अक्षम कर दिया गया है';

  @override
  String get disableWalletPassword => 'वॉलेट पासवर्ड अक्षम करें';

  @override
  String get doContinue => 'जारी रखना';

  @override
  String get donate => 'दान करे';

  @override
  String get donateTo => 'Donate To';

  @override
  String get dontShowAgain => 'दोबारा मत दिखाओ';

  @override
  String emailAction(String email) {
    return 'Email $email';
  }

  @override
  String get emptyCardIntroUtxos =>
      'यह UTXOs टैब है। आपके बटुए में सभी UTXO यहां दिखाई देंगे';

  @override
  String get emptyResult => 'खाली परिणाम';

  @override
  String get emptyWalletName => 'वॉलेट नाम खाली नहीं हो सकता';

  @override
  String get encryptionFailedError => 'वॉलेट पासवर्ड सेट करने में विफल';

  @override
  String get enterAddress => 'एड्रेस दर्ज करें';

  @override
  String get enterAmount => 'राशि दर्ज करें';

  @override
  String get enterFiatValue => 'Enter Fiat Value';

  @override
  String get enterNote => 'नोट दर्ज करें';

  @override
  String get enterPasswordHint => 'अपना पासवर्ड डालें';

  @override
  String get errorMessageCopied => 'त्रुटि संदेश क्लिपबोर्ड पर कॉपी किया गया';

  @override
  String get exampleCardIntro =>
      'यह लेन-देन टैब है। लेन-देन भेजने या प्राप्त करने के बाद, यह यहां दिखाई देगा।';

  @override
  String get export => 'निर्यात';

  @override
  String get fee => 'शुल्क';

  @override
  String get feeBaseUppercase => 'BASE FEE';

  @override
  String feeConfirm(String amount, String coin) {
    return 'शुल्क  $coin $amount';
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
  String get feeTitle => 'शुल्क';

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
  String get fetchingTransactions => 'लेन-देन लाया जा रहा है';

  @override
  String get fingerprintSeedBackup => 'बैकअप गुप्त वाक्यांश को प्रमाणित करें।';

  @override
  String get getStarted => 'Get Started';

  @override
  String get goBackButton => 'वापस जाये';

  @override
  String get gotItButton => 'समझ गया!';

  @override
  String get hideAccountHeader => 'Hide Account?';

  @override
  String get hideAccountText =>
      'Are you sure you want to hide this account? You can re-add it later by tapping the \"Add Account\" button.';

  @override
  String get hintAddressListEmpty => 'शीर्ष दाएं कोने से एड्रेस फ़िल्टर जांचें';

  @override
  String get import => 'आयात';

  @override
  String get importAsLegacyWallet => 'Import as Legacy Wallet';

  @override
  String get importAsStandardWallet => 'Import as Standard Wallet';

  @override
  String get importKpub => 'केवल वाच वॉलेट आयात करें';

  @override
  String get importKpubClipboardError =>
      'क्लिपबोर्ड सामग्री वैध विस्तारित पब्लिक की नहीं है';

  @override
  String get importKpubHint => 'कृपया अपनी विस्तारित पब्लिक की दर्ज करें।';

  @override
  String get importKpubInvalidMessage =>
      'कृपया जांचें कि आपकी विस्तारित पब्लिक की सही ढंग से दर्ज की गई है!';

  @override
  String get importKpubQrCodeError =>
      'QR कोड में वैध विस्तारित पब्लिक की नहीं है';

  @override
  String get importLegacyWalletDetectedDetails =>
      'Do you want to import your wallet in legacy mode?';

  @override
  String get importLegacyWalletDetectedTitle => 'Legacy Wallet Detected';

  @override
  String get importOption12WordsDescription => 'वेब वॉलेट और KDX के साथ संगत';

  @override
  String get importOption12WordsTitle => '12 शब्द गुप्त वाक्यांश आयात करें';

  @override
  String get importOption24WordsDescription => 'CLI वॉलेट और लेजर के साथ संगत';

  @override
  String get importOption24WordsTitle => '24 शब्द गुप्त वाक्यांश आयात करें';

  @override
  String get importOptionKpubDescription =>
      'विस्तारित पब्लिक की का उपयोग करके वॉलेट के संतुलन और लेनदेन की निगरानी करें';

  @override
  String get importOptionKpubTitle => 'केवल वाच वॉलेट आयात करें';

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
  String get importSecretPhrase => 'गुप्त वाक्यांश आयात करें';

  @override
  String get importSecretPhraseHint =>
      'कृपया अपना 24-शब्द गुप्त वाक्यांश नीचे दर्ज करें। प्रत्येक शब्द को एक स्थान से अलग किया जाना चाहिए।';

  @override
  String get importSecretPhraseHintCombo =>
      'कृपया नीचे अपना 12 या 24 शब्दों का गुप्त वाक्यांश दर्ज करें।';

  @override
  String get importSecretPhraseHintLegacy =>
      'कृपया नीचे अपना 12 शब्दों का गुप्त वाक्यांश दर्ज करें।';

  @override
  String get importWallet => 'वॉलेट आयात हैं';

  @override
  String get importWalletAdvancedOptions => 'Advanced Options';

  @override
  String get importWalletDescription => 'कृपया नीचे से एक विकल्प चुनें.';

  @override
  String get indexHeader => 'निर्देशिका';

  @override
  String get instantly => 'तुरन्त';

  @override
  String get insufficientBalance => 'अपर्याप्त शेषराशि';

  @override
  String get insufficientBalanceDetails =>
      'आपके पास इस लेन-देन के लिए पर्याप्त KAS नहीं है';

  @override
  String get invalidAddress => 'गलत गंतव्य एड्रेस';

  @override
  String get invalidAmount => 'अवैध राशि';

  @override
  String get invalidChecksumMessage =>
      'कृपया जांचें कि आपका गुप्त वाक्यांश सही ढंग से दर्ज किया गया है!';

  @override
  String get invalidDestinationAddress => 'अमान्य गंतव्य एड्रेस';

  @override
  String get invalidKpubMessage =>
      'कृपया जांचें कि आपकी विस्तारित पब्लिक की सही ढंग से दर्ज की गई है!';

  @override
  String get invalidPassword => 'अवैध पासवर्ड';

  @override
  String get invalidSecretPhrase => 'Invalid Secret Phrase';

  @override
  String get invalidSecretPhraseConfirmation => 'I know what I\'m doing';

  @override
  String get invalidSecretPhraseDetails =>
      'The Secret Phrase you entered has an invalid checksum.';

  @override
  String get kaspaDevFund => 'kaspa Dev कोष';

  @override
  String get kaspaUriCopied => 'Kaspa URI Copied';

  @override
  String get kaspaUriCopyFailed => 'Failed to copy Kaspa URI';

  @override
  String get kaspaUriInvalid => 'अमान्य Kaspa URI';

  @override
  String get kaspiumWallet => 'कैस्पियम वॉलेट';

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
  String get language => 'भाषा';

  @override
  String get loadingTransactions => 'लेन-देन लोड हो रहे हैं...';

  @override
  String get lockAppSetting => 'लॉन्च पर प्रमाणित करें';

  @override
  String get locked => 'लॉक';

  @override
  String get loggingOutMessage => 'लॉग आउट कर रहा हूं...';

  @override
  String get logout => 'लॉगआउट करें';

  @override
  String get logoutDialogContent =>
      'क्या आप वाकई इस वॉलेट से लॉगआउट करना चाहते हैं?';

  @override
  String get logoutOrSwitchWallet => 'लॉगआउट / स्विच वॉलेट';

  @override
  String get manage => 'मैनेज';

  @override
  String get manualEntry => 'हस्त प्रविष्टि';

  @override
  String get maxSend => 'अधिकतम भेजें';

  @override
  String get missingSecretPhrase => 'Missing Secret Phrase';

  @override
  String get moreInfo => 'More Info';

  @override
  String get networkHeader => 'नेटवर्क';

  @override
  String get newAddress => 'नया एड्रेस';

  @override
  String get newIndex => 'नया';

  @override
  String get newWallet => 'नया वॉलेट';

  @override
  String get nextButton => 'अगला';

  @override
  String get no => 'नहीं';

  @override
  String get noContactsExport => 'निर्यात करने के लिए कोई संपर्क नहीं हैं।';

  @override
  String get noContactsImport => 'आयात करने के लिए कोई संपर्क नहीं मिले।';

  @override
  String get nodeAddress => 'Kaspa नोड';

  @override
  String get nodeDeleteMessage => 'क्या आप आश्वस्त है कि आपको डिलीट करना है?';

  @override
  String get nodeDeleteTitle => 'Kaspa नोड कॉन्फ़िग हटाएं?';

  @override
  String get nodeNameEmpty => 'नोड का नाम खाली नहीं हो सकता';

  @override
  String get nodeNameHint => 'नोड का नाम दर्ज करें';

  @override
  String get nodeNotSyncedException => 'नोड सिंक नहीं हुआ है';

  @override
  String get nodeNoUTXOIndexException => 'नोड में UTXO इंडेक्स नहीं है';

  @override
  String get nodeSecureConnection => 'सुरक्षित संयोजन';

  @override
  String get nodesSheetTitle => 'kaspa नोड्स';

  @override
  String get nodeUrlHint => 'नोड का URL दर्ज करें';

  @override
  String get nodeUrlInvalid => 'अमान्य नोड URL';

  @override
  String get noQrCodeFound => 'कोई QR कोड नहीं मिला';

  @override
  String get noSkipButton => 'नहीं, छोड़ें';

  @override
  String get notAccepted => 'स्वीकार नहीं किया गया';

  @override
  String get noteLabel => 'Note:';

  @override
  String get noUppercase => 'नहीं';

  @override
  String get off => 'बंद';

  @override
  String get on => 'पर';

  @override
  String get optionalLabel => '(Optional)';

  @override
  String get paperWallet => 'पेपर वॉलेट';

  @override
  String get passwordBlank => 'पासवर्ड खाली नहीं हो सकता';

  @override
  String get passwordNoLongerRequiredToOpenParagraph =>
      'अब आपको कैस्पियम खोलने के लिए पासवर्ड की जरूरत नहीं पड़ेगी।';

  @override
  String get passwordsDontMatch => 'पासवर्ड मेल नहीं खाते';

  @override
  String get passwordWillBeRequiredToOpenParagraph =>
      'कैस्पियम खोलने के लिए इस पासवर्ड की आवश्यकता होगी।';

  @override
  String get pasteMnemonicError =>
      'क्लिपबोर्ड सामग्री मान्य गुप्त वाक्यांश नहीं है';

  @override
  String get pending => 'अपूर्ण';

  @override
  String get pinConfirmError => 'पिन एक दूसरे से नहीं मिल रहे';

  @override
  String get pinConfirmTitle => 'अपने पिन की पुष्टि करें';

  @override
  String get pinCreateTitle => 'एक 6 अंकों का पिन बनाएँ';

  @override
  String get pinEnterTitle => 'पिन दर्ज करें';

  @override
  String get pinInvalid => 'गलत पिन दर्ज किया गया';

  @override
  String get pinMethod => 'पिन';

  @override
  String get pinSeedBackup => 'वॉलेट के सीड को बैकअप  के लिए पिन दर्ज करें।';

  @override
  String get preferences => 'प्रेफरेन्सेस';

  @override
  String get privacyPolicy => 'गोपनीयता नीति';

  @override
  String get qrInvalidAddress => 'QR कोड में मान्य गंतव्य नहीं है';

  @override
  String get qrInvalidSeed => 'QR कोड में वैध सीड या प्राइवेट की नहीं है';

  @override
  String get qrMnemonicError => 'QR में एक वैध गुप्त वाक्यांश नहीं है';

  @override
  String get receive => 'प्राप्त करें';

  @override
  String get receiveAddress => 'एड्रेस प्राप्त करें';

  @override
  String get receiveAddressCopied => 'प्राप्त पता कॉपी किया गया है';

  @override
  String get receiveAddressListEmpty => 'प्राप्त एड्रेस सूची खाली है';

  @override
  String get received => 'मिले ';

  @override
  String get receiveIndex => 'सूचकांक प्राप्त करें';

  @override
  String receiveIndexParam(String addressIndex) {
    return 'पाना  $addressIndex';
  }

  @override
  String get removeContact => 'संपर्क हटाएं';

  @override
  String removeContactConfirmation(String contactName) {
    return 'क्या आप वाकई $contactName को संपर्कों में से मिटाना चाहतें हैं?';
  }

  @override
  String get removeWalletAction => 'बटुआ हटाओ';

  @override
  String get removeWalletBiometricsMessage =>
      'वॉलेट हटाने के लिए प्रमाणित करें';

  @override
  String get removeWalletDetail =>
      'इस वॉलेट को हटाने से इस डिवाइस से गुप्त वाक्यांश और वॉलेट से संबंधित सभी डेटा हट जाएगा। यदि गुप्त वाक्यांश का बैकअप नहीं लिया जाता है, तो आप कभी भी अपने फंड तक दोबारा नहीं पहुंच पाएंगे।';

  @override
  String get removeWalletPinMessage => 'वॉलेट निकालने के लिए पिन दर्ज करें';

  @override
  String get removeWalletReassurance =>
      'जब तक आपने गुप्त वाक्यांश का बैकअप लिया है तब तक आपको चिंता करने की कोई बात नहीं है।';

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
      'कैस्पियम खोलने के लिए पासवर्ड की आवश्यकता रखें?';

  @override
  String get restartSetupButton => 'सेटअप को पुनरारंभ करें';

  @override
  String get scanFailedMessage =>
      'स्कैन विफल रहा, कृपया बाद में पुनः प्रयास करें';

  @override
  String get scanMore => 'और अधिक स्कैन करें';

  @override
  String get scanMoreAddresses => 'अधिक एड्रेस के लिए स्कैन करें';

  @override
  String get scannedIndex => 'स्कैन किए गए';

  @override
  String get scanningDescription => 'नए एड्रेस के लिए स्कैन किया जा रहा है...';

  @override
  String get scanningTitle => 'स्कैनिंग';

  @override
  String get scanQrCode => 'क्यूआर कोड स्कैन करें';

  @override
  String get scanQrCodeError => 'QR कोड पार्स करने में विफल';

  @override
  String get secretInfo =>
      'अगली स्क्रीन में, आप अपना गुप्त वाक्यांश देखेंगे। यह आपके फंड तक पहुंचने के लिए एक पासवर्ड है। यह महत्वपूर्ण है कि आप इसका बैकअप लें और इसे कभी किसी के साथ साझा न करें।';

  @override
  String get secretInfoHeader => 'सुरक्षा पहले!';

  @override
  String get secretPhrase => 'गुप्त वाक्यांश';

  @override
  String get secretPhrase12Words => '12 WORDS';

  @override
  String get secretPhrase24Words => '24 WORDS';

  @override
  String get secretWarning =>
      'यदि आप अपना उपकरण खो देते हैं या एप्लिकेशन को अनइंस्टॉल कर देते हैं, तो आपको अपने फंड को पुनर्प्राप्त करने के लिए अपने गुप्त वाक्यांश या सीड की आवश्यकता होगी!';

  @override
  String get securityHeader => 'सुरक्षा';

  @override
  String get seed => 'सीड';

  @override
  String get seedInvalid => 'सीड अमान्य है';

  @override
  String get selectAddress => 'Select Address';

  @override
  String get send => 'भेजें';

  @override
  String get sendConfirm => 'भेजना';

  @override
  String get sendError => 'एक त्रुटि पाई गई। बाद में पुन: प्रयास करें।';

  @override
  String get sending => 'भेजा जा रहा है';

  @override
  String get sendNote => 'टिप्पणी';

  @override
  String get sendToAddressTitle => 'को';

  @override
  String get sendTxProgressDescription =>
      'लेन-देन भेजे जाने तक कृपया प्रतीक्षा करें';

  @override
  String get sendTxProgressTitle => 'लेन-देन भेज रहा है';

  @override
  String get sent => 'भेज दिया गया';

  @override
  String get sentTo => 'Sent to';

  @override
  String get setPassword => 'पासवर्ड सेट करें';

  @override
  String get setPasswordSuccess => 'पासवर्ड सफलतापूर्वक सेट कर दिया गया है';

  @override
  String get settingsHeader => 'सेटिंग्स';

  @override
  String get settingsTransfer => 'पेपर वॉलेट से लोड करें';

  @override
  String get setupFailedMessage => 'कुछ गलत हो गया';

  @override
  String get setWalletPassword => 'वॉलेट पासवर्ड सेट करें';

  @override
  String get shareKaspium => 'शेयर कैपियम';

  @override
  String get shareKaspiumSubject => 'कैस्पियम वॉलेट देखें';

  @override
  String get shareKaspiumText =>
      'कैस्पियम - कास्पा मोबाइल वॉलेट देखें।\nवेबसाइट - kaspium.io';

  @override
  String get somethingWentWrong => 'कुछ गलत हो गया';

  @override
  String get systemDefault => 'सिस्टम डिफ़ॉल्ट';

  @override
  String get tapToHide => 'छिपाने के लिए दबाएँ';

  @override
  String get tapToReveal => 'प्रकट करने के लिए दबाएँ';

  @override
  String get themeDark => 'डार्क थीम';

  @override
  String get themeHeader => 'थीम';

  @override
  String get themeLight => 'लाइट थीम';

  @override
  String get thisWallet => '#यह वॉलेट';

  @override
  String get to => 'के प्रति';

  @override
  String get toAddress => 'एड्रेस को';

  @override
  String get tooManyFailedAttempts => 'खोलने के बहुत से असफल प्रयास।';

  @override
  String get totalValue => 'कुल मूल्य';

  @override
  String get transactionId => 'लेन-देन ID';

  @override
  String get transactionsUppercase => 'लेनदेन';

  @override
  String get transfer => 'ट्रांसफर';

  @override
  String get transferClose => 'विंडो बंद करने के लिए कहीं भी टैप करें।';

  @override
  String transferComplete(String amount) {
    return '$amount KAS सफलतापूर्वक आपके कैपियम वॉलेट में स्थानांतरित कर दी गई है। \n';
  }

  @override
  String transferConfirmInfo(String amount) {
    return '$amount कैपियम के बैलेंस वाले वॉलेट का पता चला है';
  }

  @override
  String get transferConfirmInfoSecond =>
      'फंड ट्रांसफर करने के लिए कन्फर्म दबाएँ \n';

  @override
  String get transferConfirmInfoThird =>
      'स्थानांतरण को पूरा होने में कई सेकंड लग सकते हैं।';

  @override
  String get transferError =>
      'लेन-देन के दौरान एक त्रुटि हुई है। कृपया बाद में पुन: प्रयास करें।';

  @override
  String get transferHeader => 'राशि का ट्रांसफर';

  @override
  String transferIntro(String button) {
    return 'यह प्रक्रिया एक पेपर वॉलेट से आपके कैपियम वॉलेट में फंड ट्रांसफर कर देगी। \n\nशुरू करने के लिए \"$button\" बटन को दबाएँ।';
  }

  @override
  String get transferLoading => 'ट्रांसफर हो रहा है';

  @override
  String get transferManualHint => 'कृपया नीचे सीड दर्ज करें।';

  @override
  String get transferNoFunds => 'इस सीड पर कोई KAS नहीं है';

  @override
  String get transferQrScanError => 'इस QR कोड में वैध सीड नहीं है।';

  @override
  String get transferQrScanHint => 'कैपियम का सीड \nया प्राइवेट की स्कैन करें';

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
  String get unconfirmed => 'अपुष्‍टीकृत';

  @override
  String get unknown => 'अज्ञात';

  @override
  String get unlock => 'खोले';

  @override
  String get unlockBiometrics => 'कैपियम अनलॉक करने के लिए प्रमाणित करें';

  @override
  String get unlockPin => 'कैपियम अनलॉक करने के लिए पिन दर्ज करें';

  @override
  String get utxoSelectionHint => 'Please select more UTXOs';

  @override
  String get utxoSelectionTitle => 'Select UTXOs';

  @override
  String get utxosUppercase => 'UTXOs';

  @override
  String get viewAddress => 'एड्रेस देखें';

  @override
  String get viewTransaction => 'लेन-देन देखें';

  @override
  String get walletAddress => 'Wallet Address';

  @override
  String get walletAddresses => 'वॉलेट एड्रेस';

  @override
  String walletAddressesCopied(String addressType) {
    return 'Wallet $addressType Addresses Copied to Clipboard';
  }

  @override
  String walletAddressesCopyFailed(String addressType) {
    return 'Failed to Copy Wallet $addressType Addresses';
  }

  @override
  String get walletName => 'वॉलेट का नाम';

  @override
  String get walletNameDescription => 'अपने वॉलेट के लिए एक नाम दर्ज करें';

  @override
  String get walletNameHint => 'वॉलेट का नाम';

  @override
  String get walletSetupAddressDiscovery => 'रनिंग एड्रेस डिस्कवरी';

  @override
  String get walletSetupMessage => 'वॉलेट स्थापित करना';

  @override
  String get walletsTitle => 'वॉलेट';

  @override
  String get warning => 'चेतावनी !';

  @override
  String welcomeMessage(String version) {
    return 'स्वागत है!\n\nयह कस्पियम का संस्करण $version है - कस्पा के लिए मोबाइल वॉलेट';
  }

  @override
  String get welcomeText =>
      'कैपियम में आपका स्वागत है। आगे बढ़ने के लिए, आप एक नया वॉलेट बना सकते हैं या एक मौजूदा वॉलेट को आयात कर सकते हैं।';

  @override
  String get yes => 'हाँ';

  @override
  String get yesButton => 'हाँ';

  @override
  String get yesUppercase => 'हाँ';
}
