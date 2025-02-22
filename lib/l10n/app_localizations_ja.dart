// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get account => 'アカウント';

  @override
  String get accounts => 'アカウント';

  @override
  String get ackBackedUp => 'シークレットフレーズやシードをバックアップしましたか？';

  @override
  String get add => 'Add';

  @override
  String get addAccount => 'アカウントを追加する';

  @override
  String get addContact => '連絡先を追加する';

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
  String get addingNodeMessage => 'Please wait while contacting node';

  @override
  String get addingNodeTitle => 'Adding Node';

  @override
  String get address => 'Address';

  @override
  String get addressCopied => 'アドレスをコピーしました';

  @override
  String get addressCopiedFailed => 'Failed to copy address';

  @override
  String get addressHint => 'アドレスを入力';

  @override
  String get addressMising => 'アドレスを入力してください';

  @override
  String get addressShare => 'アドレスを共有する';

  @override
  String get kaspaUriCopied => 'Kaspa URI Copied';

  @override
  String get kaspaUriCopyFailed => 'Failed to copy Kaspa URI';

  @override
  String get advancedHeader => 'Advanced';

  @override
  String get amount => 'Amount';

  @override
  String amountConfirm(String amount, String coin) {
    return 'Amount $amount $coin';
  }

  @override
  String get amountMissing => '金額を入力してください';

  @override
  String get amountZero => 'Amount can\'t be zero';

  @override
  String get areYouSure => 'Are you sure?';

  @override
  String get authBiometricMessage => 'Authenticate to Add Wallet';

  @override
  String get authMethod => '認証方法';

  @override
  String get authPinMessage => 'Enter PIN to Add Wallet';

  @override
  String get autoLockHeader => '自動的にロックする';

  @override
  String get available => 'Available';

  @override
  String get backupConfirmButton => 'バックアップしました';

  @override
  String get backupSecretPhrase => 'シークレットフレーズをバックアップする';

  @override
  String get missingSecretPhrase => 'Missing Secret Phrase';

  @override
  String get biometricsMethod => '生体認証';

  @override
  String get blockExplorer => 'Block Explorer';

  @override
  String get cancel => 'キャンセル';

  @override
  String get change => 'Change';

  @override
  String get changeAddress => 'Change Address';

  @override
  String get changeAddressCopied => 'Change address copied';

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
  String get close => '閉じる';

  @override
  String get confirm => '確認しました';

  @override
  String get confirmPasswordHint => 'パスワードを確認する';

  @override
  String confirmations(String confirmations) {
    return '$confirmations confirmations';
  }

  @override
  String get confirmed => 'confirmed';

  @override
  String get confirming => 'confirming';

  @override
  String contactAdded(String contactName) {
    return '$contactNameが連絡先に追加されました。';
  }

  @override
  String contactAddressCopied(String address) {
    return '$address address copied';
  }

  @override
  String get contactExists => '既に存在する連絡先です';

  @override
  String get contactHeader => '連絡先';

  @override
  String get contactInvalid => '連絡先名が無効です';

  @override
  String get contactNameHint => '@に続けて名前を入力';

  @override
  String get contactNameMissing => 'この連絡先の名前を入力してください';

  @override
  String contactRemoved(String contactName) {
    return '$contactNameが連絡先から削除されました！';
  }

  @override
  String get contactsHeader => '連絡先';

  @override
  String get contactsImportErr => '連絡先をインポートできませんでした';

  @override
  String contactsImportSuccess(String noContacts) {
    return '$noContactsの連絡先を正常にインポートしました。';
  }

  @override
  String get copied => 'コピー済み';

  @override
  String get copy => 'コピーする';

  @override
  String get copyAddress => 'アドレスをコピーする';

  @override
  String get copyErrorButton => 'Copy Error';

  @override
  String get createAPasswordHeader => 'パスワードを作成する';

  @override
  String get createPasswordFirstParagraph =>
      'パスワードを設定してウォレットのセキュリティを追加することができます。';

  @override
  String get createPasswordHint => 'パスワードを作成する';

  @override
  String get createPasswordSecondParagraph =>
      'パスワードの設定は任意ですが、いずれにしてもウォレットはピンまたは生体認証で保護されます。';

  @override
  String get createPasswordSheetHeader => '作成する';

  @override
  String get currency => 'Currency';

  @override
  String get currencyPoweredBy => 'Powered by CoinGecko';

  @override
  String get defaultAccountName => 'メインアカウント';

  @override
  String defaultNewAccountName(int addressIndex) {
    return 'アカウント$addressIndex';
  }

  @override
  String get defaultWalletName => 'My Wallet';

  @override
  String get disablePasswordSheetHeader => '無効にする';

  @override
  String get disablePasswordSuccess => 'パスワードの無効化に成功しました。';

  @override
  String get disableWalletPassword => 'ウォレットのパスワードを無効にする';

  @override
  String get doContinue => 'Continue';

  @override
  String get donate => 'Donate';

  @override
  String get donateTo => 'Donate To';

  @override
  String get dontShowAgain => 'Don\'t show again';

  @override
  String get emptyCardIntroUtxos =>
      'This is the UTXOs tab. All UTXOs in your wallet will appear here';

  @override
  String get emptyResult => 'Empty Result';

  @override
  String get emptyWalletName => 'Wallet Name cannot be empty';

  @override
  String get encryptionFailedError => 'ウォレットパスワードの作成に失敗しました。';

  @override
  String get enterAddress => 'アドレスを入力する';

  @override
  String get enterAmount => '金額を入力する';

  @override
  String get enterFiatValue => 'Enter Fiat Value';

  @override
  String get enterNote => 'Enter Note';

  @override
  String get enterPasswordHint => 'パスワードを入力する';

  @override
  String get errorMessageCopied => 'Error message copied to clipboard';

  @override
  String get exampleCardIntro => 'ナトリアムへようこそ。 ナノを受け取ると、トランザクションは次のように表示されます。';

  @override
  String get export => 'Export';

  @override
  String get fee => 'Fee';

  @override
  String feeConfirm(String amount, String coin) {
    return 'Fee $amount $coin';
  }

  @override
  String get feeTitle => 'FEE';

  @override
  String get fetchingTransactions => 'Fetching Transactions';

  @override
  String get fingerprintSeedBackup => 'シードをバックアップする認証を行います。';

  @override
  String get goBackButton => '戻る';

  @override
  String get gotItButton => '了解しました';

  @override
  String get import => 'インポート';

  @override
  String get importSecretPhrase => 'シークレットフレーズをインポートする';

  @override
  String get importSecretPhraseHint =>
      '以下に24語のシークレットフレーズを入力してください。各単語はスペースで区切ります。';

  @override
  String get importSecretPhraseHintCombo =>
      'Please enter your 12 or 24 word secret phrase below.';

  @override
  String get importSecretPhraseHintLegacy =>
      'Please enter your 12 word secret phrase below.';

  @override
  String get importWallet => 'ウォレットをインポートする';

  @override
  String get importWalletDescription => 'Please select an option below.';

  @override
  String get instantly => '今すぐ';

  @override
  String get insufficientBalance => '残高不足です';

  @override
  String get insufficientBalanceDetails =>
      'You don\'t have enough KAS for this transaction';

  @override
  String get invalidAddress => '入力したアドレスが無効です';

  @override
  String get invalidAmount => 'Invalid Amount';

  @override
  String get invalidChecksumMessage =>
      'Please check that your Secret Phrase\n is entered correctly!';

  @override
  String get invalidKpubMessage =>
      'Please check that your extended public key is entered correctly!';

  @override
  String get invalidDestinationAddress => 'Invalid Destination Address';

  @override
  String get invalidPassword => 'パスワードが無効です';

  @override
  String get kaspaDevFund => 'Kaspa Dev Fund';

  @override
  String get kaspiumWallet => 'Kaspium Wallet';

  @override
  String get language => '言語';

  @override
  String get loadingTransactions => 'Loading Transactions...';

  @override
  String get lockAppSetting => '起動時に認証する';

  @override
  String get locked => 'ロック済み';

  @override
  String get loggingOutMessage => 'Logging out...';

  @override
  String get logout => 'ログアウト';

  @override
  String get logoutDialogContent =>
      'Are you sure you want to logout from this wallet?';

  @override
  String get logoutOrSwitchWallet => 'Logout / Switch Wallet';

  @override
  String get manage => '管理';

  @override
  String get manualEntry => '手動で入力';

  @override
  String get networkHeader => 'Network';

  @override
  String get newAddress => 'New Address';

  @override
  String get newWallet => '新しいウォレットを作成する';

  @override
  String get nextButton => '次へ';

  @override
  String get no => 'いいえ';

  @override
  String get noContactsExport => 'エクスポートする連絡先はありません。';

  @override
  String get noContactsImport => 'インポートする新しい連絡先はありません。';

  @override
  String get noQrCodeFound => 'No QR code found';

  @override
  String get noSkipButton => 'いいえ、スキップする';

  @override
  String get noUppercase => 'NO';

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
  String get nodeUrlHint => 'Enter Node URL';

  @override
  String get nodeUrlInvalid => 'Invalid node URL';

  @override
  String get nodesSheetTitle => 'Kaspa Nodes';

  @override
  String get off => 'オフ';

  @override
  String get on => 'オン';

  @override
  String get paperWallet => 'ペーパーウォレット';

  @override
  String get passwordBlank => 'パスワードは空欄にできません';

  @override
  String get passwordNoLongerRequiredToOpenParagraph =>
      'Natriumを開く際にパスワードを必要としなくなります。';

  @override
  String get passwordWillBeRequiredToOpenParagraph =>
      'このパスワードはNatriumを開く際に必要となります。';

  @override
  String get passwordsDontMatch => 'パスワードが一致しません';

  @override
  String get pasteMnemonicError =>
      'Clipboard content is not a valid secret phrase';

  @override
  String get pending => 'pending';

  @override
  String get pinConfirmError => '暗証番号が一致しません';

  @override
  String get pinConfirmTitle => '暗証番号が正しいことを確認しました';

  @override
  String get pinCreateTitle => '6桁の暗証番号を作成する';

  @override
  String get pinEnterTitle => '暗証番号を入力してください';

  @override
  String get pinInvalid => '入力した暗証番号が無効です';

  @override
  String get pinMethod => 'ピン';

  @override
  String get pinSeedBackup => 'シードをバックアップするため暗証番号を入力して下さい';

  @override
  String get preferences => '設定';

  @override
  String get privacyPolicy => '個人情報保護方針';

  @override
  String get qrInvalidAddress => 'QRコードに正しい送金先が含まれていません。';

  @override
  String get qrInvalidSeed => 'QRコードに有効なシードまたは秘密キーが含まれていません';

  @override
  String get qrMnemonicError => 'QRに有効なシークレットフレーズが含まれていません';

  @override
  String get receive => '着金';

  @override
  String get receiveAddress => 'Receive Address';

  @override
  String get receiveAddressCopied => 'Receive address copied';

  @override
  String get receiveIndex => 'Receive Index';

  @override
  String receiveIndexParam(String addressIndex) {
    return 'Receive $addressIndex';
  }

  @override
  String get received => '着金済み';

  @override
  String get removeContact => '連絡先を削除します';

  @override
  String removeContactConfirmation(String contactName) {
    return '$contactNameを削除してもよろしいですか？';
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
  String get requireAPasswordToOpenHeader => 'Natriumを開く際にパスワードを要求しますか?';

  @override
  String get restartSetupButton => 'Restart Setup';

  @override
  String get scanQrCode => 'QRコードをスキャン';

  @override
  String get scanQrCodeError => 'Failed to parse qr code';

  @override
  String get secretInfo =>
      '次の画面で、シークレットフレーズが表示されます。資金にアクセスするためのパスワードです。バックアップして、誰とも共有しないでください。';

  @override
  String get secretInfoHeader => '安全のために';

  @override
  String get secretPhrase => 'シークレットフレーズ';

  @override
  String get secretPhrase12Words => '12 WORDS';

  @override
  String get secretPhrase24Words => '24 WORDS';

  @override
  String get secretWarning =>
      'デバイスを紛失したり、アプリケーションをアンインストールした場合、資金を回収するためにシークレットフレーズまたはシードが必要になります！';

  @override
  String get securityHeader => 'セキュリティ';

  @override
  String get seed => 'Seed';

  @override
  String get seedInvalid => 'シードが無効です';

  @override
  String get send => '送金';

  @override
  String get sendConfirm => 'Send';

  @override
  String get sendError => 'エラーが発生しました。後で再び実行してください。';

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
  String get sending => '送金金額';

  @override
  String get sent => '送金した';

  @override
  String get sentTo => 'Sent to';

  @override
  String get setPassword => 'ウォレットのパスワードを作成する';

  @override
  String get setPasswordSuccess => 'パスワードの設定に成功しました。';

  @override
  String get setWalletPassword => 'ウォレットのパスワードを作成する';

  @override
  String get settingsHeader => '設定';

  @override
  String get settingsTransfer => 'ペーパーウォレットから読み込む';

  @override
  String get setupFailedMessage => 'Something went wrong';

  @override
  String get shareKaspium => 'Share Kaspium';

  @override
  String get shareKaspiumSubject => 'Check out Kaspium Wallet';

  @override
  String get shareKaspiumText =>
      'Check out Kaspium - Kaspa Mobile Wallet.\nWebsite - kaspium.io';

  @override
  String get somethingWentWrong => 'Something went wrong';

  @override
  String get systemDefault => 'システムのデフォルト言語';

  @override
  String get tapToHide => 'タップして非表示にする';

  @override
  String get tapToReveal => 'タップして表示する';

  @override
  String get themeDark => 'Dark Theme';

  @override
  String get themeHeader => '壁紙';

  @override
  String get themeLight => 'Light Theme';

  @override
  String get thisWallet => '#This Wallet';

  @override
  String get to => '送金先';

  @override
  String get toAddress => 'To Address';

  @override
  String get tooManyFailedAttempts => '既定のロック解除の失敗回数を超えています。';

  @override
  String get totalValue => 'Total Value';

  @override
  String get transactionId => 'Transaction ID';

  @override
  String get transactionsUppercase => 'TRANSACTIONS';

  @override
  String get transfer => '転送';

  @override
  String get transferClose => '任意の場所をタップしてウィンドウを閉じます。';

  @override
  String transferComplete(String amount) {
    return '$amount ナノがナトリアムウォレットに正常に転送されました。\n';
  }

  @override
  String transferConfirmInfo(String amount) {
    return '残高$amount ナノのウォレットが検出されました。\n';
  }

  @override
  String get transferConfirmInfoSecond => '確認をタップして資金を転送します。\n';

  @override
  String get transferConfirmInfoThird => '転送が完了するまでに数秒かかる場合があります。';

  @override
  String get transferError => '転送中にエラーが発生しました。後で再び実行してください。';

  @override
  String get transferHeader => '資金を転送する';

  @override
  String transferIntro(String button) {
    return 'このプロセスにより、資金がペーパーウォレットからNatriumウォレットに転送されます。\n \n$button「％1」ボタンをタップして開始します。';
  }

  @override
  String get transferLoading => '転送中';

  @override
  String get transferManualHint => 'シードを入力してください。';

  @override
  String get transferNoFunds => 'このシードにはナノが含まれていません';

  @override
  String get transferQrScanError => 'このQRコードには有効なシードが含まれていません。';

  @override
  String get transferQrScanHint => 'ナノ \n シードまたは秘密キーをスキャンします';

  @override
  String get unconfirmed => 'unconfirmed';

  @override
  String get notAccepted => 'not accepted';

  @override
  String get accepted => 'accepted';

  @override
  String get unknown => 'unknown';

  @override
  String get unlock => 'ロックを解除する';

  @override
  String get unlockBiometrics => 'ナトリアムのロックを解除するよう認証する';

  @override
  String get unlockPin => 'ピンを入力してナトリアムのロックを解除する';

  @override
  String get utxosUppercase => 'UTXOs';

  @override
  String get viewAddress => 'View Address';

  @override
  String get viewTransaction => 'View Transaction';

  @override
  String get walletAddresses => 'Wallet Addresses';

  @override
  String get walletAddress => 'Wallet Address';

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
  String get warning => '警告';

  @override
  String welcomeMessage(String version) {
    return 'Welcome!\n\nThis is version $version of Kaspium - the mobile wallet for Kaspa';
  }

  @override
  String get welcomeText => 'ナトリアムへようこそ。最初に、新しいウォレットを作成するか、既存のウォレットをインポートします。';

  @override
  String xMinutes(int minutes) {
    final intl.NumberFormat minutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String minutesString = minutesNumberFormat.format(minutes);

    return '$minutesString';
  }

  @override
  String get yes => 'はい';

  @override
  String get yesButton => 'Yes';

  @override
  String get yesUppercase => 'YES';

  @override
  String get nodeNotSyncedException => 'Node is not synced';

  @override
  String get nodeNoUTXOIndexException => 'Node does not have UTXO index';

  @override
  String get nodeSecureConnection => 'Secure connection';

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
