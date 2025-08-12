// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n_gen.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get aboutTopperDescription =>
      'Topper by Uphold is an easy to use fiat-to-crypto onramp that allows users to buy cryptocurencies using a credit/debit card or with a bank account.';

  @override
  String get aboutTopperTitle => 'About Topper';

  @override
  String get accepted => 'accepted';

  @override
  String get account => '계정';

  @override
  String get accounts => '계정';

  @override
  String get ackBackedUp => '비밀 문구를 백업했는지 확실합니까?';

  @override
  String get add => '추가';

  @override
  String get addAccount => '계정 추가';

  @override
  String get addContact => '연락처 추가';

  @override
  String get addingNodeMessage => '노드와 통신하는 동안 잠시 기다려주세요';

  @override
  String get addingNodeTitle => '노드 추가 중';

  @override
  String get addNode => '노드 추가';

  @override
  String get addNodeFailed => 'Kaspa 노드 추가 실패';

  @override
  String addNodeFailedMessage(String error) {
    return '$error';
  }

  @override
  String get addNodeSuccess => '노드 추가 성공했습니다';

  @override
  String get address => '주소';

  @override
  String get addressCopied => '주소가 복사되었습니다 ';

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
  String get addressHint => '주소를 입력하세요';

  @override
  String get addressMising => '주소를 입력하세요';

  @override
  String get addressShare => '주소 공유하기';

  @override
  String get advancedHeader => '고급';

  @override
  String get amount => '금액';

  @override
  String amountConfirm(String amount, String coin) {
    return '금액 $amount $coin';
  }

  @override
  String get amountMissing => '금액을 입력하세요';

  @override
  String get amountZero => '금액은 0이 될 수 없습니다';

  @override
  String get areYouSure => '확실합니까?';

  @override
  String get authBiometricMessage => '지갑을 추가하려면 인증하세요';

  @override
  String get authMethod => '인증 방법';

  @override
  String get authPinMessage => '지갑을 추가하려면 PIN을 입력하세요';

  @override
  String get autoLockHeader => '자동 잠금';

  @override
  String get available => '사용 가능';

  @override
  String get backupConfirmButton => '백업을 했습니다';

  @override
  String get backupSecretPhrase => '비밀 문구를 백업';

  @override
  String get balance => 'Balance';

  @override
  String get biometricsMethod => '생체 인식';

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
  String get blockExplorer => '블록 탐색기';

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
  String get cancel => '취소';

  @override
  String get change => '변경';

  @override
  String get changeAddress => '주소 변경';

  @override
  String get changeAddressCopied => '주소 변경이 복사되었습니다';

  @override
  String get changeAddressListEmpty => 'Change address list is empty';

  @override
  String get changeIndex => '인덱스 변경';

  @override
  String changeIndexParam(String addressIndex) {
    return '$addressIndex 변경';
  }

  @override
  String get checkCameraPermission => '카메라 권한을 확인하세요';

  @override
  String get clipboardEmpty => '클립보드가 비어 있습니다';

  @override
  String get close => '닫기';

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
  String get confirm => '확인';

  @override
  String confirmations(String confirmations) {
    return '$confirmations 확인 완료';
  }

  @override
  String get confirmed => '확인 완료';

  @override
  String get confirming => '확인 중입니다';

  @override
  String get confirmPasswordHint => '비밀번호 확인';

  @override
  String contactAdded(String contactName) {
    return '$contactName 님이 연락처에 추가되었습니다.';
  }

  @override
  String contactAddressCopied(String address) {
    return '$address  주소가 복사되었습니다';
  }

  @override
  String get contactExists => '이미 존재하는 연락처';

  @override
  String get contactHeader => '연락처';

  @override
  String get contactInvalid => '잘못된 연락처 입력';

  @override
  String get contactNameHint => '이름 입력 @';

  @override
  String get contactNameMissing => '내보낼 연락처가 존재하지 않습니다.';

  @override
  String contactRemoved(String contactName) {
    return '$contactName 님이 연락처에서 삭제되었습니다!';
  }

  @override
  String get contactsHeader => '연락처';

  @override
  String get contactsImportErr => '연락처를 가져오지 못했습니다.';

  @override
  String contactsImportSuccess(String noContacts) {
    return '$noContacts개의 연락처를 성공적으로 가져왔습니다.';
  }

  @override
  String get contactSupport => 'Contact Support';

  @override
  String get copied => '복사되었습니다';

  @override
  String get copy => '복사하기';

  @override
  String get copyAddress => '주소 복사';

  @override
  String get copyErrorButton => '복사 오류';

  @override
  String get copyKpub => 'Copy Kpub';

  @override
  String get createAPasswordHeader => '비밀번호를 생성하세요';

  @override
  String get createPasswordFirstParagraph => '지갑에 추가적인 보안을 위해 비밀번호를 생성할 수 있습니다';

  @override
  String get createPasswordHint => '비밀번호를 생성하세요';

  @override
  String get createPasswordSecondParagraph =>
      'Password is optional, and your wallet will be protected with your PIN or biometrics regardless.';

  @override
  String get createPasswordSheetHeader => '생성하기';

  @override
  String get currency => '통화';

  @override
  String get currencyPoweredBy => 'Powered by CoinGecko';

  @override
  String get currentIndex => 'Current';

  @override
  String get defaultAccountName => '주소 1';

  @override
  String defaultNewAccountName(int addressIndex) {
    return '받기 $addressIndex';
  }

  @override
  String get defaultWalletName => '내 지갑';

  @override
  String get disablePasswordSheetHeader => '비활성화';

  @override
  String get disablePasswordSuccess => '비밀번호가 비활성화되었습니다';

  @override
  String get disableWalletPassword => '지갑 비밀번호를 비활성화하기';

  @override
  String get doContinue => '계속';

  @override
  String get donate => '기부하기';

  @override
  String get donateTo => 'Donate To';

  @override
  String get dontShowAgain => '다시 보지 않기';

  @override
  String emailAction(String email) {
    return 'Email $email';
  }

  @override
  String get emptyCardIntroUtxos => '이것은 UTXOs 탭입니다. 지갑 내의 모든 UTXO가 여기에 표시됩니다';

  @override
  String get emptyResult => '결과가 없습니다';

  @override
  String get emptyWalletName => '지갑 이름은 비워둘 수 없습니다';

  @override
  String get encryptionFailedError => '지갑 비밀번호 설정에 실패했습니다';

  @override
  String get enterAddress => '주소를 입력하세요';

  @override
  String get enterAmount => '금액을 입력하세요';

  @override
  String get enterFiatValue => 'Enter Fiat Value';

  @override
  String get enterNote => '노트를 입력하세요';

  @override
  String get enterPasswordHint => '비밀번호를 입력하세요';

  @override
  String get errorMessageCopied => '오류 메시지가 클립보드에 복사되었습니다';

  @override
  String get exampleCardIntro =>
      'Kaspium에 오신 것을 환영합니다. KAS를 받으시면 거래가 다음과 같이 표시됩니다.';

  @override
  String get export => '내보내기';

  @override
  String get fee => '수수료';

  @override
  String get feeBaseUppercase => 'BASE FEE';

  @override
  String feeConfirm(String amount, String coin) {
    return '수수료 $amount $coin';
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
  String get feeTitle => '수수료';

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
  String get fetchingTransactions => '거래 내역 가져오는 중';

  @override
  String get fingerprintSeedBackup => '지문을 확인하여 시드 지갑를 백업하세요';

  @override
  String get getStarted => 'Get Started';

  @override
  String get goBackButton => '뒤로 가기';

  @override
  String get gotItButton => '알겠습니다!';

  @override
  String get hideAccountHeader => 'Hide Account?';

  @override
  String get hideAccountText =>
      'Are you sure you want to hide this account? You can re-add it later by tapping the \"Add Account\" button.';

  @override
  String get hintAddressListEmpty =>
      'Check address filter from the top right corner';

  @override
  String get import => '가져오기';

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
  String get importSecretPhrase => '씨앗구를 가져오기';

  @override
  String get importSecretPhraseHint => '아래에 24단어 비밀 문구를 입력하세요';

  @override
  String get importSecretPhraseHintCombo =>
      'Please enter your 12 or 24 word secret phrase below.';

  @override
  String get importSecretPhraseHintLegacy =>
      'Please enter your 12 word secret phrase below.';

  @override
  String get importWallet => '기존 지갑';

  @override
  String get importWalletAdvancedOptions => 'Advanced Options';

  @override
  String get importWalletDescription => 'Please select an option below.';

  @override
  String get indexHeader => 'Index';

  @override
  String get instantly => '즉시';

  @override
  String get insufficientBalance => '잔액이 부족합니다';

  @override
  String get insufficientBalanceDetails => '이 거래에는 충분한 KAS가 없습니다';

  @override
  String get invalidAddress => '목적지 주소가 잘못되었습니다';

  @override
  String get invalidAmount => '유효하지 않은 금액입니다';

  @override
  String get invalidChecksumMessage => '비밀 문구가 올바르게 입력되었는지\n 확인해주세요!';

  @override
  String get invalidDestinationAddress => '유효하지 않은 목적지 주소입니다';

  @override
  String get invalidKpubMessage =>
      'Please check that your extended public key is entered correctly!';

  @override
  String get invalidPassword => '유효하지 않은 비밀번호입니다';

  @override
  String get invalidSecretPhrase => 'Invalid Secret Phrase';

  @override
  String get invalidSecretPhraseConfirmation => 'I know what I\'m doing';

  @override
  String get invalidSecretPhraseDetails =>
      'The Secret Phrase you entered has an invalid checksum.';

  @override
  String get kaspaDevFund => 'Kaspa 개발자 기금';

  @override
  String get kaspaUriCopied => 'Kaspa URI Copied';

  @override
  String get kaspaUriCopyFailed => 'Failed to copy Kaspa URI';

  @override
  String get kaspaUriInvalid => 'Invalid Kaspa URI';

  @override
  String get kaspiumWallet => 'Kaspium 지갑';

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
  String get language => '언어';

  @override
  String get loadingTransactions => '거래 내역을 불러오는 중...';

  @override
  String get lockAppSetting => '시작 시 인증하기';

  @override
  String get locked => '잠김';

  @override
  String get loggingOutMessage => '로그아웃 중...';

  @override
  String get logout => '로그 아웃';

  @override
  String get logoutDialogContent => '이 지갑에서 로그아웃하시겠습니까?';

  @override
  String get logoutOrSwitchWallet => '로그아웃 / 지갑 전환';

  @override
  String get manage => '설정';

  @override
  String get manualEntry => '수동 입력';

  @override
  String get maxSend => 'Max Send';

  @override
  String get missingSecretPhrase => 'Missing Secret Phrase';

  @override
  String get moreInfo => 'More Info';

  @override
  String get networkHeader => '네트워크';

  @override
  String get newAddress => '새로운 주소';

  @override
  String get newIndex => 'New';

  @override
  String get newWallet => '새 지갑';

  @override
  String get nextButton => '다음';

  @override
  String get no => '아니요';

  @override
  String get noContactsExport => '내보낼 연락처가 존재하지 않습니다.';

  @override
  String get noContactsImport => '가져올 연락처를 찾을 수 없습니다.';

  @override
  String get nodeAddress => 'Kaspa 노드';

  @override
  String get nodeDeleteMessage => '삭제하시겠습니까?';

  @override
  String get nodeDeleteTitle => 'Kaspa 노드 설정을 삭제하시겠습니까?';

  @override
  String get nodeNameEmpty => '노드 이름은 비워둘 수 없습니다';

  @override
  String get nodeNameHint => '노드 이름을 입력하세요';

  @override
  String get nodeNotSyncedException => 'Node is not synced';

  @override
  String get nodeNoUTXOIndexException => 'Node does not have UTXO index';

  @override
  String get nodeSecureConnection => 'Secure connection';

  @override
  String get nodesSheetTitle => 'Kaspa 노드';

  @override
  String get nodeUrlHint => '노드 URL을 입력하세요';

  @override
  String get nodeUrlInvalid => '유효하지 않은 노드 URL입니다';

  @override
  String get noQrCodeFound => 'QR 코드를 찾을 수 없습니다';

  @override
  String get noSkipButton => '아니요, 건너뛰기';

  @override
  String get notAccepted => 'not accepted';

  @override
  String get noteLabel => 'Note:';

  @override
  String get noUppercase => '아니요';

  @override
  String get off => '끄기';

  @override
  String get on => '켜기';

  @override
  String get optionalLabel => '(Optional)';

  @override
  String get paperWallet => '지갑 종이';

  @override
  String get passwordBlank => '비밀번호는 비워둘 수 없습니다';

  @override
  String get passwordNoLongerRequiredToOpenParagraph =>
      '이 지갑을 열 때 비밀번호가 필요하지 않습니다';

  @override
  String get passwordsDontMatch => '비밀번호가 일치하지 않습니다';

  @override
  String get passwordWillBeRequiredToOpenParagraph => '이 지갑을 열려면 이 암호가 필요합니다';

  @override
  String get pasteMnemonicError => '클립보드 내용은 유효한 비밀 문구가 아닙니다';

  @override
  String get pending => '보류 중입니다';

  @override
  String get pinConfirmError => '비밀번호가 일치하지 않습니다';

  @override
  String get pinConfirmTitle => '비밀번호를 확인 하세요';

  @override
  String get pinCreateTitle => '6자리 비밀번호를 만드세요';

  @override
  String get pinEnterTitle => '비밀번호를 입력 하세요';

  @override
  String get pinInvalid => '잘못된 비밀번호가 입력되었습니다.';

  @override
  String get pinMethod => '비밀번호';

  @override
  String get pinSeedBackup => '시드 지갑 를 보시려면 비밀번호을 입력하세요';

  @override
  String get preferences => '환경 설정';

  @override
  String get privacyPolicy => '개인 정보 보호 정책';

  @override
  String get qrInvalidAddress => 'QR 코드에 유효한 주소가 포함되어 있지 않습니다';

  @override
  String get qrInvalidSeed => 'QR 코드에 유효한 시드 또는 개인 키가 포함되어 있지 않습니다';

  @override
  String get qrMnemonicError => 'QR 코드에 유효한 비밀 문구가 포함되어 있지 않습니다';

  @override
  String get receive => '받기';

  @override
  String get receiveAddress => '받는 주소';

  @override
  String get receiveAddressCopied => '받는 주소가 복사되었습니다';

  @override
  String get receiveAddressListEmpty => 'Receive address list is empty';

  @override
  String get received => '수신 완료';

  @override
  String get receiveIndex => '받는 인덱스';

  @override
  String receiveIndexParam(String addressIndex) {
    return '받는 $addressIndex';
  }

  @override
  String get removeContact => '연락처 삭제';

  @override
  String removeContactConfirmation(String contactName) {
    return '$contactName 을 (를) 삭제 하시겠습니까?';
  }

  @override
  String get removeWalletAction => '지갑 삭제';

  @override
  String get removeWalletBiometricsMessage => '인증하여 지갑을 삭제하세요';

  @override
  String get removeWalletDetail =>
      'Removing this wallet will remove the Secret Phrase and all wallet-related data from this device. If the Secret Phrase is not backed up, you will never be able to access your funds again.';

  @override
  String get removeWalletPinMessage => '지갑을 삭제하려면 PIN을 입력하세요';

  @override
  String get removeWalletReassurance => '시크릿 구문을 백업했다면 걱정할 필요가 없습니다';

  @override
  String get requestPasswordAtLaunch => 'At Launch';

  @override
  String get requestPasswordHeader => 'Request Password';

  @override
  String get requestPasswordWhenLocked => 'When Locked';

  @override
  String get requestPasswordWhenSigning => 'When Signing';

  @override
  String get requireAPasswordToOpenHeader => '이 지갑을 열기 위해 비밀번호를 필요로 하시겠습니까?';

  @override
  String get restartSetupButton => '설정을 다시 시작하시겠습니까?';

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
  String get scanQrCode => 'QR 코드를 스캔하세요';

  @override
  String get scanQrCodeError => 'QR 코드를 해석하는 데 실패했습니다';

  @override
  String get secretInfo =>
      'In the next screen, you will see your secret phrase. It is a password to access your funds. It is crucial that you back it up and never share it with anyone.';

  @override
  String get secretInfoHeader => '안전이 최우선입니다!';

  @override
  String get secretPhrase => '비밀 문구';

  @override
  String get secretPhrase12Words => '12 WORDS';

  @override
  String get secretPhrase24Words => '24 WORDS';

  @override
  String get secretWarning =>
      '기기를 분실하거나 애플리케이션을 삭제한 경우 자금을 복구하려면 비밀 문구를 필요합니다!';

  @override
  String get securityHeader => '보안';

  @override
  String get seed => 'Seed';

  @override
  String get seedInvalid => '시드가 부적절합니다';

  @override
  String get selectAddress => 'Select Address';

  @override
  String get send => '보내기';

  @override
  String get sendConfirm => '보내기';

  @override
  String get sendError => '문제가 발생했습니다. 나중에 다시 시도하시오.';

  @override
  String get sending => '전송중';

  @override
  String get sendNote => '노트';

  @override
  String get sendToAddressTitle => 'To';

  @override
  String get sendTxProgressDescription =>
      'Please wait while the transaction is sent';

  @override
  String get sendTxProgressTitle => '거래 전송 중입니다';

  @override
  String get sent => '전송 완료';

  @override
  String get sentTo => 'Sent to';

  @override
  String get setPassword => '비밀번호를 설정하기';

  @override
  String get setPasswordSuccess => '지갑 비밀번호가 설정되었습니다';

  @override
  String get settingsHeader => '설정';

  @override
  String get settingsTransfer => 'Load from Paper Wallet';

  @override
  String get setupFailedMessage => '문제가 발생했습니다';

  @override
  String get setWalletPassword => '지갑 비밀번호를 설정하기';

  @override
  String get shareKaspium => 'Kaspium 공유 ';

  @override
  String get shareKaspiumSubject => 'Check out Kaspium Wallet';

  @override
  String get shareKaspiumText => 'Kaspium을 확인하세요! Kaspa의 공식 Android 지갑!';

  @override
  String get somethingWentWrong => 'Something went wrong';

  @override
  String get systemDefault => '전화 언어';

  @override
  String get tapToHide => 'Tap to hide';

  @override
  String get tapToReveal => 'Tap to reveal';

  @override
  String get themeDark => 'Dark Theme';

  @override
  String get themeHeader => '테마';

  @override
  String get themeLight => 'Light Theme';

  @override
  String get thisWallet => '#This Wallet';

  @override
  String get to => '받는 사람';

  @override
  String get toAddress => 'To Address';

  @override
  String get tooManyFailedAttempts => 'Too many failed unlock attempts.';

  @override
  String get totalValue => 'Total Value';

  @override
  String get transactionId => 'Transaction ID';

  @override
  String get transactionsUppercase => 'TRANSACTIONS';

  @override
  String get transfer => 'Transfer';

  @override
  String get transferClose => 'Tap anywhere to close the window.';

  @override
  String transferComplete(String amount) {
    return '$amount KAS successfully transferred to your Kaspium Wallet.\n';
  }

  @override
  String transferConfirmInfo(String amount) {
    return 'A wallet with a balance of $amount KAS has been detected.';
  }

  @override
  String get transferConfirmInfoSecond =>
      'Tap confirm to transfer the funds.\n';

  @override
  String get transferConfirmInfoThird =>
      'Transfer may take several seconds to complete.';

  @override
  String get transferError =>
      'An error has occurred during the transfer. Please try again later.';

  @override
  String get transferHeader => 'Transfer Funds';

  @override
  String transferIntro(String button) {
    return 'This process will transfer the funds from a paper wallet to your Kaspium wallet.\n\nTap the \"$button\" button to start.';
  }

  @override
  String get transferLoading => 'Transferring';

  @override
  String get transferManualHint => 'Please enter the seed below.';

  @override
  String get transferNoFunds => 'This seed does not have any KAS on it';

  @override
  String get transferQrScanError =>
      'This QR code does not contain a valid seed.';

  @override
  String get transferQrScanHint => 'Scan a Kaspa \nseed or private key';

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
  String get unconfirmed => 'unconfirmed';

  @override
  String get unknown => 'unknown';

  @override
  String get unlock => '잠금 해제하기';

  @override
  String get unlockBiometrics => 'Authenticate to Unlock Wallet';

  @override
  String get unlockPin => 'Enter PIN to Unlock Wallet';

  @override
  String get utxoSelectionHint => 'Please select more UTXOs';

  @override
  String get utxoSelectionTitle => 'Select UTXOs';

  @override
  String get utxosUppercase => 'UTXOs';

  @override
  String get viewAddress => '주소 보기';

  @override
  String get viewTransaction => '거래 내역 보기';

  @override
  String get walletAddress => 'Wallet Address';

  @override
  String get walletAddresses => '지갑 주소들';

  @override
  String walletAddressesCopied(String addressType) {
    return 'Wallet $addressType Addresses Copied to Clipboard';
  }

  @override
  String walletAddressesCopyFailed(String addressType) {
    return 'Failed to Copy Wallet $addressType Addresses';
  }

  @override
  String get walletName => '지갑 이름';

  @override
  String get walletNameDescription => '지갑에 이름을 입력하세요';

  @override
  String get walletNameHint => '지갑 이름';

  @override
  String get walletSetupAddressDiscovery => 'Running Address Discovery';

  @override
  String get walletSetupMessage => 'Setting up wallet';

  @override
  String get walletsTitle => 'Wallets';

  @override
  String get warning => '경고';

  @override
  String welcomeMessage(String version) {
    return 'Welcome!\n\nThis is version $version of Kaspium - the mobile wallet for Kaspa';
  }

  @override
  String get welcomeText =>
      'Kaspium에 오신 것을 환영합니다. 계속하려면, 새 지갑을 만들거나 기존 지갑을 불러오세요.';

  @override
  String get yes => '네';

  @override
  String get yesButton => '네';

  @override
  String get yesUppercase => '네';
}
