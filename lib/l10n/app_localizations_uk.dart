// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get account => 'Рахунок';

  @override
  String get accounts => 'Рахунки';

  @override
  String get ackBackedUp =>
      'Ви впевнені, що зробили резервну копію вашої секретної seed-фрази ?';

  @override
  String get add => 'Додати';

  @override
  String get addAccount => 'Додати рахунок';

  @override
  String get addContact => 'Додати контакт';

  @override
  String get addNode => 'Додати ноду';

  @override
  String get addNodeFailed => 'Помилка додавання ноди Kaspa';

  @override
  String addNodeFailedMessage(String error) {
    return 'Невдало: $error';
  }

  @override
  String get addNodeSuccess => 'Нода додана успішно';

  @override
  String get addingNodeMessage =>
      'Будь-ласка, зачекайте, доки ми встановимо з\'єднання з нодою';

  @override
  String get addingNodeTitle => 'Додавання ноди';

  @override
  String get address => 'Адреса';

  @override
  String get addressCopied => 'Адресу скопійовано';

  @override
  String get addressCopiedFailed => 'Не вдалося скопіювати адресу';

  @override
  String get addressHint => 'Введіть адресу';

  @override
  String get addressMising => 'Будь-ласка, введіть адресу';

  @override
  String get addressShare => 'Поділитися адресою';

  @override
  String get kaspaUriCopied => 'Kaspa URI Copied';

  @override
  String get kaspaUriCopyFailed => 'Failed to copy Kaspa URI';

  @override
  String get advancedHeader => 'Додаткові налаштування';

  @override
  String get amount => 'Сума';

  @override
  String amountConfirm(String amount, String coin) {
    return 'Сума $amount $coin';
  }

  @override
  String get amountMissing => 'Будь-ласка, введіть суму';

  @override
  String get amountZero => 'Сума не може бути рівна нулю';

  @override
  String get areYouSure => 'Ви впевнені?';

  @override
  String get authBiometricMessage => 'Авторизуйтесь, щоб додати гаманець';

  @override
  String get authMethod => 'Метод автентифікації';

  @override
  String get authPinMessage => 'Введіть PIN-код, щоб додати гаманець.';

  @override
  String get autoLockHeader => 'Автоматично блокувати';

  @override
  String get available => 'Доступно';

  @override
  String get backupConfirmButton => 'Резервну копію створено';

  @override
  String get backupSecretPhrase => 'Резервна копія секретної фрази';

  @override
  String get missingSecretPhrase => 'Missing Secret Phrase';

  @override
  String get biometricsMethod => 'Біометрія';

  @override
  String get blockExplorer => 'Дослідник блокчейну';

  @override
  String get cancel => 'Скасувати';

  @override
  String get change => 'Решта';

  @override
  String get changeAddress => 'Адреса решти';

  @override
  String get changeAddressCopied => 'Адресу решти скопійовано';

  @override
  String get changeIndex => 'Індекс решти';

  @override
  String changeIndexParam(String addressIndex) {
    return 'Решта $addressIndex';
  }

  @override
  String get checkCameraPermission =>
      'Будь-ласка, перевірте права доступу до камери';

  @override
  String get clipboardEmpty => 'Буфер обміну порожній';

  @override
  String get close => 'Закрити';

  @override
  String get confirm => 'Підтвердити';

  @override
  String get confirmPasswordHint => 'Підтвердити пароль';

  @override
  String confirmations(String confirmations) {
    return '$confirmations підтведжень';
  }

  @override
  String get confirmed => 'підтверджено';

  @override
  String get confirming => 'підтверджується';

  @override
  String contactAdded(String contactName) {
    return '$contactName додано до контактів';
  }

  @override
  String contactAddressCopied(String address) {
    return 'адресу $address скопійовано';
  }

  @override
  String get contactExists => 'Такий контакт вже існує';

  @override
  String get contactHeader => 'Контакт';

  @override
  String get contactInvalid => 'Невірне ім\'я контакта';

  @override
  String get contactNameHint => 'Введіть ім\'я @';

  @override
  String get contactNameMissing => 'Введіть ім\'я контакта';

  @override
  String contactRemoved(String contactName) {
    return '$contactName було видалено з контактів!';
  }

  @override
  String get contactsHeader => 'Контакти';

  @override
  String get contactsImportErr => 'Не вдалося імпортувати контакти';

  @override
  String contactsImportSuccess(String noContacts) {
    return 'Успішно імпортовано $noContacts контактів';
  }

  @override
  String get copied => 'Скопійовано';

  @override
  String get copy => 'Копіювати';

  @override
  String get copyAddress => 'Копіювати адресу';

  @override
  String get copyErrorButton => 'Помилка копіювання';

  @override
  String get createAPasswordHeader => 'Встановити пароль.';

  @override
  String get createPasswordFirstParagraph =>
      'Ви можете встановити пароль для додаткового захисту вашого гаманця.';

  @override
  String get createPasswordHint => 'Встановити пароль';

  @override
  String get createPasswordSecondParagraph =>
      'Пароль є опціональним, в будь-якому разі ваш гаманець буде захищений вашим PIN-кодом або біометричними даними.';

  @override
  String get createPasswordSheetHeader => 'Створити';

  @override
  String get currency => 'Валюта';

  @override
  String get currencyPoweredBy => 'За допомогою CoinGecko';

  @override
  String get defaultAccountName => 'Адреса 1';

  @override
  String defaultNewAccountName(int addressIndex) {
    return 'Отримання $addressIndex';
  }

  @override
  String get defaultWalletName => 'Мій гаманець';

  @override
  String get disablePasswordSheetHeader => 'Вимкнути';

  @override
  String get disablePasswordSuccess => 'Пароль було вимкнено';

  @override
  String get disableWalletPassword => 'Вимкнути пароль гаманця';

  @override
  String get doContinue => 'Продовжити';

  @override
  String get donate => 'Пожертвувати';

  @override
  String get donateTo => 'Donate To';

  @override
  String get dontShowAgain => 'Не показувати знову';

  @override
  String get emptyCardIntroUtxos =>
      'Це вкладка невитраченого результату транзакції - UTXO. Усі UTXOs у вашому гаманці з\'являтимуться тут.';

  @override
  String get emptyResult => 'Порожній результат';

  @override
  String get emptyWalletName => 'Назва гаманця не може бути порожньою';

  @override
  String get encryptionFailedError => 'Не вдалося встановити пароль гаманця';

  @override
  String get enterAddress => 'Введіть адресу';

  @override
  String get enterAmount => 'Введіть суму';

  @override
  String get enterFiatValue => 'Enter Fiat Value';

  @override
  String get enterNote => 'Введіть примітку';

  @override
  String get enterPasswordHint => 'Введіть пароль';

  @override
  String get errorMessageCopied =>
      'Повідомлення про помилку скопійовано в буфер обміну';

  @override
  String get exampleCardIntro =>
      'Це вкладка транзакцій. Як тільки ви надішлете або отримаєте транзакцію - вона з\'явиться тут.';

  @override
  String get export => 'Експорт';

  @override
  String get fee => 'Комісія';

  @override
  String feeConfirm(String amount, String coin) {
    return 'Комісія $amount $coin';
  }

  @override
  String get feeTitle => 'КОМІСІЯ';

  @override
  String get fetchingTransactions => 'Завантаження транзакцій';

  @override
  String get fingerprintSeedBackup =>
      'Автентифікуйтесь, щоб зробити резервну копію секретної seed-фрази.';

  @override
  String get goBackButton => 'Назад';

  @override
  String get gotItButton => 'Зрозуміло!';

  @override
  String get import => 'Імпортувати';

  @override
  String get importSecretPhrase => 'Імпортувати секретну фразу';

  @override
  String get importSecretPhraseHint =>
      'Будь-ласка, введіть вашу секретну seed фразу з 24-ох слів нижче.';

  @override
  String get importSecretPhraseHintCombo =>
      'Будь ласка, введіть свою секретну фразу з 12 або 24 слів нижче.';

  @override
  String get importSecretPhraseHintLegacy =>
      'Будь ласка, введіть свою секретну фразу з 12 слів нижче.';

  @override
  String get importWallet => 'Імпортувати гаманець';

  @override
  String get importWalletDescription => 'Будь ласка, оберіть варіант нижче.';

  @override
  String get instantly => 'Миттєво';

  @override
  String get insufficientBalance => 'Недостатній баланс';

  @override
  String get insufficientBalanceDetails =>
      'У вас недостатньо KAS для даної транзакції';

  @override
  String get invalidAddress => 'Введено неправильну адресу';

  @override
  String get invalidAmount => 'Неправильна сума';

  @override
  String get invalidChecksumMessage =>
      'Будь-ласка, перевірте правильність введення вашої \nсекретної seed-фрази!';

  @override
  String get invalidKpubMessage =>
      'Будь ласка, перевірте правильність введення вашого розширеного публічного ключа!';

  @override
  String get invalidDestinationAddress => 'Неправильна адреса призначення';

  @override
  String get invalidPassword => 'Невірний пароль';

  @override
  String get kaspaDevFund => 'Фонд розвитку Kaspa';

  @override
  String get kaspiumWallet => 'Гаманець Kaspium';

  @override
  String get language => 'Мова';

  @override
  String get loadingTransactions => 'Завантаження транзакцій...';

  @override
  String get lockAppSetting => 'Аутентифікуватися при вході';

  @override
  String get locked => 'Заблоковано';

  @override
  String get loggingOutMessage => 'Вихід з системи...';

  @override
  String get logout => 'Вийти';

  @override
  String get logoutDialogContent =>
      'Ви впевнені, що хочете вийти з цього гаманця?';

  @override
  String get logoutOrSwitchWallet => 'Вийти / Змінити гаманець';

  @override
  String get manage => 'Управління';

  @override
  String get manualEntry => 'Ручне введення';

  @override
  String get networkHeader => 'Мережа';

  @override
  String get newAddress => 'Нова адреса';

  @override
  String get newWallet => 'Новий гаманець';

  @override
  String get nextButton => 'Далі';

  @override
  String get no => 'Ні';

  @override
  String get noContactsExport => 'Немає контактів для експорту';

  @override
  String get noContactsImport => 'Немає нових контактів для імпорту';

  @override
  String get noQrCodeFound => 'QR-Код не знайдено';

  @override
  String get noSkipButton => 'Ні, пропустити';

  @override
  String get noUppercase => 'НІ';

  @override
  String get nodeAddress => 'Нода Kaspa';

  @override
  String get nodeDeleteMessage => 'Ви впевнені, що бажаєте видалити?';

  @override
  String get nodeDeleteTitle => 'Видалити конфігурацію ноди Kaspa?';

  @override
  String get nodeNameEmpty => 'Назва ноди не може бути порожньою';

  @override
  String get nodeNameHint => 'Введіть назву ноди';

  @override
  String get nodeUrlHint => 'Введіть URL-адресу Ноди';

  @override
  String get nodeUrlInvalid => 'Невірна URL-адреса ноди';

  @override
  String get nodesSheetTitle => 'Ноди Kaspa';

  @override
  String get off => 'Вимкнено';

  @override
  String get on => 'Увімкнено';

  @override
  String get paperWallet => 'Паперовий гаманець';

  @override
  String get passwordBlank => 'Пароль не може бути порожнім';

  @override
  String get passwordNoLongerRequiredToOpenParagraph =>
      'Вам більше не знадобиться пароль, щоб відкрити цей гаманець.';

  @override
  String get passwordWillBeRequiredToOpenParagraph =>
      'Цей пароль буде необхідним, щоб відкрити даний гаманець.';

  @override
  String get passwordsDontMatch => 'Паролі не співпадають';

  @override
  String get pasteMnemonicError =>
      'Вміст буфера обміну не є дійсною секретною seed-фразою';

  @override
  String get pending => 'очікується';

  @override
  String get pinConfirmError => 'PIN-коди не співпадають';

  @override
  String get pinConfirmTitle => 'Підтвердіть ваш PIN-код';

  @override
  String get pinCreateTitle => 'Створіть PIN-код з 6-ти цифр';

  @override
  String get pinEnterTitle => 'Введіть PIN-код';

  @override
  String get pinInvalid => 'Введено невірний PIN-код';

  @override
  String get pinMethod => 'PIN-Код';

  @override
  String get pinSeedBackup =>
      'Введіть PIN-код, щоб створити резервну копію секретної seed-фрази';

  @override
  String get preferences => 'Налаштування';

  @override
  String get privacyPolicy => 'Політика приватності';

  @override
  String get qrInvalidAddress => 'QR-Код не містить дійсну адресу';

  @override
  String get qrInvalidSeed =>
      'QR-код не містить правильної секретної seed-фрази або приватного ключа';

  @override
  String get qrMnemonicError =>
      'QR-код не містить правильної секретної seed-фрази';

  @override
  String get receive => 'Отримати';

  @override
  String get receiveAddress => 'Адреса отримання';

  @override
  String get receiveAddressCopied => 'Адресу отримання скопійовано';

  @override
  String get receiveIndex => 'Індекс отримання';

  @override
  String receiveIndexParam(String addressIndex) {
    return 'Отримання $addressIndex';
  }

  @override
  String get received => 'Отримано';

  @override
  String get removeContact => 'Видалити контакт';

  @override
  String removeContactConfirmation(String contactName) {
    return 'Ви впевнені, що хочете видалити $contactName?';
  }

  @override
  String get removeWalletAction => 'Видалити гаманець';

  @override
  String get removeWalletBiometricsMessage =>
      'Авторизуйтесь, щоб видалити гаманець';

  @override
  String get removeWalletDetail =>
      'Видалення цього гаманця призведе до видалення секретної seed-фрази та всіх даних, пов\'язаних з гаманцем, з цього пристрою. Якщо ви не збережете резервну копію секретної seed-фрази - ви більше ніколи не зможете отримати доступ до своїх коштів.';

  @override
  String get removeWalletPinMessage => 'Введіть PIN-код для видалення гаманця';

  @override
  String get removeWalletReassurance =>
      'До тих пір, допоки ви створили та зберігаєте резервну копію секретної seed-фрази у безпечному місці - вам немає про що хвилюватися.';

  @override
  String get requireAPasswordToOpenHeader =>
      'Вимагати пароль, щоб відкрити цей гаманець?';

  @override
  String get restartSetupButton => 'Перезапуск налаштувань';

  @override
  String get scanQrCode => 'Сканувати QR-код';

  @override
  String get scanQrCodeError => 'Не вдалося розпізнати QR-код';

  @override
  String get secretInfo =>
      'На наступному екрані ви побачите свою секретну seed-фразу. Це пароль для доступу до ваших коштів. Надзвичайно важливо, щоб ви створили його резервну копію і ніколи нікому її не повідомляли.';

  @override
  String get secretInfoHeader => 'Перш за все - безпека!';

  @override
  String get secretPhrase => 'Секретна seed-фраза';

  @override
  String get secretPhrase12Words => '12 WORDS';

  @override
  String get secretPhrase24Words => '24 WORDS';

  @override
  String get secretWarning =>
      'Якщо ви втратите ваш пристрій або видалите додаток, вам обов\'язково та неминуче знадобиться ваша секретна seed-фраза, щоб відновити кошти!';

  @override
  String get securityHeader => 'Безпека';

  @override
  String get seed => 'Seed-фраза';

  @override
  String get seedInvalid => 'Невірна seed-фраза';

  @override
  String get send => 'Надіслати';

  @override
  String get sendConfirm => 'Надіслати';

  @override
  String get sendError => 'Виникла помилка. Будь-ласка, спробуйте ще раз';

  @override
  String get sendNote => 'НОТАТКА';

  @override
  String get sendToAddressTitle => 'До';

  @override
  String get sendTxProgressDescription =>
      'Будь-ласка, зачекайте, поки транзакція буде надіслана';

  @override
  String get sendTxProgressTitle => 'Надсилаємо транзакцію';

  @override
  String get sending => 'Надіслати';

  @override
  String get sent => 'Надіслано';

  @override
  String get sentTo => 'Sent to';

  @override
  String get setPassword => 'Встановити пароль';

  @override
  String get setPasswordSuccess => 'Пароль було успішно встановлено';

  @override
  String get setWalletPassword => 'Встановити пароль гаманця';

  @override
  String get settingsHeader => 'Налаштування';

  @override
  String get settingsTransfer => 'Завантажити з паперового гаманця';

  @override
  String get setupFailedMessage => 'Щось пішло не так';

  @override
  String get shareKaspium => 'Поділитися Kaspium';

  @override
  String get shareKaspiumSubject => 'Спробуйте гаманець Kaspium';

  @override
  String get shareKaspiumText =>
      'Спробуйте Kaspium - мобільний гаманець Kaspa.\nВебсайт - kaspium.io';

  @override
  String get somethingWentWrong => 'Щось пішло не так';

  @override
  String get systemDefault => 'Системна за замовчуванням';

  @override
  String get tapToHide => 'Натисніть, щоб приховати';

  @override
  String get tapToReveal => 'Натисність, щоб показати';

  @override
  String get themeDark => 'Темна тема';

  @override
  String get themeHeader => 'Тема';

  @override
  String get themeLight => 'Світла тема';

  @override
  String get thisWallet => '#Цей гаманець';

  @override
  String get to => 'До';

  @override
  String get toAddress => 'На адресу';

  @override
  String get tooManyFailedAttempts =>
      'Занадто багато невдалих спроб розблокування.';

  @override
  String get totalValue => 'Загальна сума';

  @override
  String get transactionId => 'Ідентифікатор транзакції';

  @override
  String get transactionsUppercase => 'ТРАНЗАКЦІЇ';

  @override
  String get transfer => 'Переказ';

  @override
  String get transferClose => 'Натисніть будь-де, щоб закрити вікно.';

  @override
  String transferComplete(String amount) {
    return '$amount KAS успішно перераховано до вашого гаманця Kaspium. \n';
  }

  @override
  String transferConfirmInfo(String amount) {
    return 'Виявлено гаманець з балансом $amount KAS.';
  }

  @override
  String get transferConfirmInfoSecond =>
      'Натисніть \"Підтвердити\" для переказу коштів.\n';

  @override
  String get transferConfirmInfoThird =>
      'Виконання переказу може зайняти кілька секунд.';

  @override
  String get transferError =>
      'Під час переказу сталася помилка. Будь-ласка, спробуйте пізніше.';

  @override
  String get transferHeader => 'Переказати кошти';

  @override
  String transferIntro(String button) {
    return 'Цей процес перенесе кошти з паперового гаманця у ваш гаманець Kaspium.\n\nНатисніть кнопку \"$button\", щоб почати.';
  }

  @override
  String get transferLoading => 'Переказується';

  @override
  String get transferManualHint => 'Будь-ласка, введіть вашу seed-фразу нижче.';

  @override
  String get transferNoFunds => 'Ця seed-фраза не містить KAS на балансі.';

  @override
  String get transferQrScanError =>
      'Цей QR-код не містить правильної seed-фрази.';

  @override
  String get transferQrScanHint =>
      'Сканувати seed-фразу \nKaspa або приватний ключ';

  @override
  String get unconfirmed => 'непідтверджено';

  @override
  String get notAccepted => 'не прийнято';

  @override
  String get accepted => 'прийнято';

  @override
  String get unknown => 'невідомий';

  @override
  String get unlock => 'Розблокувати';

  @override
  String get unlockBiometrics => 'Автентифікуйтесь, щоб розблокувати гаманець';

  @override
  String get unlockPin => 'Введіть PIN-код, щоб розблокувати гаманець';

  @override
  String get utxosUppercase => 'UTXOs';

  @override
  String get viewAddress => 'Переглянути адресу';

  @override
  String get viewTransaction => 'Переглянути транзакцію';

  @override
  String get walletAddresses => 'Адреси гаманця';

  @override
  String get walletAddress => 'Wallet Address';

  @override
  String get walletName => 'Назва гаманця';

  @override
  String get walletNameDescription => 'Введіть назву для вашого гаманця';

  @override
  String get walletNameHint => 'Назва гаманця';

  @override
  String get walletSetupAddressDiscovery => 'Запущено пошук адрес';

  @override
  String get walletSetupMessage => 'Створення гаманця';

  @override
  String get walletsTitle => 'Гаманці';

  @override
  String get warning => 'Попередження';

  @override
  String welcomeMessage(String version) {
    return 'Ласкаво просимо!\n\nЦе версія $version Kaspium - мобільного гаманця Kaspa.';
  }

  @override
  String get welcomeText =>
      'Вітаємо в Kaspium. Щоб розпочати, створіть новий гаманець або імпортуйте існуючий.';

  @override
  String xMinutes(int minutes) {
    final intl.NumberFormat minutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutesString хвилин',
      one: '1 хвилини',
    );
    return 'Після $_temp0';
  }

  @override
  String get yes => 'Так';

  @override
  String get yesButton => 'Так';

  @override
  String get yesUppercase => 'ТАК';

  @override
  String get nodeNotSyncedException => 'Нода не синхронізована';

  @override
  String get nodeNoUTXOIndexException => 'Нода не має індексу UTXO';

  @override
  String get nodeSecureConnection => 'Захищене з\'єднання';

  @override
  String get kaspaUriInvalid => 'Невірний URI Kaspa';

  @override
  String get compoundUtxos => 'Об\'єднати транзакції';

  @override
  String get compoundRequired => 'Compound required';

  @override
  String get compoundRequiredDescription =>
      'The transaction amount requires too many UTXOs. Compounding will reduce the number of UTXOs.';

  @override
  String get compoundUtxosDescription => 'Об\'єднати декілька UTXO в один';

  @override
  String get compoundUtxosConfirmation => 'Об\'єднати транзакції?';

  @override
  String get compoundingUtxos => 'Об\'єднування транзакцій';

  @override
  String get compoundingMessage => 'Будь ласка, зачекайте...';

  @override
  String get compoundSuccess => 'Об\'єднання завершено успішно';

  @override
  String get compoundFailure => 'Не вдалося об\'єднати транзакції';

  @override
  String get compoundTooFewUtxos => 'Потрібно принаймні два UTXO';

  @override
  String get balance => 'Баланс';

  @override
  String get maxSend => 'Надіслати максимум ';

  @override
  String get compoundUppercased => 'ОБ\'ЄДНАТИ';

  @override
  String get closeUppercased => 'ЗАКРИТИ';

  @override
  String get scanMoreAddresses => 'Сканувати більше адрес';

  @override
  String get addressDiscovery => 'Виявлення адрес';

  @override
  String get scanningTitle => 'Сканування';

  @override
  String get scanningDescription => 'Сканування нових адрес...';

  @override
  String get scanMore => 'СКАНУВАТИ БІЛЬШЕ';

  @override
  String get scanFailedMessage => 'Сканування не вдалося, спробуйте пізніше';

  @override
  String get indexHeader => 'Індекс';

  @override
  String get currentIndex => 'Поточний';

  @override
  String get scannedIndex => 'Відскановано';

  @override
  String get newIndex => 'Новий';

  @override
  String get addressFilterDialogTitle => 'Фільтр адрес';

  @override
  String get addressFilterDialogOptionAllAddresses => 'Переглянути всі адреси';

  @override
  String get addressFilterDialogOptionNonZeroBalances =>
      'Переглянути адреси з балансом';

  @override
  String get importOption24WordsTitle => 'Імпортувати секретну фразу з 24 слів';

  @override
  String get importOption24WordsDescription =>
      'Сумісний з консольним гаманцем CLI та Ledger';

  @override
  String get importOption12WordsTitle => 'Імпортувати секретну фразу з 12 слів';

  @override
  String get importOption12WordsDescription => 'Сумісний з веб-гаманцем та KDX';

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
      'Імпортувати гаманець тільки для перегладу';

  @override
  String get importOptionKpubDescription =>
      'Контролюйте баланс і транзакції гаманця за допомогою розширеного публічного ключа';

  @override
  String get importKpub => 'Імпортувати гаманець тільки для перегладу';

  @override
  String get importKpubHint =>
      'Будь ласка, введіть ваш розширений публічний ключ.';

  @override
  String get importKpubClipboardError =>
      'Вміст буфера обміну не є дійсним розширеним публічним ключем';

  @override
  String get importKpubQrCodeError =>
      'QR-код не містить дійсного розширеного публічного ключа';

  @override
  String get importKpubInvalidMessage =>
      'Будь ласка, перевірте, чи ваш розширений публічний ключ введено коректно!';

  @override
  String get receiveAddressListEmpty => 'Список адрес для отримування порожній';

  @override
  String get changeAddressListEmpty => 'Список адрес для решти порожній';

  @override
  String get hintAddressListEmpty =>
      'Перевірте фільтр адрес у верхньому правому кутку';

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
