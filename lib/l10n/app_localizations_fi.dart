// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class AppLocalizationsFi extends AppLocalizations {
  AppLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get account => 'Tili';

  @override
  String get accounts => 'Tilit';

  @override
  String get ackBackedUp =>
      'Oletko varma että olet varmuuskopioinut turvasanasi?';

  @override
  String get add => 'Lisää';

  @override
  String get addAccount => 'Lisää tili';

  @override
  String get addContact => 'Lisää yhteystieto';

  @override
  String get addNode => 'Lisää solmu';

  @override
  String get addNodeFailed => 'Kaspa-solmun lisääminen epäonnistui';

  @override
  String addNodeFailedMessage(String error) {
    return 'Virhe: $error';
  }

  @override
  String get addNodeSuccess => 'Solmu lisätty onnistuneesti';

  @override
  String get addingNodeMessage => 'Odota kunnes yhteys solmuun luotu';

  @override
  String get addingNodeTitle => 'Lisätään solmua';

  @override
  String get address => 'Osoite';

  @override
  String get addressCopied => 'Osoite kopioitu';

  @override
  String get addressCopiedFailed => 'Osoitteen kopiointi epäonnistui';

  @override
  String get addressHint => 'Syötä osoite';

  @override
  String get addressMising => 'Syötä osoite';

  @override
  String get addressShare => 'Jaa osoite';

  @override
  String get kaspaUriCopied => 'Kaspa URI Copied';

  @override
  String get kaspaUriCopyFailed => 'Failed to copy Kaspa URI';

  @override
  String get advancedHeader => 'Edistynyt';

  @override
  String get amount => 'Määrä';

  @override
  String amountConfirm(String amount, String coin) {
    return 'Määrä $amount $coin';
  }

  @override
  String get amountMissing => 'Syötä määrä';

  @override
  String get amountZero => 'Määrä ei voi olla nolla';

  @override
  String get areYouSure => 'Oletko varma?';

  @override
  String get authBiometricMessage => 'Tunnistaudu lisätäksesi lompakon';

  @override
  String get authMethod => 'Tunnistautumistapa';

  @override
  String get authPinMessage => 'Syötä PIN-koodi lisätäksesi lompakon';

  @override
  String get autoLockHeader => 'Lukitse automaattisesti';

  @override
  String get available => 'Saatavilla';

  @override
  String get backupConfirmButton => 'Olen varmuuskopioinut';

  @override
  String get backupSecretPhrase => 'Varmuuskopioi turvasanat';

  @override
  String get missingSecretPhrase => 'Missing Secret Phrase';

  @override
  String get biometricsMethod => 'Biometriikka';

  @override
  String get blockExplorer => 'Lohkoselain';

  @override
  String get cancel => 'Peruuta';

  @override
  String get change => 'Vaihtoraha';

  @override
  String get changeAddress => 'Vaihtorahaosoite';

  @override
  String get changeAddressCopied => 'Vaihtorahaosoite kopioitu';

  @override
  String get changeIndex => 'Vaihtorahaindeksi';

  @override
  String changeIndexParam(String addressIndex) {
    return 'Vaihtoraha $addressIndex';
  }

  @override
  String get checkCameraPermission => 'Tarkista kameran käyttöoikeudet';

  @override
  String get clipboardEmpty => 'Leikepöytä on tyhjä';

  @override
  String get close => 'Sulje';

  @override
  String get confirm => 'Vahvista';

  @override
  String get confirmPasswordHint => 'Vahvista salasana';

  @override
  String confirmations(String confirmations) {
    return '$confirmations vahvistusta';
  }

  @override
  String get confirmed => 'Vahvistettu';

  @override
  String get confirming => 'Vahvistetaan';

  @override
  String contactAdded(String contactName) {
    return '$contactName on lisätty yhteystietoihin';
  }

  @override
  String contactAddressCopied(String address) {
    return '$address osoite kopioitu';
  }

  @override
  String get contactExists => 'Yhteystieto on jo olemassa';

  @override
  String get contactHeader => 'Yhteystieto';

  @override
  String get contactInvalid => 'Virheellinen yhteystiedon nimi';

  @override
  String get contactNameHint => 'Lisää nimi @';

  @override
  String get contactNameMissing => 'Valitse tälle yhteystiedolle nimi';

  @override
  String contactRemoved(String contactName) {
    return '$contactName on poistettu yhteystiedoista!';
  }

  @override
  String get contactsHeader => 'Yhteystiedot';

  @override
  String get contactsImportErr => 'Yhteystietojen tuonti epäonnistui';

  @override
  String contactsImportSuccess(String noContacts) {
    return '$noContacts yhteystietoa tuotu onnistuneesti';
  }

  @override
  String get copied => 'Kopioitu';

  @override
  String get copy => 'Kopioi';

  @override
  String get copyAddress => 'Kopioi osoite';

  @override
  String get copyErrorButton => 'Kopiointivirhe';

  @override
  String get createAPasswordHeader => 'Luo salasana.';

  @override
  String get createPasswordFirstParagraph =>
      'Voit luoda salasanan lisätäksesi turvallisuutta lompakollesi.';

  @override
  String get createPasswordHint => 'Luo salasana';

  @override
  String get createPasswordSecondParagraph =>
      'Salasana ei ole pakollinen, ja lompakkosi suojataan PIN-koodilla tai biometriikalla joka tapauksessa.';

  @override
  String get createPasswordSheetHeader => 'Luo';

  @override
  String get currency => 'Valuutta';

  @override
  String get currencyPoweredBy => 'Palvelun tarjoaa CoinGecko';

  @override
  String get defaultAccountName => 'Osoite 1';

  @override
  String defaultNewAccountName(int addressIndex) {
    return 'Vastaanotto $addressIndex';
  }

  @override
  String get defaultWalletName => 'Lompakkoni';

  @override
  String get disablePasswordSheetHeader => 'Kytke pois';

  @override
  String get disablePasswordSuccess => 'Salasana poistettu käytöstä';

  @override
  String get disableWalletPassword => 'Kytke pois lompakon salasana';

  @override
  String get doContinue => 'Jatka';

  @override
  String get donate => 'Lahjoita';

  @override
  String get donateTo => 'Donate To';

  @override
  String get dontShowAgain => 'Älä näytä uudelleen';

  @override
  String get emptyCardIntroUtxos =>
      'Tämä on UTXO-välilehti. Kaikki lompakkosi UTXO:t näkyvät täällä';

  @override
  String get emptyResult => 'Tyhjä tulos';

  @override
  String get emptyWalletName => 'Lompakon nimi ei voi olla tyhjä';

  @override
  String get encryptionFailedError => 'Lompakon salasanan asetus epäonnistui';

  @override
  String get enterAddress => 'Syötä osoite';

  @override
  String get enterAmount => 'Syötä määrä';

  @override
  String get enterFiatValue => 'Enter Fiat Value';

  @override
  String get enterNote => 'Syötä viesti';

  @override
  String get enterPasswordHint => 'Syötä salasana';

  @override
  String get errorMessageCopied => 'Virheviesti kopioitu leikepöydälle';

  @override
  String get exampleCardIntro =>
      'Tämä on tapahtumien välilehti. Kun olet lähettänyt tai vastaanottanut tapahtumia, ne näkyvät täällä.';

  @override
  String get export => 'Vie';

  @override
  String get fee => 'Taksa';

  @override
  String feeConfirm(String amount, String coin) {
    return 'Taksa $amount $coin';
  }

  @override
  String get feeTitle => 'TAKSA';

  @override
  String get fetchingTransactions => 'Haetaan tapahtumia';

  @override
  String get fingerprintSeedBackup =>
      'Tunnistaudu varmuuskopioidaksesi turvasanat';

  @override
  String get goBackButton => 'Takaisin';

  @override
  String get gotItButton => 'Selvä!';

  @override
  String get import => 'Tuo';

  @override
  String get importSecretPhrase => 'Tuo turvasanat';

  @override
  String get importSecretPhraseHint => 'Syötä 24 turvasanaa alle';

  @override
  String get importSecretPhraseHintCombo => 'Syötä 12 tai 24 turvasanaa alle.';

  @override
  String get importSecretPhraseHintLegacy => 'Syötä 12 turvasanaa alle.';

  @override
  String get importWallet => 'Tuo lompakko';

  @override
  String get importWalletDescription => 'Valitse yksi vaihtoehto alta.';

  @override
  String get instantly => 'Välittömästi';

  @override
  String get insufficientBalance => 'Riittämätön määrä';

  @override
  String get insufficientBalanceDetails =>
      'Sinulla ei ole tapahtuman vaatimaa KAS-määrää';

  @override
  String get invalidAddress => 'Syöttämäsi osoite on virheellinen';

  @override
  String get invalidAmount => 'Virheellinen määrä';

  @override
  String get invalidChecksumMessage =>
      'Tarkista että turvasanat\n ovat syötetty oikein!';

  @override
  String get invalidKpubMessage =>
      'Varmista että laajennettu julkinen avaimesi on syötetty oikein!';

  @override
  String get invalidDestinationAddress =>
      'Vastaanottajan osoite on virheellinen';

  @override
  String get invalidPassword => 'Virheellinen salasana';

  @override
  String get kaspaDevFund => 'Kaspan kehitysvarat';

  @override
  String get kaspiumWallet => 'Kaspium-lompakko';

  @override
  String get language => 'Kieli';

  @override
  String get loadingTransactions => 'Ladataan tapahtumia...';

  @override
  String get lockAppSetting => 'Tunnistaudu käynnistettäessä';

  @override
  String get locked => 'Lukittu';

  @override
  String get loggingOutMessage => 'Kirjaudutaan ulos...';

  @override
  String get logout => 'Kirjaudu ulos';

  @override
  String get logoutDialogContent =>
      'Oletko varma, että haluat kirjautua ulos tästä lompakosta?';

  @override
  String get logoutOrSwitchWallet => 'Kirjaudu ulos / Vaihda lompakkoa';

  @override
  String get manage => 'Hallinnoi';

  @override
  String get manualEntry => 'Manuaalinen kirjaus';

  @override
  String get networkHeader => 'Verkko';

  @override
  String get newAddress => 'Uusi osoite';

  @override
  String get newWallet => 'Uusi lompakko';

  @override
  String get nextButton => 'Seuraava';

  @override
  String get no => 'Ei';

  @override
  String get noContactsExport => 'Ei ole yhteystietoja, joita viedä';

  @override
  String get noContactsImport => 'Ei uusia yhteystietoja, joita tuoda';

  @override
  String get noQrCodeFound => 'QR-koodia ei löytynyt';

  @override
  String get noSkipButton => 'Ei, ohita';

  @override
  String get noUppercase => 'EI';

  @override
  String get nodeAddress => 'Kaspa-solmu';

  @override
  String get nodeDeleteMessage => 'Haluatko varmasti poistaa?';

  @override
  String get nodeDeleteTitle => 'Poista Kaspa-solmun asetukset?';

  @override
  String get nodeNameEmpty => 'Solmun nimi ei voi olla tyhjä';

  @override
  String get nodeNameHint => 'Syötä solmun nimi';

  @override
  String get nodeUrlHint => 'Syötä solmun URL-osoite';

  @override
  String get nodeUrlInvalid => 'Virheellinen solmun URL-osoite';

  @override
  String get nodesSheetTitle => 'Kaspa-solmut';

  @override
  String get off => 'Pois päältä';

  @override
  String get on => 'Päälle';

  @override
  String get paperWallet => 'Paperilompakko';

  @override
  String get passwordBlank => 'Salasana ei voi olla tyhjä';

  @override
  String get passwordNoLongerRequiredToOpenParagraph =>
      'Et tule tarvitsemaan salasanaa avataksesi tätä lompakkoa.';

  @override
  String get passwordWillBeRequiredToOpenParagraph =>
      'Tämä salasana vaaditaan tämän lompakon avaamiseen.';

  @override
  String get passwordsDontMatch => 'Salasanat eivät täsmää';

  @override
  String get pasteMnemonicError => 'Leikepöytä ei sisällä valideja turvasanoja';

  @override
  String get pending => 'odottaa';

  @override
  String get pinConfirmError => 'PIN-koodit eivät täsmää';

  @override
  String get pinConfirmTitle => 'Vahvista PIN-koodisi';

  @override
  String get pinCreateTitle => 'Luo 6-numeroinen PIN-koodi';

  @override
  String get pinEnterTitle => 'Syötä PIN-koodi';

  @override
  String get pinInvalid => 'Väärä PIN-koodi syötetty';

  @override
  String get pinMethod => 'PIN-koodi';

  @override
  String get pinSeedBackup => 'Syötä PIN-koodi varmuuskopioidaksesi turvasanat';

  @override
  String get preferences => 'Asetukset';

  @override
  String get privacyPolicy => 'Tietosuojatiedote';

  @override
  String get qrInvalidAddress => 'QR-koodi ei sisällä validia osoitetta';

  @override
  String get qrInvalidSeed =>
      'QR-koodi ei sisällä validia seediä tai yksityistä avainta';

  @override
  String get qrMnemonicError => 'QR-koodi ei sisällä valideja turvasanoja';

  @override
  String get receive => 'Vastaanota';

  @override
  String get receiveAddress => 'Vastaanotto-osoite';

  @override
  String get receiveAddressCopied => 'Vastaanotto-osoite kopioitu';

  @override
  String get receiveIndex => 'Vastaanottoindeksi';

  @override
  String receiveIndexParam(String addressIndex) {
    return 'Vastaanotto $addressIndex';
  }

  @override
  String get received => 'Vastaanotettu';

  @override
  String get removeContact => 'Poista yhteystieto';

  @override
  String removeContactConfirmation(String contactName) {
    return 'Oletko varma että haluat poistaa $contactName?';
  }

  @override
  String get removeWalletAction => 'Poista lompakko';

  @override
  String get removeWalletBiometricsMessage =>
      'Tunnistaudu poistaaksesi lompakon';

  @override
  String get removeWalletDetail =>
      'Poistamalla tämän lompakon tästä laitteesta poistuvat myös turvasanat ja kaikki lompakon tiedot. Jos turvasanoja ei ole varmuuskopioitu, et tule koskaan pääsemään käsiksi varoihin uudestaan.';

  @override
  String get removeWalletPinMessage => 'Syötä PIN-koodi poistaaksesi lompakon';

  @override
  String get removeWalletReassurance =>
      'Kunhan olet varmuuskopioinut turvasanasi, ei sinulla ole mitään huolta.';

  @override
  String get requireAPasswordToOpenHeader =>
      'Vaaditaanko salasana tämän lompakon avaamiseen?';

  @override
  String get restartSetupButton => 'Käynnistä alustus uudelleen';

  @override
  String get scanQrCode => 'Skannaa QR-koodi';

  @override
  String get scanQrCodeError => 'QR-koodin jäsentäminen epäonnistui';

  @override
  String get secretInfo =>
      'Seuraavalla sivulla näet turvasanasi. Ne ovat salasanasi päästäksesi käsiksi varoihisi. On todella tärkeää, että varmuuskopioit ne etkä ikinä jaa niitä kenellekään.';

  @override
  String get secretInfoHeader => 'Turvallisuus ensin!';

  @override
  String get secretPhrase => 'Turvasanat';

  @override
  String get secretPhrase12Words => '12 WORDS';

  @override
  String get secretPhrase24Words => '24 WORDS';

  @override
  String get secretWarning =>
      'Mikäli hävität laitteesi tai poistat sovelluksen, tarvitset turvasanasi palauttaaksesi varasi!';

  @override
  String get securityHeader => 'Turvallisuus';

  @override
  String get seed => 'Seed';

  @override
  String get seedInvalid => 'Seed on virheellinen';

  @override
  String get send => 'Lähetä';

  @override
  String get sendConfirm => 'Lähetä';

  @override
  String get sendError => 'Tapahtui virhe. Yritä uudelleen';

  @override
  String get sendNote => 'VIESTI';

  @override
  String get sendToAddressTitle => 'Vastaanottajalle';

  @override
  String get sendTxProgressDescription => 'Odota kunnes tapahtuma on lähetetty';

  @override
  String get sendTxProgressTitle => 'Lähetetään tapahtumaa';

  @override
  String get sending => 'Lähetä';

  @override
  String get sent => 'Lähetetty';

  @override
  String get sentTo => 'Sent to';

  @override
  String get setPassword => 'Aseta salasana';

  @override
  String get setPasswordSuccess => 'Lompakon salasana asetettu';

  @override
  String get setWalletPassword => 'Aseta lompakon salasana';

  @override
  String get settingsHeader => 'Asetukset';

  @override
  String get settingsTransfer => 'Lataa paperilompakosta';

  @override
  String get setupFailedMessage => 'Jokin meni pieleen';

  @override
  String get shareKaspium => 'Jaa Kaspium';

  @override
  String get shareKaspiumSubject => 'Käy tutustumassa Kaspium-lompakkoon';

  @override
  String get shareKaspiumText =>
      'Käy tutustumassa Kaspiumiin — Kaspa-mobiililompakko.\nVerkkosivusto — kaspium.io';

  @override
  String get somethingWentWrong => 'Jokin meni pieleen';

  @override
  String get systemDefault => 'Järjestelmän oletusarvo';

  @override
  String get tapToHide => 'Piilota napauttamalla';

  @override
  String get tapToReveal => 'Tuo esiin napauttamalla';

  @override
  String get themeDark => 'Tumma teema';

  @override
  String get themeHeader => 'Teema';

  @override
  String get themeLight => 'Vaalea teema';

  @override
  String get thisWallet => '#Tämä lompakko';

  @override
  String get to => 'Vastaanottajalle';

  @override
  String get toAddress => 'Osoitteeseen';

  @override
  String get tooManyFailedAttempts => 'Liian monta virheellistä avausyritystä.';

  @override
  String get totalValue => 'Kokonaisarvo';

  @override
  String get transactionId => 'Tapahtuma-ID';

  @override
  String get transactionsUppercase => 'TAPAHTUMAT';

  @override
  String get transfer => 'Siirrä';

  @override
  String get transferClose => 'Sulje ikkuna napauttamalla mihin tahansa.';

  @override
  String transferComplete(String amount) {
    return '$amount KAS onnistuneesti siirretty Kaspium-lompakkoosi.\n';
  }

  @override
  String transferConfirmInfo(String amount) {
    return 'Lompakko, joka sisältää $amount KAS havaittu.';
  }

  @override
  String get transferConfirmInfoSecond =>
      'Hyväksy varojen siirto napauttamalla Vahvista.\n';

  @override
  String get transferConfirmInfoThird =>
      'Siirto saattaa kestää muutaman sekunnin.';

  @override
  String get transferError =>
      'Siirrossa tapahtui virhe. Yritä myöhemmin uudelleen.';

  @override
  String get transferHeader => 'Siirrä Varat';

  @override
  String transferIntro(String button) {
    return 'Tämä prosessi siirtää varat paperilompakosta Kaspium-lompakkoosi.\n\nNapauta painiketta \"$button\" aloittaaksesi.';
  }

  @override
  String get transferLoading => 'Siirretään';

  @override
  String get transferManualHint => 'Syötä seed alle.';

  @override
  String get transferNoFunds => 'Tämä seed ei pidä sisällään yhtään KASia';

  @override
  String get transferQrScanError => 'Tämä QR-koodi ei sisällä validia seediä.';

  @override
  String get transferQrScanHint => 'Skannaa Kaspa \nseed tai yksityinen avain';

  @override
  String get unconfirmed => 'vahvistamaton';

  @override
  String get notAccepted => 'ei hyväksytty';

  @override
  String get accepted => 'hyväksytty';

  @override
  String get unknown => 'tuntematon';

  @override
  String get unlock => 'Avaa';

  @override
  String get unlockBiometrics => 'Tunnistaudu avataksesi lompakon';

  @override
  String get unlockPin => 'Syötä PIN-koodi avataksesi lompakon';

  @override
  String get utxosUppercase => 'UTXO:t';

  @override
  String get viewAddress => 'Tarkastele osoitetta';

  @override
  String get viewTransaction => 'Tarkastele tapahtumaa';

  @override
  String get walletAddresses => 'Lompakon osoitteet';

  @override
  String get walletAddress => 'Wallet Address';

  @override
  String get walletName => 'Lompakon nimi';

  @override
  String get walletNameDescription => 'Syötä nimi lompakollesi';

  @override
  String get walletNameHint => 'Lompakon nimi';

  @override
  String get walletSetupAddressDiscovery => 'Osoitehakemisto käynnissä';

  @override
  String get walletSetupMessage => 'Alustetaan lompakkoa';

  @override
  String get walletsTitle => 'Lompakot';

  @override
  String get warning => 'Varoitus';

  @override
  String welcomeMessage(String version) {
    return 'Tervetuloa!\n\nTämä on versio $version Kaspiumista - Mobiililompakko Kaspalle';
  }

  @override
  String get welcomeText =>
      'Tervetuloa Kaspiumiin. Aloittaaksesi voit luoda uuden lompakon tai tuoda olemassa olevan.';

  @override
  String xMinutes(int minutes) {
    final intl.NumberFormat minutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutesString minuutin',
      one: '1 minuutin',
    );
    return '$_temp0 jälkeen';
  }

  @override
  String get yes => 'Kyllä';

  @override
  String get yesButton => 'Kyllä';

  @override
  String get yesUppercase => 'KYLLÄ';

  @override
  String get nodeNotSyncedException => 'Solmua ei ole synkronoitu';

  @override
  String get nodeNoUTXOIndexException => 'Solmulla ei ole UTXO-indeksiä';

  @override
  String get nodeSecureConnection => 'Salattu yhteys';

  @override
  String get kaspaUriInvalid => 'Virheellinen Kaspa-URI';

  @override
  String get compoundUtxos => 'Koosta tapahtumat';

  @override
  String get compoundRequired => 'Compound required';

  @override
  String get compoundRequiredDescription =>
      'The transaction amount requires too many UTXOs. Compounding will reduce the number of UTXOs.';

  @override
  String get compoundUtxosDescription => 'Yhdistä monet UTXO:t yhdeksi';

  @override
  String get compoundUtxosConfirmation => 'Koostetaanko tapahtumat?';

  @override
  String get compoundingUtxos => 'Koostetaan tapahtumat';

  @override
  String get compoundingMessage => 'Odota...';

  @override
  String get compoundSuccess => 'Koostaminen onnistui';

  @override
  String get compoundFailure => 'Tapahtumien koostaminen epäonnistui';

  @override
  String get compoundTooFewUtxos => 'Vaaditaan vähintään kaksi UTXO:ta';

  @override
  String get balance => 'Saldo';

  @override
  String get maxSend => 'Maksimilähetys';

  @override
  String get compoundUppercased => 'KOOSTA';

  @override
  String get closeUppercased => 'SULJE';

  @override
  String get scanMoreAddresses => 'Skannaa lisää osoitteita';

  @override
  String get addressDiscovery => 'Osoitteiden löytäminen';

  @override
  String get scanningTitle => 'Skannataan';

  @override
  String get scanningDescription => 'Skannataan uusia osoitteita...';

  @override
  String get scanMore => 'SKANNAA LISÄÄ';

  @override
  String get scanFailedMessage =>
      'Skannaus epäonnistui, yritä uudelleen myöhemmin';

  @override
  String get indexHeader => 'Indeksi';

  @override
  String get currentIndex => 'Nykyinen';

  @override
  String get scannedIndex => 'Skannattu';

  @override
  String get newIndex => 'Uusi';

  @override
  String get addressFilterDialogTitle => 'Osoitteen suodatus';

  @override
  String get addressFilterDialogOptionAllAddresses => 'Näytä kaikki osoitteet';

  @override
  String get addressFilterDialogOptionNonZeroBalances =>
      'Näytä osoitteet, joissa saldoa';

  @override
  String get importOption24WordsTitle => 'Tuo 24 turvasanaa';

  @override
  String get importOption24WordsDescription =>
      'Yhteensopiva Cli-lompakon ja Ledgerin kanssa';

  @override
  String get importOption12WordsTitle => 'Tuo 12 turvasanaa';

  @override
  String get importOption12WordsDescription =>
      'Yhteensopiva Web-lompakon ja KDX:n kanssa';

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
  String get importOptionKpubTitle => 'Tuo Watch-seurantalompakko';

  @override
  String get importOptionKpubDescription =>
      'Seuraa lompakon saldoa ja tapahtumia laajennetun julkisen avaimen avulla';

  @override
  String get importKpub => 'Tuo Watch-seurantalompakko';

  @override
  String get importKpubHint => 'Syötä laajennettu julkinen avaimesi.';

  @override
  String get importKpubClipboardError =>
      'Leikepyödän sisältö ei ole validi laajennettu julkinen avain';

  @override
  String get importKpubQrCodeError =>
      'QR-koodi ei sisällä validia laajennettua julkista avainta';

  @override
  String get importKpubInvalidMessage =>
      'Varmista, että syötit laajennetun julkisen avaimesi oikein!';

  @override
  String get receiveAddressListEmpty =>
      'Vastaanottajaosoitteiden lista on tyhjä';

  @override
  String get changeAddressListEmpty => 'Vaihtorahaosoitteiden lista on tyhjä';

  @override
  String get hintAddressListEmpty =>
      'Varmista osoitteiden suodatus oikeasta yläreunasta';

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
