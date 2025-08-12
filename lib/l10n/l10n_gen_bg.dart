// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n_gen.dart';

// ignore_for_file: type=lint

/// The translations for Bulgarian (`bg`).
class AppLocalizationsBg extends AppLocalizations {
  AppLocalizationsBg([String locale = 'bg']) : super(locale);

  @override
  String get aboutTopperDescription =>
      'Topper на Uphold е лесна за използване система за преобразуване на фиат в криптовалута, която позволява на потребителите да купуват криптовалути с кредитна/дебитна карта или с банкова сметка.';

  @override
  String get aboutTopperTitle => 'За Topper';

  @override
  String get accepted => 'приета';

  @override
  String get account => 'Акаунт';

  @override
  String get accounts => 'Акаунти';

  @override
  String get ackBackedUp =>
      'Сигурни ли сте, че имате копие на тайната си фраза?';

  @override
  String get add => 'Добави';

  @override
  String get addAccount => 'Добави акаунт';

  @override
  String get addContact => 'Добави контакт';

  @override
  String get addingNodeMessage =>
      'Моля изчакайте докато сe установи връзка с нода';

  @override
  String get addingNodeTitle => 'Добавяне на нод';

  @override
  String get addNode => 'Добави нод';

  @override
  String get addNodeFailed => 'Грешка при добавянето на нода';

  @override
  String addNodeFailedMessage(String error) {
    return 'Грешка: $error';
  }

  @override
  String get addNodeSuccess => 'Успешно добавяне на нода';

  @override
  String get address => 'Адрес';

  @override
  String get addressCopied => 'Адрес копиран';

  @override
  String get addressCopiedFailed => 'Неуспешно копиране на адрес';

  @override
  String get addressDiscovery => 'Намиране на адрес';

  @override
  String get addressFilterDialogOptionAllAddresses => 'Покажи всички адреси';

  @override
  String get addressFilterDialogOptionNonZeroBalances =>
      'Покажи адресите с наличен баланс';

  @override
  String get addressFilterDialogTitle => 'Филтър за адреси';

  @override
  String get addressHint => 'Въведете адрес';

  @override
  String get addressMising => 'Моля въведете адрес';

  @override
  String get addressShare => 'Сподели адрес';

  @override
  String get advancedHeader => 'Разширени';

  @override
  String get amount => 'Сума';

  @override
  String amountConfirm(String amount, String coin) {
    return 'Сума $amount $coin';
  }

  @override
  String get amountMissing => 'Моля въведете сума';

  @override
  String get amountZero => 'Сумата не може да бъде нула';

  @override
  String get areYouSure => 'Сигурни ли сте?';

  @override
  String get authBiometricMessage => 'Удостоверете се, за да добавите портфейл';

  @override
  String get authMethod => 'Метод за удостоверяване';

  @override
  String get authPinMessage => 'Въведете ПИН, за да добавите портфейл';

  @override
  String get autoLockHeader => 'Автоматично заключване';

  @override
  String get available => 'Налично';

  @override
  String get backupConfirmButton => 'Направих резервно копие';

  @override
  String get backupSecretPhrase => 'Резервно копие на тайната фраза';

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
  String get blockExplorer => 'Block Explorer';

  @override
  String get buyKaspaMessage => 'Купете \$KAS лесно и бързо.';

  @override
  String get buyKaspaMessageSecondary =>
      'Услугата се предоставя от Topper, платформата на Uphold за обмяна на фиат към криптовалути.';

  @override
  String get buyKaspaSubtitle => 'Чрез Topper от Uphold';

  @override
  String get buyKaspaTitle => 'Купи Kaspa';

  @override
  String get cancel => 'Отмени';

  @override
  String get change => 'Остатък';

  @override
  String get changeAddress => 'Остатъчен адрес';

  @override
  String get changeAddressCopied => 'Остатъчния адрес е копиран';

  @override
  String get changeAddressListEmpty => 'Списъкът с остатъчни адреси е празен';

  @override
  String get changeIndex => 'Индекс на остатъка';

  @override
  String changeIndexParam(String addressIndex) {
    return 'Остатък $addressIndex';
  }

  @override
  String get checkCameraPermission => 'Моля разрешете използването на камерата';

  @override
  String get clipboardEmpty => 'Няма копирана стойност';

  @override
  String get close => 'Затвори';

