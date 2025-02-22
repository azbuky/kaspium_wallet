// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Serbian (`sr`).
class AppLocalizationsSr extends AppLocalizations {
  AppLocalizationsSr([String locale = 'sr']) : super(locale);

  @override
  String get account => 'Налог';

  @override
  String get accounts => 'Налози';

  @override
  String get ackBackedUp =>
      'Да ли сте сигурни да сте направили резервну копију ваше тајне фразе?';

  @override
  String get add => 'Додај';

  @override
  String get addAccount => 'Додај Налог';

  @override
  String get addContact => 'Додај Контакт';

  @override
  String get addNode => 'Додај Белешку';

  @override
  String get addNodeFailed => 'Додавање Kaspa чвора није успело';

  @override
  String addNodeFailedMessage(String error) {
    return 'Неуспешно: $error';
  }

  @override
  String get addNodeSuccess => 'Чвор Успешно Додат';

  @override
  String get addingNodeMessage => 'Молимо сачекајте док се контактира чвор';

  @override
  String get addingNodeTitle => 'Додавање Чвора';

  @override
  String get address => 'Адреса';

  @override
  String get addressCopied => 'Адреса Копирана';

  @override
  String get addressCopiedFailed => 'Failed to copy address';

  @override
  String get addressHint => 'Унесите Адресу';

  @override
  String get addressMising => 'Молимо Вас Унесите Адресу';

  @override
  String get addressShare => 'Подели Адресу';

  @override
  String get kaspaUriCopied => 'Kaspa URI Copied';

  @override
  String get kaspaUriCopyFailed => 'Failed to copy Kaspa URI';

  @override
  String get advancedHeader => 'Напредно';

  @override
  String get amount => 'Износ';

  @override
  String amountConfirm(String amount, String coin) {
    return 'Износ $amount $coin';
  }

  @override
  String get amountMissing => 'Молимо Вас Унесите Износ';

  @override
  String get amountZero => 'Износ не може бити нула';

  @override
  String get areYouSure => 'Да ли сте сигурни?';

  @override
  String get authBiometricMessage =>
      'Аутентификујте се да Бисте Додали Новчаник';

  @override
  String get authMethod => 'Метода Аутентификације';

  @override
  String get authPinMessage => 'Унесите ПИН да Бисте Додали Новчаник';

  @override
  String get autoLockHeader => 'Аутоматски Закључај';

  @override
  String get available => 'Доступно';

  @override
  String get backupConfirmButton => 'Направавио/ла сам Резервну Копију';

  @override
  String get backupSecretPhrase => 'Направите Резервну Копију Тајне Фразе';

  @override
  String get missingSecretPhrase => 'Missing Secret Phrase';

  @override
  String get biometricsMethod => 'Биометрика';

  @override
  String get blockExplorer => 'Претраживач Блокова';

  @override
  String get cancel => 'Откажи';

  @override
  String get change => 'Измени';

  @override
  String get changeAddress => 'Промени Адресу';

  @override
  String get changeAddressCopied => 'Промени Копирану Адресу';

  @override
  String get changeIndex => 'Промени Индекс';

  @override
  String changeIndexParam(String addressIndex) {
    return 'Промени $addressIndex';
  }

  @override
  String get checkCameraPermission => 'Проверите дозволе за камеру';

  @override
  String get clipboardEmpty => 'Клипбоард је празан';

  @override
  String get close => 'Затвори';

  @override
  String get confirm => 'Потврди';

  @override
  String get confirmPasswordHint => 'Потврди шифру';

  @override
  String confirmations(String confirmations) {
    return '$confirmations потврда';
  }

  @override
  String get confirmed => 'потврђено';

  @override
  String get confirming => 'потврђује се';

  @override
  String contactAdded(String contactName) {
    return '$contactName је додат у контакте';
  }

  @override
  String contactAddressCopied(String address) {
    return '$address адреса копирана';
  }

  @override
  String get contactExists => 'Контакт Већ Постоји';

  @override
  String get contactHeader => 'Контакт';

  @override
  String get contactInvalid => 'Име Контакта Није Валидно';

  @override
  String get contactNameHint => 'Унесите име';

  @override
  String get contactNameMissing => 'Изаберите Име за Овај Контакт';

