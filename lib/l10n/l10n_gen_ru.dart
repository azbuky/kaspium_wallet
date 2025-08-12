// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n_gen.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get aboutTopperDescription =>
      'Topper by Uphold is an easy to use fiat-to-crypto onramp that allows users to buy cryptocurencies using a credit/debit card or with a bank account.';

  @override
  String get aboutTopperTitle => 'About Topper';

  @override
  String get accepted => 'принято';

  @override
  String get account => 'Счёт';

  @override
  String get accounts => 'Счета';

  @override
  String get ackBackedUp =>
      'Вы уверены, что вы сохранили резервную копию вашей seed-фразы?';

  @override
  String get add => 'Добавить';

  @override
  String get addAccount => 'Добавить аккаунт';

  @override
  String get addContact => 'Добавить контакт';

  @override
  String get addingNodeMessage =>
      'Дождитесь, пожалуйста, установления связи с нодой';

  @override
  String get addingNodeTitle => 'Добавление ноды';

  @override
  String get addNode => 'Добавить ноду';

  @override
  String get addNodeFailed => 'Не удалось добавить ноду Kaspa';

  @override
  String addNodeFailedMessage(String error) {
    return 'Не удалось: $error';
  }

  @override
  String get addNodeSuccess => 'Нода добавлена успешно';

  @override
  String get address => 'Адрес';

  @override
  String get addressCopied => 'Адрес скопирован';

  @override
  String get addressCopiedFailed => 'Не удалось скопировать адрес';

  @override
  String get addressDiscovery => 'Обнаружение адресов';

  @override
  String get addressFilterDialogOptionAllAddresses => 'Просмотреть все адреса';

  @override
  String get addressFilterDialogOptionNonZeroBalances =>
      'Просмотреть адреса с балансом';

  @override
  String get addressFilterDialogTitle => 'Фильтр адресов';

  @override
  String get addressHint => 'Введите адрес';

  @override
  String get addressMising => 'Пожалуйста, введите адрес';

  @override
  String get addressShare => 'Поделиться адресом';

  @override
  String get advancedHeader => 'Дополнительно';

  @override
  String get amount => 'Количество';

  @override
  String amountConfirm(String amount, String coin) {
    return 'Количество $amount $coin';
  }

  @override
  String get amountMissing => 'Пожалуйста, введите сумму';

  @override
  String get amountZero => 'Сумма не может быть нулевой';

  @override
  String get areYouSure => 'Вы уверены?';

  @override
  String get authBiometricMessage =>
      'Аутентифицируйтесь, чтобы добавить кошелек';

  @override
  String get authMethod => 'Метод аутентификации';

  @override
  String get authPinMessage => 'Введите PIN-код, чтобы добавить кошелек';

  @override
  String get autoLockHeader => 'Блокировать автоматически';

  @override
  String get available => 'Доступно';

  @override
  String get backupConfirmButton => 'Я сделал резервную копию';

  @override
  String get backupSecretPhrase => 'Сделать резервную копию seed-фразы';

  @override
  String get balance => 'Баланс';

  @override
  String get biometricsMethod => 'Биометрия';

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
  String get blockExplorer => 'Обозреватель блоков';

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
  String get cancel => 'Отмена';

  @override
  String get change => 'Сдача';

  @override
  String get changeAddress => 'Адрес сдачи';

  @override
  String get changeAddressCopied => 'Адрес сдачи скопирован';

  @override
  String get changeAddressListEmpty => 'Список адресов для сдачи пуст';

  @override
  String get changeIndex => 'Индекс сдачи';

  @override
  String changeIndexParam(String addressIndex) {
    return 'Адрес сдачи $addressIndex';
  }

  @override
  String get checkCameraPermission =>
      'Проверьте, пожалуйста, права на использование камеры';

  @override
  String get clipboardEmpty => 'Буфер обмена пуст';

  @override
  String get close => 'Закрыть';

  @override
  String get closeUppercased => 'ЗАКРЫТЬ';

  @override
  String get compoundFailure => 'Не удалось сложить транзакции';

  @override
  String get compoundingMessage => 'Пожалуйста, подождите...';

  @override
  String get compoundingUtxos => 'Сложение транзакций';

  @override
  String get compoundRequired => 'Compound required';

  @override
  String get compoundRequiredDescription =>
      'The transaction amount requires too many UTXOs. Compounding will reduce the number of UTXOs.';

  @override
  String get compoundSuccess => 'Сложение успешно';

  @override
  String get compoundTooFewUtxos => 'Необходимо наличие не менее двух UTXO';

  @override
  String get compoundUppercased => 'СЛОЖИТЬ';

  @override
  String get compoundUtxos => 'Сложить транзакции';

  @override
  String get compoundUtxosConfirmation => 'Сложить транзакции?';

  @override
  String get compoundUtxosDescription => 'Сложить несколько UTXO в один';

  @override
  String get confirm => 'Подтвердить';

  @override
  String confirmations(String confirmations) {
    return '$confirmations подтверждений';
  }

  @override
  String get confirmed => 'подтверждено';

  @override
  String get confirming => 'подтверждается';

  @override
  String get confirmPasswordHint => 'Подтвердите пароль';

  @override
  String contactAdded(String contactName) {
    return '$contactName добавлен в контакты';
  }

  @override
  String contactAddressCopied(String address) {
    return 'Адрес $address скопирован';
  }

  @override
  String get contactExists => 'Контакт уже существует';

  @override
  String get contactHeader => 'Контакт';

  @override
  String get contactInvalid => 'Недопустимое имя контакта';

  @override
  String get contactNameHint => 'Введите имя @';

  @override
  String get contactNameMissing => 'Выберите имя для контакта';

  @override
  String contactRemoved(String contactName) {
    return '$contactName удален из контактов!';
  }

  @override
  String get contactsHeader => 'Контакты';

  @override
  String get contactsImportErr => 'Не удалось импортировать контакты';

  @override
  String contactsImportSuccess(String noContacts) {
    return 'Успешно импортировано контактов: $noContacts';
  }

  @override
  String get contactSupport => 'Contact Support';

  @override
  String get copied => 'Скопировано';

  @override
  String get copy => 'Копировать';

  @override
  String get copyAddress => 'Копировать адрес';

  @override
  String get copyErrorButton => 'Ошибка копирования';

  @override
  String get copyKpub => 'Copy Kpub';

  @override
  String get createAPasswordHeader => 'Создать пароль.';

  @override
  String get createPasswordFirstParagraph =>
      'Вы можете создать пароль для дополнительной безопасности кошелька.';

  @override
  String get createPasswordHint => 'Создать пароль';

  @override
  String get createPasswordSecondParagraph =>
      'Пароль не является обязательным, ваш кошелек будет защищен PIN-кодом или биометрической информацией и без пароля.';

  @override
  String get createPasswordSheetHeader => 'Создать';

  @override
  String get currency => 'Валюта';

  @override
  String get currencyPoweredBy => 'С поддержкой CoinGecko';

  @override
  String get currentIndex => 'Текущий';

  @override
  String get defaultAccountName => 'Адрес 1';

  @override
  String defaultNewAccountName(int addressIndex) {
    return 'Адрес получения $addressIndex';
  }

  @override
  String get defaultWalletName => 'Мой кошелек';

  @override
  String get disablePasswordSheetHeader => 'Отключить';

  @override
  String get disablePasswordSuccess => 'Пароль был отключен';

  @override
  String get disableWalletPassword => 'Отключить пароль';

  @override
  String get doContinue => 'Продолжить';

  @override
  String get donate => 'Пожертвовать';

  @override
  String get donateTo => 'Donate To';

  @override
  String get dontShowAgain => 'Не показывать снова';

  @override
  String emailAction(String email) {
    return 'Email $email';
  }

  @override
  String get emptyCardIntroUtxos =>
      'Это вкладка с выходом неизрасходованных транзакций - UTXO. Здесь будут отображаться все UTXO вашего кошелька.';

  @override
  String get emptyResult => 'Пустой результат';

  @override
  String get emptyWalletName => 'Имя кошелька не может быть пустым';

  @override
  String get encryptionFailedError => 'Не удалось установить пароль к кошельку';

  @override
  String get enterAddress => 'Введите адрес';

  @override
  String get enterAmount => 'Введите сумму';

  @override
  String get enterFiatValue => 'Enter Fiat Value';

  @override
  String get enterNote => 'Введите примечание';

  @override
  String get enterPasswordHint => 'Введите свой пароль';

  @override
  String get errorMessageCopied =>
      'Сообщение об ошибке скопировано в буфер обмена';

  @override
  String get exampleCardIntro =>
      'Это - вкладка с транзакциями. При получении или отправке транзакции она будет отображаться здесь.';

  @override
  String get export => 'Экспорт';

  @override
  String get fee => 'Комиссия';

  @override
  String get feeBaseUppercase => 'BASE FEE';

  @override
  String feeConfirm(String amount, String coin) {
    return 'Комиссия $amount $coin';
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
  String get feeTitle => 'КОМИССИЯ';

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
  String get fetchingTransactions => 'Получение списка транзакций';

  @override
  String get fingerprintSeedBackup =>
      'Аутентификация для резервного копирования seed-фразы.';

  @override
  String get getStarted => 'Get Started';

  @override
  String get goBackButton => 'Назад';

  @override
  String get gotItButton => 'Готово!';

  @override
  String get hideAccountHeader => 'Hide Account?';

  @override
  String get hideAccountText =>
      'Are you sure you want to hide this account? You can re-add it later by tapping the \"Add Account\" button.';

  @override
  String get hintAddressListEmpty =>
      'Проверьте фильтр адресов в правом верхнем углу';

  @override
  String get import => 'Импорт';

  @override
  String get importAsLegacyWallet => 'Import as Legacy Wallet';

  @override
  String get importAsStandardWallet => 'Import as Standard Wallet';

  @override
  String get importKpub => 'Импортировать кошелек только для просмотра';

  @override
  String get importKpubClipboardError =>
      'Содержимое буфера обмена не является действительным расширенным публичным ключом';

  @override
  String get importKpubHint =>
      'Пожалуйста, введите свой расширенный публичный ключ.';

  @override
  String get importKpubInvalidMessage =>
      'Проверьте, пожалуйста, правильность ввода расширенного публичного ключа!';

  @override
  String get importKpubQrCodeError =>
      'QR-код не содержит действительного расширенного публичного ключа';

  @override
  String get importLegacyWalletDetectedDetails =>
      'Do you want to import your wallet in legacy mode?';

  @override
  String get importLegacyWalletDetectedTitle => 'Legacy Wallet Detected';

  @override
  String get importOption12WordsDescription =>
      'Совместим с кошельком командной строки CLI и Ledger';

  @override
  String get importOption12WordsTitle =>
      'Импортировать секретную фразу из 12 слов';

  @override
  String get importOption24WordsDescription =>
      'Совместим с кошельком командной строки CLI и Ledger';

  @override
  String get importOption24WordsTitle =>
      'Импортировать секретную фразу из 24 слов';

  @override
  String get importOptionKpubDescription =>
      'Наблюдать за балансом и транзакциями кошелька с помощью расширенного публичного ключа';

  @override
  String get importOptionKpubTitle =>
      'Импортировать кошелек только для просмотра';

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
  String get importSecretPhrase => 'Импортировать секретную фразу';

  @override
  String get importSecretPhraseHint =>
      'Пожалуйста, введите вашу секретную фразу из 24 слов ниже. Каждое слово должно быть разделено пробелом.';

  @override
  String get importSecretPhraseHintCombo =>
      'Пожалуйста, введите свою секретную фразу из 12 или 24 слов ниже.';

  @override
  String get importSecretPhraseHintLegacy =>
      'Пожалуйста, введите свою секретную фразу из 12 слов ниже.';

  @override
  String get importWallet => 'Импортировать';

  @override
  String get importWalletAdvancedOptions => 'Advanced Options';

  @override
  String get importWalletDescription => 'Пожалуйста, выберите вариант ниже.';

  @override
  String get indexHeader => 'Индекс';

  @override
  String get instantly => 'Мгновенно';

  @override
  String get insufficientBalance => 'Недостаточный баланс';

  @override
  String get insufficientBalanceDetails =>
      'У вас не хватает KAS для этой транзакции';

  @override
  String get invalidAddress => 'Введен неверный адрес';

  @override
  String get invalidAmount => 'Недопустимое количество';

  @override
  String get invalidChecksumMessage =>
      'Удостоверьтесь, пожалуйста, что секретная фраза\nвведена корректно!';

  @override
  String get invalidDestinationAddress => 'Неверный адрес назначения';

  @override
  String get invalidKpubMessage =>
      'Проверьте, пожалуйста, правильность ввода расширенного публичного ключа!';

  @override
  String get invalidPassword => 'Неправильный пароль';

  @override
  String get invalidSecretPhrase => 'Invalid Secret Phrase';

  @override
  String get invalidSecretPhraseConfirmation => 'I know what I\'m doing';

  @override
  String get invalidSecretPhraseDetails =>
      'The Secret Phrase you entered has an invalid checksum.';

  @override
  String get kaspaDevFund => 'Фонд разработки Каспы';

  @override
  String get kaspaUriCopied => 'Kaspa URI Copied';

  @override
  String get kaspaUriCopyFailed => 'Failed to copy Kaspa URI';

  @override
  String get kaspaUriInvalid => 'Недействительный URI Kaspa';

  @override
  String get kaspiumWallet => 'Кошелёк Kaspium';

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
  String get language => 'Язык';

  @override
  String get loadingTransactions => 'Загрузка переводов...';

  @override
  String get lockAppSetting => 'Аутентификация при запуске';

  @override
  String get locked => 'Заблокировано';

  @override
  String get loggingOutMessage => 'Выход из аккаунта...';

  @override
  String get logout => 'Выход';

  @override
  String get logoutDialogContent => 'Вы уверены, что хотите выйти из кошелька?';

  @override
  String get logoutOrSwitchWallet => 'Выйти / Сменить кошелёк';

  @override
  String get manage => 'Управление';

  @override
  String get manualEntry => 'Ручной ввод';

  @override
  String get maxSend => 'Отправить максимум';

  @override
  String get missingSecretPhrase => 'Missing Secret Phrase';

  @override
  String get moreInfo => 'More Info';

  @override
  String get networkHeader => 'Сеть';

  @override
  String get newAddress => 'Новый адрес';

  @override
  String get newIndex => 'Новый';

  @override
  String get newWallet => 'Новый кошелёк';

  @override
  String get nextButton => 'Далее';

  @override
  String get no => 'Нет';

  @override
  String get noContactsExport => 'Нет контактов для экспорта';

  @override
  String get noContactsImport => 'Нет контактов для импорта';

  @override
  String get nodeAddress => 'Нода Kaspa';

  @override
  String get nodeDeleteMessage => 'Вы уверены, что хотите удалить?';

  @override
  String get nodeDeleteTitle => 'Удалить конфигурацию ноды Kaspa?';

  @override
  String get nodeNameEmpty => 'Имя ноды не может быть пустым';

  @override
  String get nodeNameHint => 'Введите имя ноды';

  @override
  String get nodeNotSyncedException => 'Нода не синхронизирована';

  @override
  String get nodeNoUTXOIndexException => 'Нода не имеет индекса UTXO ';

  @override
  String get nodeSecureConnection => 'Безопасное соединение';

  @override
  String get nodesSheetTitle => 'Ноды Kaspa';

  @override
  String get nodeUrlHint => 'Введите URL-адрес ноды';

  @override
  String get nodeUrlInvalid => 'Неверный URL-адрес ноды';

  @override
  String get noQrCodeFound => 'QR-код не обнаружен';

  @override
  String get noSkipButton => 'Нет, пропустить';

  @override
  String get notAccepted => 'не принято';

  @override
  String get noteLabel => 'Note:';

  @override
  String get noUppercase => 'Нет';

  @override
  String get off => 'Выкл.';

  @override
  String get on => 'Вкл.';

  @override
  String get optionalLabel => '(Optional)';

  @override
  String get paperWallet => 'Бумажный кошелёк';

  @override
  String get passwordBlank => 'Пароль не может быть пустым';

  @override
  String get passwordNoLongerRequiredToOpenParagraph =>
      'Вам больше не понадобится пароль, чтобы открыть этот кошелек.';

  @override
  String get passwordsDontMatch => 'Пароли не совпадают';

  @override
  String get passwordWillBeRequiredToOpenParagraph =>
      'Этот пароль будет нужен, чтобы открыть даный кошелёк.';

  @override
  String get pasteMnemonicError =>
      'Содержимое буфера обмена не является корректной seed-фразой';

  @override
  String get pending => 'в ожидании';

  @override
  String get pinConfirmError => 'PIN-коды не совпадают';

  @override
  String get pinConfirmTitle => 'Подтвердите PIN-код';

  @override
  String get pinCreateTitle => 'Создайте 6-значный PIN-код';

  @override
  String get pinEnterTitle => 'Введите PIN-код';

  @override
  String get pinInvalid => 'Введён неверный PIN-код';

  @override
  String get pinMethod => 'PIN-код';

  @override
  String get pinSeedBackup =>
      'Введите PIN-код, чтобы выполнить резервное копирование seed-фразы';

  @override
  String get preferences => 'Предпочтения';

  @override
  String get privacyPolicy => 'Политика конфиденциальности';

  @override
  String get qrInvalidAddress => 'QR-код не содержит корректного адреса';

  @override
  String get qrInvalidSeed =>
      'QR-код не содержит корректной seed-фразы или приватного ключа';

  @override
  String get qrMnemonicError => 'QR-код не содержит корректной seed-фразы';

  @override
  String get receive => 'Получить';

  @override
  String get receiveAddress => 'Адрес получения';

  @override
  String get receiveAddressCopied => 'Адрес получения скопирован';

  @override
  String get receiveAddressListEmpty => 'Список адресов для получения пуст';

  @override
  String get received => 'Получено';

  @override
  String get receiveIndex => 'Индекс адреса получения';

  @override
  String receiveIndexParam(String addressIndex) {
    return 'Адрес получения $addressIndex';
  }

  @override
  String get removeContact => 'Удалить контакт';

  @override
  String removeContactConfirmation(String contactName) {
    return 'Вы уверены, что хотите удалить $contactName?';
  }

  @override
  String get removeWalletAction => 'Удалить кошелек';

  @override
  String get removeWalletBiometricsMessage =>
      'Аутентифицируйтесь, чтобы удалить кошелек';

  @override
  String get removeWalletDetail =>
      'Удаление кошелька удалит с этого устройства seed-фразу кошелька и все относящиеся к нему данные. Если вы не создали и сохранили резервную копию seed-фразы в надежном месте - вы больше никогда не сможете получить доступ к своим средствам.';

  @override
  String get removeWalletPinMessage => 'Введите PIN-код, чтобы удалить кошелек';

  @override
  String get removeWalletReassurance =>
      'Если вы сохранили seed-фразу в безопасном месте - вам не о чем беспокоиться.';

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
      'Требовать пароль для открытия кошелька?';

  @override
  String get restartSetupButton => 'Перезапустить установку';

  @override
  String get scanFailedMessage =>
      'Сканирование не удалось, повторите попытку позже';

  @override
  String get scanMore => 'СКАНИРОВАТЬ БОЛЬШЕ';

  @override
  String get scanMoreAddresses => 'Сканировать дополнительные адреса';

  @override
  String get scannedIndex => 'Отсканировано';

  @override
  String get scanningDescription => 'Сканирование для поиска новых адресов...';

  @override
  String get scanningTitle => 'Сканирование';

  @override
  String get scanQrCode => 'Сканировать QR-код';

  @override
  String get scanQrCodeError => 'Не удалось распознать содержимое QR-кода';

  @override
  String get secretInfo =>
      'На следующем экране вы увидите свою seed-фразу. Она - ключ для управления вашими средствами. Крайне важно, чтобы вы создали ее резервную копию и никогда никому ee не передавали.';

  @override
  String get secretInfoHeader => 'Безопасность прежде всего!';

  @override
  String get secretPhrase => 'Секретная фраза';

  @override
  String get secretPhrase12Words => '12 WORDS';

  @override
  String get secretPhrase24Words => '24 WORDS';

  @override
  String get secretWarning =>
      'Если вы потеряете свое устройство или удалите приложение, вам понадобится ваша секретная seed фраза - чтобы вернуть свои средства!';

  @override
  String get securityHeader => 'Безопасность';

  @override
  String get seed => 'Seed';

  @override
  String get seedInvalid => 'Некорректная seed-фраза';

  @override
  String get selectAddress => 'Select Address';

  @override
  String get send => 'Отправить';

  @override
  String get sendConfirm => 'Отправить';

  @override
  String get sendError => 'Произошла ошибка. Попробуйте позже.';

  @override
  String get sending => 'Отправить';

  @override
  String get sendNote => 'ЗАМЕТКА';

  @override
  String get sendToAddressTitle => 'На';

  @override
  String get sendTxProgressDescription =>
      'Пожалуйста, подождите, пока транзакция будет отправлена';

  @override
  String get sendTxProgressTitle => 'Отправка транзакции';

  @override
  String get sent => 'Отправлено';

  @override
  String get sentTo => 'Sent to';

  @override
  String get setPassword => 'Установить пароль';

  @override
  String get setPasswordSuccess => 'Пароль был успешно установлен';

  @override
  String get settingsHeader => 'Настройки';

  @override
  String get settingsTransfer => 'Загрузить с бумажного кошелька';

  @override
  String get setupFailedMessage => 'Что-то пошло не так';

  @override
  String get setWalletPassword => 'Установить пароль кошелька';

  @override
  String get shareKaspium => 'Поделиться Kaspium';

  @override
  String get shareKaspiumSubject => 'Попробуйте кошелёк Kaspium';

  @override
  String get shareKaspiumText =>
      'Попробуйте Kaspium - мобильный кошелёк Kaspa.\nВеб-сайт - kaspium.io';

  @override
  String get somethingWentWrong => 'Что-то пошло не так';

  @override
  String get systemDefault => 'По умолчанию';

  @override
  String get tapToHide => 'Нажмите, чтобы скрыть';

  @override
  String get tapToReveal => 'Нажмите, чтобы показать';

  @override
  String get themeDark => 'Темная тема';

  @override
  String get themeHeader => 'Тема';

  @override
  String get themeLight => 'Светлая тема';

  @override
  String get thisWallet => '#Этот кошелек';

  @override
  String get to => 'На';

  @override
  String get toAddress => 'На адрес';

  @override
  String get tooManyFailedAttempts => 'Много неудачных попыток разблокировки.';

  @override
  String get totalValue => 'Общая сумма';

  @override
  String get transactionId => 'Идентификатор транзакции';

  @override
  String get transactionsUppercase => 'ТРАНЗАКЦИИ';

  @override
  String get transfer => 'Отправить';

  @override
  String get transferClose => 'Нажмите в любом месте, чтобы закрыть окно.';

  @override
  String transferComplete(String amount) {
    return '$amount KAS успешно переведено в кошелёк Kaspium.\n';
  }

  @override
  String transferConfirmInfo(String amount) {
    return 'Обнаружен кошелёк с балансом $amount KAS.';
  }

  @override
  String get transferConfirmInfoSecond =>
      'Для перевода средств нажмите кнопку \'подтвердить\'.\n';

  @override
  String get transferConfirmInfoThird =>
      'Перевод может занять несколько секунд.';

  @override
  String get transferError =>
      'Во время передачи произошла ошибка. Пожалуйста, попробуйте позже.';

  @override
  String get transferHeader => 'Перевод средств';

  @override
  String transferIntro(String button) {
    return 'Этот процесс переведёт средства с бумажного кошелька на ваш кошелёк Kaspium.\n\nНажмите кнопку \"$button\" чтобы начать.';
  }

  @override
  String get transferLoading => 'Переводиться';

  @override
  String get transferManualHint => 'Пожалуйста, введите вашу seed-фразу ниже.';

  @override
  String get transferNoFunds => 'Эта seed-фраза не имеет KAS.';

  @override
  String get transferQrScanError =>
      'Этот QR-код не содержит достоверной seed-фразы.';

  @override
  String get transferQrScanHint =>
      'Сканировать seed-фразу \nKaspa или приватный ключ';

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
  String get unconfirmed => 'неподтверждено';

  @override
  String get unknown => 'неизвестно';

  @override
  String get unlock => 'Разблокировать';

  @override
  String get unlockBiometrics =>
      'Аутентифицируйтесь для разблокировки кошелька';

  @override
  String get unlockPin => 'Введите PIN-код для разблокировки кошелька';

  @override
  String get utxoSelectionHint => 'Please select more UTXOs';

  @override
  String get utxoSelectionTitle => 'Select UTXOs';

  @override
  String get utxosUppercase => 'UTXOs';

  @override
  String get viewAddress => 'Посмотреть адрес';

  @override
  String get viewTransaction => 'Посмотреть транзакцию';

  @override
  String get walletAddress => 'Wallet Address';

  @override
  String get walletAddresses => 'Адреса кошелька';

  @override
  String walletAddressesCopied(String addressType) {
    return 'Wallet $addressType Addresses Copied to Clipboard';
  }

  @override
  String walletAddressesCopyFailed(String addressType) {
    return 'Failed to Copy Wallet $addressType Addresses';
  }

  @override
  String get walletName => 'Имя кошелька';

  @override
  String get walletNameDescription => 'Введите имя своего кошелька';

  @override
  String get walletNameHint => 'Имя кошелька';

  @override
  String get walletSetupAddressDiscovery => 'Выполняется обнаружение адресов';

  @override
  String get walletSetupMessage => 'Создание кошелька';

  @override
  String get walletsTitle => 'Кошельки';

  @override
  String get warning => 'Предупреждение';

  @override
  String welcomeMessage(String version) {
    return 'Добро пожаловать!\n\nЭто версия $version Kaspium - мобильного кошелька Kaspa';
  }

  @override
  String get welcomeText =>
      'Добро пожаловать в Kaspium. Вы можете создать новый кошелек или импортировать уже существующий.';

  @override
  String get yes => 'Да';

  @override
  String get yesButton => 'Да';

  @override
  String get yesUppercase => 'ДА';
}