  @override
  String get closeUppercased => 'ЗАТВОРИ';

  @override
  String get compoundFailure => 'Неуспешно обединяване на транзакциите';

  @override
  String get compoundingMessage => 'Моля изчакайте...';

  @override
  String get compoundingUtxos => 'Обединяване на транзакциите';

  @override
  String get compoundRequired => 'Нужно е обединяване';

  @override
  String get compoundRequiredDescription =>
      'Сумата на транзакцията изисква твърде много UTXO. Комбинирането ще намали броя на UTXO.';

  @override
  String get compoundSuccess => 'Обединяването е успешно';

  @override
  String get compoundTooFewUtxos => 'Нужни са поне две UTXO';

  @override
  String get compoundUppercased => 'ОБЕДИНИ';

  @override
  String get compoundUtxos => 'Обедини транзакциите';

  @override
  String get compoundUtxosConfirmation => 'Обедини транзакциите?';

  @override
  String get compoundUtxosDescription => 'Комбинирай множество UTXO в едно';

  @override
  String get confirm => 'Потвърди';

  @override
  String confirmations(String confirmations) {
    return '$confirmations потвърждения';
  }

  @override
  String get confirmed => 'потвърдено';

  @override
  String get confirming => 'потвърждаване';

  @override
  String get confirmPasswordHint => 'Потвърдете паролата';

  @override
  String contactAdded(String contactName) {
    return '$contactName добавен/и в контакти.';
  }

  @override
  String contactAddressCopied(String address) {
    return '$address адресът е копиран';
  }

  @override
  String get contactExists => 'Контакта вече съществува';

  @override
  String get contactHeader => 'Контакт';

  @override
  String get contactInvalid => 'Невалидно име';

  @override
  String get contactNameHint => 'Въведете име @';

  @override
  String get contactNameMissing => 'Изберете име за този контакт';

  @override
  String contactRemoved(String contactName) {
    return '$contactName премахнат/и от контакти!';
  }

  @override
  String get contactsHeader => 'Контакти';

  @override
  String get contactsImportErr => 'Неуспешно импортиране на контакти';

  @override
  String contactsImportSuccess(String noContacts) {
    return 'Успешно импортирани $noContacts контакти.';
  }

  @override
  String get contactSupport => 'Свържете се с поддръжка';

  @override
  String get copied => 'Копирано';

  @override
  String get copy => 'Копирай';

  @override
  String get copyAddress => 'Копирай адрес';

  @override
  String get copyErrorButton => 'Копирай грешка';

  @override
  String get copyKpub => 'Копирай Kpub';

  @override
  String get createAPasswordHeader => 'Създаване на парола';

  @override
  String get createPasswordFirstParagraph =>
      'Може да създадете парола за да направите портфейла още по-сигурен';

  @override
  String get createPasswordHint => 'Създайте парола ';

  @override
  String get createPasswordSecondParagraph =>
      'Паролата не е задължителна и портфейлът ви ще бъде защитен с вашия ПИН или биометрични данни';

  @override
  String get createPasswordSheetHeader => 'Създай';

  @override
  String get currency => 'Валута';

  @override
  String get currencyPoweredBy => 'Powered by CoinGecko';

  @override
  String get currentIndex => 'Настоящ';

  @override
  String get defaultAccountName => 'Адрес 1';

  @override
  String defaultNewAccountName(int addressIndex) {
    return 'Акаунт $addressIndex';
  }

  @override
  String get defaultWalletName => 'Моят портфейл';

  @override
  String get disablePasswordSheetHeader => 'Деактивирай';

  @override
  String get disablePasswordSuccess => 'Паролата е премахната';

  @override
  String get disableWalletPassword => 'Премахни паролата на портфейла';

  @override
  String get doContinue => 'Продължи';

  @override
  String get donate => 'Дарете средства';

  @override
  String get donateTo => 'Дарете на';

  @override
  String get dontShowAgain => 'Не показвай отново';

  @override
  String emailAction(String email) {
    return 'Имейл $email';
  }

  @override
  String get emptyCardIntroUtxos =>
      'Това е раздела за неизразходвани изходи от транзакции (UTXO). Всички UTXO в твоят портфейл ще се покажат тук.';

  @override
  String get emptyResult => 'Празен резултат';