  @override
  String contactRemoved(String contactName) {
    return '$contactName је уклоњен из контаката!';
  }

  @override
  String get contactsHeader => 'Контакти';

  @override
  String get contactsImportErr => 'Увоз контаката није успео';

  @override
  String contactsImportSuccess(String noContacts) {
    return 'Успешно увезено $noContacts контаката';
  }

  @override
  String get copied => 'Копирано';

  @override
  String get copy => 'Копирај';

  @override
  String get copyAddress => 'Копирај Адресу';

  @override
  String get copyErrorButton => 'Грешка при Копирању';

  @override
  String get createAPasswordHeader => 'Креирај шифру.';

  @override
  String get createPasswordFirstParagraph =>
      'Можеш креирати шифру ради додатног обезбеђења новчаника';

  @override
  String get createPasswordHint => 'Креирај шифру.';

  @override
  String get createPasswordSecondParagraph =>
      'Шифра је опционална, и ваш новчаник ће бити заштићен са ПИНом или Биометриком без обзира на шифру.';

  @override
  String get createPasswordSheetHeader => 'Креирај';

  @override
  String get currency => 'Валута';

  @override
  String get currencyPoweredBy => 'Покреће CoinGecko';

  @override
  String get defaultAccountName => 'Адреса 1';

  @override
  String defaultNewAccountName(int addressIndex) {
    return 'Примите $addressIndex';
  }

  @override
  String get defaultWalletName => 'Мој Новчаник';

  @override
  String get disablePasswordSheetHeader => 'Онемогући';

  @override
  String get disablePasswordSuccess => 'Шифра је успешно онемогућена';

  @override
  String get disableWalletPassword => 'Онемогући Шифру Новчаника';

  @override
  String get doContinue => 'Настави';

  @override
  String get donate => 'Донирај';

  @override
  String get donateTo => 'Donate To';

  @override
  String get dontShowAgain => 'Не приказуј поново';

  @override
  String get emptyCardIntroUtxos =>
      'Ово је УТИКСО таб. Сви УТИКСОс у вашем новчанику ће бити приказани овде.';

  @override
  String get emptyResult => 'Празан Резултат';

  @override
  String get emptyWalletName => 'Име Новчаника не може бити празно';

  @override
  String get encryptionFailedError => 'Неуспело постављање шифре новчаника';

  @override
  String get enterAddress => 'Унесите Адресу';

  @override
  String get enterAmount => 'Унесите износ';

  @override
  String get enterFiatValue => 'Enter Fiat Value';

  @override
  String get enterNote => 'Унесите белешку';

  @override
  String get enterPasswordHint => 'Унесите шифру';

  @override
  String get errorMessageCopied => 'Порука грешке је копирана у тастатуру';

  @override
  String get exampleCardIntro =>
      'Ово је таб за трансакције, Када пошаљете или примите трансакцију, приказађе се овде.';

  @override
  String get export => 'Извези';

  @override
  String get fee => 'Провизија';

  @override
  String feeConfirm(String amount, String coin) {
    return 'Провизија  $amount $coin';
  }

  @override
  String get feeTitle => 'ПРОВИЗИЈА';

  @override
  String get fetchingTransactions => 'Преузимање Трансакција';

  @override
  String get fingerprintSeedBackup =>
      'Аутентификујте се да Бисте направили резервну копију тајне фразе.';

  @override
  String get goBackButton => 'Назад';

  @override
  String get gotItButton => 'Разумем!';

  @override
  String get import => 'Увези';

  @override
  String get importSecretPhrase => 'Увези Тајну Фразу';

  @override
  String get importSecretPhraseHint =>
      'Унесите ваше 24 речи тајне фразе испод.';

  @override
  String get importSecretPhraseHintCombo =>
      'Please enter your 12 or 24 word secret phrase below.';

  @override
  String get importSecretPhraseHintLegacy =>
      'Please enter your 12 word secret phrase below.';

  @override
  String get importWallet => 'Увези Новчаник';

  @override
  String get importWalletDescription => 'Please select an option below.';

  @override
  String get instantly => 'Инстант';

  @override
  String get insufficientBalance => 'Недовољно Средстава';

