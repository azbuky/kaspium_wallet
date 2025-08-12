// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n_gen.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class AppLocalizationsCa extends AppLocalizations {
  AppLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String get aboutTopperDescription =>
      'Topper by Uphold is an easy to use fiat-to-crypto onramp that allows users to buy cryptocurencies using a credit/debit card or with a bank account.';

  @override
  String get aboutTopperTitle => 'About Topper';

  @override
  String get accepted => 'accepted';

  @override
  String get account => 'Compte';

  @override
  String get accounts => 'Comptes';

  @override
  String get ackBackedUp =>
      'N\'estàs segur que has fet una còpia de seguretat de la teva frase secreta o llavor?';

  @override
  String get add => 'Afegir';

  @override
  String get addAccount => 'Afegir compte';

  @override
  String get addContact => 'Afegir contacte';

  @override
  String get addingNodeMessage =>
      'Si us plau, espera mentre es contacta amb el node';

  @override
  String get addingNodeTitle => 'Afegint node';

  @override
  String get addNode => 'Afegir node';

  @override
  String get addNodeFailed => 'Error al afegir node Kaspa';

  @override
  String addNodeFailedMessage(String error) {
    return 'Error: $error';
  }

  @override
  String get addNodeSuccess => 'Node afegit amb èxit';

  @override
  String get address => 'Adreça';

  @override
  String get addressCopied => 'Adreça copiada';

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
  String get addressHint => 'Introduir adreça';

  @override
  String get addressMising => 'Si us plau, introdueix una adreça';

  @override
  String get addressShare => 'Compartir adreça';

  @override
  String get advancedHeader => 'Avançat';

  @override
  String get amount => 'Quantitat';

  @override
  String amountConfirm(String amount, String coin) {
    return 'Quantitat $amount $coin';
  }

  @override
  String get amountMissing => 'Si us plau, introdueix una quantitat';

  @override
  String get amountZero => 'La quantitat no pot ser zero';

  @override
  String get areYouSure => 'N\'estàs segur/a?';

  @override
  String get authBiometricMessage => 'Autentica per afegir moneder';

  @override
  String get authMethod => 'Mètode d\'autenticació';

  @override
  String get authPinMessage => 'Introdueix PIN per afegir moneder';

  @override
  String get autoLockHeader => 'Bloqueig automàtic';

  @override
  String get available => 'Disponible';

  @override
  String get backupConfirmButton => 'N\'he fet una còpia de seguretat';

  @override
  String get backupSecretPhrase => 'Copiar la frase secreta';

  @override
  String get balance => 'Balance';

  @override
  String get biometricsMethod => 'Biometria';

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
  String get blockExplorer => 'Explorador de blocs';

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
  String get cancel => 'Cancel·lar';

  @override
  String get change => 'Canviar';

  @override
  String get changeAddress => 'Canviar adreça';

  @override
  String get changeAddressCopied => 'Canviar adreça copiada';

  @override
  String get changeAddressListEmpty => 'Change address list is empty';

  @override
  String get changeIndex => 'Canviar Índex';

  @override
  String changeIndexParam(String addressIndex) {
    return 'Canviar $addressIndex';
  }

  @override
  String get checkCameraPermission =>
      'Si us plau, revisa el permís a la càmera';

  @override
  String get clipboardEmpty => 'El porta-retalls està buit';

  @override
  String get close => 'Tancar';

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
  String get confirm => 'Confirmar';

  @override
  String confirmations(String confirmations) {
    return '$confirmations confirmacions';
  }

  @override
  String get confirmed => 'Confirmat';

  @override
  String get confirming => 'Confirmant';

  @override
  String get confirmPasswordHint => 'Confirma la contrasenya';

  @override
  String contactAdded(String contactName) {
    return '$contactName s\'ha afegit als contactes.';
  }

  @override
  String contactAddressCopied(String address) {
    return '$address adreça copiada';
  }

  @override
  String get contactExists => 'El contacte ja existeix';

  @override
  String get contactHeader => 'Contacte';

  @override
  String get contactInvalid => 'Nom de contacte invàlid';

  @override
  String get contactNameHint => 'Introdueix un nom @';

  @override
  String get contactNameMissing => 'Escull un nom per aquest contacte';

  @override
  String contactRemoved(String contactName) {
    return '$contactName s\'ha eliminat dels contactes!';
  }

  @override
  String get contactsHeader => 'Contactes';

  @override
  String get contactsImportErr => 'Error a l\'importar contactes';

  @override
  String contactsImportSuccess(String noContacts) {
    return '$noContacts contactes importats amb èxit.';
  }

  @override
  String get contactSupport => 'Contact Support';

  @override
  String get copied => 'Copiat';

  @override
  String get copy => 'Copia';

  @override
  String get copyAddress => 'Copiar adreça';

  @override
  String get copyErrorButton => 'Copiar error';

  @override
  String get copyKpub => 'Copy Kpub';

  @override
  String get createAPasswordHeader => 'Crea una contrasenya.';

  @override
  String get createPasswordFirstParagraph =>
      'Pots establir una contrasenya per afegir protecció addicional al teu moneder.';

  @override
  String get createPasswordHint => 'Crea una contrasenya';

  @override
  String get createPasswordSecondParagraph =>
      'La contrasenya és opcional, el teu moneder estarà protegit amb el PIN o les dades biomètriques.';

  @override
  String get createPasswordSheetHeader => 'Crear';

  @override
  String get currency => 'Moneda';

  @override
  String get currencyPoweredBy => 'Amb tecnologia de CoinGecko';

  @override
  String get currentIndex => 'Current';

  @override
  String get defaultAccountName => 'Compte principal';

  @override
  String defaultNewAccountName(int addressIndex) {
    return 'Compte $addressIndex';
  }

  @override
  String get defaultWalletName => 'El meu moneder';

  @override
  String get disablePasswordSheetHeader => 'Desactivar';

  @override
  String get disablePasswordSuccess => 'La contrasenya s\'ha desactivat';

  @override
  String get disableWalletPassword => 'Desactivar contrasenya del moneder';

  @override
  String get doContinue => 'Continuar';

  @override
  String get donate => 'Fer una donació';

  @override
  String get donateTo => 'Donate To';

  @override
  String get dontShowAgain => 'No mostris més';

  @override
  String emailAction(String email) {
    return 'Email $email';
  }

  @override
  String get emptyCardIntroUtxos =>
      'Aquesta és la pestanya de UTXOs. Tots els UTXOs del teu moneder apareixeran aquí';

  @override
  String get emptyResult => 'Resultat buit';

  @override
  String get emptyWalletName => 'El nom del moneder no pot quedar buit';

  @override
  String get encryptionFailedError =>
      'Error a l\'establir la contrasenya del moneder';

  @override
  String get enterAddress => 'Introduir adreça';

  @override
  String get enterAmount => 'Introduir quantitat';

  @override
  String get enterFiatValue => 'Enter Fiat Value';

  @override
  String get enterNote => 'Inserir nota';

  @override
  String get enterPasswordHint => 'Introdueix la teva contrasenya';

  @override
  String get errorMessageCopied => 'Missatge d\'error copiat al porta-retalls';

  @override
  String get exampleCardIntro =>
      'Benvingut a Natrium. Un cop hagis rebut KAS, les transaccions apareixeran així:';

  @override
  String get export => 'Exportar';

  @override
  String get fee => 'Comissió';

  @override
  String get feeBaseUppercase => 'BASE FEE';

  @override
  String feeConfirm(String amount, String coin) {
    return 'Comissió $amount $coin';
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
  String get feeTitle => 'COMISSIÓ';

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
  String get fetchingTransactions => 'Buscant Transaccions';

  @override
  String get fingerprintSeedBackup =>
      'Autentica\'t per copiar la llavor i la frase secreta.';

  @override
  String get getStarted => 'Get Started';

  @override
  String get goBackButton => 'Tornar';

  @override
  String get gotItButton => 'Ho entenc!';

  @override
  String get hideAccountHeader => 'Hide Account?';

  @override
  String get hideAccountText =>
      'Are you sure you want to hide this account? You can re-add it later by tapping the \"Add Account\" button.';

  @override
  String get hintAddressListEmpty =>
      'Check address filter from the top right corner';

  @override
  String get import => 'Importar';

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
  String get importSecretPhrase => 'Importar frase secreta';

  @override
  String get importSecretPhraseHint =>
      'Si us plau, introdueix la teva frase secreta de 24 paraules a sota. Cada paraula ha d\'estar separada per un espai.';

  @override
  String get importSecretPhraseHintCombo =>
      'Please enter your 12 or 24 word secret phrase below.';

  @override
  String get importSecretPhraseHintLegacy =>
      'Please enter your 12 word secret phrase below.';

  @override
  String get importWallet => 'Importar el moneder';

  @override
  String get importWalletAdvancedOptions => 'Advanced Options';

  @override
  String get importWalletDescription => 'Please select an option below.';

  @override
  String get indexHeader => 'Index';

  @override
  String get instantly => 'A l\'instant';

  @override
  String get insufficientBalance => 'Saldo insuficient';

  @override
  String get insufficientBalanceDetails =>
      'No tens suficient KAS per a aquesta transacció';

  @override
  String get invalidAddress => 'L\'adreça introduïda no és vàlida';

  @override
  String get invalidAmount => 'Quantitat incorrecta';

  @override
  String get invalidChecksumMessage =>
      'Si us plau, comprova que la teva Frase secreta\ns\'ha introduït correctament!';

  @override
  String get invalidDestinationAddress => 'Adreça de destí incorrecta';

  @override
  String get invalidKpubMessage =>
      'Please check that your extended public key is entered correctly!';

  @override
  String get invalidPassword => 'Contrasenya no vàlida';

  @override
  String get invalidSecretPhrase => 'Invalid Secret Phrase';

  @override
  String get invalidSecretPhraseConfirmation => 'I know what I\'m doing';

  @override
  String get invalidSecretPhraseDetails =>
      'The Secret Phrase you entered has an invalid checksum.';

  @override
  String get kaspaDevFund => 'Fons de Desenvolupadors Kaspa';

  @override
  String get kaspaUriCopied => 'Kaspa URI Copied';

  @override
  String get kaspaUriCopyFailed => 'Failed to copy Kaspa URI';

  @override
  String get kaspaUriInvalid => 'Invalid Kaspa URI';

  @override
  String get kaspiumWallet => 'Moneder Kaspium';

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
  String get language => 'Idioma';

  @override
  String get loadingTransactions => 'Carregant Transaccions...';

  @override
  String get lockAppSetting => 'Autenticar-se a l\'inici';

  @override
  String get locked => 'Bloquejat';

  @override
  String get loggingOutMessage => 'Sortint...';

  @override
  String get logout => 'Tancar la sessió';

  @override
  String get logoutDialogContent => 'Segur que vols sortir d\'aquest moneder?';

  @override
  String get logoutOrSwitchWallet => 'Sortir / Canviar de moneder';

  @override
  String get manage => 'Administrar';

  @override
  String get manualEntry => 'Introduir manualment';

  @override
  String get maxSend => 'Max Send';

  @override
  String get missingSecretPhrase => 'Missing Secret Phrase';

  @override
  String get moreInfo => 'More Info';

  @override
  String get networkHeader => 'Xarxa';

  @override
  String get newAddress => 'Nova adreça';

  @override
  String get newIndex => 'New';

  @override
  String get newWallet => 'Nou moneder';

  @override
  String get nextButton => 'Següent';

  @override
  String get no => 'No';

  @override
  String get noContactsExport => 'No hi ha contactes per exportar.';

  @override
  String get noContactsImport => 'No hi ha nous contactes per importar.';

  @override
  String get nodeAddress => 'Node Kaspa';

  @override
  String get nodeDeleteMessage => 'N\'estàs segur que vols esborrar-ho?';

  @override
  String get nodeDeleteTitle => 'Esborrar la configuració del Node Kaspa?';

  @override
  String get nodeNameEmpty => 'El Nom del Node no pot quedar buit';

  @override
  String get nodeNameHint => 'Introdueix Nom del Node';

  @override
  String get nodeNotSyncedException => 'El node no està sincronitzat';

  @override
  String get nodeNoUTXOIndexException => 'El node no té índex UTXO';

  @override
  String get nodeSecureConnection => 'Connexió segura';

  @override
  String get nodesSheetTitle => 'Nodes Kaspa';

  @override
  String get nodeUrlHint => 'Introdueix adreça URL del node';

  @override
  String get nodeUrlInvalid => 'Adreça URL del node incorrecta';

  @override
  String get noQrCodeFound => 'No s\'ha trobat el QR';

  @override
  String get noSkipButton => 'No, ometre';

  @override
  String get notAccepted => 'not accepted';

  @override
  String get noteLabel => 'Note:';

  @override
  String get noUppercase => 'NO';

  @override
  String get off => 'Desactivades';

  @override
  String get on => 'Activades';

  @override
  String get optionalLabel => '(Optional)';

  @override
  String get paperWallet => 'Moneder de paper';

  @override
  String get passwordBlank => 'La contrasenya no pot estar buida';

  @override
  String get passwordNoLongerRequiredToOpenParagraph =>
      'Ja no requeriràs una contrasenya per obrir Natrium.';

  @override
  String get passwordsDontMatch => 'Les contrasenyes no coincideixen';

  @override
  String get passwordWillBeRequiredToOpenParagraph =>
      'Es requerirà aquesta contrasenya per obrir Natrium.';

  @override
  String get pasteMnemonicError =>
      'El contingut del porta-retalls no és una frase secreta correcta';

  @override
  String get pending => 'pendent';

  @override
  String get pinConfirmError => 'Els codis PIN no coincideixen';

  @override
  String get pinConfirmTitle => 'Confirma el teu PIN';

  @override
  String get pinCreateTitle => 'Crea un PIN de 6 dígits';

  @override
  String get pinEnterTitle => 'Introdueix el PIN';

  @override
  String get pinInvalid => 'PIN introduït invàlid';

  @override
  String get pinMethod => 'PIN';

  @override
  String get pinSeedBackup =>
      'Introdueix el PIN per copiar la llavor i la frase secreta';

  @override
  String get preferences => 'Preferències';

  @override
  String get privacyPolicy => 'Política de privadesa';

  @override
  String get qrInvalidAddress => 'El codi QR no conté un destí vàlid';

  @override
  String get qrInvalidSeed =>
      'El codi QR no conté una llavor o clau privada vàlida';

  @override
  String get qrMnemonicError => 'El codi QR no conté una frase secreta vàlida';

  @override
  String get receive => 'Rebre';

  @override
  String get receiveAddress => 'Rebre adreça';

  @override
  String get receiveAddressCopied => 'S\'ha copiat l\'adreça rebuda';

  @override
  String get receiveAddressListEmpty => 'Receive address list is empty';

  @override
  String get received => 'Rebut';

  @override
  String get receiveIndex => 'Rebre Índex';

  @override
  String receiveIndexParam(String addressIndex) {
    return 'Rebre $addressIndex';
  }

  @override
  String get removeContact => 'Eliminar contacte';

  @override
  String removeContactConfirmation(String contactName) {
    return 'N\'estàs segur que vols eliminar a $contactName?';
  }

  @override
  String get removeWalletAction => 'Esborrar moneder';

  @override
  String get removeWalletBiometricsMessage => 'Autenticar per Esborrar moneder';

  @override
  String get removeWalletDetail =>
      'Al esborrar aquest moneder, s\'esborrarà la frase secreta i totes les dades relacionades amb aquest moneder en aquest dispositiu. Si no tens còpia de la frase secreta, mai més podràs accedir als teus fons.';

  @override
  String get removeWalletPinMessage => 'Introduir PIN per eliminar el moneder';

  @override
  String get removeWalletReassurance =>
      'Sempre que tinguis una còpia de la teva frase secreta, no tens per què preocupar-te';

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
      'Vols requerir una contrasenya per obrir Natrium?';

  @override
  String get restartSetupButton => 'Reiniciar configuració';

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
  String get scanQrCode => 'Escanejar codi QR';

  @override
  String get scanQrCodeError => 'Error al obtenir codi QR';

  @override
  String get secretInfo =>
      'En la següent pantalla, veuràs una frase secreta. És una contrasenya per accedir als teus fons. És crucial que en facis una còpia de seguretat i no la comparteixis amb ningú.';

  @override
  String get secretInfoHeader => 'Seguretat abans que res!';

  @override
  String get secretPhrase => 'Frase secreta';

  @override
  String get secretPhrase12Words => '12 WORDS';

  @override
  String get secretPhrase24Words => '24 WORDS';

  @override
  String get secretWarning =>
      'Si perds el teu dispositiu o desinstal·les l\'aplicació, necessitaràs la teva frase secreta o llavor per recuperar els teus fons!';

  @override
  String get securityHeader => 'Seguretat';

  @override
  String get seed => 'Seed';

  @override
  String get seedInvalid => 'Llavor no vàlida';

  @override
  String get selectAddress => 'Select Address';

  @override
  String get send => 'Enviar';

  @override
  String get sendConfirm => 'Enviar';

  @override
  String get sendError => 'S\'ha produït un error. Intenta-ho més tard.';

  @override
  String get sending => 'Enviar';

  @override
  String get sendNote => 'NOTA';

  @override
  String get sendToAddressTitle => 'A';

  @override
  String get sendTxProgressDescription =>
      'Si us plau, espera mentres la transacció s\'envia';

  @override
  String get sendTxProgressTitle => 'Enviant transacció';

  @override
  String get sent => 'Enviat';

  @override
  String get sentTo => 'Sent to';

  @override
  String get setPassword => 'Establir contrasenya';

  @override
  String get setPasswordSuccess => 'Contrasenya establerta amb èxit';

  @override
  String get settingsHeader => 'Configuració';

  @override
  String get settingsTransfer => 'Carregar des d\'un moneder de paper';

  @override
  String get setupFailedMessage => 'Hi ha hagut un error';

  @override
  String get setWalletPassword => 'Establir contrasenya del moneder';

  @override
  String get shareKaspium => 'Compartir Kaspium';

  @override
  String get shareKaspiumSubject => 'Veure el moneder de Kaspium';

  @override
  String get shareKaspiumText =>
      'Mira Kaspium - Kaspa Moneder Mòbil.\nWeb - kaspium.io';

  @override
  String get somethingWentWrong => 'Hi ha hagut un error';

  @override
  String get systemDefault => 'Predeterminat del sistema';

  @override
  String get tapToHide => 'Prem per amagar';

  @override
  String get tapToReveal => 'Prem per mostrar';

  @override
  String get themeDark => 'Tema fosc';

  @override
  String get themeHeader => 'Tema';

  @override
  String get themeLight => 'Tema clar';

  @override
  String get thisWallet => '#Aquest moneder';

  @override
  String get to => 'A';

  @override
  String get toAddress => 'A Adreça';

  @override
  String get tooManyFailedAttempts => 'Massa intents de desbloqueig fallits.';

  @override
  String get totalValue => 'Valor Total';

  @override
  String get transactionId => 'ID de la transacció';

  @override
  String get transactionsUppercase => 'TRANSACCIONS';

  @override
  String get transfer => 'Transferir';

  @override
  String get transferClose => 'Prem a qualsevol lloc per tancar la finestra.';

  @override
  String transferComplete(String amount) {
    return '$amount KAS han estat transferits amb èxit al teu moneder Natrium.\n';
  }

  @override
  String transferConfirmInfo(String amount) {
    return 'S\'ha detectat un moneder amb un saldo de $amount KAS.\n';
  }

  @override
  String get transferConfirmInfoSecond =>
      'La transferència pot tardar uns quants segons a completar-se.\n';

  @override
  String get transferConfirmInfoThird =>
      'La transferència pot tardar uns quants segons a completar-se.';

  @override
  String get transferError =>
      'S\'ha produït un error en la transferència. Si us plau, intenta-ho més tard.';

  @override
  String get transferHeader => 'Transferir fons';

  @override
  String transferIntro(String button) {
    return 'Aquest procés transferirà els fons des d\'un moneder de paper al teu moneder Natrium.\n\nPrem el botó \"$button\" per començar.';
  }

  @override
  String get transferLoading => 'Transferint';

  @override
  String get transferManualHint => 'Si us plau, introdueix la llavor a sota.';

  @override
  String get transferNoFunds => 'Aquesta llavor no conté cap KAS';

  @override
  String get transferQrScanError =>
      'Aquest codi QR no conté una llavor vàlida.';

  @override
  String get transferQrScanHint => 'Escaneja una llavor\no clau privada Kaspa';

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
  String get unconfirmed => 'sense confirmar';

  @override
  String get unknown => 'desconegut';

  @override
  String get unlock => 'Desbloquejar';

  @override
  String get unlockBiometrics => 'Autentica\'t per desbloquejar Natrium';

  @override
  String get unlockPin => 'Introdueix el PIN per desbloquejar Natrium';

  @override
  String get utxoSelectionHint => 'Please select more UTXOs';

  @override
  String get utxoSelectionTitle => 'Select UTXOs';

  @override
  String get utxosUppercase => 'UTXOs';

  @override
  String get viewAddress => 'Veure Adreça';

  @override
  String get viewTransaction => 'Veure Transacció';

  @override
  String get walletAddress => 'Wallet Address';

  @override
  String get walletAddresses => 'Adreces del moneder';

  @override
  String walletAddressesCopied(String addressType) {
    return 'Wallet $addressType Addresses Copied to Clipboard';
  }

  @override
  String walletAddressesCopyFailed(String addressType) {
    return 'Failed to Copy Wallet $addressType Addresses';
  }

  @override
  String get walletName => 'Nom del moneder';

  @override
  String get walletNameDescription => 'Introdueix un nom pel teu moneder';

  @override
  String get walletNameHint => 'Nom del moneder';

  @override
  String get walletSetupAddressDiscovery => 'Executant Descobriment d\'Adreces';

  @override
  String get walletSetupMessage => 'Configurant moneder';

  @override
  String get walletsTitle => 'Moneders';

  @override
  String get warning => 'Advertència';

  @override
  String welcomeMessage(String version) {
    return 'Benvingut/uda!\n\nAquesta és la versió $version de Kaspium - el moneder mòbil per Kaspa';
  }

  @override
  String get welcomeText =>
      'Benvingut a Natrium. Per començar, pots crear un nou moneder o importar-ne un d\'existent.';

  @override
  String get yes => 'Sí';

  @override
  String get yesButton => 'Sí';

  @override
  String get yesUppercase => 'SÍ';
}
