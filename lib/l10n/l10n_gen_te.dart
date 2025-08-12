// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n_gen.dart';

// ignore_for_file: type=lint

/// The translations for Telugu (`te`).
class AppLocalizationsTe extends AppLocalizations {
  AppLocalizationsTe([String locale = 'te']) : super(locale);

  @override
  String get aboutTopperDescription =>
      'Topper by Uphold is an easy to use fiat-to-crypto onramp that allows users to buy cryptocurencies using a credit/debit card or with a bank account.';

  @override
  String get aboutTopperTitle => 'About Topper';

  @override
  String get accepted => 'ఆమోదించబడిన';

  @override
  String get account => 'ఖాతా';

  @override
  String get accounts => 'ఖాతాలు';

  @override
  String get ackBackedUp =>
      'మీరు మీ రహస్య పదబంధం ని బ్యాకప్ చేశారని మీరు ఖచ్చితంగా అనుకుంటున్నారా?';

  @override
  String get add => 'జోడించు';

  @override
  String get addAccount => 'ఖాతా జోడించండి';

  @override
  String get addContact => 'పరిచయం జోడించడం';

  @override
  String get addingNodeMessage =>
      'node సంప్రదిస్తున్నప్పుడు దయచేసి వేచి ఉండండి';

  @override
  String get addingNodeTitle => 'నోడ్  జోడించడం';

  @override
  String get addNode => 'నోడ్  జోడించండి';

  @override
  String get addNodeFailed => 'kaspa నోడ్  జోడించడంలో విఫలమైంది';

  @override
  String addNodeFailedMessage(String error) {
    return 'విఫలమయ్యారు: $error';
  }

  @override
  String get addNodeSuccess => 'నోడ్  విజయవంతంగా జోడించబడింది';

  @override
  String get address => 'చిరునామా';

  @override
  String get addressCopied => 'చిరునామా కాపీ చేయబడింది';

  @override
  String get addressCopiedFailed => 'చిరునామాను కాపీ చేయడంలో విఫలమైంది';

  @override
  String get addressDiscovery => 'చిరునామా ఆవిష్కరణ';

  @override
  String get addressFilterDialogOptionAllAddresses =>
      'అన్ని చిరునామాలను వీక్షించండి';

  @override
  String get addressFilterDialogOptionNonZeroBalances =>
      'బ్యాలెన్స్‌తో చిరునామాలను వీక్షించండి';

  @override
  String get addressFilterDialogTitle => 'చిరునామా ఫిల్టర్';

  @override
  String get addressHint => 'ఎంటర్ చిరునామా';

  @override
  String get addressMising => 'దయచేసి చిరునామాను నమోదు చేయండి';

  @override
  String get addressShare => 'చిరునామాను పంచుకోండి';

  @override
  String get advancedHeader => 'ఆధునిక';

  @override
  String get amount => 'మొత్తం';

  @override
  String amountConfirm(String amount, String coin) {
    return 'మొత్తం $amount $coin';
  }

  @override
  String get amountMissing => 'దయచేసి ఒక మొత్తాన్ని నమోదు చేయండి';

  @override
  String get amountZero => 'మొత్తం సున్నాగా ఉండకూడదు';

  @override
  String get areYouSure => 'మీరు ఖచ్చితంగా ఉన్నారా?';

  @override
  String get authBiometricMessage => 'వాలెట్‌ని జోడించడానికి ప్రమాణీకరించండి';

  @override
  String get authMethod => 'ప్రమాణీకరణ పద్ధతి';

  @override
  String get authPinMessage => 'వాలెట్ని ని జోడించడానికి పిన్ను నమోదు చేయండి';

  @override
  String get autoLockHeader => 'స్వయంచాలకంగా లాక్ చేయండి';

  @override
  String get available => 'అందుబాటులో ఉంది';

  @override
  String get backupConfirmButton => 'నేను దానిని బ్యాకప్ చేసాను';

  @override
  String get backupSecretPhrase => 'బ్యాకప్ రహస్య పదబంధం';

  @override
  String get balance => 'సంతులనం';

  @override
  String get biometricsMethod => 'బయోమెట్రిక్స్';

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
  String get blockExplorer => 'బ్లాక్ ఎక్స్‌ప్లోరర్';

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
  String get cancel => 'రద్దు చేయండి';

  @override
  String get change => 'మార్పు';

  @override
  String get changeAddress => 'చిరునామా మార్చండి';

  @override
  String get changeAddressCopied => 'చిరునామా మార్చండి కాపీ చేయబడింది';

