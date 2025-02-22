// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get account => 'Compte';

  @override
  String get accounts => 'Comptes';

  @override
  String get ackBackedUp =>
      'Êtes-vous sûr de bien avoir correctement sauvegardé votre phrase secrète ?';

  @override
  String get add => 'Ajouter';

  @override
  String get addAccount => 'Ajouter un compte';

  @override
  String get addContact => 'Ajouter un contact';

  @override
  String get addNode => 'Ajouter un nœud';

  @override
  String get addNodeFailed => 'Échec de l\'ajout du nœud Kaspa';

  @override
  String addNodeFailedMessage(String error) {
    return 'Erreur: $error';
  }

  @override
  String get addNodeSuccess => 'Nœud ajouté avec succès';

  @override
  String get addingNodeMessage =>
      'Veuillez patienter pendant que le nœud est contacté';

  @override
  String get addingNodeTitle => 'Ajout du nœud en cours';

  @override
  String get address => 'Adresse';

  @override
  String get addressCopied => 'Adresse copiée';

  @override
  String get addressCopiedFailed => 'La copie de l\'adresse à échoué';

  @override
  String get addressHint => 'Entrez une adresse';

  @override
  String get addressMising => 'Veuillez entrer une adresse de destination';

  @override
  String get addressShare => 'Partager l\'adresse';

  @override
  String get kaspaUriCopied => 'URI Kaspa copiée';

  @override
  String get kaspaUriCopyFailed => 'Échec de la copie de l\'URI Kaspa';

  @override
  String get advancedHeader => 'Avancé';

  @override
  String get amount => 'Montant';

  @override
  String amountConfirm(String amount, String coin) {
    return 'Montant $amount $coin';
  }

  @override
  String get amountMissing => 'Veuillez entrer un montant';

  @override
  String get amountZero => 'Le montant ne peut pas être nul';

  @override
  String get areYouSure => 'Êtes-vous sûr ?';

  @override
  String get authBiometricMessage =>
      'Authentifiez-vous pour ajouter un portefeuille';

  @override
  String get authMethod => 'Méthode d’authentification';

  @override
  String get authPinMessage =>
      'Entrez votre code PIN pour ajouter un portefeuille';

  @override
  String get autoLockHeader => 'Verrouillage automatique';

  @override
  String get available => 'Disponible';

  @override
  String get backupConfirmButton => 'Je l\'ai sauvegardé';

  @override
  String get backupSecretPhrase => 'Sauvegarder la phrase secrète';

  @override
  String get missingSecretPhrase => 'Missing Secret Phrase';

  @override
  String get biometricsMethod => 'Biométrie';

  @override
  String get blockExplorer => 'Explorateur de blocs';

  @override
  String get cancel => 'Annuler';

  @override
  String get change => 'Changer';

  @override
  String get changeAddress => 'Adresse';

  @override
  String get changeAddressCopied => 'Adresse copiée';

  @override
  String get changeIndex => 'Changer l\'index';

  @override
  String changeIndexParam(String addressIndex) {
    return 'Changer $addressIndex';
  }

  @override
  String get checkCameraPermission =>
      'Merci de vérifier les permissions de l\'appareil photo';

  @override
  String get clipboardEmpty => 'Le presse-papier est vide';

  @override
  String get close => 'Fermer';

  @override
  String get confirm => 'Confirmer';

  @override
  String get confirmPasswordHint => 'Confirmer le mot de passe';

  @override
  String confirmations(String confirmations) {
    return '$confirmations confirmations';
  }

  @override
  String get confirmed => 'confirmé';

  @override
  String get confirming => 'en cours de confirmation';

  @override
  String contactAdded(String contactName) {
    return '$contactName a été ajouté aux contacts !';
  }

  @override
  String contactAddressCopied(String address) {
    return '$address adresse copiée';
  }

  @override
  String get contactExists => 'Ce contact existe déjà';

  @override
  String get contactHeader => 'Contact';

  @override
  String get contactInvalid => 'Nom du contact erroné';

  @override
  String get contactNameHint => 'Entrez un nom @';

  @override
  String get contactNameMissing => 'Choisir un nom pour ce contact';

  @override
  String contactRemoved(String contactName) {
    return '$contactName a été supprimé de vos contacts !';
  }

  @override
  String get contactsHeader => 'Contacts';

  @override
  String get contactsImportErr => 'Échec de l\'importation des contacts';

  @override
  String contactsImportSuccess(String noContacts) {
    return 'Import de $noContacts contacts réussi';
  }

  @override
  String get copied => 'Copié';

  @override
  String get copy => 'Copier';

  @override
  String get copyAddress => 'Copier l’adresse';

  @override
  String get copyErrorButton => 'Erreur de copie';

  @override
  String get createAPasswordHeader => 'Créer un mot de passe.';

  @override
  String get createPasswordFirstParagraph =>
      'Vous pouvez créer un mot de passe pour améliorer la sécurité de votre portefeuille.';

  @override
  String get createPasswordHint => 'Créer un mot de passe';

  @override
  String get createPasswordSecondParagraph =>
      'Le mot de passe est optionnel, votre portefeuille sera néanmoins protégé par votre code PIN ou vos données biométriques.';

  @override
  String get createPasswordSheetHeader => 'Créer';

  @override
  String get currency => 'Devise';

  @override
  String get currencyPoweredBy => 'Propulsé par CoinGecko';

  @override
  String get defaultAccountName => 'Adresse 1';

  @override
  String defaultNewAccountName(int addressIndex) {
    return 'Adresse de réception $addressIndex';
  }

  @override
  String get defaultWalletName => 'Mon portefeuille';

  @override
  String get disablePasswordSheetHeader => 'Désactiver';

  @override
  String get disablePasswordSuccess => 'Mot de passe désactivé';

  @override
  String get disableWalletPassword =>
      'Désactiver le mot de passe du portefeuille';

  @override
  String get doContinue => 'Continuer';

  @override
  String get donate => 'Faire un don';

  @override
  String get donateTo => 'Faire un don à';

  @override
  String get dontShowAgain => 'Ne plus afficher';

  @override
  String get emptyCardIntroUtxos =>
      'Ceci est l\'onglet des UTXOs. Tous les UTXOs de votre portefeuille apparaîtront ici';

  @override
  String get emptyResult => 'Résultat vide';

  @override
  String get emptyWalletName => 'Le nom du portefeuille ne peut pas être vide';

  @override
  String get encryptionFailedError =>
      'La définition du mot de passe de portefeuille à échouée';

  @override
  String get enterAddress => 'Entrez l’adresse';

  @override
  String get enterAmount => 'Entrez le montant';

  @override
  String get enterFiatValue => 'Entrez la valeur Fiat';

  @override
  String get enterNote => 'Entrez une note';

  @override
  String get enterPasswordHint => 'Entrez votre mot de passe';

  @override
  String get errorMessageCopied =>
      'Le message d\'erreur à été copié dans le presse-papier';

  @override
  String get exampleCardIntro =>
      'Ceci est le volet de transactions. Lorsque vous recevrez ou enverrez des KAS, les transactions apparaîtront ici.';

  @override
  String get export => 'Exporter';

  @override
  String get fee => 'Frais';

  @override
  String feeConfirm(String amount, String coin) {
    return 'Frais $amount $coin';
  }

  @override
  String get feeTitle => 'FRAIS';

  @override
  String get fetchingTransactions => 'Récupération des transactions';

  @override
  String get fingerprintSeedBackup =>
      'Veuillez vous authentifier pour sauvegarder la phrase secrète.';

  @override
  String get goBackButton => 'Retour';

  @override
  String get gotItButton => 'J\'ai compris !';

  @override
  String get import => 'Importer';

  @override
  String get importSecretPhrase => 'Importer une phrase secrète';

  @override
  String get importSecretPhraseHint =>
      'Veuillez entrer votre phrase secrète de 24 mots ci-dessous.';

  @override
  String get importSecretPhraseHintCombo =>
      'Veuillez entrer votre phrase secrète de 12 ou 24 mots ci-dessous.';

  @override
  String get importSecretPhraseHintLegacy =>
      'Veuillez entrer votre passe phrase de 12 mots ci-dessous.';

  @override
  String get importWallet => 'Importer un portefeuille';

  @override
  String get importWalletDescription =>
      'Veuillez sélectionner une option ci-dessous.';

  @override
  String get instantly => 'Instantanément';

  @override
  String get insufficientBalance => 'Solde insuffisant';

  @override
  String get insufficientBalanceDetails =>
      'Vous n\'avez pas assez de KAS pour cette transaction';

  @override
  String get invalidAddress => 'L\'adresse saisie est invalide';

  @override
  String get invalidAmount => 'Montant invalide';

  @override
  String get invalidChecksumMessage =>
      'Merci de vérifier que votre phrase secrète\nest correcte !';

  @override
  String get invalidKpubMessage =>
      'Merci de vérifier que la clé publique étendue renseignée soit correcte!';

  @override
  String get invalidDestinationAddress => 'Adresse du destinataire invalide';

  @override
  String get invalidPassword => 'Mot de passe invalide';

  @override
  String get kaspaDevFund => 'Fond de développement Kaspa';

  @override
  String get kaspiumWallet => 'Portefeuille Kaspium';

  @override
  String get language => 'Langue';

  @override
  String get loadingTransactions => 'Chargement des transactions...';

  @override
  String get lockAppSetting => 'S\'authentifier au démarrage';

  @override
  String get locked => 'Verrouillé';

  @override
  String get loggingOutMessage => 'Déconnexion...';

  @override
  String get logout => 'Déconnexion';

  @override
  String get logoutDialogContent =>
      'Êtes-vous sur de vouloir vous déconnecter de ce portefeuille ?';

  @override
  String get logoutOrSwitchWallet => 'Déconnecter / Changer de portefeuille';

  @override
  String get manage => 'Gérer';

  @override
  String get manualEntry => 'Saisie manuelle';

  @override
  String get networkHeader => 'Réseau';

  @override
  String get newAddress => 'Ajouter une nouvelle adresse';

  @override
  String get newWallet => 'Nouveau portefeuille';

  @override
  String get nextButton => 'Suivant';

  @override
  String get no => 'Non';

  @override
  String get noContactsExport => 'Il n’y a pas de contacts à exporter';

  @override
  String get noContactsImport => 'Aucun nouveau contact à importer';

  @override
  String get noQrCodeFound => 'QR Code introuvable';

  @override
  String get noSkipButton => 'Passer';

  @override
  String get noUppercase => 'NON';

  @override
  String get nodeAddress => 'Nœud Kaspa';

  @override
  String get nodeDeleteMessage => 'Êtes-vous sûr de vouloir supprimer ?';

  @override
  String get nodeDeleteTitle => 'Supprimer la configuration du nœud Kaspa ?';

  @override
  String get nodeNameEmpty => 'Le nom du nœud ne peux pas être vide';

  @override
  String get nodeNameHint => 'Entrez un nom de nœud';

  @override
  String get nodeUrlHint => 'Entrez une URL de nœud';

  @override
  String get nodeUrlInvalid => 'URL du nœud invalide';

  @override
  String get nodesSheetTitle => 'Nœuds Kaspa';

  @override
  String get off => 'Désactivé';

  @override
  String get on => 'Activé';

  @override
  String get paperWallet => 'Portefeuille papier';

  @override
  String get passwordBlank => 'Le mot de passe ne peut être vide';

  @override
  String get passwordNoLongerRequiredToOpenParagraph =>
      'Vous n\'aurez plus besoin de mot de passe pour ouvrir ce portefeuille.';

  @override
  String get passwordWillBeRequiredToOpenParagraph =>
      'Ce mot passe vous sera demandé pour ouvrir ce portefeuille.';

  @override
  String get passwordsDontMatch => 'Les mots de passe sont différents';

  @override
  String get pasteMnemonicError =>
      'Le contenu du presse-papier n\'est pas une phrase secrète valide';

  @override
  String get pending => 'En attente';

  @override
  String get pinConfirmError => 'Les PINs ne correspondent pas';

  @override
  String get pinConfirmTitle => 'Confirmer votre code PIN';

  @override
  String get pinCreateTitle => 'Créer un code PIN à 6 chiffres';

  @override
  String get pinEnterTitle => 'Entrez le code PIN';

  @override
  String get pinInvalid => 'Code PIN saisi invalide';

  @override
  String get pinMethod => 'Code PIN';

  @override
  String get pinSeedBackup =>
      'Entrez le code PIN pour voir votre phrase secrète';

  @override
  String get preferences => 'Préférences';

  @override
  String get privacyPolicy => 'Politique de confidentialité';

  @override
  String get qrInvalidAddress =>
      'Le QR code ne contient pas de d\'adresse valide';

  @override
  String get qrInvalidSeed =>
      'Le QR code ne contient pas de phrase secrète ou de clé privée valide ';

  @override
  String get qrMnemonicError =>
      'Le QR code ne contient pas de phrase secrète valide.';

  @override
  String get receive => 'Recevoir';

  @override
  String get receiveAddress => 'Adresse de réception';

  @override
  String get receiveAddressCopied => 'Adresse de réception copiée';

  @override
  String get receiveIndex => 'Adresse de réception';

  @override
  String receiveIndexParam(String addressIndex) {
    return 'Adresse de réception $addressIndex';
  }

  @override
  String get received => 'Reçu';

  @override
  String get removeContact => 'Supprimer le contact';

  @override
  String removeContactConfirmation(String contactName) {
    return 'Êtes vous sûr de vouloir supprimer $contactName?';
  }

  @override
  String get removeWalletAction => 'Supprimer le portefeuille';

  @override
  String get removeWalletBiometricsMessage =>
      'Veuillez vous authentifier pour supprimer le portefeuille';

  @override
  String get removeWalletDetail =>
      'La suppression de ce portefeuille supprimera la phrase secrète et toutes les données liées au portefeuille sur cet appareil. Si la phrase secrète n\'est pas sauvegardée, vous ne pourrez plus jamais accéder à vos fonds.';

  @override
  String get removeWalletPinMessage =>
      'Entrer votre PIN pour supprimer le portefeuille';

  @override
  String get removeWalletReassurance =>
      'Tant que vous avez sauvegardé la phrase secrète, vous n\'avez rien à craindre.';

  @override
  String get requireAPasswordToOpenHeader =>
      'Demander un mot de passe pour ouvrir ce portefeuille ?';

  @override
  String get restartSetupButton => 'Redémarrer la configuration';

  @override
  String get scanQrCode => 'Scanner le QR Code';

  @override
  String get scanQrCodeError => 'Échec de l\'analyse du QR Code';

  @override
  String get secretInfo =>
      'Dans l\'écran suivant, vous verrez votre phrase secrète. Il s\'agit d\'un mot de passe qui permet d\'accéder à vos fonds. Il est crucial que vous le sauvegardiez et que vous ne le partagiez jamais avec qui que ce soit.';

  @override
  String get secretInfoHeader => 'La sécurité avant tout !';

  @override
  String get secretPhrase => 'Phrase secrète';

  @override
  String get secretPhrase12Words => '12 WORDS';

  @override
  String get secretPhrase24Words => '24 WORDS';

  @override
  String get secretWarning =>
      'Si vous perdez votre appareil ou désinstallez l\'application, vous aurez besoin de votre phrase secrète pour restaurer votre portefeuille !';

  @override
  String get securityHeader => 'Sécurité';

  @override
  String get seed => 'Phrase secrète';

  @override
  String get seedInvalid => 'La phrase secrète est invalide';

  @override
  String get send => 'Envoyer';

  @override
  String get sendConfirm => 'Envoyer';

  @override
  String get sendError => 'Une erreur s\'est produite. Veuillez réessayer.';

  @override
  String get sendNote => 'NOTE';

  @override
  String get sendToAddressTitle => 'Vers';

  @override
  String get sendTxProgressDescription =>
      'Veuillez patienter pendant l\'envoi de la transaction';

  @override
  String get sendTxProgressTitle => 'Transaction en cours';

  @override
  String get sending => 'Envoyer';

  @override
  String get sent => 'Envoyé';

  @override
  String get sentTo => 'Envoyé à';

  @override
  String get setPassword => 'Définir le mot de passe';

  @override
  String get setPasswordSuccess => 'Mot de passe activé';

  @override
  String get setWalletPassword => 'Définir un mot de passe';

  @override
  String get settingsHeader => 'Réglages';

  @override
  String get settingsTransfer => 'Charger depuis un portefeuille papier';

  @override
  String get setupFailedMessage => 'Une erreur est survenue';

  @override
  String get shareKaspium => 'Partager Kaspium';

  @override
  String get shareKaspiumSubject => 'Découvrez le portefeuille Kaspium';

  @override
  String get shareKaspiumText =>
      'Découvrez Kaspium - Le portefeuille mobile de Kaspa.\nkaspium.io';

  @override
  String get somethingWentWrong => 'Une erreur est survenue';

  @override
  String get systemDefault => 'Paramètres par défaut';

  @override
  String get tapToHide => 'Taper pour masquer';

  @override
  String get tapToReveal => 'Taper pour afficher';

  @override
  String get themeDark => 'Thème sombre';

  @override
  String get themeHeader => 'Thème';

  @override
  String get themeLight => 'Thème clair';

  @override
  String get thisWallet => '#Ce portefeuille';

  @override
  String get to => 'Vers';

  @override
  String get toAddress => 'Vers l\'adresse';

  @override
  String get tooManyFailedAttempts =>
      'Trop de tentatives de déverrouillage infructueuses.';

  @override
  String get totalValue => 'Valeur totale';

  @override
  String get transactionId => 'ID de transaction';

  @override
  String get transactionsUppercase => 'TRANSACTIONS';

  @override
  String get transfer => 'Transférer';

  @override
  String get transferClose => 'Appuyez n’importe où afin de fermer ce volet.';

  @override
  String transferComplete(String amount) {
    return '$amount KAS ont été transférés avec succès vers votre portefeuille Kaspium.\n';
  }

  @override
  String transferConfirmInfo(String amount) {
    return 'Un portefeuille avec un solde de $amount KAS a été détecté.';
  }

  @override
  String get transferConfirmInfoSecond =>
      'Appuyez sur confirmer pour transférer les fonds.\n';

  @override
  String get transferConfirmInfoThird =>
      'Le transfert peut prendre quelques secondes.';

  @override
  String get transferError =>
      'Une erreur s’est produite durant le transfert. Veuillez réessayer plus tard.';

  @override
  String get transferHeader => 'Transférer les fonds';

  @override
  String transferIntro(String button) {
    return 'Transférer le contenu d\'un portefeuille papier vers votre portefeuille Kaspium.\n\nAppuyer sur le bouton \"$button\" pour commencer.';
  }

  @override
  String get transferLoading => 'Transfert en cours';

  @override
  String get transferManualHint =>
      'Merci d\'entrer votre phrase secrète ci-dessous.';

  @override
  String get transferNoFunds => 'Cette phrase secrète ne contient pas de KAS';

  @override
  String get transferQrScanError =>
      'Ce QR code ne contient pas de phrase secrète valide.';

  @override
  String get transferQrScanHint =>
      'Scanner une phrase secrète\nou une clé privée Kaspa';

  @override
  String get unconfirmed => 'non confirmé';

  @override
  String get notAccepted => 'rejeté';

  @override
  String get accepted => 'accepté';

  @override
  String get unknown => 'inconnu';

  @override
  String get unlock => 'Déverrouiller';

  @override
  String get unlockBiometrics =>
      'Authentifiez-vous pour déverrouiller le portefeuille';

  @override
  String get unlockPin =>
      'Entrer votre code PIN pour déverrouiller le portefeuille';

  @override
  String get utxosUppercase => 'UTXOs';

  @override
  String get viewAddress => 'Voir les adresses';

  @override
  String get viewTransaction => 'Voir la transaction';

  @override
  String get walletAddresses => 'Adresses du portefeuille';

  @override
  String get walletAddress => 'Adresse du portefeuille';

  @override
  String get walletName => 'Nom du portefeuille';

  @override
  String get walletNameDescription => 'Entrez un nom pour votre portefeuille';

  @override
  String get walletNameHint => 'Nom du portefeuille';

  @override
  String get walletSetupAddressDiscovery => 'Découverte d\'adresses en cours';

  @override
  String get walletSetupMessage => 'Configuration du portefeuille';

  @override
  String get walletsTitle => 'Portefeuilles';

  @override
  String get warning => 'Attention';

  @override
  String welcomeMessage(String version) {
    return 'Bienvenue !\n\nVoici la version $version de Kaspium - le portefeuille mobile de Kaspa !';
  }

  @override
  String get welcomeText =>
      'Bienvenue dans Kaspium. Avant de continuer, veuillez créer un nouveau portefeuille ou en importer un déjà existant.';

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
    return 'Après $_temp0';
  }

  @override
  String get yes => 'Oui';

  @override
  String get yesButton => 'Oui';

  @override
  String get yesUppercase => 'OUI';

  @override
  String get nodeNotSyncedException => 'Le nœud n\'est pas synchronisé';

  @override
  String get nodeNoUTXOIndexException => 'Le nœud ne possède pas d\'index UTXO';

  @override
  String get nodeSecureConnection => 'Connexion sécurisée';

  @override
  String get kaspaUriInvalid => 'URI Kaspa invalide';

  @override
  String get compoundUtxos => 'Combiner les transactions';

  @override
  String get compoundRequired => 'Combinaison requise';

  @override
  String get compoundRequiredDescription =>
      'Le montant de la transaction nécessite trop de UTXOs. Les combiner va réduire le nombre de UTXOs.';

  @override
  String get compoundUtxosDescription => 'Combiner plusieurs UTXOs en un seul';

  @override
  String get compoundUtxosConfirmation => 'Combiner les transactions ?';

  @override
  String get compoundingUtxos => 'Combinaison des transactions en cours';

  @override
  String get compoundingMessage => 'Veuillez patienter...';

  @override
  String get compoundSuccess => 'Combinaison réussie';

  @override
  String get compoundFailure => 'La combinaison des transactions à échoué';

  @override
  String get compoundTooFewUtxos => 'Un minimum de 2 UTXOs sont nécéssaires';

  @override
  String get balance => 'Solde';

  @override
  String get maxSend => 'Envoyer le maximum';

  @override
  String get compoundUppercased => 'COMBINER';

  @override
  String get closeUppercased => 'FERMER';

  @override
  String get scanMoreAddresses => 'Scanner pour trouver plus d\'adresses';

  @override
  String get addressDiscovery => 'Découverte d\'adresses';

  @override
  String get scanningTitle => 'Scan en cours';

  @override
  String get scanningDescription => 'Scan de nouvelles adresses...';

  @override
  String get scanMore => 'SCANNER PLUS';

  @override
  String get scanFailedMessage =>
      'Scan échoué, merci d\'essayer à nouveau plus tard';

  @override
  String get indexHeader => 'Index';

  @override
  String get currentIndex => 'Actuel';

  @override
  String get scannedIndex => 'Scanné';

  @override
  String get newIndex => 'Nouveau';

  @override
  String get addressFilterDialogTitle => 'Filtrer l\'adresse';

  @override
  String get addressFilterDialogOptionAllAddresses =>
      'Voir toutes les adresses';

  @override
  String get addressFilterDialogOptionNonZeroBalances =>
      'Voir les adresses avec un solde';

  @override
  String get importOption24WordsTitle =>
      'Importer une phrase secrète de 24 mots';

  @override
  String get importOption24WordsDescription =>
      'Compatible avec le portefeuille CLI et Ledger';

  @override
  String get importOption12WordsTitle =>
      'Importer une phrase secrète de 12 mots';

  @override
  String get importOption12WordsDescription =>
      'Compatible avec le portefeuille web et KDX';

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
      'Importer un portefeuille en lecture seule';

  @override
  String get importOptionKpubDescription =>
      'Surveille le solde et les transactions d\'un portefeuille à l\'aide de sa clé publique étendue';

  @override
  String get importKpub => 'Importer un portefeuille en lecture seule';

  @override
  String get importKpubHint => 'Veuillez entrer votre clé publique étendue.';

  @override
  String get importKpubClipboardError =>
      'Le presse papier ne contient pas une clé publique étendue valide';

  @override
  String get importKpubQrCodeError =>
      'Le QR code ne contient pas une clé publique étendue valide';

  @override
  String get importKpubInvalidMessage =>
      'Veuillez vérifier que votre clé publique étendue est correctement renseignée !';

  @override
  String get receiveAddressListEmpty => 'L\'adresse de réception est vide';

  @override
  String get changeAddressListEmpty => 'La liste d\'adresses est vide';

  @override
  String get hintAddressListEmpty =>
      'Vérifier le filtre d\'adresses dans le coin en haut à droite';

  @override
  String get invalidSecretPhrase => 'Phrase secrète invalide';

  @override
  String get invalidSecretPhraseDetails =>
      'Le checksum de la phrase secrète renseignée est invalide.';

  @override
  String get invalidSecretPhraseConfirmation => 'Je sais ce que je fais';

  @override
  String get contactSupport => 'Contacter le support';

  @override
  String emailAction(String email) {
    return 'Email $email';
  }

  @override
  String get noteLabel => 'Note:';

  @override
  String get optionalLabel => '(Optionnel)';

  @override
  String get buyKaspaSubtitle => 'Via Topper par Uphold';

  @override
  String get buyKaspaTitle => 'Acheter Kaspa';

  @override
  String get buyKaspaMessage => 'Acheter \$KAS rapidement et facilement.';

  @override
  String get buyKaspaMessageSecondary =>
      'Service fourni par Topper, l\'accès fiat-crypto de Uphold.';

  @override
  String get getStarted => 'Commencer';

  @override
  String get aboutTopperTitle => 'À propos de Topper';

  @override
  String get aboutTopperDescription =>
      'Topper by Uphold est un moyen d\'accès fiat-crypto facile à utiliser qui permet aux utilisateurs d\'acheter des crypto-monnaies en utilisant une carte de crédit/débit ou avec un compte bancaire.';

  @override
  String get moreInfo => 'Plus d\'info';

  @override
  String get selectAddress => 'Sélectionnez l\'adresse';

  @override
  String get kpubTitle => 'Clé publique étendue';

  @override
  String get kpubAuth => 'Voir la clé publique étendue';

  @override
  String get kpubDescription =>
      'La clé publique étendue peut être utilisée pour importer votre portefeuille en \"lecture seule\".';

  @override
  String get copyKpub => 'Copier la Kpub';

  @override
  String get kpubCopied => 'Clé publique étendue copiée';

  @override
  String get kpubCopyFailed => 'Échec de copie de la clé publique';

  @override
  String walletAddressesCopied(String addressType) {
    return 'Adresses du portefeuille $addressType copiées dans le presse-papier';
  }

  @override
  String walletAddressesCopyFailed(String addressType) {
    return 'Échec de copie des adresses du portefeuille $addressType ';
  }

  @override
  String get txReport => 'Rapport de transaction';

  @override
  String get txReportSubtitle =>
      'Obtenir un fichier CSV de l\'historique de transaction';

  @override
  String get txReportDetails =>
      'Générer un rapport de transaction, au format CSV, qui contient tout l\'historique de transaction du portefeuille.';

  @override
  String get txReportOptionIgnoreCompound =>
      'Ignorer les transactions combinées';

  @override
  String get txReportOptionIgnoreSelfTxs =>
      'Ignorer les transactions envoyées à soi-même';

  @override
  String get txReportOptionRefreshTxs => 'Rafraichir les transactions';

  @override
  String get txReportGenerate => 'Générer';

  @override
  String get txReportStatusRefreshing => 'Rafraichissement des transactions';

  @override
  String get txReportStatusLoading => 'Chargement des transactions';

  @override
  String get txReportStatusReady => 'Rapport de transaction prêt!';

  @override
  String get txReportGetReport => 'Obtenir le rapport';

  @override
  String get txReportDate => 'Date';

  @override
  String get txReportSentAmount => 'Montant envoyé';

  @override
  String get txReportSentCurrency => 'Devise envoyée';

  @override
  String get txReportReceivedAmount => 'Montant reçu';

  @override
  String get txReportReceivedCurrency => 'Devise reçue';

  @override
  String get txReportFeeAmount => 'Montant des frais';

  @override
  String get txReportFeeCurrency => 'Devise des frais';

  @override
  String get txReportLabel => 'Label';

  @override
  String get txReportDescription => 'Description';

  @override
  String get txReportTxHash => 'TxHash';

  @override
  String get txReportNote => 'Note';

  @override
  String get txReportLabelCost => 'coût';

  @override
  String get txReportFeeForCompound => 'Frais pour combiner la transaction';

  @override
  String get txReportFeeForSelfSend => 'Frais pour envoyer à sa propre adresse';

  @override
  String get txReportError => 'Échec lors de la génération du rapport';

  @override
  String txReportNoTxs(int numberOf) {
    return '$numberOf transactions trouvées.';
  }

  @override
  String txReportNoLoadedTxs(int loadedTxs, int totalTxs) {
    return '($loadedTxs sur $totalTxs)';
  }

  @override
  String get txFilterDialogTitle => 'Filtre de transaction';

  @override
  String get txFilterDialogOptionAllTxs => 'Afficher toutes les transactions';

  @override
  String get txFilterDialogOptionHideNotAcceptedCoinbase =>
      'Cacher les transactions coinbase refusées';

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
