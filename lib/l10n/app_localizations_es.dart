// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get account => 'Cuenta';

  @override
  String get accounts => 'Cuentas';

  @override
  String get ackBackedUp =>
      '¿Está seguro de que ha hecho una copia de su frase secreta?';

  @override
  String get add => 'Añadir';

  @override
  String get addAccount => 'Añadir cuenta';

  @override
  String get addContact => 'Añadir Contacto';

  @override
  String get addNode => 'Añadir Nodo';

  @override
  String get addNodeFailed => 'Error al agregar nodo Kaspa ';

  @override
  String addNodeFailedMessage(String error) {
    return 'Fallido: $error';
  }

  @override
  String get addNodeSuccess => 'Nodo agregado con éxito';

  @override
  String get addingNodeMessage =>
      'Por favor, espere mientras se establece conexión con el nodo';

  @override
  String get addingNodeTitle => 'Agregando nodo';

  @override
  String get address => 'Dirección';

  @override
  String get addressCopied => 'Dirección copiada';

  @override
  String get addressCopiedFailed => 'No se ha copiado la dirección';

  @override
  String get addressHint => 'Introducir dirección';

  @override
  String get addressMising => 'Por favor, introduzca una dirección';

  @override
  String get addressShare => 'Compartir Dirección';

  @override
  String get kaspaUriCopied => 'URI de Kaspa copiado';

  @override
  String get kaspaUriCopyFailed => 'Fallo al copiar el URI de Kaspa';

  @override
  String get advancedHeader => 'Avanzado';

  @override
  String get amount => 'Cantidad';

  @override
  String amountConfirm(String amount, String coin) {
    return 'Cantidad $amount $coin';
  }

  @override
  String get amountMissing => 'Por favor, introduzca una cantidad';

  @override
  String get amountZero => 'La cantidad no puede ser cero';

  @override
  String get areYouSure => '¿Está seguro?';

  @override
  String get authBiometricMessage => 'Autenticarse para agregar billetera';

  @override
  String get authMethod => 'Método de autenticación';

  @override
  String get authPinMessage => 'Ingrese el PIN para agregar la billetera';

  @override
  String get autoLockHeader => 'Bloquear automáticamente';

  @override
  String get available => 'Disponible';

  @override
  String get backupConfirmButton => 'He hecho una copia de seguridad';

  @override
  String get backupSecretPhrase => 'Copia de seguridad de la frase secreta';

  @override
  String get missingSecretPhrase => 'Missing Secret Phrase';

  @override
  String get biometricsMethod => 'Biometría';

  @override
  String get blockExplorer => 'Explorador de bloques';

  @override
  String get cancel => 'Cancelar';

  @override
  String get change => 'Cambio';

  @override
  String get changeAddress => 'Cambiar la dirección';

  @override
  String get changeAddressCopied => 'Cambio de dirección copiado';

  @override
  String get changeIndex => 'Índice de cambio';

  @override
  String changeIndexParam(String addressIndex) {
    return 'Cambio $addressIndex';
  }

  @override
  String get checkCameraPermission =>
      'Por favor, verifique los permisos de la cámara.';

  @override
  String get clipboardEmpty => 'El portapapeles está vacío';

  @override
  String get close => 'Cerrar';

  @override
  String get confirm => 'Confirmar';

  @override
  String get confirmPasswordHint => 'Confirmar contraseña';

  @override
  String confirmations(String confirmations) {
    return '$confirmations confirmaciones';
  }

  @override
  String get confirmed => 'confirmado';

  @override
  String get confirming => 'Confirmando';

  @override
  String contactAdded(String contactName) {
    return '$contactName añadido a contactos';
  }

  @override
  String contactAddressCopied(String address) {
    return '$address dirección copiada';
  }

  @override
  String get contactExists => 'El contacto ya existe';

  @override
  String get contactHeader => 'Contacto';

  @override
  String get contactInvalid => 'Nombre de contacto no válido';

  @override
  String get contactNameHint => 'Ingresar un nombre @';

  @override
  String get contactNameMissing => 'Elija un nombre para este contacto';

  @override
  String contactRemoved(String contactName) {
    return '¡$contactName ha sido eliminado de los contactos!';
  }

  @override
  String get contactsHeader => 'Contactos';

  @override
  String get contactsImportErr => 'Error al importar contactos';

  @override
  String contactsImportSuccess(String noContacts) {
    return 'Se importaron $noContacts contactos exitosamente';
  }

  @override
  String get copied => 'Copiado';

  @override
  String get copy => 'Copiar';

  @override
  String get copyAddress => 'Copiar dirección';

  @override
  String get copyErrorButton => 'Error al copiar';

  @override
  String get createAPasswordHeader => 'Crea una contraseña.';

  @override
  String get createPasswordFirstParagraph =>
      'Puede crear una contraseña para agregar seguridad adicional a su billetera.';

  @override
  String get createPasswordHint => 'Crear una contraseña';

  @override
  String get createPasswordSecondParagraph =>
      'La contraseña es opcional, y su billetera estará protegida con su PIN o biometría de todos modos.';

  @override
  String get createPasswordSheetHeader => 'Crear';

  @override
  String get currency => 'Moneda';

  @override
  String get currencyPoweredBy => 'Impulsado por CoinGecko';

  @override
  String get defaultAccountName => 'Cuenta 1';

  @override
  String defaultNewAccountName(int addressIndex) {
    return 'Cuenta de recepción $addressIndex';
  }

  @override
  String get defaultWalletName => 'Mi billetera';

  @override
  String get disablePasswordSheetHeader => 'Desactivar';

  @override
  String get disablePasswordSuccess => 'La contraseña ha sido desactivada';

  @override
  String get disableWalletPassword =>
      'Desactivar la contraseña de la billetera';

  @override
  String get doContinue => 'Continuar';

  @override
  String get donate => 'Donar';

  @override
  String get donateTo => 'Donar a';

  @override
  String get dontShowAgain => 'No mostrar de nuevo';

  @override
  String get emptyCardIntroUtxos =>
      'Esta es la pestaña de UTXOs. Todos los UTXO en su billetera aparecerán aquí.';

  @override
  String get emptyResult => 'Resultado vacío';

  @override
  String get emptyWalletName =>
      'El nombre de la billetera no puede estar vacío';

  @override
  String get encryptionFailedError =>
      'No se pudo establecer una contraseña para la billetera';

  @override
  String get enterAddress => 'Ingresar billetera';

  @override
  String get enterAmount => 'Ingresar cantidad';

  @override
  String get enterFiatValue => 'Introducir el Valor Fiat';

  @override
  String get enterNote => 'Ingresar nota';

  @override
  String get enterPasswordHint => 'Ingrese su contraseña';

  @override
  String get errorMessageCopied => 'Mensaje de error copiado al portapapeles';

  @override
  String get exampleCardIntro =>
      'Esta es la pestaña de transacciones. Una vez que envíe o reciba una transacción, aparecerá aquí.';

  @override
  String get export => 'Exportar';

  @override
  String get fee => 'Comisión';

  @override
  String feeConfirm(String amount, String coin) {
    return 'Comisión $amount $coin';
  }

  @override
  String get feeTitle => 'COMISIÓN';

  @override
  String get fetchingTransactions => 'Obteniendo transacciones';

  @override
  String get fingerprintSeedBackup =>
      'Autenticarse para respaldar frase secreta.';

  @override
  String get goBackButton => 'Regresar';

  @override
  String get gotItButton => '¡Entendido!';

  @override
  String get import => 'Importar';

  @override
  String get importSecretPhrase => 'Importar frase secreta';

  @override
  String get importSecretPhraseHint =>
      'Por favor, introduzca su frase secreta de 24 palabras a continuación.';

  @override
  String get importSecretPhraseHintCombo =>
      'Por favor introduzca su frase secreta de 12 ó 24 palabras';

  @override
  String get importSecretPhraseHintLegacy =>
      'Por favor introduzca su frase secreta de 12 palabras';

  @override
  String get importWallet => 'Importar billetera';

  @override
  String get importWalletDescription => 'Porfavor seleccione una opción';

  @override
  String get instantly => 'Instantáneamente';

  @override
  String get insufficientBalance => 'Balance insuficiente';

  @override
  String get insufficientBalanceDetails =>
      'No tiene suficiente KAS para esta transacción';

  @override
  String get invalidAddress => 'La dirección ingresada no es válida';

  @override
  String get invalidAmount => 'Cantidad inválida';

  @override
  String get invalidChecksumMessage =>
      '¡Por favor, compruebe que su frase secreta \nse ha introducido correctamente!';

  @override
  String get invalidKpubMessage =>
      'Por favor compruebe que su clave privada extendida se ha introducido correctamente';

  @override
  String get invalidDestinationAddress => 'Dirección de destino no válida.';

  @override
  String get invalidPassword => 'Contraseña inválida';

  @override
  String get kaspaDevFund => 'Fondo de desarrollo Kaspa';

  @override
  String get kaspiumWallet => 'Billetera Kaspium';

  @override
  String get language => 'Idioma';

  @override
  String get loadingTransactions => 'Cargando transacciones...';

  @override
  String get lockAppSetting => 'Autenticarse al iniciar';

  @override
  String get locked => 'Bloqueado';

  @override
  String get loggingOutMessage => 'Cerrando sesión...';

  @override
  String get logout => 'Cerrar sesión';

  @override
  String get logoutDialogContent =>
      '¿Está seguro de que desea cerrar la sesión de esta billetera?';

  @override
  String get logoutOrSwitchWallet => 'Cerrar sesión / Cambiar de billetera';

  @override
  String get manage => 'Administrar';

  @override
  String get manualEntry => 'Ingreso manual';

  @override
  String get networkHeader => 'Red';

  @override
  String get newAddress => 'Nueva dirección';

  @override
  String get newWallet => 'Nueva billetera';

  @override
  String get nextButton => 'Siguiente';

  @override
  String get no => 'No';

  @override
  String get noContactsExport => 'No hay contactos para exportar';

  @override
  String get noContactsImport => 'No hay nuevos contactos para importar';

  @override
  String get noQrCodeFound => 'No se encontró ningún código QR';

  @override
  String get noSkipButton => 'No, omitir';

  @override
  String get noUppercase => 'NO';

  @override
  String get nodeAddress => 'Nodo Kaspa';

  @override
  String get nodeDeleteMessage => '¿Está seguro de que desea eliminar?';

  @override
  String get nodeDeleteTitle => '¿Eliminar configuración de nodo Kaspa?';

  @override
  String get nodeNameEmpty => 'El nombre del nodo no puede estar vacío';

  @override
  String get nodeNameHint => 'Introduzca el nombre del nodo';

  @override
  String get nodeUrlHint => 'Introduzca la URL del nodo';

  @override
  String get nodeUrlInvalid => 'URL de nodo inválida';

  @override
  String get nodesSheetTitle => 'Nodos Kaspa';

  @override
  String get off => 'Desactivado';

  @override
  String get on => 'Activado';

  @override
  String get paperWallet => 'Cartera de papel';

  @override
  String get passwordBlank => 'La contraseña no puede estar vacía';

  @override
  String get passwordNoLongerRequiredToOpenParagraph =>
      'No necesitará una contraseña para abrir esta billetera.';

  @override
  String get passwordWillBeRequiredToOpenParagraph =>
      'Se requerirá esta contraseña para abrir esta billetera.';

  @override
  String get passwordsDontMatch => 'Las contraseñas no coinciden';

  @override
  String get pasteMnemonicError =>
      'El contenido del portapapeles no es una frase secreta válida';

  @override
  String get pending => 'pendiente';

  @override
  String get pinConfirmError => 'Los PIN no coinciden';

  @override
  String get pinConfirmTitle => 'Confirmar su PIN';

  @override
  String get pinCreateTitle => 'Crear un PIN de 6 dígitos';

  @override
  String get pinEnterTitle => 'Ingresar PIN';

  @override
  String get pinInvalid => 'PIN inválido introducido';

  @override
  String get pinMethod => 'PIN';

  @override
  String get pinSeedBackup =>
      'Ingrese el PIN para hacer una copia de seguridad de la frase secreta';

  @override
  String get preferences => 'Preferencias';

  @override
  String get privacyPolicy => 'Política de privacidad';

  @override
  String get qrInvalidAddress =>
      'El código QR no contiene una dirección válida';

  @override
  String get qrInvalidSeed =>
      'El código QR no contiene una semilla o clave privada válida';

  @override
  String get qrMnemonicError =>
      'El código QR no contiene una frase secreta válida';

  @override
  String get receive => 'Recibir';

  @override
  String get receiveAddress => 'Dirección de recepción';

  @override
  String get receiveAddressCopied => 'Dirección de recepción copiada';

  @override
  String get receiveIndex => 'Índice de recepción';

  @override
  String receiveIndexParam(String addressIndex) {
    return 'Recibir $addressIndex';
  }

  @override
  String get received => 'Recibido';

  @override
  String get removeContact => 'Eliminar contacto';

  @override
  String removeContactConfirmation(String contactName) {
    return '¿Está seguro de que desea eliminar el $contactName?';
  }

  @override
  String get removeWalletAction => 'Eliminar billetera';

  @override
  String get removeWalletBiometricsMessage =>
      'Autentificar para eliminar la billetera';

  @override
  String get removeWalletDetail =>
      'Al eliminar esta billetera, se eliminará la frase secreta y todos los datos relacionados con la billetera de este dispositivo. Si no ha guardado la frase secreta, nunca podrá acceder a sus fondos nuevamente.';

  @override
  String get removeWalletPinMessage =>
      'Ingrese el PIN para eliminar la billetera';

  @override
  String get removeWalletReassurance =>
      'Mientras haya guardado la frase secreta, no tiene nada de qué preocuparse.';

  @override
  String get requireAPasswordToOpenHeader =>
      '¿Deseas requerir una contraseña para abrir esta billetera?';

  @override
  String get restartSetupButton => 'Reiniciar configuración';

  @override
  String get scanQrCode => 'Escanear código QR';

  @override
  String get scanQrCodeError => 'No se pudo analizar el código QR';

  @override
  String get secretInfo =>
      'En la siguiente pantalla, verá su frase secreta. Es una contraseña para acceder a sus fondos. Es crucial que la respalde y nunca la comparta con nadie.';

  @override
  String get secretInfoHeader => '¡La seguridad primero!';

  @override
  String get secretPhrase => 'Frase secreta';

  @override
  String get secretPhrase12Words => '12 WORDS';

  @override
  String get secretPhrase24Words => '24 WORDS';

  @override
  String get secretWarning =>
      'Si pierde su dispositivo o desinstala la aplicación, necesitará su frase secreta para recuperar sus fondos.';

  @override
  String get securityHeader => 'Seguridad';

  @override
  String get seed => 'Seed';

  @override
  String get seedInvalid => 'Seed no válida';

  @override
  String get send => 'Enviar';

  @override
  String get sendConfirm => 'Enviar';

  @override
  String get sendError => 'Ocurrió un error. Por favor, inténtelo de nuevo.';

  @override
  String get sendNote => 'NOTA';

  @override
  String get sendToAddressTitle => 'A';

  @override
  String get sendTxProgressDescription =>
      'Por favor, espere mientras se envía la transacción';

  @override
  String get sendTxProgressTitle => 'Enviando transacción';

  @override
  String get sending => 'Enviar';

  @override
  String get sent => 'Enviado';

  @override
  String get sentTo => 'Enviar a';

  @override
  String get setPassword => 'Establecer contraseña';

  @override
  String get setPasswordSuccess =>
      'La contraseña de la billetera ha sido establecida';

  @override
  String get setWalletPassword => 'Establecer contraseña de la billetera';

  @override
  String get settingsHeader => 'Configuración';

  @override
  String get settingsTransfer => 'Cargar desde billetera de papel';

  @override
  String get setupFailedMessage => 'Algo salió mal';

  @override
  String get shareKaspium => 'Compartir Kaspium';

  @override
  String get shareKaspiumSubject => 'Prueba Kaspium Wallet';

  @override
  String get shareKaspiumText =>
      'Descubre Kaspium - Kaspa Mobile Wallet. \nSitio web - kaspium.io';

  @override
  String get somethingWentWrong => 'Algo salió mal';

  @override
  String get systemDefault => 'Ajustes por defecto del sistema';

  @override
  String get tapToHide => 'Toque para ocultar';

  @override
  String get tapToReveal => 'Toque para mostrar';

  @override
  String get themeDark => 'Tema oscuro';

  @override
  String get themeHeader => 'Tema';

  @override
  String get themeLight => 'Tema claro';

  @override
  String get thisWallet => '#Esta billetera';

  @override
  String get to => 'A';

  @override
  String get toAddress => 'A la dirección';

  @override
  String get tooManyFailedAttempts =>
      'Demasiados intentos fallidos de desbloqueo.';

  @override
  String get totalValue => 'Valor total';

  @override
  String get transactionId => 'ID de transacción';

  @override
  String get transactionsUppercase => 'TRANSACCIONES';

  @override
  String get transfer => 'Transferir';

  @override
  String get transferClose =>
      'Toque en cualquier lugar para cerrar la ventana.';

  @override
  String transferComplete(String amount) {
    return '$amount KAS se ha transferido con éxito a su billetera de Kaspium.\n';
  }

  @override
  String transferConfirmInfo(String amount) {
    return 'Se ha detectado una billetera con un saldo de $amount KAS.';
  }

  @override
  String get transferConfirmInfoSecond =>
      'Toque confirmar para transferir los fondos.\n';

  @override
  String get transferConfirmInfoThird =>
      'La transferencia puede tardar varios segundos en completarse.';

  @override
  String get transferError =>
      'Ha ocurrido un error durante la transferencia. Por favor, intente de nuevo más tarde.';

  @override
  String get transferHeader => 'Transferir fondos';

  @override
  String transferIntro(String button) {
    return 'Este proceso transferirá los fondos de una billetera de papel a su billetera de Kaspium. \n\nToque el botón \"$button\" para empezar.';
  }

  @override
  String get transferLoading => 'Transfiriendo';

  @override
  String get transferManualHint =>
      'Por favor, introduzca la semilla a continuación.';

  @override
  String get transferNoFunds => 'Esta semilla no contiene ningún KAS en ella';

  @override
  String get transferQrScanError =>
      'Este código QR no contiene una semilla válida.';

  @override
  String get transferQrScanHint =>
      'Escanear una semilla \no clave privada de Kaspa';

  @override
  String get unconfirmed => 'no confirmado';

  @override
  String get notAccepted => 'no aceptado';

  @override
  String get accepted => 'aceptado';

  @override
  String get unknown => 'desconocido';

  @override
  String get unlock => 'Desbloquear';

  @override
  String get unlockBiometrics => 'Autentificar para desbloquear la billetera';

  @override
  String get unlockPin => 'Introduce el PIN para desbloquear la billetera';

  @override
  String get utxosUppercase => 'UTXOs';

  @override
  String get viewAddress => 'Ver dirección';

  @override
  String get viewTransaction => 'Ver transacción';

  @override
  String get walletAddresses => 'Direcciones de la billetera';

  @override
  String get walletAddress => 'Dirección de la billetera';

  @override
  String get walletName => 'Nombre de la billetera';

  @override
  String get walletNameDescription => 'Introduzca un nombre para tu billetera';

  @override
  String get walletNameHint => 'Nombre de la billetera';

  @override
  String get walletSetupAddressDiscovery => 'Descubriendo direcciones';

  @override
  String get walletSetupMessage => 'Configurando billetera';

  @override
  String get walletsTitle => 'Billeteras';

  @override
  String get warning => 'Advertencia';

  @override
  String welcomeMessage(String version) {
    return '¡Bienvenido!\n\nEsta es la versión $version de Kaspium - la billetera móvil de Kaspa.';
  }

  @override
  String get welcomeText =>
      'Bienvenido/a a Kaspium. Para comenzar, puede crear una nueva billetera o importar una existente.';

  @override
  String xMinutes(int minutes) {
    final intl.NumberFormat minutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutesString minutos',
      one: '1 minuto',
    );
    return 'Después de $_temp0 ';
  }

  @override
  String get yes => 'Sí';

  @override
  String get yesButton => 'Si';

  @override
  String get yesUppercase => 'SI';

  @override
  String get nodeNotSyncedException => 'Nodo no sincronizado';

  @override
  String get nodeNoUTXOIndexException => 'Nodo no contiene índice UTXO';

  @override
  String get nodeSecureConnection => 'Conexión segura';

  @override
  String get kaspaUriInvalid => 'Dirección URI Kaspa no válida';

  @override
  String get compoundUtxos => 'Agrupar transacciones';

  @override
  String get compoundRequired => 'Compuesta requerida';

  @override
  String get compoundRequiredDescription =>
      'La cantidad de transacción requiere demasiados UTXOs. Componer reducirá el número de UTXOs.';

  @override
  String get compoundUtxosDescription => 'Combinar múltiples UTXOs en una';

  @override
  String get compoundUtxosConfirmation => '¿Combinar transacciones?';

  @override
  String get compoundingUtxos => 'Combinando transacciones';

  @override
  String get compoundingMessage => 'Por favor espere...';

  @override
  String get compoundSuccess => 'Agrupación completada';

  @override
  String get compoundFailure => 'Fallo al agrupar transacciones';

  @override
  String get compoundTooFewUtxos => 'Se requieren al menos dos UTXOs';

  @override
  String get balance => 'Balance';

  @override
  String get maxSend => 'Enviar Máximo';

  @override
  String get compoundUppercased => 'AGRUPAR';

  @override
  String get closeUppercased => 'CERRAR';

  @override
  String get scanMoreAddresses => 'Escanear para encontrar más direcciones';

  @override
  String get addressDiscovery => 'Descubrir Direcciones';

  @override
  String get scanningTitle => 'Escaneando';

  @override
  String get scanningDescription => 'Escaneando para encontrar más direcciones';

  @override
  String get scanMore => 'ESCANEAR MÁS';

  @override
  String get scanFailedMessage =>
      'Escaneado fallido, porfavor inténtelo más tarde';

  @override
  String get indexHeader => 'Índice';

  @override
  String get currentIndex => 'Actual';

  @override
  String get scannedIndex => 'Escaneadas';

  @override
  String get newIndex => 'Nuevas';

  @override
  String get addressFilterDialogTitle => 'Filtro de direcciones';

  @override
  String get addressFilterDialogOptionAllAddresses =>
      'Ver Todas las Direcciones';

  @override
  String get addressFilterDialogOptionNonZeroBalances =>
      'Ver Todas las Direcciones con Balance';

  @override
  String get importOption24WordsTitle =>
      'Importar Frase Secreta de 24 Palabras';

  @override
  String get importOption24WordsDescription =>
      'Compatible con Cli Wallet y Ledger';

  @override
  String get importOption12WordsTitle =>
      'Importar Frase Secreta de 12 Palabras';

  @override
  String get importOption12WordsDescription =>
      'Compatible con Web Wallet y KDX';

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
  String get importOptionKpubTitle => 'Importar Billetera de Solo Lectura';

  @override
  String get importOptionKpubDescription =>
      'Monitoriza el balance y las transacciones de una billetera utilizando una clave pública extendida';

  @override
  String get importKpub => 'Importar Billetera de Solo Lectura';

  @override
  String get importKpubHint =>
      'Por favor introduzca su clave pública extendida.';

  @override
  String get importKpubClipboardError =>
      'El contenido del portapapeles no es una clave pública extendida válida';

  @override
  String get importKpubQrCodeError =>
      'El código QR no contiene una clave pública extendida válida';

  @override
  String get importKpubInvalidMessage =>
      '¡Por favor compruebe que su clave pública extendida se ha introducido correctamente!';

  @override
  String get receiveAddressListEmpty =>
      'La lista de direcciones de recepción está vacía';

  @override
  String get changeAddressListEmpty =>
      'La lista de direcciones de cambio está vacía';

  @override
  String get hintAddressListEmpty =>
      'Compruebe el filtro de direcciones en la esquina superior derecha';

  @override
  String get invalidSecretPhrase => 'Frase secreta inválida';

  @override
  String get invalidSecretPhraseDetails =>
      'La frase secreta que has introducido tiene un checksum inválido';

  @override
  String get invalidSecretPhraseConfirmation => 'Sé lo que estoy haciendo';

  @override
  String get contactSupport => 'Contactar a Soporte';

  @override
  String emailAction(String email) {
    return 'Email $email';
  }

  @override
  String get noteLabel => 'Nota:';

  @override
  String get optionalLabel => '(Opcional)';

  @override
  String get buyKaspaSubtitle => 'A través de Topper por Uphold';

  @override
  String get buyKaspaTitle => 'Comprar Kaspa';

  @override
  String get buyKaspaMessage => 'Comprar \$KAS rápida y fácilmente.';

  @override
  String get buyKaspaMessageSecondary =>
      'Servicio proporcionado por Topper, pasarela de Uphold fiat-cripto';

  @override
  String get getStarted => 'Empezar';

  @override
  String get aboutTopperTitle => 'Sobre Topper';

  @override
  String get aboutTopperDescription =>
      'Topper por Uphold es una psarela fiat-cripto que permite a los usuarios comprar criptomonedas utilizando una tarjeta de crédito/débito o una cuenta corriente.';

  @override
  String get moreInfo => 'Más Información';

  @override
  String get selectAddress => 'Elegir Billetera';

  @override
  String get kpubTitle => 'Clave Pública Extendida';

  @override
  String get kpubAuth => 'Ver la Clave Pública Extendida';

  @override
  String get kpubDescription =>
      'La clave pública extendida puede utilizarse para importar tu billetera en modo \"sólo visualizar\"';

  @override
  String get copyKpub => 'Copiar Kpub';

  @override
  String get kpubCopied => 'Clave Pública Extendida Copiada';

  @override
  String get kpubCopyFailed => 'Fallo al copiar la Clave Pública Extendida';

  @override
  String walletAddressesCopied(String addressType) {
    return 'Direcciones de Billetera $addressType Copiadas al Portapapeles';
  }

  @override
  String walletAddressesCopyFailed(String addressType) {
    return 'Fallo al copiar las Direcciones de Billetera $addressType';
  }

  @override
  String get txReport => 'Informe de Transacción';

  @override
  String get txReportSubtitle =>
      'Guardar fichero CSV con el historial de transacciones';

  @override
  String get txReportDetails =>
      'Generar un informe de transacción, en formato CSV, que contiene todo el historial de transacciones de la billetera.';

  @override
  String get txReportOptionIgnoreCompound => 'Ignorar transacciones compuestas';

  @override
  String get txReportOptionIgnoreSelfTxs =>
      'Ignorar transacciones enviadas a mi mismo';

  @override
  String get txReportOptionRefreshTxs => 'Actualizar transacciones';

  @override
  String get txReportGenerate => 'Generar';

  @override
  String get txReportStatusRefreshing => 'Actualizando transacciones';

  @override
  String get txReportStatusLoading => 'Cargando transacciones';

  @override
  String get txReportStatusReady => ' ¡Informe de transacción listo!';

  @override
  String get txReportGetReport => 'Guardar Informe';

  @override
  String get txReportDate => 'Fecha';

  @override
  String get txReportSentAmount => 'Cantidad Enviada';

  @override
  String get txReportSentCurrency => 'Moneda Enviada';

  @override
  String get txReportReceivedAmount => 'Cantidad Recibida';

  @override
  String get txReportReceivedCurrency => 'Moneda Recibida';

  @override
  String get txReportFeeAmount => 'Cantidad de Comisión';

  @override
  String get txReportFeeCurrency => 'Moneda de Comisión';

  @override
  String get txReportLabel => 'Etiqueta';

  @override
  String get txReportDescription => 'Descripción';

  @override
  String get txReportTxHash => 'TxHash';

  @override
  String get txReportNote => 'Nota';

  @override
  String get txReportLabelCost => 'coste';

  @override
  String get txReportFeeForCompound => 'Comisión por Transacción Compuesta';

  @override
  String get txReportFeeForSelfSend =>
      'Comisión por envío a direcciones propias';

  @override
  String get txReportError => 'Error generando en informe';

  @override
  String txReportNoTxs(int numberOf) {
    return 'Encontradas $numberOf transacciones.';
  }

  @override
  String txReportNoLoadedTxs(int loadedTxs, int totalTxs) {
    return '($loadedTxs de $totalTxs)';
  }

  @override
  String get txFilterDialogTitle => 'Filtro de Transacción';

  @override
  String get txFilterDialogOptionAllTxs => 'Mostrar Todas las Transacciones';

  @override
  String get txFilterDialogOptionHideNotAcceptedCoinbase =>
      'Ocultar Transacciones Coinbase no aceptadas';

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