  @override
  String get changeAddressListEmpty => 'చిరునామా మార్పు జాబితా ఖాళీగా ఉంది';

  @override
  String get changeIndex => 'మార్పు సూచిక';

  @override
  String changeIndexParam(String addressIndex) {
    return 'మార్పు  $addressIndex';
  }

  @override
  String get checkCameraPermission => 'దయచేసి కెమెరా అనుమతులను తనిఖీ చేయండి';

  @override
  String get clipboardEmpty => 'క్లిప్‌బోర్డ్ ఖాళీగా ఉంది';

  @override
  String get close => 'మూసేయ్';

  @override
  String get closeUppercased => 'మూసేయ్';

  @override
  String get compoundFailure => 'లావాదేవీలను సమ్మేళనం చేయడంలో విఫలమైంది';

  @override
  String get compoundingMessage => 'దయచేసి వేచి ఉండండి...';

  @override
  String get compoundingUtxos => 'కాంపౌండింగ్ లావాదేవీలు';

  @override
  String get compoundRequired => 'Compound required';

  @override
  String get compoundRequiredDescription =>
      'The transaction amount requires too many UTXOs. Compounding will reduce the number of UTXOs.';

  @override
  String get compoundSuccess => 'సమ్మేళనం విజయవంతమైంది';

  @override
  String get compoundTooFewUtxos => 'కనీసం రెండు UTXOలు అవసరం';

  @override
  String get compoundUppercased => 'సమ్మేళనం';

  @override
  String get compoundUtxos => 'సమ్మేళనం లావాదేవీలు';

  @override
  String get compoundUtxosConfirmation => 'సమ్మేళనం లావాదేవీలు?';

  @override
  String get compoundUtxosDescription => 'బహుళ UTXOలను ఒకటిగా కలపండి';

  @override
  String get confirm => 'నిర్ధారించండి';

  @override
  String confirmations(String confirmations) {
    return '$confirmations నిర్ధారణలు';
  }

  @override
  String get confirmed => 'ధ్రువీకరించారు';

  @override
  String get confirming => 'నిర్ధారిస్తూ';

  @override
  String get confirmPasswordHint => 'పాస్వర్డ్ను నిర్ధారించండి';

  @override
  String contactAdded(String contactName) {
    return '$contactName పరిచయాలకు జోడించబడింది';
  }

  @override
  String contactAddressCopied(String address) {
    return '$address చిరునామా కాపీ చేయబడింది';
  }

  @override
  String get contactExists => 'సంప్రదింపు ఇప్పటికే ఉంది';

  @override
  String get contactHeader => 'సంప్రదింపు';

  @override
  String get contactInvalid => 'చెల్లని సంప్రదింపు పేరు';

  @override
  String get contactNameHint => 'పేరును నమోదు చేయండి @';

  @override
  String get contactNameMissing => 'ఈ పరిచయం కోసం ఒక పేరును ఎంచుకోండి';

  @override
  String contactRemoved(String contactName) {
    return '$contactName సంప్రదింపు పేరు తీసివేయబడింది!';
  }

  @override
  String get contactsHeader => 'సంప్రదింపులు';

  @override
  String get contactsImportErr => 'సంప్రదింపులు దిగుమతి చేయడంలో విఫలమైంది';

  @override
  String contactsImportSuccess(String noContacts) {
    return 'పరిచయాలు విజయవంతంగా దిగుమతి చేయబడ్డాయి $noContacts పరిచయాలు';
  }

  @override
  String get contactSupport => 'Contact Support';

  @override
  String get copied => 'కాపీ చేయబడింది';

  @override
  String get copy => 'కాపీ';

  @override
  String get copyAddress => 'చిరునామా కాపీ';

  @override
  String get copyErrorButton => 'కాపీ లోపం';

  @override
  String get copyKpub => 'Copy Kpub';

  @override
  String get createAPasswordHeader => 'ఒక పాస్వర్డ్ను సృష్టించండి.';

  @override
  String get createPasswordFirstParagraph =>
      'మీ వాలెట్‌కు అదనపు భద్రతను జోడించడానికి మీరు పాస్‌వర్డ్‌ను సృష్టించవచ్చు.';

  @override
  String get createPasswordHint => 'ఒక పాస్వర్డ్ను సృష్టించండి';

  @override
  String get createPasswordSecondParagraph =>
      'పాస్‌వర్డ్ ఐచ్ఛికం మరియు మీ వాలెట్ మీ పిన్ లేదా బయోమెట్రిక్‌లతో సంబంధం లేకుండా రక్షించబడుతుంది.';