  @override
  String get emptyWalletName => 'Името на портфейла не може да бъде празно';

  @override
  String get encryptionFailedError => 'Неуспешно създаване на парола';

  @override
  String get enterAddress => 'Въведете адрес';

  @override
  String get enterAmount => 'Въведете сума';

  @override
  String get enterFiatValue => 'Въведете фиат стойност';

  @override
  String get enterNote => 'Въведете бележка';

  @override
  String get enterPasswordHint => 'Въведете парола';

  @override
  String get errorMessageCopied =>
      'Съобщението за грешка беше успешно копирано';

  @override
  String get exampleCardIntro =>
      'Това е раздела с транзакции. След като направите първата си транзакция, тя ще се появи тук.';

  @override
  String get export => 'Експортирай';

  @override
  String get fee => 'Такса';

  @override
  String get feeBaseUppercase => 'BASE FEE';

  @override
  String feeConfirm(String amount, String coin) {
    return 'Такса $amount $coin';
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
  String get feeTitle => 'ТАКСА';

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
  String get fetchingTransactions => 'Извличане на транзакциите';

  @override
  String get fingerprintSeedBackup =>
      'Удостоверете се за да направите резервно копие на тайната фраза.';

  @override
  String get getStarted => 'Започнете сега';

  @override
  String get goBackButton => 'Върни се назад';

  @override
  String get gotItButton => 'Готово!';

  @override
  String get hideAccountHeader => 'Hide Account?';

  @override
  String get hideAccountText =>
      'Are you sure you want to hide this account? You can re-add it later by tapping the \"Add Account\" button.';

  @override
  String get hintAddressListEmpty =>
      'Проверете филтърът за адреси в горния десен ъгъл';

  @override
  String get import => 'Импортирай';

  @override
  String get importAsLegacyWallet => 'Import as Legacy Wallet';

  @override
  String get importAsStandardWallet => 'Import as Standard Wallet';

  @override
  String get importKpub => 'Импортирай портфейл само за преглед';

  @override
  String get importKpubClipboardError =>
      'Копираното съдържание не е валиден удължен публичен ключ';

  @override
  String get importKpubHint => 'Моля въведете своя удължен публичен ключ.';

  @override
  String get importKpubInvalidMessage =>
      'Моля проверете дали удълженият публичен ключ е въведен правилно!';

  @override
  String get importKpubQrCodeError =>
      'QR кода не съдържа валиден удължен публичен ключ';

  @override
  String get importLegacyWalletDetectedDetails =>
      'Do you want to import your wallet in legacy mode?';

  @override
  String get importLegacyWalletDetectedTitle => 'Legacy Wallet Detected';

  @override
  String get importOption12WordsDescription => 'Съвместим с Web Wallet и KDX';

  @override
  String get importOption12WordsTitle => 'Импортирай тайна фраза от 12 думи';

  @override
  String get importOption24WordsDescription =>
      'Съвместим с Cli Wallet и Ledger';

  @override
  String get importOption24WordsTitle => 'Импортирай тайна фраза от 24 думи';

  @override
  String get importOptionKpubDescription =>
      'Следи балансът и транзакциите на портфейл използващ удължен публичен ключ';

  @override
  String get importOptionKpubTitle => 'Импортирай портфейл само за преглед';

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
  String get importSecretPhrase => 'Импортирай тайна фраза';

  @override
  String get importSecretPhraseHint =>
      'Моля, въведете вашата тайна фраза от 24 думи по-долу. ';

  @override
  String get importSecretPhraseHintCombo =>
      'Моля въведете своята тайна фраза от 12 или 24 думи по-долу.';

  @override
  String get importSecretPhraseHintLegacy =>
      'Моля въведете своята тайна фраза от 12 думи по-долу.';

  @override
  String get importWallet => 'Импортирай портфейл';

  @override
  String get importWalletAdvancedOptions => 'Advanced Options';

  @override
  String get importWalletDescription => 'Моля изберете опция по-долу.';

  @override
  String get indexHeader => 'Индекс';

  @override
  String get instantly => 'Веднага';

  @override
  String get insufficientBalance => 'Недостатъчен баланс';

  @override
  String get insufficientBalanceDetails =>
      'Нямате достатъчно KAS за тази транзакция';

  @override
  String get invalidAddress => 'Въведеният адрес е невалиден';

  @override
  String get invalidAmount => 'Невалидна сума';

  @override
  String get invalidChecksumMessage =>
      'Моля проверете дали сте въвели тайната фраза коректно';

  @override
  String get invalidDestinationAddress => 'Невалиден адрес на получателя';

  @override
  String get invalidKpubMessage =>
      'Моля уверете се че Вашия удължен публичен ключ е въведен коректно!';

  @override
  String get invalidPassword => 'Грешна парола ';

  @override
  String get invalidSecretPhrase => 'Невалидна тайна фраза';

  @override
  String get invalidSecretPhraseConfirmation => 'Знам какво правя';

  @override
  String get invalidSecretPhraseDetails =>
      'Въведената тайна фраза има невалидна контролна сума (checksum).';

  @override
  String get kaspaDevFund => 'Kaspa Dev Fund';

  @override
  String get kaspaUriCopied => 'Kaspa URI е копиран';

  @override
  String get kaspaUriCopyFailed => 'Неуспешно копиране на Kaspa URI';

  @override
  String get kaspaUriInvalid => 'Невалиден Kaspa URI';

  @override
  String get kaspiumWallet => 'Kaspium Wallet';

  @override
  String get kpubAuth => 'Виж разширения публичен ключ';

  @override
  String get kpubCopied => 'Разширения публичен ключ е копиран';

  @override
  String get kpubCopyFailed => 'Неуспешно копиране на разширения публичен ключ';

  @override
  String get kpubDescription =>
      'Разширеният публичен ключ може да се използва за импортиране на портфейла ви като \'watch only\' портфейл.';

  @override
  String get kpubTitle => 'Разширен публичен ключ';

  @override
  String get language => 'Език';

  @override
  String get loadingTransactions => 'Зареждане на транзакциите...';

  @override
  String get lockAppSetting => 'Удостоверяване при старт';

  @override
  String get locked => 'Заключено';

  @override
  String get loggingOutMessage => 'Отписване...';

  @override
  String get logout => 'Отпиши се';

  @override
  String get logoutDialogContent => 'Сигурни ли сте, че искате да се отпишете?';

  @override
  String get logoutOrSwitchWallet => 'Изход / Смяна на портфейл';

  @override
  String get manage => 'Управление';

  @override
  String get manualEntry => 'Ръчно въвеждане';

  @override
  String get maxSend => 'Макс. изпращане';

  @override
  String get missingSecretPhrase => 'Missing Secret Phrase';

  @override
  String get moreInfo => 'Повече информация';

  @override
  String get networkHeader => 'Мрежа';

  @override
  String get newAddress => 'Нов адрес';

  @override
  String get newIndex => 'Нов';

  @override
  String get newWallet => 'Нов портфейл';

  @override
  String get nextButton => 'Следващ';

  @override
  String get no => 'Не';

  @override
  String get noContactsExport => 'Няма контакти за експорт';

  @override
  String get noContactsImport => 'Няма нови контакти за импорт.';

  @override
  String get nodeAddress => 'Kaspa Node';

  @override
  String get nodeDeleteMessage => 'Потвърждавате ли изтриването';

  @override
  String get nodeDeleteTitle => 'Изтриване на конфигурацията за Kaspa нода?';

  @override
  String get nodeNameEmpty => 'Името на нода не може да бъде празно';

  @override
  String get nodeNameHint => 'Въведете име на нода';

  @override
  String get nodeNotSyncedException => 'Нода не е синхронизиран';

  @override
  String get nodeNoUTXOIndexException => 'Нода няма UTXO индекс';

  @override
  String get nodeSecureConnection => 'Сигурна връзка';

  @override
  String get nodesSheetTitle => 'Kaspa нодове';

  @override
  String get nodeUrlHint => 'Въведете URL на нода';

  @override
  String get nodeUrlInvalid => 'Невалиден URL на нода';

  @override
  String get noQrCodeFound => 'Няма открит QR код';

  @override
  String get noSkipButton => 'Не, пропусни';

  @override
  String get notAccepted => 'не приета';

  @override
  String get noteLabel => 'Бележка:';

  @override
  String get noUppercase => 'НЕ';

  @override
  String get off => 'Изкл.';

  @override
  String get on => 'Вкл.';

  @override
  String get optionalLabel => '(по желание)';

  @override
  String get paperWallet => 'Paper Wallet';

  @override
  String get passwordBlank => 'Полето за парола не може да бъде празно';

  @override
  String get passwordNoLongerRequiredToOpenParagraph =>
      'Няма да се изисква повече парола при отваряне на портфейла.';

  @override
  String get passwordsDontMatch => 'Паролите не съвпадат';

  @override
  String get passwordWillBeRequiredToOpenParagraph =>
      'Паролата ще се изисква при всяко отваряне на портфейла.';

  @override
  String get pasteMnemonicError =>
      'Копираното съдържанието не е валидна тайна фраза';

  @override
  String get pending => 'в изчакване';

  @override
  String get pinConfirmError => 'ПИН кода не съвпада';

  @override
  String get pinConfirmTitle => 'Потвърдете вашият ПИН';

  @override
  String get pinCreateTitle => 'Създайте 6-цифрен ПИН код';

  @override
  String get pinEnterTitle => 'Въведете ПИН';

  @override
  String get pinInvalid => 'Въведен е невалиден ПИН';

  @override
  String get pinMethod => 'ПИН';

  @override
  String get pinSeedBackup => 'Въведете ПИН за да съхраните тайната фраза';

  @override
  String get preferences => 'Предпочитания';

  @override
  String get privacyPolicy => 'Декларация за поверителност';

  @override
  String get qrInvalidAddress => 'QR кода не съдържа валидна дестинация ';

  @override
  String get qrInvalidSeed => 'QR кода не съдържа валиден seed или личен ключ';

  @override
  String get qrMnemonicError => 'QR кода не съдържа валидна тайна фраза';

  @override
  String get receive => 'Получаване';

  @override
  String get receiveAddress => 'Адрес за получаване';

  @override
  String get receiveAddressCopied => 'Адресът е копиран';

  @override
  String get receiveAddressListEmpty =>
      'Списъкът с адреси за получаване е празен';

  @override
  String get received => 'Получено';

  @override
  String get receiveIndex => 'Индекс на получаване';

  @override
  String receiveIndexParam(String addressIndex) {
    return 'Индекс $addressIndex';
  }

  @override
  String get removeContact => 'Премахни контакт';

  @override
  String removeContactConfirmation(String contactName) {
    return 'Сигурни ли сте, че искате да изтриете $contactName?';
  }

  @override
  String get removeWalletAction => 'Премахни портфейл';

  @override
  String get removeWalletBiometricsMessage =>
      'Впишете се, за да премахнете портфейл';

  @override
  String get removeWalletDetail =>
      'Премахването на този портфейл ще изтрие тайната фраза и всички данни свързани с портфейла от това устройство. Ако не сте запазили тайната фраза може никога да не успеете да достъпите вашите средства отново.';

  @override
  String get removeWalletPinMessage =>
      'Въведете ПИН за потвърждение на премахването';

  @override
  String get removeWalletReassurance =>
      'Докато имате резервно копие на тайната фраза, няма за какво да се притеснявате.';

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
      'Изисквай парола при отваряне на портфейла?';

  @override
  String get restartSetupButton => 'Рестартирай настройка';

  @override
  String get scanFailedMessage =>
      'Сканирането завърши неуспешно, моля опитайте по-късно';

  @override
  String get scanMore => 'СКАНИРАЙ ОЩЕ';

  @override
  String get scanMoreAddresses => 'Сканирай за повече адреси';

  @override
  String get scannedIndex => 'Сканиран';

  @override
  String get scanningDescription => 'Сканиране за нови адреси...';

  @override
  String get scanningTitle => 'Сканиране';

  @override
  String get scanQrCode => 'Сканирай QR код';

  @override
  String get scanQrCodeError => 'Неуспешно сканиране на QR кода';

  @override
  String get secretInfo =>
      'На следващия екран ще видите тайната си фраза.  Това е парола за достъп до средствата ви.  От решаващо значение е да направите резервно копие и никога да не я споделяте с никого.';

  @override
  String get secretInfoHeader => 'Първо безопасността!';

  @override
  String get secretPhrase => 'Тайна фраза';

  @override
  String get secretPhrase12Words => '12 WORDS';

  @override
  String get secretPhrase24Words => '24 WORDS';

  @override
  String get secretWarning =>
      'Ако изгубите устройството си или деинсталирате приложението, ще се нуждаете от тайната си фраза, за да възстановите средствата си!';

  @override
  String get securityHeader => 'Сигурност';

  @override
  String get seed => 'Seed';

  @override
  String get seedInvalid => 'Невалиден seed';

  @override
  String get selectAddress => 'Изберете адрес';

  @override
  String get send => 'Изпрати';

  @override
  String get sendConfirm => 'Изпрати';

  @override
  String get sendError => 'Възникна грешка. Опитайте по-късно.';

  @override
  String get sending => 'Изпрати';

  @override
  String get sendNote => 'БЕЛЕЖКА';

  @override
  String get sendToAddressTitle => 'До';

  @override
  String get sendTxProgressDescription =>
      'Моля изчакайте докато транзакцията бъде изпратена';

  @override
  String get sendTxProgressTitle => 'Транзакцията се изпраща';

  @override
  String get sent => 'Изпратено';

  @override
  String get sentTo => 'Изпратено на';

  @override
  String get setPassword => 'Създай парола';

  @override
  String get setPasswordSuccess => 'Паролата е създадена успешно';

  @override
  String get settingsHeader => 'Настройки';

  @override
  String get settingsTransfer => 'Зареди от Paper Wallet';

  @override
  String get setupFailedMessage => 'Нещо се обърка';

  @override
  String get setWalletPassword => 'Създайте парола за достъп';

  @override
  String get shareKaspium => 'Споделете Kaspium';

  @override
  String get shareKaspiumSubject => 'Виж повече за Kaspium портфейл';

  @override
  String get shareKaspiumText =>
      'Научете повече за Kaspium - Официалният Kaspa мобилен портфейл. \nУебсайт - kaspium.io';

  @override
  String get somethingWentWrong => 'Нещо се обърка';

  @override
  String get systemDefault => 'По подразбиране';

  @override
  String get tapToHide => 'Докоснете за да скриете';

  @override
  String get tapToReveal => 'Докоснете за да разкриете';

  @override
  String get themeDark => 'Тъмна тема';

  @override
  String get themeHeader => 'Тема';

  @override
  String get themeLight => 'Светла тема';

  @override
  String get thisWallet => '#Този портфейл';

  @override
  String get to => 'До';

  @override
  String get toAddress => 'До адрес';

  @override
  String get tooManyFailedAttempts =>
      'Твърде много неуспешни опити за отключване.';

  @override
  String get totalValue => 'Обща стойност';

  @override
  String get transactionId => 'ID на транзакцията';

  @override
  String get transactionsUppercase => 'ТРАНЗАКЦИИ';

  @override
  String get transfer => 'Прехвърли';

  @override
  String get transferClose => 'Докоснете дисплея, за да затворите прозореца.';

  @override
  String transferComplete(String amount) {
    return '$amount KAS успешно прехвърлени към вашия Kaspium портфейл.\n';
  }

  @override
  String transferConfirmInfo(String amount) {
    return 'Портфейл с баланс от $amount KAS е открит.';
  }

  @override
  String get transferConfirmInfoSecond =>
      'Натиснете за да потвърдите прехвърлянето на средства.\n';

  @override
  String get transferConfirmInfoThird =>
      'Прехвърлянето може да отнеме няколко секунди.';

  @override
  String get transferError =>
      'Възникна грешка по време на прехвърлянето. Моля опитайте по-късно.';

  @override
  String get transferHeader => 'Прехвърли средства';

  @override
  String transferIntro(String button) {
    return 'Този процес ще прехвърли вашите средства от Paper Wallet към Kaspium Wallet.\n\nНатиснете \"$button\" бутона за старт.';
  }

  @override
  String get transferLoading => 'Прехвърляне';

  @override
  String get transferManualHint => 'Моля въведете seed по-долу.';

  @override
  String get transferNoFunds => 'Този seed не съдържа KAS';

  @override
  String get transferQrScanError => 'Този QR код не съдържа валиден seed.';

  @override
  String get transferQrScanHint => 'Сканирайте Kaspa \nseed или частен ключ';

  @override
  String get txFilterDialogOptionAllTxs => 'Покажи всички транзакции';

  @override
  String get txFilterDialogOptionHideNotAcceptedCoinbase =>
      'Скриване на неприети Coinbase транзакции';

  @override
  String get txFilterDialogTitle => 'Филтър за транзакции';

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
  String get txReport => 'Отчет за транзакции';

  @override
  String get txReportDate => 'Дата';

  @override
  String get txReportDescription => 'Описание';

  @override
  String get txReportDetails =>
      'Генерирай отчет за транзакциите в CSV формат, който съдържа цялата история на транзакциите на портфейла.';

  @override
  String get txReportError => 'Грешка при генериране на отчет';

  @override
  String get txReportFeeAmount => 'Размер на таксата';

  @override
  String get txReportFeeCurrency => 'Валута на таксата';

  @override
  String get txReportFeeForCompound => 'Такса за комбинирана транзакция';

  @override
  String get txReportFeeForSelfSend =>
      'Такса за изпращане към собствени адреси';

  @override
  String get txReportGenerate => 'Генерирай';

  @override
  String get txReportGetReport => 'Получете отчет';

  @override
  String get txReportLabel => 'Етикет';

  @override
  String get txReportLabelCost => 'себестойност';

  @override
  String txReportNoLoadedTxs(int loadedTxs, int totalTxs) {
    return '($loadedTxs от $totalTxs)';
  }

  @override
  String get txReportNote => 'Бележка';

  @override
  String txReportNoTxs(int numberOf) {
    return 'Намерени $numberOf транзакции.';
  }

  @override
  String get txReportOptionIgnoreCompound =>
      'Игнориране на комбинирани транзакции';

  @override
  String get txReportOptionIgnoreSelfTxs =>
      'Игнорирай транзакциите изпратени до себе си';

  @override
  String get txReportOptionRefreshTxs => 'Обнови транзакциите';

  @override
  String get txReportReceivedAmount => 'Получена сума';

  @override
  String get txReportReceivedCurrency => 'Получена валута';

  @override
  String get txReportSentAmount => 'Изпратена сума';

  @override
  String get txReportSentCurrency => 'Изпратена валута';

  @override
  String get txReportStatusLoading => 'Зареждане на транзакциите';

  @override
  String get txReportStatusReady => 'Отчетът за транзакциите е готов!';

  @override
  String get txReportStatusRefreshing => 'Обновяване на транзакциите';

  @override
  String get txReportSubtitle =>
      'Получeте CSV файл с историята на транзакциите';

  @override
  String get txReportTxHash => 'TxHash';

  @override
  String get unconfirmed => 'непотвърдена';

  @override
  String get unknown => 'неизвестна';

  @override
  String get unlock => 'Отключи';

  @override
  String get unlockBiometrics => 'Удостоверете се за достъп до портфейла';

  @override
  String get unlockPin => 'Въведете ПИН за отключване на портфейла';

  @override
  String get utxoSelectionHint => 'Please select more UTXOs';

  @override
  String get utxoSelectionTitle => 'Select UTXOs';

  @override
  String get utxosUppercase => 'UTXO';

  @override
  String get viewAddress => 'Виж адрес';

  @override
  String get viewTransaction => 'Виж транзакция';

  @override
  String get walletAddress => 'Адрес на портфейла';

  @override
  String get walletAddresses => 'Адреси на портфейла';

  @override
  String walletAddressesCopied(String addressType) {
    return 'Wallet $addressType Addresses Copied to Clipboard';
  }

  @override
  String walletAddressesCopyFailed(String addressType) {
    return 'Failed to Copy Wallet $addressType Addresses';
  }

  @override
  String get walletName => 'Име на портфейла';

  @override
  String get walletNameDescription => 'Въведете име на портфейла';

  @override
  String get walletNameHint => 'Име на портфейла';

  @override
  String get walletSetupAddressDiscovery => 'Откриване на адрес';

  @override
  String get walletSetupMessage => 'Портфейла се настройва';

  @override
  String get walletsTitle => 'Портфейли';

  @override
  String get warning => 'Внимание';

  @override
  String welcomeMessage(String version) {
    return 'Добре дошли!\n\nТова е версия $version на Kaspium - мобилният портфейл за Kaspa';
  }

  @override
  String get welcomeText =>
      'Добре дошли в Kaspium. За да започнете, създайте нов портфейл или импортирайте вече съществуващ такъв.';

  @override
  String get yes => 'Да';

  @override
  String get yesButton => 'Да';

  @override
  String get yesUppercase => 'ДА';
}
