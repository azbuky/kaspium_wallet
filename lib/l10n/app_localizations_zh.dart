// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get account => '账户';

  @override
  String get accounts => '账户';

  @override
  String get ackBackedUp => '您确定助记词已备份？';

  @override
  String get add => '添加';

  @override
  String get addAccount => '添加账户';

  @override
  String get addContact => '添加联系人';

  @override
  String get addNode => '添加节点';

  @override
  String get addNodeFailed => '添加 Kaspa 节点失败';

  @override
  String addNodeFailedMessage(String error) {
    return '失败: $error';
  }

  @override
  String get addNodeSuccess => '添加节点成功';

  @override
  String get addingNodeMessage => '连接节点中, 请等待';

  @override
  String get addingNodeTitle => '添加节点中';

  @override
  String get address => '地址';

  @override
  String get addressCopied => '地址已复制';

  @override
  String get addressCopiedFailed => '复制地址失败';

  @override
  String get addressHint => '输入地址';

  @override
  String get addressMising => '请输入地址';

  @override
  String get addressShare => '分享地址';

  @override
  String get kaspaUriCopied => '已复制 Kaspa URI';

  @override
  String get kaspaUriCopyFailed => '未能成功复制 Kaspa URI';

  @override
  String get advancedHeader => '高级';

  @override
  String get amount => '数额';

  @override
  String amountConfirm(String amount, String coin) {
    return '数额 $amount $coin';
  }

  @override
  String get amountMissing => '请输入数额';

  @override
  String get amountZero => '数额不能为零';

  @override
  String get areYouSure => '请确认?';

  @override
  String get authBiometricMessage => '验证添加钱包';

  @override
  String get authMethod => '验证方法';

  @override
  String get authPinMessage => '输入 PIN 添加钱包';

  @override
  String get autoLockHeader => '自动锁定';

  @override
  String get available => '可用余额';

  @override
  String get backupConfirmButton => '我已备份';

  @override
  String get backupSecretPhrase => '备份助记词';

  @override
  String get missingSecretPhrase => 'Missing Secret Phrase';

  @override
  String get biometricsMethod => '生物识别';

  @override
  String get blockExplorer => '区块浏览器';

  @override
  String get cancel => '取消';

  @override
  String get change => '零钱';

  @override
  String get changeAddress => '零钱地址';

  @override
  String get changeAddressCopied => '零钱地址已复制';

  @override
  String get changeIndex => '零钱索引';

  @override
  String changeIndexParam(String addressIndex) {
    return '零钱 $addressIndex';
  }

  @override
  String get checkCameraPermission => '请检查相机权限';

  @override
  String get clipboardEmpty => '粘贴板为空';

  @override
  String get close => '关闭';

  @override
  String get confirm => '确认';

  @override
  String get confirmPasswordHint => '确认密码';

  @override
  String confirmations(String confirmations) {
    return '$confirmations 确认';
  }

  @override
  String get confirmed => '已确认';

  @override
  String get confirming => '确认中';

  @override
  String contactAdded(String contactName) {
    return '$contactName 已被添加到联系人';
  }

  @override
  String contactAddressCopied(String address) {
    return '$address 地址已被复制';
  }

  @override
  String get contactExists => '联系人已存在';

  @override
  String get contactHeader => '联系人';

  @override
  String get contactInvalid => '联系人姓名无效';

  @override
  String get contactNameHint => '输入姓名 @';

  @override
  String get contactNameMissing => '为此联系人选择一个姓名';

  @override
  String contactRemoved(String contactName) {
    return '$contactName 已从联系人名单中刪除!';
  }

  @override
  String get contactsHeader => '联系人';

  @override
  String get contactsImportErr => '无法导入联系人';

  @override
  String contactsImportSuccess(String noContacts) {
    return '已成功导入 $noContacts 位联系人';
  }

  @override
  String get copied => '已复制';

  @override
  String get copy => '复制';

  @override
  String get copyAddress => '复制地址';

  @override
  String get copyErrorButton => '复制出现错误';

  @override
  String get createAPasswordHeader => '创建一个密码。';

  @override
  String get createPasswordFirstParagraph => '您可以创建一个密码来加强您钱包的安全性。';

  @override
  String get createPasswordHint => '创建密码';

  @override
  String get createPasswordSecondParagraph => '密码是可选的，无论如何您的钱包仍会被识别码或生物识别技术保护。';

  @override
  String get createPasswordSheetHeader => '创建';

  @override
  String get currency => '货币';

  @override
  String get currencyPoweredBy => '由 CoinGecko 提供支持';

  @override
  String get defaultAccountName => '地址 1';

  @override
  String defaultNewAccountName(int addressIndex) {
    return '账户 $addressIndex';
  }

  @override
  String get defaultWalletName => '我的钱包';

  @override
  String get disablePasswordSheetHeader => '解除';

  @override
  String get disablePasswordSuccess => '钱包密码已被解除';

  @override
  String get disableWalletPassword => '解除钱包密码';

  @override
  String get doContinue => '继续';

  @override
  String get donate => '捐赠';

  @override
  String get donateTo => '捐赠给';

  @override
  String get dontShowAgain => '不再显示';

  @override
  String get emptyCardIntroUtxos => '这是 UTXO 选项卡。此钱包中的所有 UTXO 都会在这里显示。';

  @override
  String get emptyResult => '空结果';

  @override
  String get emptyWalletName => '钱包名称不能为空';

  @override
  String get encryptionFailedError => '钱包密码设置失败';

  @override
  String get enterAddress => '输入地址';

  @override
  String get enterAmount => '输入数额';

  @override
  String get enterFiatValue => '输入法币单位';

  @override
  String get enterNote => '输入笔记';

  @override
  String get enterPasswordHint => '输入您的密码';

  @override
  String get errorMessageCopied => '错误信息已复制到粘贴板';

  @override
  String get exampleCardIntro => '欢迎来到交易选项卡。您发送或接收的交易记录将会在此显示。';

  @override
  String get export => '导出';

  @override
  String get fee => '费用';

  @override
  String feeConfirm(String amount, String coin) {
    return '费用 $amount $coin';
  }

  @override
  String get feeTitle => '费用';

  @override
  String get fetchingTransactions => '获取交易';

  @override
  String get fingerprintSeedBackup => '验证指纹以备份助记词。';

  @override
  String get goBackButton => '返回';

  @override
  String get gotItButton => '明白！';

  @override
  String get import => '导入';

  @override
  String get importSecretPhrase => '导入助记词';

  @override
  String get importSecretPhraseHint => '请在下方输入您的 24 个助记词。';

  @override
  String get importSecretPhraseHintCombo => '请在下方输入 12 或 24 个助记词。';

  @override
  String get importSecretPhraseHintLegacy => '请在下方输入 12 个助记词。';

  @override
  String get importWallet => '导入现有钱包';

  @override
  String get importWalletDescription => '请选择一个以下选项。';

  @override
  String get instantly => '立刻';

  @override
  String get insufficientBalance => '余额不足';

  @override
  String get insufficientBalanceDetails => '您没有足够的 KAS 支付这笔交易';

  @override
  String get invalidAddress => '无效的目标地址';

  @override
  String get invalidAmount => '无效数额';

  @override
  String get invalidChecksumMessage => '请确认助记词\n已正确输入!';

  @override
  String get invalidKpubMessage => '请确认您的扩展公钥被正确输入！';

  @override
  String get invalidDestinationAddress => '无效目标地址';

  @override
  String get invalidPassword => '无效密码';

  @override
  String get kaspaDevFund => 'Kaspa 开发基金';

  @override
  String get kaspiumWallet => 'Kaspium 钱包';

  @override
  String get language => '语言';

  @override
  String get loadingTransactions => '加载交易中... ';

  @override
  String get lockAppSetting => '启动时要求验证';

  @override
  String get locked => '已锁定';

  @override
  String get loggingOutMessage => '登出中...';

  @override
  String get logout => '登出';

  @override
  String get logoutDialogContent => '您确认希望登出这个钱包?';

  @override
  String get logoutOrSwitchWallet => '登出 / 切换钱包';

  @override
  String get manage => '管理';

  @override
  String get manualEntry => '手动输入';

  @override
  String get networkHeader => '网络';

  @override
  String get newAddress => '新地址';

  @override
  String get newWallet => '创建新钱包';

  @override
  String get nextButton => '继续';

  @override
  String get no => '否认';

  @override
  String get noContactsExport => '没有要导出的联系人';

  @override
  String get noContactsImport => '没有新的联系人需要导入';

  @override
  String get noQrCodeFound => '没有发现二维码';

  @override
  String get noSkipButton => '不，跳过';

  @override
  String get noUppercase => '否';

  @override
  String get nodeAddress => 'Kaspa 节点';

  @override
  String get nodeDeleteMessage => '您确定要删除吗？';

  @override
  String get nodeDeleteTitle => '删除 Kaspa 节点配置?';

  @override
  String get nodeNameEmpty => '节点名称不能为空';

  @override
  String get nodeNameHint => '输入节点名称';

  @override
  String get nodeUrlHint => '输入节点 URL';

  @override
  String get nodeUrlInvalid => '无效节点 URL';

  @override
  String get nodesSheetTitle => 'Kaspa 节点';

  @override
  String get off => '关闭';

  @override
  String get on => '开启';

  @override
  String get paperWallet => '纸钱包';

  @override
  String get passwordBlank => '密码不能为空';

  @override
  String get passwordNoLongerRequiredToOpenParagraph =>
      '您以后打开 Kaspium 不再需要密码了。';

  @override
  String get passwordWillBeRequiredToOpenParagraph => '以后需要这个密码才能打开Kaspium。';

  @override
  String get passwordsDontMatch => '密码不匹配';

  @override
  String get pasteMnemonicError => '粘贴板内容不是有效的助记词';

  @override
  String get pending => '待处理';

  @override
  String get pinConfirmError => '识别码不匹配';

  @override
  String get pinConfirmTitle => '确认您的识别码';

  @override
  String get pinCreateTitle => '创建一个 6 位数的识别码';

  @override
  String get pinEnterTitle => '输入识别码';

  @override
  String get pinInvalid => '输入的识别码无效';

  @override
  String get pinMethod => '识别码';

  @override
  String get pinSeedBackup => '输入识别码以备份钱包助记词';

  @override
  String get preferences => '偏好';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String get qrInvalidAddress => '二维码不包含一个有效的地址';

  @override
  String get qrInvalidSeed => '二维码不包含任何有效的种子或私钥';

  @override
  String get qrMnemonicError => '二维码不包含有效的助记词';

  @override
  String get receive => '接收';

  @override
  String get receiveAddress => '接收地址';

  @override
  String get receiveAddressCopied => '接收地址已复制';

  @override
  String get receiveIndex => '接收索引';

  @override
  String receiveIndexParam(String addressIndex) {
    return '接收 $addressIndex';
  }

  @override
  String get received => '已接收';

  @override
  String get removeContact => '删除联系人';

  @override
  String removeContactConfirmation(String contactName) {
    return '您确认要刪除 $contactName 吗？';
  }

  @override
  String get removeWalletAction => '删除钱包';

  @override
  String get removeWalletBiometricsMessage => '验证移除钱包';

  @override
  String get removeWalletDetail =>
      '移除钱包将会从此设备移除助记词和所有钱包相关数据。如果助记词没有备份，资金将永远无法访问。';

  @override
  String get removeWalletPinMessage => '输入识别码移除钱包';

  @override
  String get removeWalletReassurance => '如备份已助记词则不必担心。';

  @override
  String get requireAPasswordToOpenHeader => '需要密码来打开 Kaspium 吗？';

  @override
  String get restartSetupButton => '重新设置';

  @override
  String get scanQrCode => '扫描二维码';

  @override
  String get scanQrCodeError => '解析二维码已失败';

  @override
  String get secretInfo => '下一屏，将会看到您的助记词，它是存取资金的密码。请确保备份好，且不要与任何人透露。';

  @override
  String get secretInfoHeader => '安全第一！';

  @override
  String get secretPhrase => '助记词';

  @override
  String get secretPhrase12Words => '12 WORDS';

  @override
  String get secretPhrase24Words => '24 WORDS';

  @override
  String get secretWarning => '如果手机丢失或此程序被卸载，您将需要助记词恢复钱包访问！';

  @override
  String get securityHeader => '安全';

  @override
  String get seed => '助记词';

  @override
  String get seedInvalid => '助记词无效';

  @override
  String get send => '发送';

  @override
  String get sendConfirm => '发送';

  @override
  String get sendError => '发生错误。请稍后再试。';

  @override
  String get sendNote => '笔记';

  @override
  String get sendToAddressTitle => '至';

  @override
  String get sendTxProgressDescription => '交易发送请等待';

  @override
  String get sendTxProgressTitle => '发送交易中';

  @override
  String get sending => '发送';

  @override
  String get sent => '已发送';

  @override
  String get sentTo => '发送至';

  @override
  String get setPassword => '设置密码';

  @override
  String get setPasswordSuccess => '密码设置成功';

  @override
  String get setWalletPassword => '设置钱包密码';

  @override
  String get settingsHeader => '设置';

  @override
  String get settingsTransfer => '从纸钱包载入';

  @override
  String get setupFailedMessage => '发生了错误';

  @override
  String get shareKaspium => '分享 Kaspium';

  @override
  String get shareKaspiumSubject => '查看 Kaspium 钱包';

  @override
  String get shareKaspiumText => '查看 Kaspium - Kaspa 移动钱包\n网站 - kaspium.io';

  @override
  String get somethingWentWrong => '发生了错误';

  @override
  String get systemDefault => '系统默认';

  @override
  String get tapToHide => '点击隐藏';

  @override
  String get tapToReveal => '点击揭示';

  @override
  String get themeDark => '深色主题';

  @override
  String get themeHeader => '主题';

  @override
  String get themeLight => '浅色主题';

  @override
  String get thisWallet => '#当前钱包';

  @override
  String get to => '至';

  @override
  String get toAddress => '至地址';

  @override
  String get tooManyFailedAttempts => '尝试解锁失败次数过多。';

  @override
  String get totalValue => '总数';

  @override
  String get transactionId => '交易 ID';

  @override
  String get transactionsUppercase => '交易';

  @override
  String get transfer => '传送';

  @override
  String get transferClose => '点击任意位置关闭窗口。';

  @override
  String transferComplete(String amount) {
    return '$amount KAS 成功传送到您的 Kaspium 钱包。\n';
  }

  @override
  String transferConfirmInfo(String amount) {
    return '检测到一个包含 $amount KAS 的钱包。';
  }

  @override
  String get transferConfirmInfoSecond => '按键确定传送钱币。\n';

  @override
  String get transferConfirmInfoThird => '传送需要几秒钟完成，请稍等一下。';

  @override
  String get transferError => '传送出现了问题，请稍后再尝试。';

  @override
  String get transferHeader => '传送钱币';

  @override
  String transferIntro(String button) {
    return '这个过程会将纸钱包的钱币转移到您的 Kaspium 钱包。\n\n请按 \"$button\" 键开始。';
  }

  @override
  String get transferLoading => '传送中';

  @override
  String get transferManualHint => '请在下方输入助记词。';

  @override
  String get transferNoFunds => '这组助记词不包含任何 KAS';

  @override
  String get transferQrScanError => '这个二维码没有包含任何有效的助记词。';

  @override
  String get transferQrScanHint => '请扫描 Kaspa\n助记词或私钥';

  @override
  String get unconfirmed => '未确认';

  @override
  String get notAccepted => '未能接受';

  @override
  String get accepted => '已接受';

  @override
  String get unknown => '未知';

  @override
  String get unlock => '解锁';

  @override
  String get unlockBiometrics => '验证并解锁 Kaspium';

  @override
  String get unlockPin => '请输入识别码来解锁 Kaspium';

  @override
  String get utxosUppercase => 'UTXO';

  @override
  String get viewAddress => '查看地址';

  @override
  String get viewTransaction => '查看交易';

  @override
  String get walletAddresses => '钱包地址';

  @override
  String get walletAddress => '钱包地址';

  @override
  String get walletName => '钱包名称';

  @override
  String get walletNameDescription => '输入钱包名称';

  @override
  String get walletNameHint => '钱包名称';

  @override
  String get walletSetupAddressDiscovery => '运行地址发现';

  @override
  String get walletSetupMessage => '设置钱包中';

  @override
  String get walletsTitle => '钱包';

  @override
  String get warning => '警告';

  @override
  String welcomeMessage(String version) {
    return '欢迎您！\n\n这是 Kaspium $version - Kaspa 的移动钱包';
  }

  @override
  String get welcomeText => '欢迎来到 Kaspium。下一步，您可以创建新钱包或导入已有钱包。';

  @override
  String xMinutes(int minutes) {
    final intl.NumberFormat minutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutesString',
      one: '1',
    );
    return '$_temp0 分钟后';
  }

  @override
  String get yes => '是';

  @override
  String get yesButton => '是';

  @override
  String get yesUppercase => '是';

  @override
  String get nodeNotSyncedException => '节点没有同步';

  @override
  String get nodeNoUTXOIndexException => '节点没有 UTXO 索引';

  @override
  String get nodeSecureConnection => '安全连接';

  @override
  String get kaspaUriInvalid => '无效的 Kaspa 地址';

  @override
  String get compoundUtxos => '合并交易（化零为整）';

  @override
  String get compoundRequired => '需要合并';

  @override
  String get compoundRequiredDescription => '这笔交易需要过多的 UTXO，建议合并余额以减少所需的 UTXO。';

  @override
  String get compoundUtxosDescription => '合并多个地址的零钱到一个地址。';

  @override
  String get compoundUtxosConfirmation => '合并交易（化零为整）?';

  @override
  String get compoundingUtxos => '正在合并交易（化零为整）';

  @override
  String get compoundingMessage => '请等待...';

  @override
  String get compoundSuccess => '合并成功';

  @override
  String get compoundFailure => '合并交易失败';

  @override
  String get compoundTooFewUtxos => '至少需要两个 UTXO';

  @override
  String get balance => '余额';

  @override
  String get maxSend => '最大发送';

  @override
  String get compoundUppercased => '合并';

  @override
  String get closeUppercased => '关闭';

  @override
  String get scanMoreAddresses => '扫描更多地址';

  @override
  String get addressDiscovery => '地址发现';

  @override
  String get scanningTitle => '扫描中';

  @override
  String get scanningDescription => '扫描更多地址中';

  @override
  String get scanMore => '扫描更多';

  @override
  String get scanFailedMessage => '扫描失败，请稍后尝试';

  @override
  String get indexHeader => '索引';

  @override
  String get currentIndex => '当前';

  @override
  String get scannedIndex => '已扫描';

  @override
  String get newIndex => '新建';

  @override
  String get addressFilterDialogTitle => '地址过滤';

  @override
  String get addressFilterDialogOptionAllAddresses => '查看全部地址';

  @override
  String get addressFilterDialogOptionNonZeroBalances => '查看所有非零余额地址';

  @override
  String get importOption24WordsTitle => '导入 24 个助记词';

  @override
  String get importOption24WordsDescription => '与 Cli 钱包和 Ledger 兼容';

  @override
  String get importOption12WordsTitle => '导入 12 个助记词';

  @override
  String get importOption12WordsDescription => '与网页钱包和 KDX 兼容';

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
  String get importOptionKpubTitle => '导入只读钱包';

  @override
  String get importOptionKpubDescription => '使用扩展公钥监视一个钱包的余额和交易';

  @override
  String get importKpub => '导入只读钱包';

  @override
  String get importKpubHint => '请输入你的扩展公钥';

  @override
  String get importKpubClipboardError => '粘贴板内容不是一个有效的扩展公钥';

  @override
  String get importKpubQrCodeError => '二维码没有包含一个有效的扩展公钥';

  @override
  String get importKpubInvalidMessage => '请确认你的扩展公钥输入正确。';

  @override
  String get receiveAddressListEmpty => '接收地址列表为空';

  @override
  String get changeAddressListEmpty => '零钱地址列表为空';

  @override
  String get hintAddressListEmpty => '从右上角查看地址过滤';

  @override
  String get invalidSecretPhrase => '无效的秘钥助记词';

  @override
  String get invalidSecretPhraseDetails => '您输入的秘钥助记词未能通过 Checksum 校验。';

  @override
  String get invalidSecretPhraseConfirmation => '我已知晓我的操作';

  @override
  String get contactSupport => '获取支持';

  @override
  String emailAction(String email) {
    return 'Email 地址';
  }

  @override
  String get noteLabel => '备注:';

  @override
  String get optionalLabel => '（可选）';

  @override
  String get buyKaspaSubtitle => '通过 Uphold Topper ';

  @override
  String get buyKaspaTitle => '购买 Kaspa';

  @override
  String get buyKaspaMessage => '简单快速地购买 \$KAS';

  @override
  String get buyKaspaMessageSecondary => '本服务由 Uphold 的法币兑加密货币平台 Topper 提供。';

  @override
  String get getStarted => '开始';

  @override
  String get aboutTopperTitle => '有关 Topper';

  @override
  String get aboutTopperDescription =>
      'Uphold Topper 是一个能过让用户方便地将法币兑换成加密货币的平台，支持使用信用卡、借记卡或银行账户进行支付。';

  @override
  String get moreInfo => '更多信息';

  @override
  String get selectAddress => '选择地址';

  @override
  String get kpubTitle => '扩展公钥';

  @override
  String get kpubAuth => '查看扩展公钥';

  @override
  String get kpubDescription => '本扩展公钥能够让你将本钱包作为「观察钱包」导出至其他支持平台。';

  @override
  String get copyKpub => '复制 Kpub';

  @override
  String get kpubCopied => '已复制扩展公钥';

  @override
  String get kpubCopyFailed => '未能成功复制扩展公钥';

  @override
  String walletAddressesCopied(String addressType) {
    return '钱包 $addressType 地址已复制到剪切板';
  }

  @override
  String walletAddressesCopyFailed(String addressType) {
    return '钱包 $addressType 地址未能成功复制';
  }

  @override
  String get txReport => '交易报告';

  @override
  String get txReportSubtitle => '获取 CSV 格式的交易报告';

  @override
  String get txReportDetails => '生成 CSV 格式的交易报告，其中包含钱包的所有交易历史记录。';

  @override
  String get txReportOptionIgnoreCompound => '忽略合并交易操作';

  @override
  String get txReportOptionIgnoreSelfTxs => '忽略对象为自己的交易操作';

  @override
  String get txReportOptionRefreshTxs => '刷新交易';

  @override
  String get txReportGenerate => '生成';

  @override
  String get txReportStatusRefreshing => '刷新交易中';

  @override
  String get txReportStatusLoading => '加载交易中';

  @override
  String get txReportStatusReady => '交易报告已经完成！';

  @override
  String get txReportGetReport => '获取报告';

  @override
  String get txReportDate => '日期';

  @override
  String get txReportSentAmount => '发送金额';

  @override
  String get txReportSentCurrency => '发送币种';

  @override
  String get txReportReceivedAmount => '接收金额';

  @override
  String get txReportReceivedCurrency => '接收币种';

  @override
  String get txReportFeeAmount => '手续费金额';

  @override
  String get txReportFeeCurrency => '手续费币种';

  @override
  String get txReportLabel => '标签';

  @override
  String get txReportDescription => '描述';

  @override
  String get txReportTxHash => 'TxHash';

  @override
  String get txReportNote => '备注';

  @override
  String get txReportLabelCost => '支出';

  @override
  String get txReportFeeForCompound => '合并交易的费用';

  @override
  String get txReportFeeForSelfSend => '发送给自有地址的费用';

  @override
  String get txReportError => '生成报告时出错';

  @override
  String txReportNoTxs(int numberOf) {
    return '找到 $numberOf 条交易记录。';
  }

  @override
  String txReportNoLoadedTxs(int loadedTxs, int totalTxs) {
    return '($loadedTxs / $totalTxs)';
  }

  @override
  String get txFilterDialogTitle => '筛选交易';

  @override
  String get txFilterDialogOptionAllTxs => '展示所有交易';

  @override
  String get txFilterDialogOptionHideNotAcceptedCoinbase => '隐藏未接受的创币交易';

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