  @override
  String get insufficientBalanceDetails =>
      'Немате довољно KAS за ову трансакцију';

  @override
  String get invalidAddress => 'Унета адреса није валидна';

  @override
  String get invalidAmount => 'Неважећи Износ';

  @override
  String get invalidChecksumMessage =>
      ' Молимо проверите да ли је ваша Тајна Фраза унета исправно!';

  @override
  String get invalidKpubMessage =>
      'Please check that your extended public key is entered correctly!';

  @override
  String get invalidDestinationAddress => 'Одредишна Адреса није Важеђа';

  @override
  String get invalidPassword => 'Неисправна Лозинка';

  @override
  String get kaspaDevFund => 'Каспа Дев Фонд';

  @override
  String get kaspiumWallet => 'Каспиум Новчаник';

  @override
  String get language => 'Језик';

  @override
  String get loadingTransactions => 'Учитавање трансакција...';

  @override
  String get lockAppSetting => 'Аутентификујте при покретању';

  @override
  String get locked => 'Закључано';

  @override
  String get loggingOutMessage => 'Одјављивање...';

  @override
  String get logout => 'Одјави се';

  @override
  String get logoutDialogContent =>
      'Да ли сте сигурни да желите да се одјавите са новчаника?';

  @override
  String get logoutOrSwitchWallet => 'Одјавите се / промените новчаник';

  @override
  String get manage => 'Управљај';

  @override
  String get manualEntry => 'Ручни Унос';

  @override
  String get networkHeader => 'Мрежа';

  @override
  String get newAddress => 'Нова Адреса';

  @override
  String get newWallet => 'Нови Новчаник';

  @override
  String get nextButton => 'Следеће';

  @override
  String get no => 'Не';

  @override
  String get noContactsExport => 'Нема контаката за извоз';

  @override
  String get noContactsImport => 'Нема нових контаката за увоз';

  @override
  String get noQrCodeFound => 'КЈУ-АР код није пронађен';

  @override
  String get noSkipButton => 'Не, Прескочи';

  @override
  String get noUppercase => 'НЕ';

  @override
  String get nodeAddress => 'Каспа Чвор';

  @override
  String get nodeDeleteMessage => 'Да ли сте сигурни да желите обрисати? ';

  @override
  String get nodeDeleteTitle => 'Обриши Конфигурације Каспа Чвора?';

  @override
  String get nodeNameEmpty => 'Име чвора не мозе бити празно';

  @override
  String get nodeNameHint => 'Унеси Име Чвора';

  @override
  String get nodeUrlHint => 'Унеси УРЛ Чвора';

  @override
  String get nodeUrlInvalid => 'УРЛ Чвора није валидан';

  @override
  String get nodesSheetTitle => 'Каспа Чворови';

  @override
  String get off => 'Искључено';

  @override
  String get on => 'Укључено';

  @override
  String get paperWallet => 'Папирни Новчаник';

  @override
  String get passwordBlank => 'Поље за шифру не може бити празно';

  @override
  String get passwordNoLongerRequiredToOpenParagraph =>
      'Више вам неће требати шифра како би отворили новчаник.';

  @override
  String get passwordWillBeRequiredToOpenParagraph =>
      'Ова шифра ће бити потребна за откључавање новчаника.';

  @override
  String get passwordsDontMatch => 'Шифре се не подударају';

  @override
  String get pasteMnemonicError =>
      'Садржај клипбоарда није валидна тајна фраза';

  @override
  String get pending => 'На чекању';

  @override
  String get pinConfirmError => 'Пинови се не подударају';

  @override
  String get pinConfirmTitle => 'Потврдите ваш ПИН';

  @override
  String get pinCreateTitle => 'Креирај ПИН са 6 цифара';

  @override
  String get pinEnterTitle => 'Унесите ПИН';

  @override
  String get pinInvalid => 'ПИН који сте унели није валидан';

  @override
  String get pinMethod => 'ПИН';

  @override
  String get pinSeedBackup => 'Унесите ПИН да Креирате Копију Тајне Фразе';

  @override
  String get preferences => 'Преференције';

  @override
  String get privacyPolicy => 'Политика Приватности';

  @override
  String get qrInvalidAddress => 'КЈУ-АР код не садржи валидну адресу';

