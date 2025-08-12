import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'l10n_gen_af.dart';
import 'l10n_gen_ar.dart';
import 'l10n_gen_bg.dart';
import 'l10n_gen_bn.dart';
import 'l10n_gen_ca.dart';
import 'l10n_gen_cs.dart';
import 'l10n_gen_da.dart';
import 'l10n_gen_de.dart';
import 'l10n_gen_el.dart';
import 'l10n_gen_en.dart';
import 'l10n_gen_es.dart';
import 'l10n_gen_eu.dart';
import 'l10n_gen_fa.dart';
import 'l10n_gen_fi.dart';
import 'l10n_gen_fr.dart';
import 'l10n_gen_he.dart';
import 'l10n_gen_hi.dart';
import 'l10n_gen_hu.dart';
import 'l10n_gen_id.dart';
import 'l10n_gen_it.dart';
import 'l10n_gen_ja.dart';
import 'l10n_gen_ka.dart';
import 'l10n_gen_ko.dart';
import 'l10n_gen_lv.dart';
import 'l10n_gen_ms.dart';
import 'l10n_gen_nl.dart';
import 'l10n_gen_no.dart';
import 'l10n_gen_pl.dart';
import 'l10n_gen_pt.dart';
import 'l10n_gen_ro.dart';
import 'l10n_gen_ru.dart';
import 'l10n_gen_sk.dart';
import 'l10n_gen_sl.dart';
import 'l10n_gen_sq.dart';
import 'l10n_gen_sr.dart';
import 'l10n_gen_sv.dart';
import 'l10n_gen_te.dart';
import 'l10n_gen_tl.dart';
import 'l10n_gen_tr.dart';
import 'l10n_gen_uk.dart';
import 'l10n_gen_ur.dart';
import 'l10n_gen_vi.dart';
import 'l10n_gen_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/l10n_gen.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('af'),
    Locale('ar'),
    Locale('bg'),
    Locale('bn'),
    Locale('ca'),
    Locale('cs'),
    Locale('da'),
    Locale('de'),
    Locale('el'),
    Locale('en'),
    Locale('es'),
    Locale('eu'),
    Locale('fa'),
    Locale('fi'),
    Locale('fr'),
    Locale('he'),
    Locale('hi'),
    Locale('hu'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('ka'),
    Locale('ko'),
    Locale('lv'),
    Locale('ms'),
    Locale('nl'),
    Locale('no'),
    Locale('pl'),
    Locale('pt'),
    Locale('ro'),
    Locale('ru'),
    Locale('sk'),
    Locale('sl'),
    Locale('sq'),
    Locale('sr'),
    Locale('sv'),
    Locale('te'),
    Locale('tl'),
    Locale('tr'),
    Locale('uk'),
    Locale('ur'),
    Locale('vi'),
    Locale('zh'),
  ];

  /// No description provided for @aboutTopperDescription.
  ///
  /// In en, this message translates to:
  /// **'Topper by Uphold is an easy to use fiat-to-crypto onramp that allows users to buy cryptocurencies using a credit/debit card or with a bank account.'**
  String get aboutTopperDescription;

  /// No description provided for @aboutTopperTitle.
  ///
  /// In en, this message translates to:
  /// **'About Topper'**
  String get aboutTopperTitle;

  /// No description provided for @accepted.
  ///
  /// In en, this message translates to:
  /// **'accepted'**
  String get accepted;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @accounts.
  ///
  /// In en, this message translates to:
  /// **'Accounts'**
  String get accounts;

  /// No description provided for @ackBackedUp.
  ///
  /// In en, this message translates to:
  /// **'Are you sure that you\'ve backed up your secret phrase?'**
  String get ackBackedUp;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @addAccount.
  ///
  /// In en, this message translates to:
  /// **'Add Account'**
  String get addAccount;

  /// No description provided for @addContact.
  ///
  /// In en, this message translates to:
  /// **'Add Contact'**
  String get addContact;

  /// No description provided for @addingNodeMessage.
  ///
  /// In en, this message translates to:
  /// **'Please wait while contacting node'**
  String get addingNodeMessage;

  /// No description provided for @addingNodeTitle.
  ///
  /// In en, this message translates to:
  /// **'Adding Node'**
  String get addingNodeTitle;

  /// No description provided for @addNode.
  ///
  /// In en, this message translates to:
  /// **'Add Node'**
  String get addNode;

  /// No description provided for @addNodeFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to add Kaspa node'**
  String get addNodeFailed;

  /// No description provided for @addNodeFailedMessage.
  ///
  /// In en, this message translates to:
  /// **'Failed: {error}'**
  String addNodeFailedMessage(String error);

  /// No description provided for @addNodeSuccess.
  ///
  /// In en, this message translates to:
  /// **'Node Added Successfully'**
  String get addNodeSuccess;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// No description provided for @addressCopied.
  ///
  /// In en, this message translates to:
  /// **'Address Copied'**
  String get addressCopied;

  /// No description provided for @addressCopiedFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to copy address'**
  String get addressCopiedFailed;

  /// No description provided for @addressDiscovery.
  ///
  /// In en, this message translates to:
  /// **'Address Discovery'**
  String get addressDiscovery;

  /// No description provided for @addressFilterDialogOptionAllAddresses.
  ///
  /// In en, this message translates to:
  /// **'View All Addresses'**
  String get addressFilterDialogOptionAllAddresses;

  /// No description provided for @addressFilterDialogOptionNonZeroBalances.
  ///
  /// In en, this message translates to:
  /// **'View Addresses With Balance'**
  String get addressFilterDialogOptionNonZeroBalances;

  /// No description provided for @addressFilterDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Address Filter'**
  String get addressFilterDialogTitle;

  /// No description provided for @addressHint.
  ///
  /// In en, this message translates to:
  /// **'Enter Address'**
  String get addressHint;

  /// No description provided for @addressMising.
  ///
  /// In en, this message translates to:
  /// **'Please Enter an Address'**
  String get addressMising;

  /// No description provided for @addressShare.
  ///
  /// In en, this message translates to:
  /// **'Share Address'**
  String get addressShare;

  /// No description provided for @advancedHeader.
  ///
  /// In en, this message translates to:
  /// **'Advanced'**
  String get advancedHeader;

  /// No description provided for @amount.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get amount;

  /// No description provided for @amountConfirm.
  ///
  /// In en, this message translates to:
  /// **'Amount {amount} {coin}'**
  String amountConfirm(String amount, String coin);

  /// No description provided for @amountMissing.
  ///
  /// In en, this message translates to:
  /// **'Please Enter an Amount'**
  String get amountMissing;

  /// No description provided for @amountZero.
  ///
  /// In en, this message translates to:
  /// **'Amount can\'t be zero'**
  String get amountZero;

  /// No description provided for @areYouSure.
  ///
  /// In en, this message translates to:
  /// **'Are you sure?'**
  String get areYouSure;

  /// No description provided for @authBiometricMessage.
  ///
  /// In en, this message translates to:
  /// **'Authenticate to Add Wallet'**
  String get authBiometricMessage;

  /// No description provided for @authMethod.
  ///
  /// In en, this message translates to:
  /// **'Authentication Method'**
  String get authMethod;

  /// No description provided for @authPinMessage.
  ///
  /// In en, this message translates to:
  /// **'Enter PIN to Add Wallet'**
  String get authPinMessage;

  /// No description provided for @autoLockHeader.
  ///
  /// In en, this message translates to:
  /// **'Automatically Lock'**
  String get autoLockHeader;

  /// No description provided for @available.
  ///
  /// In en, this message translates to:
  /// **'Available'**
  String get available;

  /// No description provided for @backupConfirmButton.
  ///
  /// In en, this message translates to:
  /// **'I\'ve Backed It Up'**
  String get backupConfirmButton;

  /// No description provided for @backupSecretPhrase.
  ///
  /// In en, this message translates to:
  /// **'Backup Secret Phrase'**
  String get backupSecretPhrase;

  /// No description provided for @balance.
  ///
  /// In en, this message translates to:
  /// **'Balance'**
  String get balance;

  /// No description provided for @biometricsMethod.
  ///
  /// In en, this message translates to:
  /// **'Biometrics'**
  String get biometricsMethod;

  /// No description provided for @bip39Passphrase.
  ///
  /// In en, this message translates to:
  /// **'BIP39 Passphrase'**
  String get bip39Passphrase;

  /// No description provided for @bip39PassphraseConfirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm Passphrase'**
  String get bip39PassphraseConfirm;

  /// No description provided for @bip39PassphraseEnter.
  ///
  /// In en, this message translates to:
  /// **'Enter Passphrase'**
  String get bip39PassphraseEnter;

  /// No description provided for @bip39PassphraseMismatch.
  ///
  /// In en, this message translates to:
  /// **'Passphrases do not match!'**
  String get bip39PassphraseMismatch;

  /// No description provided for @bip39PassphraseNote.
  ///
  /// In en, this message translates to:
  /// **'Wallet with BIP39 passphrase.'**
  String get bip39PassphraseNote;

  /// No description provided for @bip39PassphraseWarning.
  ///
  /// In en, this message translates to:
  /// **'NOTE: This is not a wallet password, different BIP39 passphrases will open different wallets.'**
  String get bip39PassphraseWarning;

  /// No description provided for @blockExplorer.
  ///
  /// In en, this message translates to:
  /// **'Block Explorer'**
  String get blockExplorer;

  /// No description provided for @buyKaspaMessage.
  ///
  /// In en, this message translates to:
  /// **'Buy \$KAS quickly & easily.'**
  String get buyKaspaMessage;

  /// No description provided for @buyKaspaMessageSecondary.
  ///
  /// In en, this message translates to:
  /// **'Service provided by Topper, Uphold\'s fiat-to-crypto onramp.'**
  String get buyKaspaMessageSecondary;

  /// No description provided for @buyKaspaSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Via Topper by Uphold'**
  String get buyKaspaSubtitle;

  /// No description provided for @buyKaspaTitle.
  ///
  /// In en, this message translates to:
  /// **'Buy Kaspa'**
  String get buyKaspaTitle;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @change.
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get change;

  /// No description provided for @changeAddress.
  ///
  /// In en, this message translates to:
  /// **'Change Address'**
  String get changeAddress;

  /// No description provided for @changeAddressCopied.
  ///
  /// In en, this message translates to:
  /// **'Change address copied'**
  String get changeAddressCopied;

  /// No description provided for @changeAddressListEmpty.
  ///
  /// In en, this message translates to:
  /// **'Change address list is empty'**
  String get changeAddressListEmpty;

  /// No description provided for @changeIndex.
  ///
  /// In en, this message translates to:
  /// **'Change Index'**
  String get changeIndex;

  /// No description provided for @changeIndexParam.
  ///
  /// In en, this message translates to:
  /// **'Change {addressIndex}'**
  String changeIndexParam(String addressIndex);

  /// No description provided for @checkCameraPermission.
  ///
  /// In en, this message translates to:
  /// **'Please check camera permissions'**
  String get checkCameraPermission;

  /// No description provided for @clipboardEmpty.
  ///
  /// In en, this message translates to:
  /// **'Clipboard is empty'**
  String get clipboardEmpty;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @closeUppercased.
  ///
  /// In en, this message translates to:
  /// **'CLOSE'**
  String get closeUppercased;

  /// No description provided for @compoundFailure.
  ///
  /// In en, this message translates to:
  /// **'Failed to compound transactions'**
  String get compoundFailure;

  /// No description provided for @compoundingMessage.
  ///
  /// In en, this message translates to:
  /// **'Please wait...'**
  String get compoundingMessage;

  /// No description provided for @compoundingUtxos.
  ///
  /// In en, this message translates to:
  /// **'Compounding transactions'**
  String get compoundingUtxos;

  /// No description provided for @compoundRequired.
  ///
  /// In en, this message translates to:
  /// **'Compound required'**
  String get compoundRequired;

  /// No description provided for @compoundRequiredDescription.
  ///
  /// In en, this message translates to:
  /// **'The transaction amount requires too many UTXOs. Compounding will reduce the number of UTXOs.'**
  String get compoundRequiredDescription;

  /// No description provided for @compoundSuccess.
  ///
  /// In en, this message translates to:
  /// **'Compound successful'**
  String get compoundSuccess;

  /// No description provided for @compoundTooFewUtxos.
  ///
  /// In en, this message translates to:
  /// **'At least two UTXOs are required'**
  String get compoundTooFewUtxos;

  /// No description provided for @compoundUppercased.
  ///
  /// In en, this message translates to:
  /// **'COMPOUND'**
  String get compoundUppercased;

  /// No description provided for @compoundUtxos.
  ///
  /// In en, this message translates to:
  /// **'Compound transactions'**
  String get compoundUtxos;

  /// No description provided for @compoundUtxosConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Compound transactions?'**
  String get compoundUtxosConfirmation;

  /// No description provided for @compoundUtxosDescription.
  ///
  /// In en, this message translates to:
  /// **'Combine multiple UTXOs into one'**
  String get compoundUtxosDescription;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @confirmations.
  ///
  /// In en, this message translates to:
  /// **'{confirmations} confirmations'**
  String confirmations(String confirmations);

  /// No description provided for @confirmed.
  ///
  /// In en, this message translates to:
  /// **'confirmed'**
  String get confirmed;

  /// No description provided for @confirming.
  ///
  /// In en, this message translates to:
  /// **'confirming'**
  String get confirming;

  /// No description provided for @confirmPasswordHint.
  ///
  /// In en, this message translates to:
  /// **'Confirm the password'**
  String get confirmPasswordHint;

  /// No description provided for @contactAdded.
  ///
  /// In en, this message translates to:
  /// **'{contactName} added to contacts'**
  String contactAdded(String contactName);

  /// No description provided for @contactAddressCopied.
  ///
  /// In en, this message translates to:
  /// **'{address} address copied'**
  String contactAddressCopied(String address);

  /// No description provided for @contactExists.
  ///
  /// In en, this message translates to:
  /// **'Contact Already Exists'**
  String get contactExists;

  /// No description provided for @contactHeader.
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get contactHeader;

  /// No description provided for @contactInvalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid Contact Name'**
  String get contactInvalid;

  /// No description provided for @contactNameHint.
  ///
  /// In en, this message translates to:
  /// **'Enter a Name @'**
  String get contactNameHint;

  /// No description provided for @contactNameMissing.
  ///
  /// In en, this message translates to:
  /// **'Choose a Name for this Contact'**
  String get contactNameMissing;

  /// No description provided for @contactRemoved.
  ///
  /// In en, this message translates to:
  /// **'{contactName} has been removed from contacts!'**
  String contactRemoved(String contactName);

  /// No description provided for @contactsHeader.
  ///
  /// In en, this message translates to:
  /// **'Contacts'**
  String get contactsHeader;

  /// No description provided for @contactsImportErr.
  ///
  /// In en, this message translates to:
  /// **'Failed to import contacts'**
  String get contactsImportErr;

  /// No description provided for @contactsImportSuccess.
  ///
  /// In en, this message translates to:
  /// **'Sucessfully imported {noContacts} contacts'**
  String contactsImportSuccess(String noContacts);

  /// No description provided for @contactSupport.
  ///
  /// In en, this message translates to:
  /// **'Contact Support'**
  String get contactSupport;

  /// No description provided for @copied.
  ///
  /// In en, this message translates to:
  /// **'Copied'**
  String get copied;

  /// No description provided for @copy.
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get copy;

  /// No description provided for @copyAddress.
  ///
  /// In en, this message translates to:
  /// **'Copy Address'**
  String get copyAddress;

  /// No description provided for @copyErrorButton.
  ///
  /// In en, this message translates to:
  /// **'Copy Error'**
  String get copyErrorButton;

  /// No description provided for @copyKpub.
  ///
  /// In en, this message translates to:
  /// **'Copy Kpub'**
  String get copyKpub;

  /// No description provided for @createAPasswordHeader.
  ///
  /// In en, this message translates to:
  /// **'Create a password.'**
  String get createAPasswordHeader;

  /// No description provided for @createPasswordFirstParagraph.
  ///
  /// In en, this message translates to:
  /// **'You can create a password to add additional security to your wallet.'**
  String get createPasswordFirstParagraph;

  /// No description provided for @createPasswordHint.
  ///
  /// In en, this message translates to:
  /// **'Create a password'**
  String get createPasswordHint;

  /// No description provided for @createPasswordSecondParagraph.
  ///
  /// In en, this message translates to:
  /// **'Password is optional, and your wallet will be protected with your PIN or biometrics regardless.'**
  String get createPasswordSecondParagraph;

  /// No description provided for @createPasswordSheetHeader.
  ///
  /// In en, this message translates to:
  /// **'Create'**
  String get createPasswordSheetHeader;

  /// No description provided for @currency.
  ///
  /// In en, this message translates to:
  /// **'Currency'**
  String get currency;

  /// No description provided for @currencyPoweredBy.
  ///
  /// In en, this message translates to:
  /// **'Powered by CoinGecko'**
  String get currencyPoweredBy;

  /// No description provided for @currentIndex.
  ///
  /// In en, this message translates to:
  /// **'Current'**
  String get currentIndex;

  /// No description provided for @defaultAccountName.
  ///
  /// In en, this message translates to:
  /// **'Address 1'**
  String get defaultAccountName;

  /// No description provided for @defaultNewAccountName.
  ///
  /// In en, this message translates to:
  /// **'Receive {addressIndex}'**
  String defaultNewAccountName(int addressIndex);

  /// No description provided for @defaultWalletName.
  ///
  /// In en, this message translates to:
  /// **'My Wallet'**
  String get defaultWalletName;

  /// No description provided for @disablePasswordSheetHeader.
  ///
  /// In en, this message translates to:
  /// **'Disable'**
  String get disablePasswordSheetHeader;

  /// No description provided for @disablePasswordSuccess.
  ///
  /// In en, this message translates to:
  /// **'Password has been disabled'**
  String get disablePasswordSuccess;

  /// No description provided for @disableWalletPassword.
  ///
  /// In en, this message translates to:
  /// **'Disable Wallet Password'**
  String get disableWalletPassword;

  /// No description provided for @doContinue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get doContinue;

  /// No description provided for @donate.
  ///
  /// In en, this message translates to:
  /// **'Donate'**
  String get donate;

  /// No description provided for @donateTo.
  ///
  /// In en, this message translates to:
  /// **'Donate To'**
  String get donateTo;

  /// No description provided for @dontShowAgain.
  ///
  /// In en, this message translates to:
  /// **'Don\'t show again'**
  String get dontShowAgain;

  /// No description provided for @emailAction.
  ///
  /// In en, this message translates to:
  /// **'Email {email}'**
  String emailAction(String email);

  /// No description provided for @emptyCardIntroUtxos.
  ///
  /// In en, this message translates to:
  /// **'This is the UTXOs tab. All UTXOs in your wallet will appear here'**
  String get emptyCardIntroUtxos;

  /// No description provided for @emptyResult.
  ///
  /// In en, this message translates to:
  /// **'Empty Result'**
  String get emptyResult;

  /// No description provided for @emptyWalletName.
  ///
  /// In en, this message translates to:
  /// **'Wallet Name cannot be empty'**
  String get emptyWalletName;

  /// No description provided for @encryptionFailedError.
  ///
  /// In en, this message translates to:
  /// **'Failed to set a wallet password'**
  String get encryptionFailedError;

  /// No description provided for @enterAddress.
  ///
  /// In en, this message translates to:
  /// **'Enter Address'**
  String get enterAddress;

  /// No description provided for @enterAmount.
  ///
  /// In en, this message translates to:
  /// **'Enter Amount'**
  String get enterAmount;

  /// No description provided for @enterFiatValue.
  ///
  /// In en, this message translates to:
  /// **'Enter Fiat Value'**
  String get enterFiatValue;

  /// No description provided for @enterNote.
  ///
  /// In en, this message translates to:
  /// **'Enter Note'**
  String get enterNote;

  /// No description provided for @enterPasswordHint.
  ///
  /// In en, this message translates to:
  /// **'Enter your password'**
  String get enterPasswordHint;

  /// No description provided for @errorMessageCopied.
  ///
  /// In en, this message translates to:
  /// **'Error message copied to clipboard'**
  String get errorMessageCopied;

  /// No description provided for @exampleCardIntro.
  ///
  /// In en, this message translates to:
  /// **'This is the transactions tab. Once you send or receive a transaction, it will show up here.'**
  String get exampleCardIntro;

  /// No description provided for @export.
  ///
  /// In en, this message translates to:
  /// **'Export'**
  String get export;

  /// No description provided for @fee.
  ///
  /// In en, this message translates to:
  /// **'Fee'**
  String get fee;

  /// No description provided for @feeBaseUppercase.
  ///
  /// In en, this message translates to:
  /// **'BASE FEE'**
  String get feeBaseUppercase;

  /// No description provided for @feeConfirm.
  ///
  /// In en, this message translates to:
  /// **'Fee {amount} {coin}'**
  String feeConfirm(String amount, String coin);

  /// No description provided for @feeManageTitle.
  ///
  /// In en, this message translates to:
  /// **'Manage Fee'**
  String get feeManageTitle;

  /// No description provided for @feePriorityHint.
  ///
  /// In en, this message translates to:
  /// **'Enter Priority Fee'**
  String get feePriorityHint;

  /// No description provided for @feePriorityUppsercase.
  ///
  /// In en, this message translates to:
  /// **'PRIORITY FEE'**
  String get feePriorityUppsercase;

  /// No description provided for @feeSheetPriorityFeeWarning.
  ///
  /// In en, this message translates to:
  /// **'New priority fee must be at least {amount} {symbol}'**
  String feeSheetPriorityFeeWarning(String amount, String symbol);

  /// No description provided for @feeSheetRecommendedPriority.
  ///
  /// In en, this message translates to:
  /// **'Recommended Priority Fees'**
  String get feeSheetRecommendedPriority;

  /// No description provided for @feeTitle.
  ///
  /// In en, this message translates to:
  /// **'FEE'**
  String get feeTitle;

  /// No description provided for @feeUpdate.
  ///
  /// In en, this message translates to:
  /// **'Update Fee'**
  String get feeUpdate;

  /// No description provided for @feeUpdateAddressError.
  ///
  /// In en, this message translates to:
  /// **'Failed to recognise destination address'**
  String get feeUpdateAddressError;

  /// No description provided for @feeUpdateError.
  ///
  /// In en, this message translates to:
  /// **'Failed to update fee'**
  String get feeUpdateError;

  /// No description provided for @feeUpdateRebuildError.
  ///
  /// In en, this message translates to:
  /// **'Failed to rebuild transaction'**
  String get feeUpdateRebuildError;

  /// No description provided for @feeUpdateRebuildError2.
  ///
  /// In en, this message translates to:
  /// **'Failed to rebuild transaction with new fee'**
  String get feeUpdateRebuildError2;

  /// No description provided for @feeUpdateTitle.
  ///
  /// In en, this message translates to:
  /// **'Updating fee'**
  String get feeUpdateTitle;

  /// No description provided for @fetchingTransactions.
  ///
  /// In en, this message translates to:
  /// **'Fetching Transactions'**
  String get fetchingTransactions;

  /// No description provided for @fingerprintSeedBackup.
  ///
  /// In en, this message translates to:
  /// **'Authenticate to Backup Secret Phrase.'**
  String get fingerprintSeedBackup;

  /// No description provided for @getStarted.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get getStarted;

  /// No description provided for @goBackButton.
  ///
  /// In en, this message translates to:
  /// **'Go Back'**
  String get goBackButton;

  /// No description provided for @gotItButton.
  ///
  /// In en, this message translates to:
  /// **'Got It!'**
  String get gotItButton;

  /// No description provided for @hideAccountHeader.
  ///
  /// In en, this message translates to:
  /// **'Hide Account?'**
  String get hideAccountHeader;

  /// No description provided for @hideAccountText.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to hide this account? You can re-add it later by tapping the \"Add Account\" button.'**
  String get hideAccountText;

  /// No description provided for @hintAddressListEmpty.
  ///
  /// In en, this message translates to:
  /// **'Check address filter from the top right corner'**
  String get hintAddressListEmpty;

  /// No description provided for @import.
  ///
  /// In en, this message translates to:
  /// **'Import'**
  String get import;

  /// No description provided for @importAsLegacyWallet.
  ///
  /// In en, this message translates to:
  /// **'Import as Legacy Wallet'**
  String get importAsLegacyWallet;

  /// No description provided for @importAsStandardWallet.
  ///
  /// In en, this message translates to:
  /// **'Import as Standard Wallet'**
  String get importAsStandardWallet;

  /// No description provided for @importKpub.
  ///
  /// In en, this message translates to:
  /// **'Import Watch Only Wallet'**
  String get importKpub;

  /// No description provided for @importKpubClipboardError.
  ///
  /// In en, this message translates to:
  /// **'Clipboard content is not a valid extended public key'**
  String get importKpubClipboardError;

  /// No description provided for @importKpubHint.
  ///
  /// In en, this message translates to:
  /// **'Please enter your extended public key.'**
  String get importKpubHint;

  /// No description provided for @importKpubInvalidMessage.
  ///
  /// In en, this message translates to:
  /// **'Please check that your extended public key is entered correctly!'**
  String get importKpubInvalidMessage;

  /// No description provided for @importKpubQrCodeError.
  ///
  /// In en, this message translates to:
  /// **'QR code does not contain a valid extended public key'**
  String get importKpubQrCodeError;

  /// No description provided for @importLegacyWalletDetectedDetails.
  ///
  /// In en, this message translates to:
  /// **'Do you want to import your wallet in legacy mode?'**
  String get importLegacyWalletDetectedDetails;

  /// No description provided for @importLegacyWalletDetectedTitle.
  ///
  /// In en, this message translates to:
  /// **'Legacy Wallet Detected'**
  String get importLegacyWalletDetectedTitle;

  /// No description provided for @importOption12WordsDescription.
  ///
  /// In en, this message translates to:
  /// **'Compatible with Web Wallet and KDX'**
  String get importOption12WordsDescription;

  /// No description provided for @importOption12WordsTitle.
  ///
  /// In en, this message translates to:
  /// **'Import 12 Word Secret Phrase'**
  String get importOption12WordsTitle;

  /// No description provided for @importOption24WordsDescription.
  ///
  /// In en, this message translates to:
  /// **'Compatible with Cli Wallet and Ledger'**
  String get importOption24WordsDescription;

  /// No description provided for @importOption24WordsTitle.
  ///
  /// In en, this message translates to:
  /// **'Import 24 Word Secret Phrase'**
  String get importOption24WordsTitle;

  /// No description provided for @importOptionKpubDescription.
  ///
  /// In en, this message translates to:
  /// **'Monitor the balance and transactions of a wallet using an extended public key'**
  String get importOptionKpubDescription;

  /// No description provided for @importOptionKpubTitle.
  ///
  /// In en, this message translates to:
  /// **'Import Watch Only Wallet'**
  String get importOptionKpubTitle;

  /// No description provided for @importOptionLegacyWalletDescription.
  ///
  /// In en, this message translates to:
  /// **'Legacy derivation 12 word wallets compatible with legacy Web Wallet and KDX'**
  String get importOptionLegacyWalletDescription;

  /// No description provided for @importOptionLegacyWalletTitle.
  ///
  /// In en, this message translates to:
  /// **'Import Legacy Wallet'**
  String get importOptionLegacyWalletTitle;

  /// No description provided for @importOptionStandardWalletDescription.
  ///
  /// In en, this message translates to:
  /// **'Standard derivation 12 or 24 word wallets with optional BIP39 passphrase'**
  String get importOptionStandardWalletDescription;

  /// No description provided for @importOptionStandardWalletTitle.
  ///
  /// In en, this message translates to:
  /// **'Import Standard Wallet'**
  String get importOptionStandardWalletTitle;

  /// No description provided for @importSecretPhrase.
  ///
  /// In en, this message translates to:
  /// **'Import Secret Phrase'**
  String get importSecretPhrase;

  /// No description provided for @importSecretPhraseHint.
  ///
  /// In en, this message translates to:
  /// **'Please enter your 24 word secret phrase below.'**
  String get importSecretPhraseHint;

  /// No description provided for @importSecretPhraseHintCombo.
  ///
  /// In en, this message translates to:
  /// **'Please enter your 12 or 24 word secret phrase below.'**
  String get importSecretPhraseHintCombo;

  /// No description provided for @importSecretPhraseHintLegacy.
  ///
  /// In en, this message translates to:
  /// **'Please enter your 12 word secret phrase below.'**
  String get importSecretPhraseHintLegacy;

  /// No description provided for @importWallet.
  ///
  /// In en, this message translates to:
  /// **'Import Wallet'**
  String get importWallet;

  /// No description provided for @importWalletAdvancedOptions.
  ///
  /// In en, this message translates to:
  /// **'Advanced Options'**
  String get importWalletAdvancedOptions;

  /// No description provided for @importWalletDescription.
  ///
  /// In en, this message translates to:
  /// **'Please select an option below.'**
  String get importWalletDescription;

  /// No description provided for @indexHeader.
  ///
  /// In en, this message translates to:
  /// **'Index'**
  String get indexHeader;

  /// No description provided for @instantly.
  ///
  /// In en, this message translates to:
  /// **'Instantly'**
  String get instantly;

  /// No description provided for @insufficientBalance.
  ///
  /// In en, this message translates to:
  /// **'Insufficient Balance'**
  String get insufficientBalance;

  /// No description provided for @insufficientBalanceDetails.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have enough KAS for this transaction'**
  String get insufficientBalanceDetails;

  /// No description provided for @invalidAddress.
  ///
  /// In en, this message translates to:
  /// **'Address entered was invalid'**
  String get invalidAddress;

  /// No description provided for @invalidAmount.
  ///
  /// In en, this message translates to:
  /// **'Invalid Amount'**
  String get invalidAmount;

  /// No description provided for @invalidChecksumMessage.
  ///
  /// In en, this message translates to:
  /// **'Please check that your Secret Phrase\n is entered correctly!'**
  String get invalidChecksumMessage;

  /// No description provided for @invalidDestinationAddress.
  ///
  /// In en, this message translates to:
  /// **'Invalid Destination Address'**
  String get invalidDestinationAddress;

  /// No description provided for @invalidKpubMessage.
  ///
  /// In en, this message translates to:
  /// **'Please check that your extended public key is entered correctly!'**
  String get invalidKpubMessage;

  /// No description provided for @invalidPassword.
  ///
  /// In en, this message translates to:
  /// **'Invalid Password'**
  String get invalidPassword;

  /// No description provided for @invalidSecretPhrase.
  ///
  /// In en, this message translates to:
  /// **'Invalid Secret Phrase'**
  String get invalidSecretPhrase;

  /// No description provided for @invalidSecretPhraseConfirmation.
  ///
  /// In en, this message translates to:
  /// **'I know what I\'m doing'**
  String get invalidSecretPhraseConfirmation;

  /// No description provided for @invalidSecretPhraseDetails.
  ///
  /// In en, this message translates to:
  /// **'The Secret Phrase you entered has an invalid checksum.'**
  String get invalidSecretPhraseDetails;

  /// No description provided for @kaspaDevFund.
  ///
  /// In en, this message translates to:
  /// **'Kaspa Dev Fund'**
  String get kaspaDevFund;

  /// No description provided for @kaspaUriCopied.
  ///
  /// In en, this message translates to:
  /// **'Kaspa URI Copied'**
  String get kaspaUriCopied;

  /// No description provided for @kaspaUriCopyFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to copy Kaspa URI'**
  String get kaspaUriCopyFailed;

  /// No description provided for @kaspaUriInvalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid Kaspa URI'**
  String get kaspaUriInvalid;

  /// No description provided for @kaspiumWallet.
  ///
  /// In en, this message translates to:
  /// **'Kaspium Wallet'**
  String get kaspiumWallet;

  /// No description provided for @kpubAuth.
  ///
  /// In en, this message translates to:
  /// **'View Extended Public Key'**
  String get kpubAuth;

  /// No description provided for @kpubCopied.
  ///
  /// In en, this message translates to:
  /// **'Extended Public Key Copied'**
  String get kpubCopied;

  /// No description provided for @kpubCopyFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to copy Extended Public Key'**
  String get kpubCopyFailed;

  /// No description provided for @kpubDescription.
  ///
  /// In en, this message translates to:
  /// **'The extended public key can be used to import your wallet as a \'watch only\' wallet.'**
  String get kpubDescription;

  /// No description provided for @kpubTitle.
  ///
  /// In en, this message translates to:
  /// **'Extended Public Key'**
  String get kpubTitle;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @loadingTransactions.
  ///
  /// In en, this message translates to:
  /// **'Loading Transactions...'**
  String get loadingTransactions;

  /// No description provided for @lockAppSetting.
  ///
  /// In en, this message translates to:
  /// **'Authenticate on Launch'**
  String get lockAppSetting;

  /// No description provided for @locked.
  ///
  /// In en, this message translates to:
  /// **'Locked'**
  String get locked;

  /// No description provided for @loggingOutMessage.
  ///
  /// In en, this message translates to:
  /// **'Logging out...'**
  String get loggingOutMessage;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @logoutDialogContent.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to logout from this wallet?'**
  String get logoutDialogContent;

  /// No description provided for @logoutOrSwitchWallet.
  ///
  /// In en, this message translates to:
  /// **'Logout / Switch Wallet'**
  String get logoutOrSwitchWallet;

  /// No description provided for @manage.
  ///
  /// In en, this message translates to:
  /// **'Manage'**
  String get manage;

  /// No description provided for @manualEntry.
  ///
  /// In en, this message translates to:
  /// **'Manual Entry'**
  String get manualEntry;

  /// No description provided for @maxSend.
  ///
  /// In en, this message translates to:
  /// **'Max Send'**
  String get maxSend;

  /// No description provided for @missingSecretPhrase.
  ///
  /// In en, this message translates to:
  /// **'Missing Secret Phrase'**
  String get missingSecretPhrase;

  /// No description provided for @moreInfo.
  ///
  /// In en, this message translates to:
  /// **'More Info'**
  String get moreInfo;

  /// No description provided for @networkHeader.
  ///
  /// In en, this message translates to:
  /// **'Network'**
  String get networkHeader;

  /// No description provided for @newAddress.
  ///
  /// In en, this message translates to:
  /// **'New Address'**
  String get newAddress;

  /// No description provided for @newIndex.
  ///
  /// In en, this message translates to:
  /// **'New'**
  String get newIndex;

  /// No description provided for @newWallet.
  ///
  /// In en, this message translates to:
  /// **'New Wallet'**
  String get newWallet;

  /// No description provided for @nextButton.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get nextButton;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @noContactsExport.
  ///
  /// In en, this message translates to:
  /// **'There\'s no contacts to export'**
  String get noContactsExport;

  /// No description provided for @noContactsImport.
  ///
  /// In en, this message translates to:
  /// **'No new contacts to import'**
  String get noContactsImport;

  /// No description provided for @nodeAddress.
  ///
  /// In en, this message translates to:
  /// **'Kaspa Node'**
  String get nodeAddress;

  /// No description provided for @nodeDeleteMessage.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete?'**
  String get nodeDeleteMessage;

  /// No description provided for @nodeDeleteTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete Kaspa Node Config?'**
  String get nodeDeleteTitle;

  /// No description provided for @nodeNameEmpty.
  ///
  /// In en, this message translates to:
  /// **'Node name cannot be empty'**
  String get nodeNameEmpty;

  /// No description provided for @nodeNameHint.
  ///
  /// In en, this message translates to:
  /// **'Enter Node Name'**
  String get nodeNameHint;

  /// No description provided for @nodeNotSyncedException.
  ///
  /// In en, this message translates to:
  /// **'Node is not synced'**
  String get nodeNotSyncedException;

  /// No description provided for @nodeNoUTXOIndexException.
  ///
  /// In en, this message translates to:
  /// **'Node does not have UTXO index'**
  String get nodeNoUTXOIndexException;

  /// No description provided for @nodeSecureConnection.
  ///
  /// In en, this message translates to:
  /// **'Secure connection'**
  String get nodeSecureConnection;

  /// No description provided for @nodesSheetTitle.
  ///
  /// In en, this message translates to:
  /// **'Kaspa Nodes'**
  String get nodesSheetTitle;

  /// No description provided for @nodeUrlHint.
  ///
  /// In en, this message translates to:
  /// **'Enter Node URL'**
  String get nodeUrlHint;

  /// No description provided for @nodeUrlInvalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid node URL'**
  String get nodeUrlInvalid;

  /// No description provided for @noQrCodeFound.
  ///
  /// In en, this message translates to:
  /// **'No QR code found'**
  String get noQrCodeFound;

  /// No description provided for @noSkipButton.
  ///
  /// In en, this message translates to:
  /// **'No, Skip'**
  String get noSkipButton;

  /// No description provided for @notAccepted.
  ///
  /// In en, this message translates to:
  /// **'not accepted'**
  String get notAccepted;

  /// No description provided for @noteLabel.
  ///
  /// In en, this message translates to:
  /// **'Note:'**
  String get noteLabel;

  /// No description provided for @noUppercase.
  ///
  /// In en, this message translates to:
  /// **'NO'**
  String get noUppercase;

  /// No description provided for @off.
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get off;

  /// No description provided for @on.
  ///
  /// In en, this message translates to:
  /// **'On'**
  String get on;

  /// No description provided for @optionalLabel.
  ///
  /// In en, this message translates to:
  /// **'(Optional)'**
  String get optionalLabel;

  /// No description provided for @paperWallet.
  ///
  /// In en, this message translates to:
  /// **'Paper Wallet'**
  String get paperWallet;

  /// No description provided for @passwordBlank.
  ///
  /// In en, this message translates to:
  /// **'Password cannot be empty'**
  String get passwordBlank;

  /// No description provided for @passwordNoLongerRequiredToOpenParagraph.
  ///
  /// In en, this message translates to:
  /// **'You will not need a password to open this wallet.'**
  String get passwordNoLongerRequiredToOpenParagraph;

  /// No description provided for @passwordsDontMatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get passwordsDontMatch;

  /// No description provided for @passwordWillBeRequiredToOpenParagraph.
  ///
  /// In en, this message translates to:
  /// **'This password will be required to open this wallet.'**
  String get passwordWillBeRequiredToOpenParagraph;

  /// No description provided for @pasteMnemonicError.
  ///
  /// In en, this message translates to:
  /// **'Clipboard content is not a valid secret phrase'**
  String get pasteMnemonicError;

  /// No description provided for @pending.
  ///
  /// In en, this message translates to:
  /// **'pending'**
  String get pending;

  /// No description provided for @pinConfirmError.
  ///
  /// In en, this message translates to:
  /// **'Pins do not match'**
  String get pinConfirmError;

  /// No description provided for @pinConfirmTitle.
  ///
  /// In en, this message translates to:
  /// **'Confirm your PIN'**
  String get pinConfirmTitle;

  /// No description provided for @pinCreateTitle.
  ///
  /// In en, this message translates to:
  /// **'Create a 6-digit PIN'**
  String get pinCreateTitle;

  /// No description provided for @pinEnterTitle.
  ///
  /// In en, this message translates to:
  /// **'Enter PIN'**
  String get pinEnterTitle;

  /// No description provided for @pinInvalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid PIN entered'**
  String get pinInvalid;

  /// No description provided for @pinMethod.
  ///
  /// In en, this message translates to:
  /// **'PIN'**
  String get pinMethod;

  /// No description provided for @pinSeedBackup.
  ///
  /// In en, this message translates to:
  /// **'Enter PIN to Backup Secret Phrase'**
  String get pinSeedBackup;

  /// No description provided for @preferences.
  ///
  /// In en, this message translates to:
  /// **'Preferences'**
  String get preferences;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @qrInvalidAddress.
  ///
  /// In en, this message translates to:
  /// **'QR code does not contain a valid address'**
  String get qrInvalidAddress;

  /// No description provided for @qrInvalidSeed.
  ///
  /// In en, this message translates to:
  /// **'QR code does not contain a valid seed or private key'**
  String get qrInvalidSeed;

  /// No description provided for @qrMnemonicError.
  ///
  /// In en, this message translates to:
  /// **'QR code does not contain a valid secret phrase'**
  String get qrMnemonicError;

  /// No description provided for @receive.
  ///
  /// In en, this message translates to:
  /// **'Receive'**
  String get receive;

  /// No description provided for @receiveAddress.
  ///
  /// In en, this message translates to:
  /// **'Receive Address'**
  String get receiveAddress;

  /// No description provided for @receiveAddressCopied.
  ///
  /// In en, this message translates to:
  /// **'Receive address copied'**
  String get receiveAddressCopied;

  /// No description provided for @receiveAddressListEmpty.
  ///
  /// In en, this message translates to:
  /// **'Receive address list is empty'**
  String get receiveAddressListEmpty;

  /// No description provided for @received.
  ///
  /// In en, this message translates to:
  /// **'Received'**
  String get received;

  /// No description provided for @receiveIndex.
  ///
  /// In en, this message translates to:
  /// **'Receive Index'**
  String get receiveIndex;

  /// No description provided for @receiveIndexParam.
  ///
  /// In en, this message translates to:
  /// **'Receive {addressIndex}'**
  String receiveIndexParam(String addressIndex);

  /// No description provided for @removeContact.
  ///
  /// In en, this message translates to:
  /// **'Remove Contact'**
  String get removeContact;

  /// No description provided for @removeContactConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete {contactName}?'**
  String removeContactConfirmation(String contactName);

  /// No description provided for @removeWalletAction.
  ///
  /// In en, this message translates to:
  /// **'Remove Wallet'**
  String get removeWalletAction;

  /// No description provided for @removeWalletBiometricsMessage.
  ///
  /// In en, this message translates to:
  /// **'Authenticate to Remove Wallet'**
  String get removeWalletBiometricsMessage;

  /// No description provided for @removeWalletDetail.
  ///
  /// In en, this message translates to:
  /// **'Removing this wallet will remove the Secret Phrase and all wallet-related data from this device. If the Secret Phrase is not backed up, you will never be able to access your funds again.'**
  String get removeWalletDetail;

  /// No description provided for @removeWalletPinMessage.
  ///
  /// In en, this message translates to:
  /// **'Enter PIN to Remove Wallet'**
  String get removeWalletPinMessage;

  /// No description provided for @removeWalletReassurance.
  ///
  /// In en, this message translates to:
  /// **'As long as you\'ve backed up the Secret Phrase you have nothing to worry about.'**
  String get removeWalletReassurance;

  /// No description provided for @requestPasswordAtLaunch.
  ///
  /// In en, this message translates to:
  /// **'At Launch'**
  String get requestPasswordAtLaunch;

  /// No description provided for @requestPasswordHeader.
  ///
  /// In en, this message translates to:
  /// **'Request Password'**
  String get requestPasswordHeader;

  /// No description provided for @requestPasswordWhenLocked.
  ///
  /// In en, this message translates to:
  /// **'When Locked'**
  String get requestPasswordWhenLocked;

  /// No description provided for @requestPasswordWhenSigning.
  ///
  /// In en, this message translates to:
  /// **'When Signing'**
  String get requestPasswordWhenSigning;

  /// No description provided for @requireAPasswordToOpenHeader.
  ///
  /// In en, this message translates to:
  /// **'Require a password to open this wallet?'**
  String get requireAPasswordToOpenHeader;

  /// No description provided for @restartSetupButton.
  ///
  /// In en, this message translates to:
  /// **'Restart Setup'**
  String get restartSetupButton;

  /// No description provided for @scanFailedMessage.
  ///
  /// In en, this message translates to:
  /// **'Scan failed, please try again later'**
  String get scanFailedMessage;

  /// No description provided for @scanMore.
  ///
  /// In en, this message translates to:
  /// **'SCAN MORE'**
  String get scanMore;

  /// No description provided for @scanMoreAddresses.
  ///
  /// In en, this message translates to:
  /// **'Scan For More Addresses'**
  String get scanMoreAddresses;

  /// No description provided for @scannedIndex.
  ///
  /// In en, this message translates to:
  /// **'Scanned'**
  String get scannedIndex;

  /// No description provided for @scanningDescription.
  ///
  /// In en, this message translates to:
  /// **'Scanning for new addresses...'**
  String get scanningDescription;

  /// No description provided for @scanningTitle.
  ///
  /// In en, this message translates to:
  /// **'Scanning'**
  String get scanningTitle;

  /// No description provided for @scanQrCode.
  ///
  /// In en, this message translates to:
  /// **'Scan QR Code'**
  String get scanQrCode;

  /// No description provided for @scanQrCodeError.
  ///
  /// In en, this message translates to:
  /// **'Failed to parse qr code'**
  String get scanQrCodeError;

  /// No description provided for @secretInfo.
  ///
  /// In en, this message translates to:
  /// **'In the next screen, you will see your secret phrase. It is a password to access your funds. It is crucial that you back it up and never share it with anyone.'**
  String get secretInfo;

  /// No description provided for @secretInfoHeader.
  ///
  /// In en, this message translates to:
  /// **'Safety First!'**
  String get secretInfoHeader;

  /// No description provided for @secretPhrase.
  ///
  /// In en, this message translates to:
  /// **'Secret Phrase'**
  String get secretPhrase;

  /// No description provided for @secretPhrase12Words.
  ///
  /// In en, this message translates to:
  /// **'12 WORDS'**
  String get secretPhrase12Words;

  /// No description provided for @secretPhrase24Words.
  ///
  /// In en, this message translates to:
  /// **'24 WORDS'**
  String get secretPhrase24Words;

  /// No description provided for @secretWarning.
  ///
  /// In en, this message translates to:
  /// **'If you lose your device or uninstall the application, you\'ll need your secret phrase to recover your funds!'**
  String get secretWarning;

  /// No description provided for @securityHeader.
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get securityHeader;

  /// No description provided for @seed.
  ///
  /// In en, this message translates to:
  /// **'Seed'**
  String get seed;

  /// No description provided for @seedInvalid.
  ///
  /// In en, this message translates to:
  /// **'Seed is Invalid'**
  String get seedInvalid;

  /// No description provided for @selectAddress.
  ///
  /// In en, this message translates to:
  /// **'Select Address'**
  String get selectAddress;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// No description provided for @sendConfirm.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get sendConfirm;

  /// No description provided for @sendError.
  ///
  /// In en, this message translates to:
  /// **'An error occurred. Please try again'**
  String get sendError;

  /// No description provided for @sending.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get sending;

  /// No description provided for @sendNote.
  ///
  /// In en, this message translates to:
  /// **'NOTE'**
  String get sendNote;

  /// No description provided for @sendToAddressTitle.
  ///
  /// In en, this message translates to:
  /// **'To'**
  String get sendToAddressTitle;

  /// No description provided for @sendTxProgressDescription.
  ///
  /// In en, this message translates to:
  /// **'Please wait while the transaction is sent'**
  String get sendTxProgressDescription;

  /// No description provided for @sendTxProgressTitle.
  ///
  /// In en, this message translates to:
  /// **'Sending Transaction'**
  String get sendTxProgressTitle;

  /// No description provided for @sent.
  ///
  /// In en, this message translates to:
  /// **'Sent'**
  String get sent;

  /// No description provided for @sentTo.
  ///
  /// In en, this message translates to:
  /// **'Sent to'**
  String get sentTo;

  /// No description provided for @setPassword.
  ///
  /// In en, this message translates to:
  /// **'Set Password'**
  String get setPassword;

  /// No description provided for @setPasswordSuccess.
  ///
  /// In en, this message translates to:
  /// **'Wallet password has been set'**
  String get setPasswordSuccess;

  /// No description provided for @settingsHeader.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsHeader;

  /// No description provided for @settingsTransfer.
  ///
  /// In en, this message translates to:
  /// **'Load from Paper Wallet'**
  String get settingsTransfer;

  /// No description provided for @setupFailedMessage.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get setupFailedMessage;

  /// No description provided for @setWalletPassword.
  ///
  /// In en, this message translates to:
  /// **'Set Wallet Password'**
  String get setWalletPassword;

  /// No description provided for @shareKaspium.
  ///
  /// In en, this message translates to:
  /// **'Share Kaspium'**
  String get shareKaspium;

  /// No description provided for @shareKaspiumSubject.
  ///
  /// In en, this message translates to:
  /// **'Check out Kaspium Wallet'**
  String get shareKaspiumSubject;

  /// No description provided for @shareKaspiumText.
  ///
  /// In en, this message translates to:
  /// **'Check out Kaspium - Kaspa Mobile Wallet.\nWebsite - kaspium.io'**
  String get shareKaspiumText;

  /// No description provided for @somethingWentWrong.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get somethingWentWrong;

  /// No description provided for @systemDefault.
  ///
  /// In en, this message translates to:
  /// **'System Default'**
  String get systemDefault;

  /// No description provided for @tapToHide.
  ///
  /// In en, this message translates to:
  /// **'Tap to hide'**
  String get tapToHide;

  /// No description provided for @tapToReveal.
  ///
  /// In en, this message translates to:
  /// **'Tap to reveal'**
  String get tapToReveal;

  /// No description provided for @themeDark.
  ///
  /// In en, this message translates to:
  /// **'Dark Theme'**
  String get themeDark;

  /// No description provided for @themeHeader.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get themeHeader;

  /// No description provided for @themeLight.
  ///
  /// In en, this message translates to:
  /// **'Light Theme'**
  String get themeLight;

  /// No description provided for @thisWallet.
  ///
  /// In en, this message translates to:
  /// **'#This Wallet'**
  String get thisWallet;

  /// No description provided for @to.
  ///
  /// In en, this message translates to:
  /// **'To'**
  String get to;

  /// No description provided for @toAddress.
  ///
  /// In en, this message translates to:
  /// **'To Address'**
  String get toAddress;

  /// No description provided for @tooManyFailedAttempts.
  ///
  /// In en, this message translates to:
  /// **'Too many failed unlock attempts.'**
  String get tooManyFailedAttempts;

  /// No description provided for @totalValue.
  ///
  /// In en, this message translates to:
  /// **'Total Value'**
  String get totalValue;

  /// No description provided for @transactionId.
  ///
  /// In en, this message translates to:
  /// **'Transaction ID'**
  String get transactionId;

  /// No description provided for @transactionsUppercase.
  ///
  /// In en, this message translates to:
  /// **'TRANSACTIONS'**
  String get transactionsUppercase;

  /// No description provided for @transfer.
  ///
  /// In en, this message translates to:
  /// **'Transfer'**
  String get transfer;

  /// No description provided for @transferClose.
  ///
  /// In en, this message translates to:
  /// **'Tap anywhere to close the window.'**
  String get transferClose;

  /// No description provided for @transferComplete.
  ///
  /// In en, this message translates to:
  /// **'{amount} KAS successfully transferred to your Kaspium Wallet.\n'**
  String transferComplete(String amount);

  /// No description provided for @transferConfirmInfo.
  ///
  /// In en, this message translates to:
  /// **'A wallet with a balance of {amount} KAS has been detected.'**
  String transferConfirmInfo(String amount);

  /// No description provided for @transferConfirmInfoSecond.
  ///
  /// In en, this message translates to:
  /// **'Tap confirm to transfer the funds.\n'**
  String get transferConfirmInfoSecond;

  /// No description provided for @transferConfirmInfoThird.
  ///
  /// In en, this message translates to:
  /// **'Transfer may take several seconds to complete.'**
  String get transferConfirmInfoThird;

  /// No description provided for @transferError.
  ///
  /// In en, this message translates to:
  /// **'An error has occurred during the transfer. Please try again later.'**
  String get transferError;

  /// No description provided for @transferHeader.
  ///
  /// In en, this message translates to:
  /// **'Transfer Funds'**
  String get transferHeader;

  /// No description provided for @transferIntro.
  ///
  /// In en, this message translates to:
  /// **'This process will transfer the funds from a paper wallet to your Kaspium wallet.\n\nTap the \"{button}\" button to start.'**
  String transferIntro(String button);

  /// No description provided for @transferLoading.
  ///
  /// In en, this message translates to:
  /// **'Transferring'**
  String get transferLoading;

  /// No description provided for @transferManualHint.
  ///
  /// In en, this message translates to:
  /// **'Please enter the seed below.'**
  String get transferManualHint;

  /// No description provided for @transferNoFunds.
  ///
  /// In en, this message translates to:
  /// **'This seed does not have any KAS on it'**
  String get transferNoFunds;

  /// No description provided for @transferQrScanError.
  ///
  /// In en, this message translates to:
  /// **'This QR code does not contain a valid seed.'**
  String get transferQrScanError;

  /// No description provided for @transferQrScanHint.
  ///
  /// In en, this message translates to:
  /// **'Scan a Kaspa \nseed or private key'**
  String get transferQrScanHint;

  /// No description provided for @txFilterDialogOptionAllTxs.
  ///
  /// In en, this message translates to:
  /// **'Show All Transactions'**
  String get txFilterDialogOptionAllTxs;

  /// No description provided for @txFilterDialogOptionHideNotAcceptedCoinbase.
  ///
  /// In en, this message translates to:
  /// **'Hide Not Accepted Coinbase Transactions'**
  String get txFilterDialogOptionHideNotAcceptedCoinbase;

  /// No description provided for @txFilterDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Transaction Filter'**
  String get txFilterDialogTitle;

  /// No description provided for @txInMempool.
  ///
  /// In en, this message translates to:
  /// **'in mempool'**
  String get txInMempool;

  /// No description provided for @txPending.
  ///
  /// In en, this message translates to:
  /// **'PENDING'**
  String get txPending;

  /// No description provided for @txPendingActionRbf.
  ///
  /// In en, this message translates to:
  /// **'Replace By Fee'**
  String get txPendingActionRbf;

  /// No description provided for @txPendingActionUpdateFee.
  ///
  /// In en, this message translates to:
  /// **'Update Tx Fee'**
  String get txPendingActionUpdateFee;

  /// No description provided for @txPendingContent.
  ///
  /// In en, this message translates to:
  /// **'There is a pending transactions in the mempool.'**
  String get txPendingContent;

  /// No description provided for @txPendingMessage.
  ///
  /// In en, this message translates to:
  /// **'This transaction is pending'**
  String get txPendingMessage;

  /// No description provided for @txPendingTitle.
  ///
  /// In en, this message translates to:
  /// **'Pending Transaction'**
  String get txPendingTitle;

  /// No description provided for @txReport.
  ///
  /// In en, this message translates to:
  /// **'Transaction Report'**
  String get txReport;

  /// No description provided for @txReportDate.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get txReportDate;

  /// No description provided for @txReportDescription.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get txReportDescription;

  /// No description provided for @txReportDetails.
  ///
  /// In en, this message translates to:
  /// **'Generate a transaction report, in CSV format, that contains all the wallet\'s transaction history.'**
  String get txReportDetails;

  /// No description provided for @txReportError.
  ///
  /// In en, this message translates to:
  /// **'Error generating report'**
  String get txReportError;

  /// No description provided for @txReportFeeAmount.
  ///
  /// In en, this message translates to:
  /// **'Fee Amount'**
  String get txReportFeeAmount;

  /// No description provided for @txReportFeeCurrency.
  ///
  /// In en, this message translates to:
  /// **'Fee Currency'**
  String get txReportFeeCurrency;

  /// No description provided for @txReportFeeForCompound.
  ///
  /// In en, this message translates to:
  /// **'Fee for Compound Transaction'**
  String get txReportFeeForCompound;

  /// No description provided for @txReportFeeForSelfSend.
  ///
  /// In en, this message translates to:
  /// **'Fee to send to own addresses'**
  String get txReportFeeForSelfSend;

  /// No description provided for @txReportGenerate.
  ///
  /// In en, this message translates to:
  /// **'Generate'**
  String get txReportGenerate;

  /// No description provided for @txReportGetReport.
  ///
  /// In en, this message translates to:
  /// **'Get Report'**
  String get txReportGetReport;

  /// No description provided for @txReportLabel.
  ///
  /// In en, this message translates to:
  /// **'Label'**
  String get txReportLabel;

  /// No description provided for @txReportLabelCost.
  ///
  /// In en, this message translates to:
  /// **'cost'**
  String get txReportLabelCost;

  /// No description provided for @txReportNoLoadedTxs.
  ///
  /// In en, this message translates to:
  /// **'({loadedTxs} of {totalTxs})'**
  String txReportNoLoadedTxs(int loadedTxs, int totalTxs);

  /// No description provided for @txReportNote.
  ///
  /// In en, this message translates to:
  /// **'Note'**
  String get txReportNote;

  /// No description provided for @txReportNoTxs.
  ///
  /// In en, this message translates to:
  /// **'Found {numberOf} transactions.'**
  String txReportNoTxs(int numberOf);

  /// No description provided for @txReportOptionIgnoreCompound.
  ///
  /// In en, this message translates to:
  /// **'Ignore compound transactions'**
  String get txReportOptionIgnoreCompound;

  /// No description provided for @txReportOptionIgnoreSelfTxs.
  ///
  /// In en, this message translates to:
  /// **'Ignore transactions sent to self'**
  String get txReportOptionIgnoreSelfTxs;

  /// No description provided for @txReportOptionRefreshTxs.
  ///
  /// In en, this message translates to:
  /// **'Refresh transactions'**
  String get txReportOptionRefreshTxs;

  /// No description provided for @txReportReceivedAmount.
  ///
  /// In en, this message translates to:
  /// **'Received Amount'**
  String get txReportReceivedAmount;

  /// No description provided for @txReportReceivedCurrency.
  ///
  /// In en, this message translates to:
  /// **'Received Currency'**
  String get txReportReceivedCurrency;

  /// No description provided for @txReportSentAmount.
  ///
  /// In en, this message translates to:
  /// **'Sent Amount'**
  String get txReportSentAmount;

  /// No description provided for @txReportSentCurrency.
  ///
  /// In en, this message translates to:
  /// **'Sent Currency'**
  String get txReportSentCurrency;

  /// No description provided for @txReportStatusLoading.
  ///
  /// In en, this message translates to:
  /// **'Loading transactions'**
  String get txReportStatusLoading;

  /// No description provided for @txReportStatusReady.
  ///
  /// In en, this message translates to:
  /// **'Transaction report is ready!'**
  String get txReportStatusReady;

  /// No description provided for @txReportStatusRefreshing.
  ///
  /// In en, this message translates to:
  /// **'Refreshing transactions'**
  String get txReportStatusRefreshing;

  /// No description provided for @txReportSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Get CSV file with transaction history'**
  String get txReportSubtitle;

  /// No description provided for @txReportTxHash.
  ///
  /// In en, this message translates to:
  /// **'TxHash'**
  String get txReportTxHash;

  /// No description provided for @unconfirmed.
  ///
  /// In en, this message translates to:
  /// **'unconfirmed'**
  String get unconfirmed;

  /// No description provided for @unknown.
  ///
  /// In en, this message translates to:
  /// **'unknown'**
  String get unknown;

  /// No description provided for @unlock.
  ///
  /// In en, this message translates to:
  /// **'Unlock'**
  String get unlock;

  /// No description provided for @unlockBiometrics.
  ///
  /// In en, this message translates to:
  /// **'Authenticate to Unlock Wallet'**
  String get unlockBiometrics;

  /// No description provided for @unlockPin.
  ///
  /// In en, this message translates to:
  /// **'Enter PIN to Unlock Wallet'**
  String get unlockPin;

  /// No description provided for @utxoSelectionHint.
  ///
  /// In en, this message translates to:
  /// **'Please select more UTXOs'**
  String get utxoSelectionHint;

  /// No description provided for @utxoSelectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Select UTXOs'**
  String get utxoSelectionTitle;

  /// No description provided for @utxosUppercase.
  ///
  /// In en, this message translates to:
  /// **'UTXOs'**
  String get utxosUppercase;

  /// No description provided for @viewAddress.
  ///
  /// In en, this message translates to:
  /// **'View Address'**
  String get viewAddress;

  /// No description provided for @viewTransaction.
  ///
  /// In en, this message translates to:
  /// **'View Transaction'**
  String get viewTransaction;

  /// No description provided for @walletAddress.
  ///
  /// In en, this message translates to:
  /// **'Wallet Address'**
  String get walletAddress;

  /// No description provided for @walletAddresses.
  ///
  /// In en, this message translates to:
  /// **'Wallet Addresses'**
  String get walletAddresses;

  /// No description provided for @walletAddressesCopied.
  ///
  /// In en, this message translates to:
  /// **'Wallet {addressType} Addresses Copied to Clipboard'**
  String walletAddressesCopied(String addressType);

  /// No description provided for @walletAddressesCopyFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to Copy Wallet {addressType} Addresses'**
  String walletAddressesCopyFailed(String addressType);

  /// No description provided for @walletName.
  ///
  /// In en, this message translates to:
  /// **'Wallet name'**
  String get walletName;

  /// No description provided for @walletNameDescription.
  ///
  /// In en, this message translates to:
  /// **'Enter a name for your wallet'**
  String get walletNameDescription;

  /// No description provided for @walletNameHint.
  ///
  /// In en, this message translates to:
  /// **'Wallet Name'**
  String get walletNameHint;

  /// No description provided for @walletSetupAddressDiscovery.
  ///
  /// In en, this message translates to:
  /// **'Running Address Discovery'**
  String get walletSetupAddressDiscovery;

  /// No description provided for @walletSetupMessage.
  ///
  /// In en, this message translates to:
  /// **'Setting up wallet'**
  String get walletSetupMessage;

  /// No description provided for @walletsTitle.
  ///
  /// In en, this message translates to:
  /// **'Wallets'**
  String get walletsTitle;

  /// No description provided for @warning.
  ///
  /// In en, this message translates to:
  /// **'Warning'**
  String get warning;

  /// No description provided for @welcomeMessage.
  ///
  /// In en, this message translates to:
  /// **'Welcome!\n\nThis is version {version} of Kaspium - the mobile wallet for Kaspa'**
  String welcomeMessage(String version);

  /// No description provided for @welcomeText.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Kaspium. To begin, you may create a new wallet or import an existing one.'**
  String get welcomeText;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @yesButton.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yesButton;

  /// No description provided for @yesUppercase.
  ///
  /// In en, this message translates to:
  /// **'YES'**
  String get yesUppercase;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'af',
    'ar',
    'bg',
    'bn',
    'ca',
    'cs',
    'da',
    'de',
    'el',
    'en',
    'es',
    'eu',
    'fa',
    'fi',
    'fr',
    'he',
    'hi',
    'hu',
    'id',
    'it',
    'ja',
    'ka',
    'ko',
    'lv',
    'ms',
    'nl',
    'no',
    'pl',
    'pt',
    'ro',
    'ru',
    'sk',
    'sl',
    'sq',
    'sr',
    'sv',
    'te',
    'tl',
    'tr',
    'uk',
    'ur',
    'vi',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'af':
      return AppLocalizationsAf();
    case 'ar':
      return AppLocalizationsAr();
    case 'bg':
      return AppLocalizationsBg();
    case 'bn':
      return AppLocalizationsBn();
    case 'ca':
      return AppLocalizationsCa();
    case 'cs':
      return AppLocalizationsCs();
    case 'da':
      return AppLocalizationsDa();
    case 'de':
      return AppLocalizationsDe();
    case 'el':
      return AppLocalizationsEl();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'eu':
      return AppLocalizationsEu();
    case 'fa':
      return AppLocalizationsFa();
    case 'fi':
      return AppLocalizationsFi();
    case 'fr':
      return AppLocalizationsFr();
    case 'he':
      return AppLocalizationsHe();
    case 'hi':
      return AppLocalizationsHi();
    case 'hu':
      return AppLocalizationsHu();
    case 'id':
      return AppLocalizationsId();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ka':
      return AppLocalizationsKa();
    case 'ko':
      return AppLocalizationsKo();
    case 'lv':
      return AppLocalizationsLv();
    case 'ms':
      return AppLocalizationsMs();
    case 'nl':
      return AppLocalizationsNl();
    case 'no':
      return AppLocalizationsNo();
    case 'pl':
      return AppLocalizationsPl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ro':
      return AppLocalizationsRo();
    case 'ru':
      return AppLocalizationsRu();
    case 'sk':
      return AppLocalizationsSk();
    case 'sl':
      return AppLocalizationsSl();
    case 'sq':
      return AppLocalizationsSq();
    case 'sr':
      return AppLocalizationsSr();
    case 'sv':
      return AppLocalizationsSv();
    case 'te':
      return AppLocalizationsTe();
    case 'tl':
      return AppLocalizationsTl();
    case 'tr':
      return AppLocalizationsTr();
    case 'uk':
      return AppLocalizationsUk();
    case 'ur':
      return AppLocalizationsUr();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