  @override
  String get createPasswordSheetHeader => 'సృష్టించు';

  @override
  String get currency => 'కరెన్సీ';

  @override
  String get currencyPoweredBy => 'CoinGecko ద్వారా ఆధారితం';

  @override
  String get currentIndex => 'ప్రస్తుత';

  @override
  String get defaultAccountName => 'చిరునామా 1';

  @override
  String defaultNewAccountName(int addressIndex) {
    return 'అందుకుంటారు $addressIndex';
  }

  @override
  String get defaultWalletName => 'నా వాలెట్';

  @override
  String get disablePasswordSheetHeader => 'డిసేబుల్';

  @override
  String get disablePasswordSuccess => 'పాస్వర్డ్ నిలిపివేయబడింది';

  @override
  String get disableWalletPassword => 'వాలెట్ పాస్‌వర్డ్‌ని నిలిపివేయండి';

  @override
  String get doContinue => 'కొనసాగుతుంది';

  @override
  String get donate => 'దానం చేయండి';

  @override
  String get donateTo => 'Donate To';

  @override
  String get dontShowAgain => 'మళ్లీ చూపించవద్దు';

  @override
  String emailAction(String email) {
    return 'Email $email';
  }

  @override
  String get emptyCardIntroUtxos =>
      'ఇది UTXOs ట్యాబ్. మీ వాలెట్‌లోని అన్ని UTXOలు ఇక్కడ కనిపిస్తాయి';

  @override
  String get emptyResult => 'ఖాళీ ఫలితం';

  @override
  String get emptyWalletName => 'వాలెట్ పేరు ఖాళీగా ఉండకూడదు';

  @override
  String get encryptionFailedError =>
      'వాలెట్ పాస్‌వర్డ్‌ని సెట్ చేయడంలో విఫలమైంది';

  @override
  String get enterAddress => 'చిరునామాను నమోదు చేయండి';

  @override
  String get enterAmount => 'మొత్తాన్ని నమోదు చేయండి';

  @override
  String get enterFiatValue => 'Enter Fiat Value';

  @override
  String get enterNote => 'గమనికను నమోదు చేయండి';

  @override
  String get enterPasswordHint => 'మొత్తాన్ని నమోదు చేయండి';

  @override
  String get errorMessageCopied =>
      'లోపం సందేశం క్లిప్‌బోర్డ్‌కి కాపీ చేయబడింది';

  @override
  String get exampleCardIntro =>
      'ఇది లావాదేవీల ట్యాబ్. మీరు లావాదేవీని పంపిన తర్వాత లేదా స్వీకరించిన తర్వాత, అది ఇక్కడ చూపబడుతుంది.';

  @override
  String get export => 'ఎగుమతి';

  @override
  String get fee => 'ఫీజు';

  @override
  String get feeBaseUppercase => 'BASE FEE';

