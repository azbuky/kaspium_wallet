// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n_gen.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get aboutTopperDescription =>
      'Topper by Uphold is an easy to use fiat-to-crypto onramp that allows users to buy cryptocurencies using a credit/debit card or with a bank account.';

  @override
  String get aboutTopperTitle => 'About Topper';

  @override
  String get accepted => 'accepted';

  @override
  String get account => 'Tài khoản';

  @override
  String get accounts => 'Các tài khoản';

  @override
  String get ackBackedUp =>
      'Bạn có chắc chắn rằng đã sao lưu cụm từ bí mật hoặc hạt giống của bạn?';

  @override
  String get add => 'Add';

  @override
  String get addAccount => 'Thêm tài khoản';

  @override
  String get addContact => 'Thêm liên hệ';

  @override
  String get addingNodeMessage => 'Please wait while contacting node';

  @override
  String get addingNodeTitle => 'Adding Node';

  @override
  String get addNode => 'Add Node';

  @override
  String get addNodeFailed => 'Failed to add Kaspa node';

  @override
  String addNodeFailedMessage(String error) {
    return 'Failed: $error';
  }

  @override
  String get addNodeSuccess => 'Node Added Successfully';

  @override
  String get address => 'Address';

  @override
  String get addressCopied => 'Đã sao chép địa chỉ';

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
  String get addressHint => 'Nhập địa chỉ';

  @override
  String get addressMising => 'Hãy nhập một địa chỉ';

  @override
  String get addressShare => 'Chia sẻ địa chỉ';

  @override
  String get advancedHeader => 'Advanced';

  @override
  String get amount => 'Amount';

  @override
  String amountConfirm(String amount, String coin) {
    return 'Amount $amount $coin';
  }

  @override
  String get amountMissing => 'Hãy nhập lượng tiền';

  @override
  String get amountZero => 'Amount can\'t be zero';

  @override
  String get areYouSure => 'Are you sure?';

  @override
  String get authBiometricMessage => 'Authenticate to Add Wallet';

  @override
  String get authMethod => 'Phương thức xác nhận';

  @override
  String get authPinMessage => 'Enter PIN to Add Wallet';

  @override
  String get autoLockHeader => 'Mở khoá tự động';

  @override
  String get available => 'Available';

  @override
  String get backupConfirmButton => 'Tôi đã sao lưu';

  @override
  String get backupSecretPhrase => 'Sao lưu cụm từ bí mật';

  @override
  String get balance => 'Balance';

  @override
  String get biometricsMethod => 'Sinh trắc học';

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
  String get blockExplorer => 'Trình khám phá khối';

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
  String get cancel => 'Hủy';

  @override
  String get change => 'Change';

  @override
  String get changeAddress => 'Change Address';

  @override
  String get changeAddressCopied => 'Change address copied';

  @override
  String get changeAddressListEmpty => 'Change address list is empty';

  @override
  String get changeIndex => 'Change Index';

  @override
  String changeIndexParam(String addressIndex) {
    return 'Change $addressIndex';
  }

  @override
  String get checkCameraPermission => 'Please check camera permissions';

  @override
  String get clipboardEmpty => 'Clipboard is empty';

  @override
  String get close => 'Đóng';

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
  String get confirm => 'Xác nhận';

  @override
  String confirmations(String confirmations) {
    return '$confirmations confirmations';
  }

  @override
  String get confirmed => 'confirmed';

  @override
  String get confirming => 'confirming';

  @override
  String get confirmPasswordHint => 'Xác nhận mật khẩu';

  @override
  String contactAdded(String contactName) {
    return 'Đã thêm $contactName vào danh bạ.';
  }

  @override
  String contactAddressCopied(String address) {
    return '$address address copied';
  }

  @override
  String get contactExists => 'Liên hệ đã tồn tại';

  @override
  String get contactHeader => 'Liên hệ';

  @override
  String get contactInvalid => 'Tên liên hệ không phù hợp';

  @override
  String get contactNameHint => 'Nhập tên';

  @override
  String get contactNameMissing => 'Nhập tên cho liên hệ này';

  @override
  String contactRemoved(String contactName) {
    return 'Đã loại $contactName khỏi danh bạ.';
  }

  @override
  String get contactsHeader => 'Danh bạ';

  @override
  String get contactsImportErr => 'Nhập liên hệ thất bại';

  @override
  String contactsImportSuccess(String noContacts) {
    return 'Đã nhập thành công $noContacts liên hệ.';
  }

  @override
  String get contactSupport => 'Contact Support';

  @override
  String get copied => 'Đã sao chép';

  @override
  String get copy => 'Sao chép';

  @override
  String get copyAddress => 'Sao chép địa chỉ';

  @override
  String get copyErrorButton => 'Copy Error';

  @override
  String get copyKpub => 'Copy Kpub';

  @override
  String get createAPasswordHeader => 'Tạo mật khẩu.';

  @override
  String get createPasswordFirstParagraph =>
      'Bạn có thể tạo mật khẩu để tăng tính bảo mật cho ví của bạn.';

  @override
  String get createPasswordHint => 'Tạo mật khẩu';

  @override
  String get createPasswordSecondParagraph =>
      'Mật khẩu là tùy chọn không bắt buộc, và ví của bạn sẽ được bảo vệ với mã PIN hoặc sinh trắc học. ';

  @override
  String get createPasswordSheetHeader => 'Tạo';

  @override
  String get currency => 'Tiền tệ';

  @override
  String get currencyPoweredBy => 'Powered by CoinGecko';

  @override
  String get currentIndex => 'Current';

  @override
  String get defaultAccountName => 'Tài khoản chính';

  @override
  String defaultNewAccountName(int addressIndex) {
    return 'Tài khoản $addressIndex';
  }

  @override
  String get defaultWalletName => 'My Wallet';

  @override
  String get disablePasswordSheetHeader => 'Vô hiệu hoá';

  @override
  String get disablePasswordSuccess => 'Đã vô hiệu hoá mật khẩu';

  @override
  String get disableWalletPassword => 'Vô hiệu hoá mật khẩu ví';

  @override
  String get doContinue => 'Continue';

  @override
  String get donate => 'Donate';

  @override
  String get donateTo => 'Donate To';

  @override
  String get dontShowAgain => 'Don\'t show again';

  @override
  String emailAction(String email) {
    return 'Email $email';
  }

  @override
  String get emptyCardIntroUtxos =>
      'This is the UTXOs tab. All UTXOs in your wallet will appear here';

  @override
  String get emptyResult => 'Empty Result';

  @override
  String get emptyWalletName => 'Wallet Name cannot be empty';

  @override
  String get encryptionFailedError => 'Đặt mật khẩu ví không thành công';

  @override
  String get enterAddress => 'Nhập địa chỉ';

  @override
  String get enterAmount => 'Nhập số lượng';

  @override
  String get enterFiatValue => 'Enter Fiat Value';

  @override
  String get enterNote => 'Enter Note';

  @override
  String get enterPasswordHint => 'Nhập mật khẩu';

  @override
  String get errorMessageCopied => 'Error message copied to clipboard';

  @override
  String get exampleCardIntro =>
      'Chào mừng đến với Kaspium. Khi bạn nhận Kaspa, các giao dịch sẽ được hiển thị như sau:';

  @override
  String get export => 'Export';

  @override
  String get fee => 'Fee';

  @override
  String get feeBaseUppercase => 'BASE FEE';

  @override
  String feeConfirm(String amount, String coin) {
    return 'Fee $amount $coin';
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
  String get feeTitle => 'FEE';

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
  String get fetchingTransactions => 'Fetching Transactions';

  @override
  String get fingerprintSeedBackup => 'Xác minh để xem hạt giống.';

  @override
  String get getStarted => 'Get Started';

  @override
  String get goBackButton => 'Quay lại';

  @override
  String get gotItButton => 'Đã hiểu!';

  @override
  String get hideAccountHeader => 'Hide Account?';

  @override
  String get hideAccountText =>
      'Are you sure you want to hide this account? You can re-add it later by tapping the \"Add Account\" button.';

  @override
  String get hintAddressListEmpty =>
      'Check address filter from the top right corner';

  @override
  String get import => 'Nhập vào';

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
  String get importSecretPhrase => 'Nhập cụm từ bí mật';

  @override
  String get importSecretPhraseHint =>
      'Hãy nhập 24 từ bí mật vào dưới đây. Mỗi từ phải được cách nhau bởi dấu cách.';

  @override
  String get importSecretPhraseHintCombo =>
      'Please enter your 12 or 24 word secret phrase below.';

  @override
  String get importSecretPhraseHintLegacy =>
      'Please enter your 12 word secret phrase below.';

  @override
  String get importWallet => 'Nhập ví hiện có';

  @override
  String get importWalletAdvancedOptions => 'Advanced Options';

  @override
  String get importWalletDescription => 'Please select an option below.';

  @override
  String get indexHeader => 'Index';

  @override
  String get instantly => 'Ngay tức thì';

  @override
  String get insufficientBalance => 'Số dư không đủ';

  @override
  String get insufficientBalanceDetails =>
      'You don\'t have enough KAS for this transaction';

  @override
  String get invalidAddress => 'Địa chỉ đã nhập không hợp lệ';

  @override
  String get invalidAmount => 'Invalid Amount';

  @override
  String get invalidChecksumMessage =>
      'Please check that your Secret Phrase\n is entered correctly!';

  @override
  String get invalidDestinationAddress => 'Invalid Destination Address';

  @override
  String get invalidKpubMessage =>
      'Please check that your extended public key is entered correctly!';

  @override
  String get invalidPassword => 'Mật khẩu không hợp lệ';

  @override
  String get invalidSecretPhrase => 'Invalid Secret Phrase';

  @override
  String get invalidSecretPhraseConfirmation => 'I know what I\'m doing';

  @override
  String get invalidSecretPhraseDetails =>
      'The Secret Phrase you entered has an invalid checksum.';

  @override
  String get kaspaDevFund => 'Kaspa Dev Fund';

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
  String get language => 'Ngôn ngữ';

  @override
  String get loadingTransactions => 'Loading Transactions...';

  @override
  String get lockAppSetting => 'Xác thực khi khởi chạy';

  @override
  String get locked => 'Đã khoá';

  @override
  String get loggingOutMessage => 'Logging out...';

  @override
  String get logout => 'Đăng xuất';

  @override
  String get logoutDialogContent =>
      'Are you sure you want to logout from this wallet?';

  @override
  String get logoutOrSwitchWallet => 'Logout / Switch Wallet';

  @override
  String get manage => 'Quản lí';

  @override
  String get manualEntry => 'Nhập thủ công';

  @override
  String get maxSend => 'Max Send';

  @override
  String get missingSecretPhrase => 'Missing Secret Phrase';

  @override
  String get moreInfo => 'More Info';

  @override
  String get networkHeader => 'Network';

  @override
  String get newAddress => 'New Address';

  @override
  String get newIndex => 'New';

  @override
  String get newWallet => 'Tạo ví mới';

  @override
  String get nextButton => 'Tiếp theo';

  @override
  String get no => 'Không';

  @override
  String get noContactsExport => 'Không có liên hệ nào để xuất ra.';

  @override
  String get noContactsImport => 'Không có liên hệ nào để nhập.';

  @override
  String get nodeAddress => 'Kaspa Node';

  @override
  String get nodeDeleteMessage => 'Are you sure you want to delete?';

  @override
  String get nodeDeleteTitle => 'Delete Kaspa Node Config?';

  @override
  String get nodeNameEmpty => 'Node name cannot be empty';

  @override
  String get nodeNameHint => 'Enter Node Name';

  @override
  String get nodeNotSyncedException => 'Node is not synced';

  @override
  String get nodeNoUTXOIndexException => 'Node does not have UTXO index';

  @override
  String get nodeSecureConnection => 'Secure connection';

  @override
  String get nodesSheetTitle => 'Kaspa Nodes';

  @override
  String get nodeUrlHint => 'Enter Node URL';

  @override
  String get nodeUrlInvalid => 'Invalid node URL';

  @override
  String get noQrCodeFound => 'No QR code found';

  @override
  String get noSkipButton => 'Không, bỏ qua';

  @override
  String get notAccepted => 'not accepted';

  @override
  String get noteLabel => 'Note:';

  @override
  String get noUppercase => 'NO';

  @override
  String get off => 'Tắt';

  @override
  String get on => 'Bật';

  @override
  String get optionalLabel => '(Optional)';

  @override
  String get paperWallet => 'Ví giấy';

  @override
  String get passwordBlank => 'Không thể bỏ trống mật khẩu';

  @override
  String get passwordNoLongerRequiredToOpenParagraph =>
      'Bạn sẽ không cần mật khẩu để mở Kaspium nữa.';

  @override
  String get passwordsDontMatch => 'Mật khẩu không khớp';

  @override
  String get passwordWillBeRequiredToOpenParagraph =>
      'Mật khẩu này sẽ được yêu cầu để mở Kaspium.';

  @override
  String get pasteMnemonicError =>
      'Clipboard content is not a valid secret phrase';

  @override
  String get pending => 'đang chờ xác nhận';

  @override
  String get pinConfirmError => 'Mã PIN không khớp';

  @override
  String get pinConfirmTitle => 'Xác nhận mã PIN của bạn';

  @override
  String get pinCreateTitle => 'Tạo mã PIN 6 chữ số';

  @override
  String get pinEnterTitle => 'Nhập PIN';

  @override
  String get pinInvalid => 'Mã PIN đã nhập không hợp lệ';

  @override
  String get pinMethod => 'Mã PIN';

  @override
  String get pinSeedBackup => 'Nhập mã PIN để sao lưu hạt giống';

  @override
  String get preferences => 'Tuỳ chọn';

  @override
  String get privacyPolicy => 'Chính sách bảo mật';

  @override
  String get qrInvalidAddress => 'Mã QR không chứa điểm đến hợp lệ';

  @override
  String get qrInvalidSeed =>
      'Mã QR không chứa hạt giống hoặc khoá riêng tư hợp lệ';

  @override
  String get qrMnemonicError => 'Mã QR không chứa cụm từ bí mật hợp lệ';

  @override
  String get receive => 'Nhận';

  @override
  String get receiveAddress => 'Receive Address';

  @override
  String get receiveAddressCopied => 'Receive address copied';

  @override
  String get receiveAddressListEmpty => 'Receive address list is empty';

  @override
  String get received => 'Đã nhận';

  @override
  String get receiveIndex => 'Receive Index';

  @override
  String receiveIndexParam(String addressIndex) {
    return 'Receive $addressIndex';
  }

  @override
  String get removeContact => 'Xóa liên hệ';

  @override
  String removeContactConfirmation(String contactName) {
    return 'Bạn chắc chắn muốn xóa $contactName?';
  }

  @override
  String get removeWalletAction => 'Remove Wallet';

  @override
  String get removeWalletBiometricsMessage => 'Authenticate to Remove Wallet';

  @override
  String get removeWalletDetail =>
      'Removing this wallet will remove the Secret Phrase and all wallet-related data from this device. If the Secret Phrase is not backed up, you will never be able to access your funds again.';

  @override
  String get removeWalletPinMessage => 'Enter PIN to Remove Wallet';

  @override
  String get removeWalletReassurance =>
      'As long as you\'ve backed up the Secret Phrase you have nothing to worry about.';

  @override
  String get requestPasswordAtLaunch => 'At Launch';

  @override
  String get requestPasswordHeader => 'Request Password';

  @override
  String get requestPasswordWhenLocked => 'When Locked';

  @override
  String get requestPasswordWhenSigning => 'When Signing';

  @override
  String get requireAPasswordToOpenHeader => 'Yêu cầu mật khẩu để mở Kaspium?';

  @override
  String get restartSetupButton => 'Restart Setup';

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
  String get scanQrCode => 'Quét mã QR';

  @override
  String get scanQrCodeError => 'Failed to parse qr code';

  @override
  String get secretInfo =>
      'Tiếp theo, bạn sẽ nhìn thấy một cụm từ bí mật. Nó là mật khẩu để truy cập vào ví của bạn. Đừng quên sao lưu nó lại và tuyệt đối không chia sẻ cho bất kỳ ai';

  @override
  String get secretInfoHeader => 'An toàn là trên hết!';

  @override
  String get secretPhrase => 'Cụm từ bí mật';

  @override
  String get secretPhrase12Words => '12 WORDS';

  @override
  String get secretPhrase24Words => '24 WORDS';

  @override
  String get secretWarning =>
      'Nếu bạn đánh mất thiết bị hoặc gỡ cài đặt ứng dụng, bạn sẽ cần cụm từ bí mật hoặc hạt giống để khôi phục ví của bạn.';

  @override
  String get securityHeader => 'Bảo mật';

  @override
  String get seed => 'Seed';

  @override
  String get seedInvalid => 'Hạt giống (seed) không hợp lệ';

  @override
  String get selectAddress => 'Select Address';

  @override
  String get send => 'Gửi';

  @override
  String get sendConfirm => 'Send';

  @override
  String get sendError => 'Đã xảy ra lỗi, vui lòng thử lại sau.';

  @override
  String get sending => 'Đang gửi';

  @override
  String get sendNote => 'NOTE';

  @override
  String get sendToAddressTitle => 'To';

  @override
  String get sendTxProgressDescription =>
      'Please wait while the transaction is sent';

  @override
  String get sendTxProgressTitle => 'Sending Transaction';

  @override
  String get sent => 'Đã gửi';

  @override
  String get sentTo => 'Sent to';

  @override
  String get setPassword => 'Đặt mật khẩu';

  @override
  String get setPasswordSuccess => 'Đã đặt mật khẩu thành công';

  @override
  String get settingsHeader => 'Cài đặt';

  @override
  String get settingsTransfer => 'Nhập từ ví giấy';

  @override
  String get setupFailedMessage => 'Something went wrong';

  @override
  String get setWalletPassword => 'Đặt mật khẩu ví';

  @override
  String get shareKaspium => 'Chia sẻ Kaspium';

  @override
  String get shareKaspiumSubject => 'Check out Kaspium Wallet';

  @override
  String get shareKaspiumText =>
      'Thử ngay Kaspium! Ví Kaspa di động chính thức!';

  @override
  String get somethingWentWrong => 'Something went wrong';

  @override
  String get systemDefault => 'Mặc định hệ thống';

  @override
  String get tapToHide => 'Nhấn để ẩn';

  @override
  String get tapToReveal => 'Nhấn để hiển thị';

  @override
  String get themeDark => 'Dark Theme';

  @override
  String get themeHeader => 'Chủ đề';

  @override
  String get themeLight => 'Light Theme';

  @override
  String get thisWallet => '#This Wallet';

  @override
  String get to => 'tới';

  @override
  String get toAddress => 'To Address';

  @override
  String get tooManyFailedAttempts => 'Quá nhiều lần mở khoá thất bại.';

  @override
  String get totalValue => 'Total Value';

  @override
  String get transactionId => 'Transaction ID';

  @override
  String get transactionsUppercase => 'TRANSACTIONS';

  @override
  String get transfer => 'Chuyển giao';

  @override
  String get transferClose => 'Chạm một chỗ bất kỳ để đóng cửa sổ.';

  @override
  String transferComplete(String amount) {
    return '$amount Kaspa đã được chuyển vào ví Kaspium của bạn.\n';
  }

  @override
  String transferConfirmInfo(String amount) {
    return 'Đã tìm thấy một ví với số dư là $amount BAN. \n';
  }

  @override
  String get transferConfirmInfoSecond => 'Nhấn xác nhận để chuyển tiền.\n';

  @override
  String get transferConfirmInfoThird =>
      'Có thể mất vài giây để hoàn thành giao dịch.';

  @override
  String get transferError =>
      'Đã có lỗi trong quá trình giao dịch, vui lòng thử lại sau.';

  @override
  String get transferHeader => 'Chuyển tiền';

  @override
  String transferIntro(String button) {
    return 'Quá trình này sẽ chuyển toàn bộ số dư từ ví giấy sang ví Kaspium của bạn.\n\nNhấn nút \"$button\" để bắt đầu.';
  }

  @override
  String get transferLoading => 'Đang chuyển';

  @override
  String get transferManualHint => 'Hãy nhập hạt giống dưới đây';

  @override
  String get transferNoFunds => 'Hạt giống này không chứa chút Kaspa nào';

  @override
  String get transferQrScanError => 'Mã QR này không chứa hạt giống hợp lệ.';

  @override
  String get transferQrScanHint => 'Quét \nhạt giống Kaspa hoặc khoá riêng tư';

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
  String get unconfirmed => 'chưa xác nhận';

  @override
  String get unknown => 'unknown';

  @override
  String get unlock => 'Mở khoá';

  @override
  String get unlockBiometrics => 'Xác nhận mở khoá Kaspium';

  @override
  String get unlockPin => 'Nhập mã PIN để mở khoá Kaspium';

  @override
  String get utxoSelectionHint => 'Please select more UTXOs';

  @override
  String get utxoSelectionTitle => 'Select UTXOs';

  @override
  String get utxosUppercase => 'UTXOs';

  @override
  String get viewAddress => 'View Address';

  @override
  String get viewTransaction => 'View Transaction';

  @override
  String get walletAddress => 'Wallet Address';

  @override
  String get walletAddresses => 'Wallet Addresses';

  @override
  String walletAddressesCopied(String addressType) {
    return 'Wallet $addressType Addresses Copied to Clipboard';
  }

  @override
  String walletAddressesCopyFailed(String addressType) {
    return 'Failed to Copy Wallet $addressType Addresses';
  }

  @override
  String get walletName => 'Wallet name';

  @override
  String get walletNameDescription => 'Enter a name for your wallet';

  @override
  String get walletNameHint => 'Wallet Name';

  @override
  String get walletSetupAddressDiscovery => 'Running Address Discovery';

  @override
  String get walletSetupMessage => 'Setting up wallet';

  @override
  String get walletsTitle => 'Wallets';

  @override
  String get warning => 'CẢNH BÁO!';

  @override
  String welcomeMessage(String version) {
    return 'Welcome!\n\nThis is version $version of Kaspium - the mobile wallet for Kaspa';
  }

  @override
  String get welcomeText =>
      'Chào mừng đến với Kaspium. Để bắt đầu, bạn có thể tạo ví mới hoặc nhập ví hiện có.';

  @override
  String get yes => 'Có';

  @override
  String get yesButton => 'Yes';

  @override
  String get yesUppercase => 'YES';
}