  @override
  String get qrInvalidSeed =>
      'КЈУ-АР код не садржи валидно семе или приватан кључ';

  @override
  String get qrMnemonicError => 'КЈУ-АР код не садржи валидну тајну фразу';

  @override
  String get receive => 'Прими';

  @override
  String get receiveAddress => 'Адреса Примања';

  @override
  String get receiveAddressCopied => 'Адреса Примања Копирана';

  @override
  String get receiveIndex => 'Индекс Примања';

  @override
  String receiveIndexParam(String addressIndex) {
    return 'Прими $addressIndex';
  }

  @override
  String get received => 'Примљено';

  @override
  String get removeContact => 'Обриши Контакт';

  @override
  String removeContactConfirmation(String contactName) {
    return 'Да ли сте сигурни да желите обрисати $contactName?';
  }

  @override
  String get removeWalletAction => 'Обриши Новчаник';

  @override
  String get removeWalletBiometricsMessage =>
      'Аутентификујте се Ради Брисања Новчаника';

  @override
  String get removeWalletDetail =>
      'Брисање овог новчаника ће обрисати Тајну Фразу и све податке везане за новчаник са овог уређаја. Уколико не постоји резевна копија Тајне Фразе нећете моћи поново приступити вашим средствима.';

  @override
  String get removeWalletPinMessage => 'Унеси ПИН да Обришеш Новчаник';

  @override
  String get removeWalletReassurance =>
      'Ако сте направили тачну резервну копију Тајне Фразе немате о чему да бринете.';

  @override
  String get requireAPasswordToOpenHeader =>
      'Захтевај шифру при отварању овог новчаника?';

  @override
  String get restartSetupButton => 'Подешавање Поновног Покретања';

  @override
  String get scanQrCode => 'Скенирај КЈУ-АР Код';

  @override
  String get scanQrCodeError => 'Неуспело рашчлањавање КЈУ-АР кода';

  @override
  String get secretInfo =>
      'На следећем екрану, видећете вашу тајну фразу. Она је шифра за приступ вашим средствима. Од пресудног је значаја да направите резервну копију и да је никада не поделите нисаким.';

  @override
  String get secretInfoHeader => 'Безбедност на Првом Месту!';

  @override
  String get secretPhrase => 'Тајна Фраза';

  @override
  String get secretPhrase12Words => '12 WORDS';

  @override
  String get secretPhrase24Words => '24 WORDS';

  @override
  String get secretWarning =>
      'Уколико изгубите овај уређај или деинсталирате апликацију, биће вам потребна ваша тајна фраза да повратите приступ средствима!';

  @override
  String get securityHeader => 'Безбедност';

  @override
  String get seed => 'Seed';

  @override
  String get seedInvalid => 'Семе није валидно';

  @override
  String get send => 'Пошаљи';

  @override
  String get sendConfirm => 'Пошаљи';

  @override
  String get sendError => 'Дошло је до грешке. Молимо покушајте касније';

  @override
  String get sendNote => 'БЕЛЕШКА';

  @override
  String get sendToAddressTitle => 'До';

  @override
  String get sendTxProgressDescription =>
      'Молимо сачекајте док се трансакција шаље';

  @override
  String get sendTxProgressTitle => 'Трансакција се Шаље';

  @override
  String get sending => 'Пошаљи';

  @override
  String get sent => 'Послато';

  @override
  String get sentTo => 'Sent to';

  @override
  String get setPassword => 'Подеси Шифру';

  @override
  String get setPasswordSuccess => 'Шифра новчаника је успешно подешена';

  @override
  String get setWalletPassword => 'Подеси Шифру Новчаника';

  @override
  String get settingsHeader => 'Подешавања';

  @override
  String get settingsTransfer => 'Учитај са Папирног Новчаника';

  @override
  String get setupFailedMessage => 'Негде је дошло до грешке';

  @override
  String get shareKaspium => 'Подели Каспиум';

  @override
  String get shareKaspiumSubject => 'Погледај Каспиум Новчаник';

  @override
  String get shareKaspiumText =>
      'Погледај Каспиум - Каспа Мобилни Новчаник.\nВебсајт - kaspium.io';

  @override
  String get somethingWentWrong => 'Негде је дошло до грешке';