  @override
  String feeConfirm(String amount, String coin) {
    return 'ఫీజు $amount $coin';
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
  String get feeTitle => 'ఫీజు';

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
  String get fetchingTransactions => 'లావాదేవీలను పొందుతోంది';

  @override
  String get fingerprintSeedBackup =>
      'బ్యాకప్ రహస్య పదబంధానికి ప్రమాణీకరించండి';

  @override
  String get getStarted => 'Get Started';

  @override
  String get goBackButton => 'వెనక్కి వెళ్ళు';

  @override
  String get gotItButton => 'దొరికింది!';

  @override
  String get hideAccountHeader => 'Hide Account?';

  @override
  String get hideAccountText =>
      'Are you sure you want to hide this account? You can re-add it later by tapping the \"Add Account\" button.';

  @override
  String get hintAddressListEmpty =>
      'ఎగువ కుడి మూలలో నుండి చిరునామా ఫిల్టర్‌ని తనిఖీ చేయండి';

  @override
  String get import => 'దిగుమతి';

  @override
  String get importAsLegacyWallet => 'Import as Legacy Wallet';

  @override
  String get importAsStandardWallet => 'Import as Standard Wallet';

  @override
  String get importKpub => 'వాచ్ మాత్రమే వాలెట్‌ని దిగుమతి చేయండి';

  @override
  String get importKpubClipboardError =>
      'క్లిప్‌బోర్డ్ కంటెంట్ చెల్లుబాటు అయ్యే పొడిగించిన పబ్లిక్ కీ కాదు';

  @override
  String get importKpubHint =>
      'దయచేసి మీ విస్తరించిన పబ్లిక్ కీని నమోదు చేయండి.';

  @override
  String get importKpubInvalidMessage =>
      'దయచేసి మీ పొడిగించిన పబ్లిక్ కీ సరిగ్గా నమోదు చేయబడిందో లేదో తనిఖీ చేయండి!';

  @override
  String get importKpubQrCodeError =>
      'QR కోడ్ చెల్లుబాటు అయ్యే పొడిగించిన పబ్లిక్ కీని కలిగి ఉండదు';

  @override
  String get importLegacyWalletDetectedDetails =>
      'Do you want to import your wallet in legacy mode?';

  @override
  String get importLegacyWalletDetectedTitle => 'Legacy Wallet Detected';

  @override
  String get importOption12WordsDescription =>
      'వెబ్ వాలెట్ మరియు KDXతో అనుకూలమైనది';

  @override
  String get importOption12WordsTitle =>
      '12 పదాల రహస్య పదబంధాన్ని దిగుమతి చేయండి';

  @override
  String get importOption24WordsDescription =>
      'Cli Wallet మరియు లెడ్జర్‌తో అనుకూలమైనది';

  @override
  String get importOption24WordsTitle =>
      '24 పదాల రహస్య పదబంధాన్ని దిగుమతి చేయండి';

  @override
  String get importOptionKpubDescription =>
      'విస్తరించిన పబ్లిక్ కీని ఉపయోగించి వాలెట్ బ్యాలెన్స్ మరియు లావాదేవీలను పర్యవేక్షించండి';

  @override
  String get importOptionKpubTitle => 'వాచ్ మాత్రమే వాలెట్‌ని దిగుమతి చేయండి';

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
  String get importSecretPhrase => 'రహస్య పదబంధాన్ని దిగుమతి చేయండి';

  @override
  String get importSecretPhraseHint =>
      'దయచేసి మీ 24 పదాల రహస్య పదబంధాన్ని దిగువన నమోదు చేయండి.';

  @override
  String get importSecretPhraseHintCombo =>
      'దయచేసి మీ 12 లేదా 24 పదాల రహస్య పదబంధాన్ని దిగువన నమోదు చేయండి.';

  @override
  String get importSecretPhraseHintLegacy =>
      'దయచేసి మీ 12 పదాల రహస్య పదబంధాన్ని దిగువన నమోదు చేయండి.';

  @override
  String get importWallet => 'వాలెట్‌ని దిగుమతి చేయండి';

  @override
  String get importWalletAdvancedOptions => 'Advanced Options';

  @override
  String get importWalletDescription => 'దయచేసి దిగువన ఒక ఎంపికను ఎంచుకోండి.';

  @override
  String get indexHeader => 'సూచిక';

  @override
  String get instantly => 'తక్షణమే';

  @override
  String get insufficientBalance => 'సరిపోని బ్యాలెన్స్';

  @override
  String get insufficientBalanceDetails =>
      'ఈ లావాదేవీ కోసం మీ వద్ద తగినంత KAS లేదు';

  @override
  String get invalidAddress => 'నమోదు చేసిన చిరునామా చెల్లదు';

  @override
  String get invalidAmount => 'చెల్లని మొత్తం';

  @override
  String get invalidChecksumMessage =>
      'దయచేసి మీ రహస్య పదబంధాన్ని తనిఖీ చేయండి\n సరిగ్గా నమోదు చేయబడింది!!';

  @override
  String get invalidDestinationAddress => 'గమ్యస్థాన చిరునామా చెల్లదు';

  @override
  String get invalidKpubMessage =>
      'దయచేసి మీ పొడిగించిన పబ్లిక్ కీ సరిగ్గా నమోదు చేయబడిందో లేదో తనిఖీ చేయండి!';

  @override
  String get invalidPassword => 'చెల్లని పాస్వర్డ్';

  @override
  String get invalidSecretPhrase => 'Invalid Secret Phrase';

  @override
  String get invalidSecretPhraseConfirmation => 'I know what I\'m doing';

  @override
  String get invalidSecretPhraseDetails =>
      'The Secret Phrase you entered has an invalid checksum.';

  @override
  String get kaspaDevFund => 'కస్పా Dev ఫండ్';

  @override
  String get kaspaUriCopied => 'Kaspa URI Copied';

  @override
  String get kaspaUriCopyFailed => 'Failed to copy Kaspa URI';

  @override
  String get kaspaUriInvalid => 'చెల్లని Kaspa URI';

  @override
  String get kaspiumWallet => 'కాస్పియం వాలెట్';

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
  String get language => 'భాష';

  @override
  String get loadingTransactions => 'లావాదేవీలను లోడ్ చేస్తోంది...';

  @override
  String get lockAppSetting => 'ప్రారంభించినప్పుడు ప్రమాణీకరించండి';

  @override
  String get locked => 'లాక్ చేయబడింది';

  @override
  String get loggingOutMessage => 'లాగ్ అవుట్ అవుతోంది...';

  @override
  String get logout => 'లాగ్అవుట్';

  @override
  String get logoutDialogContent =>
      'మీరు ఖచ్చితంగా ఈ వాలెట్ నుండి లాగ్ అవుట్ చేయాలనుకుంటున్నారా?';

  @override
  String get logoutOrSwitchWallet => 'లాగ్ అవుట్ / స్విచ్ వాలెట్';

  @override
  String get manage => 'నిర్వహించడానికి';

  @override
  String get manualEntry => 'మాన్యువల్ ఎంట్రీ';

  @override
  String get maxSend => 'గరిష్టంగా పంపండి';

  @override
  String get missingSecretPhrase => 'Missing Secret Phrase';

  @override
  String get moreInfo => 'More Info';

  @override
  String get networkHeader => 'నెట్‌వర్క్';

  @override
  String get newAddress => 'కొత్త చిరునామా';

  @override
  String get newIndex => 'కొత్త';

  @override
  String get newWallet => 'కొత్త వాలెట్';

  @override
  String get nextButton => 'తరువాత';

  @override
  String get no => 'లేదు';

  @override
  String get noContactsExport => 'ఎగుమతి చేయడానికి పరిచయాలు ఏవీ లేవు';

  @override
  String get noContactsImport => 'దిగుమతి చేయడానికి కొత్త పరిచయాలు లేవు';

  @override
  String get nodeAddress => 'kaspa నోడ్';

  @override
  String get nodeDeleteMessage => 'మీరు తొలగించాలనుకుంటున్నారా ఖచ్చితంగా?';

  @override
  String get nodeDeleteTitle => 'Kaspa నోడ్ కాన్ఫిగర్‌ని తొలగించాలా?';

  @override
  String get nodeNameEmpty => 'నోడ్ పేరు ఖాళీగా ఉండకూడదు';

  @override
  String get nodeNameHint => 'నోడ్ పేరును నమోదు చేయండి';

  @override
  String get nodeNotSyncedException => 'నోడ్ సమకాలీకరించబడలేదు';

  @override
  String get nodeNoUTXOIndexException => 'నోడ్‌లో UTXO సూచిక లేదు';

  @override
  String get nodeSecureConnection => 'సురక్షిత కనెక్షన్';

  @override
  String get nodesSheetTitle => 'Kaspa నోడ్స్';

  @override
  String get nodeUrlHint => 'నోడ్ urlని నమోదు చేయండి';

  @override
  String get nodeUrlInvalid => 'చెల్లని నోడ్ URL';

  @override
  String get noQrCodeFound => 'QR కోడ్ కనుగొనబడలేదు';

  @override
  String get noSkipButton => 'లేదు, దాటవేయి';

  @override
  String get notAccepted => 'అంగీకరించలేదు';

  @override
  String get noteLabel => 'Note:';

  @override
  String get noUppercase => 'లేదు';

  @override
  String get off => 'ఆఫ్';

  @override
  String get on => 'పై';

  @override
  String get optionalLabel => '(Optional)';

  @override
  String get paperWallet => 'పేపర్ వాలెట్';

  @override
  String get passwordBlank => 'పాస్‌వర్డ్ ఖాళీగా ఉండకూడదు';

  @override
  String get passwordNoLongerRequiredToOpenParagraph =>
      'ఈ వాలెట్‌ని తెరవడానికి మీకు పాస్‌వర్డ్ అవసరం లేదు.';

  @override
  String get passwordsDontMatch => 'గుత్త పదములు సరి పోవట్లేదు';

  @override
  String get passwordWillBeRequiredToOpenParagraph =>
      'ఈ వాలెట్‌ని తెరవడానికి ఈ పాస్‌వర్డ్ అవసరం.';

  @override
  String get pasteMnemonicError =>
      'క్లిప్‌బోర్డ్ కంటెంట్ చెల్లుబాటు అయ్యే రహస్య పదబంధం కాదు';

  @override
  String get pending => 'పెండింగ్‌లో ఉంది';

  @override
  String get pinConfirmError => 'పిన్స్ సరిపోలడం లేదు';

  @override
  String get pinConfirmTitle => 'మీ పిన్ను నిర్ధారించండి';

  @override
  String get pinCreateTitle => '6 అంకెల పిన్‌ను సృష్టించండి';

  @override
  String get pinEnterTitle => 'పిన్ నమోదు చేయండి';

  @override
  String get pinInvalid => 'చెల్లని పిన్ నమోదు చేయబడింది';

  @override
  String get pinMethod => 'పిన్';

  @override
  String get pinSeedBackup =>
      'రహస్య పదబంధాన్ని బ్యాకప్ చేయడానికి పిన్‌ని నమోదు చేయండి';

  @override
  String get preferences => 'ప్రాధాన్యతలు';

  @override
  String get privacyPolicy => 'గోప్యతా విధానం';

  @override
  String get qrInvalidAddress =>
      'QR కోడ్ చెల్లుబాటు అయ్యే చిరునామాను కలిగి లేదు';

  @override
  String get qrInvalidSeed =>
      'QR కోడ్ చెల్లుబాటు అయ్యే Seed లేదా ప్రైవేట్ కీని కలిగి ఉండదు';

  @override
  String get qrMnemonicError =>
      'QR కోడ్ చెల్లుబాటు అయ్యే రహస్య పదబంధాన్ని కలిగి లేదు';

  @override
  String get receive => 'స్వీకరించండి';

  @override
  String get receiveAddress => 'చిరునామాను స్వీకరించండి';

  @override
  String get receiveAddressCopied => 'కాపీ చేయబడిన చిరునామాను స్వీకరించండి';

  @override
  String get receiveAddressListEmpty =>
      'స్వీకరించే చిరునామా జాబితా ఖాళీగా ఉంది';

  @override
  String get received => 'అందుకుంది';

  @override
  String get receiveIndex => 'ఇండెక్స్ స్వీకరించండి';

  @override
  String receiveIndexParam(String addressIndex) {
    return 'అందుకుంటారు $addressIndex';
  }

  @override
  String get removeContact => 'పరిచయాన్ని తీసివేయండి';

  @override
  String removeContactConfirmation(String contactName) {
    return 'మీరు తొలగించాలనుకుంటున్నారా ఖచ్చితంగా $contactName?';
  }

  @override
  String get removeWalletAction => 'వాలెట్ తొలగించండి';

  @override
  String get removeWalletBiometricsMessage =>
      'వాలెట్‌ని తీసివేయడానికి ప్రమాణీకరించండి';

  @override
  String get removeWalletDetail =>
      'ఈ వాలెట్‌ని తీసివేయడం వలన ఈ పరికరం నుండి రహస్య పదబంధాన్ని మరియు మొత్తం వాలెట్-సంబంధిత డేటా తీసివేయబడుతుంది. రహస్య పదబంధాన్ని బ్యాకప్ చేయకపోతే, మీరు మీ నిధులను మళ్లీ యాక్సెస్ చేయలేరు.';

  @override
  String get removeWalletPinMessage =>
      'వాలెట్‌ని తీసివేయడానికి పిన్‌ను నమోదు చేయండి';

  @override
  String get removeWalletReassurance =>
      'మీరు రహస్య పదబంధాన్ని బ్యాకప్ చేసినంత కాలం మీరు చింతించాల్సిన పనిలేదు.';

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
      'ఈ వాలెట్‌ని తెరవడానికి పాస్‌వర్డ్ కావాలా?';

  @override
  String get restartSetupButton => 'సెటప్‌ని పునఃప్రారంభించండి';

  @override
  String get scanFailedMessage =>
      'స్కాన్ విఫలమైంది, దయచేసి తర్వాత మళ్లీ ప్రయత్నించండి';

  @override
  String get scanMore => 'మరింత స్కాన్ చేయండి';

  @override
  String get scanMoreAddresses => 'మరిన్ని చిరునామాల కోసం స్కాన్ చేయండి';

  @override
  String get scannedIndex => 'స్కాన్ చేశారు';

  @override
  String get scanningDescription => 'కొత్త చిరునామాల కోసం స్కాన్ చేస్తోంది...';

  @override
  String get scanningTitle => 'స్కానింగ్';

  @override
  String get scanQrCode => 'QR కోడ్‌ని స్కాన్ చేయండి';

  @override
  String get scanQrCodeError => 'qr కోడ్‌ని స్కాన్ చేయండి';

  @override
  String get secretInfo =>
      'తదుపరి స్క్రీన్‌లో, మీరు మీ రహస్య పదబంధాన్ని చూస్తారు. ఇది మీ నిధులను యాక్సెస్ చేయడానికి పాస్‌వర్డ్. మీరు దీన్ని బ్యాకప్ చేయడం మరియు ఎవరితోనూ భాగస్వామ్యం చేయకపోవడం చాలా ముఖ్యం.';

  @override
  String get secretInfoHeader => 'భధ్రతేముందు';

  @override
  String get secretPhrase => 'రహస్య పదబంధం';

  @override
  String get secretPhrase12Words => '12 WORDS';

  @override
  String get secretPhrase24Words => '24 WORDS';

  @override
  String get secretWarning =>
      'మీరు మీ పరికరాన్ని పోగొట్టుకున్నా లేదా అప్లికేషన్‌ను అన్‌ఇన్‌స్టాల్ చేసినా, మీ నిధులను తిరిగి పొందడానికి మీకు మీ రహస్య పదబంధం అవసరం!';

  @override
  String get securityHeader => 'భద్రత';

  @override
  String get seed => 'Seed';

  @override
  String get seedInvalid => 'Seed చెల్లదు';

  @override
  String get selectAddress => 'Select Address';

  @override
  String get send => 'పంపండి';

  @override
  String get sendConfirm => 'పంపండి';

  @override
  String get sendError => 'లోపం సంభవించింది. దయచేసి మళ్లీ ప్రయత్నించండి';

  @override
  String get sending => 'పంపండి';

  @override
  String get sendNote => 'గమనిక';

  @override
  String get sendToAddressTitle => 'కు';

  @override
  String get sendTxProgressDescription =>
      'లావాదేవీ పంపబడే వరకు దయచేసి వేచి ఉండండి';

  @override
  String get sendTxProgressTitle => 'లావాదేవీని పంపుతోంది';

  @override
  String get sent => 'పంపారు';

  @override
  String get sentTo => 'Sent to';

  @override
  String get setPassword => 'పాస్వర్డ్ను సెట్ చేయండి';

  @override
  String get setPasswordSuccess => 'వాలెట్ పాస్‌వర్డ్ సెట్ చేయబడింది';

  @override
  String get settingsHeader => 'సెట్టింగులు';

  @override
  String get settingsTransfer => 'పేపర్ వాలెట్ నుండి లోడ్ చేయండి';

  @override
  String get setupFailedMessage => 'ఎక్కడో తేడ జరిగింది';

  @override
  String get setWalletPassword => 'వాలెట్ పాస్‌వర్డ్‌ని సెట్ చేయండి';

  @override
  String get shareKaspium => 'కాస్పియం యాప్‌ను భాగస్వామ్యం చేయండి';

  @override
  String get shareKaspiumSubject => 'కాస్పియం వాలెట్‌ని తనిఖీ చేయండి';

  @override
  String get shareKaspiumText =>
      'కాస్పియం - Kaspa మొబైల్ వాలెట్‌ని తనిఖీ చేయండి.\nవెబ్సైట్ - kaspium.io';

  @override
  String get somethingWentWrong => 'ఎక్కడో తేడ జరిగింది';

  @override
  String get systemDefault => 'సిస్టమ్ డిఫాల్ట్';

  @override
  String get tapToHide => 'దాచడానికి నొక్కండి';

  @override
  String get tapToReveal => 'బహిర్గతం చేయడానికి నొక్కండి';

  @override
  String get themeDark => 'చీకటి థీమ్';

  @override
  String get themeHeader => 'థీమ్';

  @override
  String get themeLight => 'కాంతి థీమ్';

  @override
  String get thisWallet => '#ఈ వాలెట్';

  @override
  String get to => 'కు';

  @override
  String get toAddress => 'చిరునామాకు';

  @override
  String get tooManyFailedAttempts =>
      'చాలా ఎక్కువ అన్‌లాక్ ప్రయత్నాలు విఫలమయ్యాయి.';

  @override
  String get totalValue => 'మొత్తం విలువ';

  @override
  String get transactionId => 'లావాదేవి ఐడి';

  @override
  String get transactionsUppercase => 'లావాదేవీలు';

  @override
  String get transfer => 'బదిలీ';

  @override
  String get transferClose => 'విండోను మూసివేయడానికి ఎక్కడైనా నొక్కండి.';

  @override
  String transferComplete(String amount) {
    return '$amount KAS మీ కాస్పియం వాలెట్కి విజయవంతంగా బదిలీ చేయబడింది.\n';
  }

  @override
  String transferConfirmInfo(String amount) {
    return '$amount KAS బ్యాలెన్స్ ఉన్న వాలెట్ కనుగొనబడింది.';
  }

  @override
  String get transferConfirmInfoSecond =>
      'నిధులను బదిలీ చేయడానికి నిర్ధారించు నొక్కండి.\n';

  @override
  String get transferConfirmInfoThird =>
      'బదిలీ పూర్తి కావడానికి కొన్ని సెకన్లు పట్టవచ్చు.';

  @override
  String get transferError =>
      'బదిలీ సమయంలో లోపం సంభవించింది. దయచేసి తర్వాత మళ్లీ ప్రయత్నించండి.';

  @override
  String get transferHeader => 'నిధులను బదిలీ చేయండి';

  @override
  String transferIntro(String button) {
    return 'ఈ ప్రక్రియ పేపర్ వాలెట్ నుండి మీ కాస్పియం వాలెట్‌కి నిధులను బదిలీ చేస్తుంది.\n\nప్రారంభించడానికి \"$button\" బటన్‌ను నొక్కండి.';
  }

  @override
  String get transferLoading => 'బదిలీ చేయడం';

  @override
  String get transferManualHint => 'దయచేసి క్రింద Seed నమోదు చేయండి';

  @override
  String get transferNoFunds => 'ఈ Seedలో KAS ఏదీ లేదు';

  @override
  String get transferQrScanError => 'ఈ QR కోడ్‌లో చెల్లుబాటు అయ్యే Seed లేదు.';

  @override
  String get transferQrScanHint => 'స్కాన్ చేయండి Kaspa\nSeed లేదా ప్రైవేట్ కీ';

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
  String get unconfirmed => 'ధృవీకరించబడలేదు';

  @override
  String get unknown => 'తెలియని';

  @override
  String get unlock => 'అన్‌లాక్ చేయండి';

  @override
  String get unlockBiometrics => 'వాలెట్‌ని అన్‌లాక్ చేయడానికి ప్రమాణీకరించండి';

  @override
  String get unlockPin => 'వాలెట్‌ని అన్‌లాక్ చేయడానికి పిన్‌ను నమోదు చేయండి';

  @override
  String get utxoSelectionHint => 'Please select more UTXOs';

  @override
  String get utxoSelectionTitle => 'Select UTXOs';

  @override
  String get utxosUppercase => 'UTXOs';

  @override
  String get viewAddress => 'చిరునామాను వీక్షించండి';

  @override
  String get viewTransaction => 'లావాదేవీని వీక్షించండి';

  @override
  String get walletAddress => 'Wallet Address';

  @override
  String get walletAddresses => 'వాలెట్ చిరునామాలు';

  @override
  String walletAddressesCopied(String addressType) {
    return 'Wallet $addressType Addresses Copied to Clipboard';
  }

  @override
  String walletAddressesCopyFailed(String addressType) {
    return 'Failed to Copy Wallet $addressType Addresses';
  }

  @override
  String get walletName => 'వాలెట్ పేరు';

  @override
  String get walletNameDescription => 'మీ వాలెట్ కోసం పేరును నమోదు చేయండి';

  @override
  String get walletNameHint => 'వాలెట్ పేరు';

  @override
  String get walletSetupAddressDiscovery =>
      'చిరునామా డిస్కవరీని అమలు చేస్తోంది';

  @override
  String get walletSetupMessage => 'వాలెట్‌ని సెటప్ చేస్తోంది';

  @override
  String get walletsTitle => 'వాలెట్లు';

  @override
  String get warning => 'హెచ్చరిక';

  @override
  String welcomeMessage(String version) {
    return 'స్వాగతం!\n\nఇది కాస్పియం యొక్క వెర్షన్ $version - Kaspa కోసం మొబైల్ వాలెట్';
  }

  @override
  String get welcomeText =>
      'కాస్పియంకు స్వాగతం. ప్రారంభించడానికి, మీరు కొత్త వాలెట్‌ని సృష్టించవచ్చు లేదా ఇప్పటికే ఉన్న దాన్ని దిగుమతి చేసుకోవచ్చు.';

  @override
  String get yes => 'అవును';

  @override
  String get yesButton => 'అవును';

  @override
  String get yesUppercase => 'అవును';
}