  @override
  String get systemDefault => 'Системски Подразумевано';

  @override
  String get tapToHide => 'Кликни да сакријеш';

  @override
  String get tapToReveal => 'Кликни да откријеш';

  @override
  String get themeDark => 'Тамна Тема';

  @override
  String get themeHeader => 'Тема';

  @override
  String get themeLight => 'Светла Тема';

  @override
  String get thisWallet => '#Овај Новчаник';

  @override
  String get to => 'До';

  @override
  String get toAddress => 'До Адресе';

  @override
  String get tooManyFailedAttempts => 'Превише неуспелих покушаја откључавања.';

  @override
  String get totalValue => 'Укупна Вредност';

  @override
  String get transactionId => 'ИД Трансакције';

  @override
  String get transactionsUppercase => 'ТРАНСАКЦИЈЕ';

  @override
  String get transfer => 'Траснфер';

  @override
  String get transferClose => 'Кликните било где да затворите прозор.';

  @override
  String transferComplete(String amount) {
    return '$amount КАС је успешно пребачено у ваш Каспиум Новчаник.\n';
  }

  @override
  String transferConfirmInfo(String amount) {
    return 'Новчаник са сумом од $amount КАС је детектован.';
  }

  @override
  String get transferConfirmInfoSecond =>
      'Кликни да потврдиш слање средстава.\n';

  @override
  String get transferConfirmInfoThird => 'Пренос може трајати више секунди.';

  @override
  String get transferError =>
      'Дошло је до грешке приликом трансфера. Молимо покушајте касније.';

  @override
  String get transferHeader => 'Трансфер Средстава';

  @override
  String transferIntro(String button) {
    return 'Овај процес ће послати средства са папирног новчаника у ваш Каспиум новчаник\n\nПритисни \"$button\" да започнеш.';
  }

  @override
  String get transferLoading => 'Пребацивање';

  @override
  String get transferManualHint => 'Унесите семе испод.';

  @override
  String get transferNoFunds => 'Ово семе нема КАС на себи';

  @override
  String get transferQrScanError => 'Овај КЈУ-АР код не садржи валидно семе.';

  @override
  String get transferQrScanHint => 'Скенирај Каспа семе или приватни кључ';

  @override
  String get unconfirmed => 'непотврђено';

  @override
  String get notAccepted => 'not accepted';

  @override
  String get accepted => 'accepted';

  @override
  String get unknown => 'непознато';

  @override
  String get unlock => 'Откључај';

  @override
  String get unlockBiometrics => 'Аутентификуј се Ради Откључавања Новчаника';

  @override
  String get unlockPin => 'Унеси ПИН да Откључаш Новчаник';

  @override
  String get utxosUppercase => 'УТКСОс';

  @override
  String get viewAddress => 'Види Адресу';

  @override
  String get viewTransaction => 'Види Трансакцију';

  @override
  String get walletAddresses => 'Адреса Новчаника';

  @override
  String get walletAddress => 'Wallet Address';

  @override
  String get walletName => 'Име новчаника';

  @override
  String get walletNameDescription => 'Унесите име за ваш новчаник';

  @override
  String get walletNameHint => 'Име Новчаника';

  @override
  String get walletSetupAddressDiscovery => 'Покренуто Откривање Адреса';

  @override
  String get walletSetupMessage => 'Иницално подешавање новчаника';

  @override
  String get walletsTitle => 'Новчаници';

  @override
  String get warning => 'Упозорење';

  @override
  String welcomeMessage(String version) {
    return 'Добродошли! \n\nОво је верзија $version Каспиума - мобилног новчаника за Каспу';
  }

  @override
  String get welcomeText =>
      'Добродошли у Каспиум. Да започнете, можете креирати нов новчаник или увезти већ постојеђи.';

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
    return 'Након $_temp0';
  }

  @override
  String get yes => 'Да';

  @override
  String get yesButton => 'Да';

  @override
  String get yesUppercase => 'ДА';

  @override
  String get nodeNotSyncedException => 'Чвор није синхронизован';

  @override
  String get nodeNoUTXOIndexException => 'Чвор нема УТИКСО индекс';

  @override
  String get nodeSecureConnection => 'Безбедна веза';

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
