// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malay (`ms`).
class AppLocalizationsMs extends AppLocalizations {
  AppLocalizationsMs([String locale = 'ms']) : super(locale);

  @override
  String get account => 'Akaun';

  @override
  String get accounts => 'Akaun';

  @override
  String get ackBackedUp =>
      'Adakah anda pasti bahawa anda telah menyandarkan frasa rahsia anda?';

  @override
  String get add => 'Tambah';

  @override
  String get addAccount => 'Tambah akaun';

  @override
  String get addContact => 'Tambah Kenalan';

  @override
  String get addNode => 'Tambah Node';

  @override
  String get addNodeFailed => 'Gagal menambah node Kaspa';

  @override
  String addNodeFailedMessage(String error) {
    return 'Gagal: $error';
  }

  @override
  String get addNodeSuccess => 'Node Berjaya Ditambah';

  @override
  String get addingNodeMessage => 'Sila tunggu semasa menghubungi node';

  @override
  String get addingNodeTitle => 'Menambah Node';

  @override
  String get address => 'Alamat';

  @override
  String get addressCopied => 'Alamat disalinkan';

  @override
  String get addressCopiedFailed => 'Gagal menyalin alamat';

  @override
  String get addressHint => 'Masukkan Alamat';

  @override
  String get addressMising => 'Sila masukkan destinasi';

  @override
  String get addressShare => 'Kongsikan Alamat';

  @override
  String get kaspaUriCopied => 'URI Kaspa Disalin';

  @override
  String get kaspaUriCopyFailed => 'Gagal menyalin URI Kaspa';

  @override
  String get advancedHeader => 'Maju';

  @override
  String get amount => 'Jumlah';

  @override
  String amountConfirm(String amount, String coin) {
    return 'Jumlah $amount $coin';
  }

  @override
  String get amountMissing => 'Sila masukkan jumlah';

  @override
  String get amountZero => 'Jumlah tidak boleh sifar';

  @override
  String get areYouSure => 'Adakah anda pasti?';

  @override
  String get authBiometricMessage => 'Sahkan untuk Tambah Dompet';

  @override
  String get authMethod => 'Kaedah Pengesahan';

  @override
  String get authPinMessage => 'Masukkan PIN untuk Tambah Dompet';

  @override
  String get autoLockHeader => 'Kunci secara automatik';

  @override
  String get available => 'Tersedia';

  @override
  String get backupConfirmButton => 'Saya telah menyokongnya';

  @override
  String get backupSecretPhrase => 'Cadangkan Frasa Rahsia ';

  @override
  String get missingSecretPhrase => 'Missing Secret Phrase';

  @override
  String get biometricsMethod => 'Biometrik';

  @override
  String get blockExplorer => 'Blok Penjelajah';

  @override
  String get cancel => 'Batal';

  @override
  String get change => 'Ubah';

  @override
  String get changeAddress => 'Tukar alamat';

  @override
  String get changeAddressCopied => 'Tukar alamat disalin';

  @override
  String get changeIndex => 'Tukar Indeks';

  @override
  String changeIndexParam(String addressIndex) {
    return 'Tukar $addressIndex';
  }

  @override
  String get checkCameraPermission => 'Sila semak kebenaran kamera';

  @override
  String get clipboardEmpty => 'Papan klip kosong';

  @override
  String get close => 'Tutup';

  @override
  String get confirm => 'sahkan';

  @override
  String get confirmPasswordHint => 'Sahkan kata laluan';

  @override
  String confirmations(String confirmations) {
    return 'pengesahan $confirmations.';
  }

  @override
  String get confirmed => 'disahkan';

  @override
  String get confirming => 'mengesahkan';

  @override
  String contactAdded(String contactName) {
    return '$contactName telah ditambah sebagai kenalan!';
  }

  @override
  String contactAddressCopied(String address) {
    return '$address alamat disalin';
  }

  @override
  String get contactExists => 'Kenalan telah wujud';

  @override
  String get contactHeader => 'Kenalan';

  @override
  String get contactInvalid => 'Nama Kenalan tidak sah';

  @override
  String get contactNameHint => 'Masukkan Nama @';

  @override
  String get contactNameMissing => 'Tidak ada kontak yang boleh diekspor';

  @override
  String contactRemoved(String contactName) {
    return '$contactName kenalan telah dihapuskan!';
  }

  @override
  String get contactsHeader => 'Kenalan';

  @override
  String get contactsImportErr => 'Gagal mengimpor kontak';

  @override
  String contactsImportSuccess(String noContacts) {
    return 'Berhasil mengimpor $noContacts kenalan';
  }

  @override
  String get copied => 'Disalin';

  @override
  String get copy => 'Menyalin';

  @override
  String get copyAddress => 'Salinkan alamat';

  @override
  String get copyErrorButton => 'Ralat Salin';

  @override
  String get createAPasswordHeader => 'Buat kata laluan.';

  @override
  String get createPasswordFirstParagraph =>
      'Anda boleh membuat kata laluan untuk menambah keselamatan tambahan pada dompet anda.';

  @override
  String get createPasswordHint => 'Buat kata laluan';

  @override
  String get createPasswordSecondParagraph =>
      'Kata laluan adalah pilihan, dan dompet anda akan dilindungi dengan PIN atau biometrik anda tanpa mengira.';

  @override
  String get createPasswordSheetHeader => 'Buat';

  @override
  String get currency => 'Mata wang';

  @override
  String get currencyPoweredBy => 'Dikuasakan oleh CoinGecko';

  @override
  String get defaultAccountName => 'Akaun Utama 1';

  @override
  String defaultNewAccountName(int addressIndex) {
    return 'Terima $addressIndex';
  }

  @override
  String get defaultWalletName => 'Dompet saya';

  @override
  String get disablePasswordSheetHeader => 'Lumpuhkan';

  @override
  String get disablePasswordSuccess => 'Kata laluan telah dilumpuhkan';

  @override
  String get disableWalletPassword => 'Lumpuhkan Kata Laluan Dompet';

  @override
  String get doContinue => 'Teruskan';

  @override
  String get donate => 'Menderma';

  @override
  String get donateTo => 'Derma Kepada';

  @override
  String get dontShowAgain => 'Jangan tunjukkan lagi';

  @override
  String get emptyCardIntroUtxos =>
      'Ini ialah tab UTXOs. Semua UTXO dalam dompet anda akan dipaparkan di sini';

  @override
  String get emptyResult => 'Hasil Kosong';

  @override
  String get emptyWalletName => 'Nama Dompet tidak boleh kosong';

  @override
  String get encryptionFailedError => 'Gagal menetapkan kata laluan dompet';

  @override
  String get enterAddress => 'Masukan Alamat';

  @override
  String get enterAmount => 'Masukan Amaun';

  @override
  String get enterFiatValue => 'Masukkan Nilai Fiat';

  @override
  String get enterNote => 'Masukkan Nota';

  @override
  String get enterPasswordHint => 'Masukkan kata laluan anda';

  @override
  String get errorMessageCopied => 'Mesej ralat disalin ke papan keratan';

  @override
  String get exampleCardIntro =>
      'Ini ialah tab urus niaga. Sebaik sahaja anda menghantar atau menerima transaksi, transaksi itu akan dipaparkan di sini.';

  @override
  String get export => 'Eksport';

  @override
  String get fee => 'Bayaran';

  @override
  String feeConfirm(String amount, String coin) {
    return 'Bayaran $amount $coin';
  }

  @override
  String get feeTitle => 'BAYARAN';

  @override
  String get fetchingTransactions => 'Mengambil Transaksi';

  @override
  String get fingerprintSeedBackup =>
      'Konfirm cap jari untuk menyandarkan benih dompet.';

  @override
  String get goBackButton => 'Pergi balik';

  @override
  String get gotItButton => 'Faham!';

  @override
  String get import => 'Import';

  @override
  String get importSecretPhrase => 'Import Frasa Rahsia';

  @override
  String get importSecretPhraseHint =>
      'Sila masukkan frasa rahsia 24 perkataan anda di bawah. ';

  @override
  String get importSecretPhraseHintCombo =>
      'Sila masukkan frasa rahsia 12 atau 24 perkataan anda di bawah.';

  @override
  String get importSecretPhraseHintLegacy =>
      'Sila masukkan frasa rahsia 12 perkataan anda di bawah.';

  @override
  String get importWallet => 'Import Dompet';

  @override
  String get importWalletDescription => 'Sila pilih pilihan di bawah.';

  @override
  String get instantly => 'Seketika';

  @override
  String get insufficientBalance => 'Baki tak mencukupi';

  @override
  String get insufficientBalanceDetails =>
      'Anda tidak mempunyai KAS yang mencukupi untuk transaksi ini';

  @override
  String get invalidAddress => 'Alamat destinasi tidak sah';

  @override
  String get invalidAmount => 'Jumlah Tidak Sah';

  @override
  String get invalidChecksumMessage =>
      'Sila pastikan Frasa Rahsia anda\ntelah dimasukkan dengan betul!';

  @override
  String get invalidKpubMessage =>
      'Sila pastikan bahawa kunci awam lanjutan anda dimasukkan dengan betul!';

  @override
  String get invalidDestinationAddress => 'Alamat Destinasi Tidak Sah';

  @override
  String get invalidPassword => 'kata laluan tidak sah';

  @override
  String get kaspaDevFund => 'Dana Kaspa Dev';

  @override
  String get kaspiumWallet => 'Dompet Kaspium';

  @override
  String get language => 'Bahasa';

  @override
  String get loadingTransactions => 'Memuatkan Transaksi...';

  @override
  String get lockAppSetting => 'Mengesahkan masa Pelancaran';

  @override
  String get locked => 'Terkunci';

  @override
  String get loggingOutMessage => 'Log keluar...';

  @override
  String get logout => 'Log Keluar';

  @override
  String get logoutDialogContent =>
      'Adakah anda pasti mahu log keluar daripada dompet ini?';

  @override
  String get logoutOrSwitchWallet => 'Log Keluar / Tukar Wallet';

  @override
  String get manage => 'Mengurus';

  @override
  String get manualEntry => 'Manual Kemasukan';

  @override
  String get networkHeader => 'Rangkaian';

  @override
  String get newAddress => 'Alamat Baru';

  @override
  String get newWallet => 'Dompet Baru';

  @override
  String get nextButton => 'Seterusnya';

  @override
  String get no => 'Tidak';

  @override
  String get noContactsExport => 'Tidak ada kontak yg boleh diekspor';

  @override
  String get noContactsImport => 'Tidak ada untuk impor';

  @override
  String get noQrCodeFound => 'Tiada kod QR ditemui';

  @override
  String get noSkipButton => 'Tidak, Langkau';

  @override
  String get noUppercase => 'TIDAK';

  @override
  String get nodeAddress => 'Node Kaspa';

  @override
  String get nodeDeleteMessage => 'Adakah anda pasti ingin memadam?';

  @override
  String get nodeDeleteTitle => 'Padamkan Konfigurasi Node Kaspa?';

  @override
  String get nodeNameEmpty => 'Nama node tidak boleh kosong';

  @override
  String get nodeNameHint => 'Masukkan Nama Node';

  @override
  String get nodeUrlHint => 'Masukkan URL Node';

  @override
  String get nodeUrlInvalid => 'URL node tidak sah';

  @override
  String get nodesSheetTitle => 'Node Kaspa';

  @override
  String get off => 'Mati';

  @override
  String get on => 'hidup';

  @override
  String get paperWallet => 'Dompet Kertas';

  @override
  String get passwordBlank => 'Kata laluan tidak boleh kosong';

  @override
  String get passwordNoLongerRequiredToOpenParagraph =>
      'Anda tidak memerlukan kata laluan untuk membuka dompet ini.';

  @override
  String get passwordWillBeRequiredToOpenParagraph =>
      'Kata laluan ini diperlukan untuk membuka dompet ini.';

  @override
  String get passwordsDontMatch => 'Kata laluan tidak sepadan';

  @override
  String get pasteMnemonicError =>
      'Kandungan papan klip bukanlah frasa rahsia yang sah';

  @override
  String get pending => 'belum selesai';

  @override
  String get pinConfirmError => 'Pin tiada sempadan';

  @override
  String get pinConfirmTitle => 'Mengesahkan PIN anda';

  @override
  String get pinCreateTitle => 'Mencipta PIN 6 digit anda';

  @override
  String get pinEnterTitle => 'Masukkan PIN';

  @override
  String get pinInvalid => 'Pin yang tak sah dimasukkan';

  @override
  String get pinMethod => 'PIN';

  @override
  String get pinSeedBackup => 'Masukkan PIN untuk Menyandarkan Frasa Rahsia';

  @override
  String get preferences => 'Keutamaan';

  @override
  String get privacyPolicy => 'Dasar Privasi';

  @override
  String get qrInvalidAddress => 'Kod QR tidak mengandungi destinasi yang sah';

  @override
  String get qrInvalidSeed =>
      'Kod QR tidak mengandungi kunci benih atau peribadi yang sah';

  @override
  String get qrMnemonicError =>
      'Kod QR tidak mengandungi frasa rahsia yang sah';

  @override
  String get receive => 'Terima';

  @override
  String get receiveAddress => 'Terima Alamat';

  @override
  String get receiveAddressCopied => 'Terima alamat yang disalin';

  @override
  String get receiveIndex => 'Terima Indeks';

  @override
  String receiveIndexParam(String addressIndex) {
    return 'Terima $addressIndex';
  }

  @override
  String get received => 'Diterima';

  @override
  String get removeContact => 'Padam Kenalan';

  @override
  String removeContactConfirmation(String contactName) {
    return 'Anda akan menghapuskan $contactName?';
  }

  @override
  String get removeWalletAction => 'Alih keluar Wallet';

  @override
  String get removeWalletBiometricsMessage => 'Sahkan untuk Alih Keluar Wallet';

  @override
  String get removeWalletDetail =>
      'Mengalih keluar dompet ini akan mengalih keluar Frasa Rahsia dan semua data berkaitan dompet daripada peranti ini. ';

  @override
  String get removeWalletPinMessage => 'Masukkan PIN untuk Alih Keluar Wallet';

  @override
  String get removeWalletReassurance =>
      'Selagi anda telah menyandarkan Frasa Rahsia, anda tidak perlu risau.';

  @override
  String get requireAPasswordToOpenHeader =>
      'Memerlukan kata laluan untuk membuka Kaspium?';

  @override
  String get restartSetupButton => 'Mulakan semula Persediaan';

  @override
  String get scanQrCode => 'Imbaskan Kod QR';

  @override
  String get scanQrCodeError => 'Gagal menghuraikan kod qr';

  @override
  String get secretInfo =>
      'Dalam skrin seterusnya, anda akan melihat frasa rahsia anda. ';

  @override
  String get secretInfoHeader => 'Utamakan keselamatan!';

  @override
  String get secretPhrase => 'Frasa Rahsia';

  @override
  String get secretPhrase12Words => '12 WORDS';

  @override
  String get secretPhrase24Words => '24 WORDS';

  @override
  String get secretWarning =>
      'Jika anda kehilangan peranti anda atau memasang aplikasinya, anda perlu frasa atau benih rahsia anda untuk mendapatkan semula dana anda!';

  @override
  String get securityHeader => 'Keselamatan';

  @override
  String get seed => 'Benih';

  @override
  String get seedInvalid => 'Benih tidak sah';

  @override
  String get send => 'Hantar';

  @override
  String get sendConfirm => 'Hantar';

  @override
  String get sendError => 'Berlaku ralat. ';

  @override
  String get sendNote => 'CATATAN';

  @override
  String get sendToAddressTitle => 'Kepada';

  @override
  String get sendTxProgressDescription =>
      'Sila tunggu sementara transaksi dihantar';

  @override
  String get sendTxProgressTitle => 'Menghantar Transaksi';

  @override
  String get sending => 'Sedang dihantarkan';

  @override
  String get sent => 'Dihantar';

  @override
  String get sentTo => 'Dihantar ke';

  @override
  String get setPassword => 'Tetapkan kata laluan';

  @override
  String get setPasswordSuccess =>
      'Kata laluan telah ditetapkan dengan kejayaannya';

  @override
  String get setWalletPassword => 'Tetapkan Kata Laluan Wallet';

  @override
  String get settingsHeader => 'Tetapan';

  @override
  String get settingsTransfer => 'Muatkan dari Dompet Kertas';

  @override
  String get setupFailedMessage => 'Sesuatu telah berlaku';

  @override
  String get shareKaspium => 'Bahagian Kaspium';

  @override
  String get shareKaspiumSubject => 'Lihat Kaspium Wallet';

  @override
  String get shareKaspiumText =>
      'Lihat Kaspium - Dompet Mobile Kaspa.\nLaman web - kaspium.io';

  @override
  String get somethingWentWrong => 'Sesuatu telah berlaku';

  @override
  String get systemDefault => 'Lalai Sistem';

  @override
  String get tapToHide => 'Ketuk untuk menyaring';

  @override
  String get tapToReveal => 'Ketuk untuk mendedahkan';

  @override
  String get themeDark => 'Tema Gelap';

  @override
  String get themeHeader => 'Tema';

  @override
  String get themeLight => 'Tema Cahaya';

  @override
  String get thisWallet => '#Dompet Ini';

  @override
  String get to => 'Ke';

  @override
  String get toAddress => 'Untuk Alamat';

  @override
  String get tooManyFailedAttempts =>
      'Terlalu banyak percubaan membuka kunci gagal.';

  @override
  String get totalValue => 'Jumlah nilai';

  @override
  String get transactionId => 'ID Transaksi';

  @override
  String get transactionsUppercase => 'TRANSAKSI';

  @override
  String get transfer => 'Pemindahan';

  @override
  String get transferClose => 'Ketuk mana-mana sahaja untuk menutup rapat.';

  @override
  String transferComplete(String amount) {
    return '$amount KAS berjaya dipindahkan ke Dompet Kaspium anda.\n';
  }

  @override
  String transferConfirmInfo(String amount) {
    return 'Dompet dengan baki $amount KAS telah dikesan.';
  }

  @override
  String get transferConfirmInfoSecond =>
      'Ketik Sahkan untuk memindahkan dana. \n';

  @override
  String get transferConfirmInfoThird =>
      'Pemindahan mungkin mengambil masa beberapa saat untuk disiapkan.';

  @override
  String get transferError => 'Ralat berlaku semasa pemindahan. ';

  @override
  String get transferHeader => 'Pemindahan Dana';

  @override
  String transferIntro(String button) {
    return 'Proses ini akan memindahkan dana daripada dompet kertas ke dompet Kaspium anda.\n\nKetik butang \"$button\" untuk bermula.';
  }

  @override
  String get transferLoading => 'Memindahkan';

  @override
  String get transferManualHint => 'Sila masukkan benih di bawah.';

  @override
  String get transferNoFunds =>
      'Benih ini tidak mempunyai sebarang KAS di atasnya';

  @override
  String get transferQrScanError =>
      'Kod QR ini tidak mengandungi benih yang sah.';

  @override
  String get transferQrScanHint => 'Imbas Kaspa\nbenih atau kunci persendirian';

  @override
  String get unconfirmed => 'tidak disahkan';

  @override
  String get notAccepted => 'tidak diterima';

  @override
  String get accepted => 'diterima';

  @override
  String get unknown => 'tidak diketahui';

  @override
  String get unlock => 'Buka kunci';

  @override
  String get unlockBiometrics => 'Sahkan untuk Membuka Kunci Dompet';

  @override
  String get unlockPin => 'Masukkan PIN untuk Membuka Kaspium';

  @override
  String get utxosUppercase => 'UTXOs';

  @override
  String get viewAddress => 'Lihat Alamat';

  @override
  String get viewTransaction => 'Lihat Transaksi';

  @override
  String get walletAddresses => 'Alamat Dompet';

  @override
  String get walletAddress => 'Alamat Dompet';

  @override
  String get walletName => 'Nama dompet';

  @override
  String get walletNameDescription => 'Masukkan nama untuk dompet anda';

  @override
  String get walletNameHint => 'Nama Dompet';

  @override
  String get walletSetupAddressDiscovery => 'Menjalankan Penemuan Alamat';

  @override
  String get walletSetupMessage => 'Menyediakan dompet';

  @override
  String get walletsTitle => 'Dompet';

  @override
  String get warning => 'AMARAN';

  @override
  String welcomeMessage(String version) {
    return 'Selamat datang!\n\nIni ialah versi $version Kaspium - dompet mobile untuk Kaspa';
  }

  @override
  String get welcomeText =>
      'Selamat datang di Kaspium. Untuk bermula, anda boleh membuat dompet baharu atau mengimport dompet sedia ada.';

  @override
  String xMinutes(int minutes) {
    final intl.NumberFormat minutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutesString minit',
      one: '1 minute',
    );
    return 'Selepas $_temp0';
  }

  @override
  String get yes => 'Ya';

  @override
  String get yesButton => 'ya';

  @override
  String get yesUppercase => 'YA';

  @override
  String get nodeNotSyncedException => 'Node tidak disegerakkan';

  @override
  String get nodeNoUTXOIndexException => 'Node tidak mempunyai indeks UTXO';

  @override
  String get nodeSecureConnection => 'Sambungan selamat';

  @override
  String get kaspaUriInvalid => 'URI Kaspa tidak sah';

  @override
  String get compoundUtxos => 'Gabungkan Transaksi ';

  @override
  String get compoundRequired => 'Kompaun diperlukan';

  @override
  String get compoundRequiredDescription =>
      'Jumlah urus niaga memerlukan terlalu banyak UTXO. Pengkompaunan akan mengurangkan bilangan UTXO.';

  @override
  String get compoundUtxosDescription =>
      'Gabungkan berbilang UTXO menjadi satu';

  @override
  String get compoundUtxosConfirmation => 'Kompaun Transaksi?';

  @override
  String get compoundingUtxos => 'Urus niaga pengkompaunan transaksi';

  @override
  String get compoundingMessage => 'Sila tunggu...';

  @override
  String get compoundSuccess => 'Kompaun berjaya';

  @override
  String get compoundFailure => 'Gagal untuk mengkompaun transaksi';

  @override
  String get compoundTooFewUtxos => 'Sekurang-kurangnya dua UTXO diperlukan';

  @override
  String get balance => 'Saldo';

  @override
  String get maxSend => 'Maks Hantar';

  @override
  String get compoundUppercased => 'KOMPAUN';

  @override
  String get closeUppercased => 'TUTUP';

  @override
  String get scanMoreAddresses => 'Pindai Untuk Lebih Banyak Alamat';

  @override
  String get addressDiscovery => 'Menemukan Alamat';

  @override
  String get scanningTitle => 'Memindai';

  @override
  String get scanningDescription => 'Memindai alamat baharu...';

  @override
  String get scanMore => 'PINDAI LEBIH BANYAK';

  @override
  String get scanFailedMessage => 'Pemindaian Gagal, sila cuba lagi kemudian';

  @override
  String get indexHeader => 'Indeks';

  @override
  String get currentIndex => 'semasa';

  @override
  String get scannedIndex => 'Dipindai';

  @override
  String get newIndex => 'Baharu';

  @override
  String get addressFilterDialogTitle => 'Penapis Alamat';

  @override
  String get addressFilterDialogOptionAllAddresses => 'Lihat Semua Alamat';

  @override
  String get addressFilterDialogOptionNonZeroBalances =>
      'Lihat Alamat Dengan Saldo';

  @override
  String get importOption24WordsTitle => 'Import 24 Perkataan Frasa Rahsia ';

  @override
  String get importOption24WordsDescription =>
      'Serasi dengan Dompet Cli dan Ledger';

  @override
  String get importOption12WordsTitle => 'Import 12 Perkataan Frasa Rahsia';

  @override
  String get importOption12WordsDescription =>
      'Serasi dengan Dompet Web dan KDX';

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
  String get importOptionKpubTitle => 'Import Dompet Hanya Lihat Sahaja';

  @override
  String get importOptionKpubDescription =>
      'Pantau Saldo dan transaksi dompet menggunakan kunci awam lanjutan';

  @override
  String get importKpub => 'Import Dompet Hanya Lihat Sahaja';

  @override
  String get importKpubHint => 'Sila masukkan kunci awam lanjutan anda.';

  @override
  String get importKpubClipboardError =>
      'Konten papan klip bukan kunci awam lanjutan yang sah';

  @override
  String get importKpubQrCodeError =>
      'Kod QR tidak mengandungi kunci awam lanjutan yang sah';

  @override
  String get importKpubInvalidMessage =>
      'Sila pastikan bahawa kunci awam lanjutan anda dimasukkan dengan betul!';

  @override
  String get receiveAddressListEmpty => 'Senarai alamat terima telah kosong';

  @override
  String get changeAddressListEmpty => 'Senarai alamat tukar telah kosong';

  @override
  String get hintAddressListEmpty =>
      'Semak penapis alamat dari penjuru kanan sebelah atas';

  @override
  String get invalidSecretPhrase => 'Frasa Rahsia Tidak Sah';

  @override
  String get invalidSecretPhraseDetails =>
      'Frasa Rahsia yang anda masukkan mempunyai jumlah semak yang tidak sah.';

  @override
  String get invalidSecretPhraseConfirmation =>
      'Saya tahu apa yang saya lakukan';

  @override
  String get contactSupport => 'Hubungi Sokongan';

  @override
  String emailAction(String email) {
    return 'E-mel $email';
  }

  @override
  String get noteLabel => 'Nota:';

  @override
  String get optionalLabel => '(Pilihan)';

  @override
  String get buyKaspaSubtitle => 'Melalui Topper oleh Uphold';

  @override
  String get buyKaspaTitle => 'Beli Kaspa';

  @override
  String get buyKaspaMessage => 'Beli \$KAS dengan cepat & mudah.';

  @override
  String get buyKaspaMessageSecondary =>
      'Perkhidmatan disediakan oleh Topper, fiat-to-crypto onramp Uphold.';

  @override
  String get getStarted => 'Mulakan';

  @override
  String get aboutTopperTitle => 'Mengenai Topper';

  @override
  String get aboutTopperDescription =>
      'Topper by Uphold ialah onramp fiat-to-crypto yang mudah digunakan yang membolehkan pengguna membeli mata wang kripto menggunakan kad kredit/debit atau dengan akaun bank.';

  @override
  String get moreInfo => 'Maklumat Lanjut';

  @override
  String get selectAddress => 'Pilih Alamat';

  @override
  String get kpubTitle => 'Kunci Awam Dilanjutkan';

  @override
  String get kpubAuth => 'Lihat Kunci Awam Lanjutan';

  @override
  String get kpubDescription =>
      'Kunci awam lanjutan boleh digunakan untuk mengimport dompet anda sebagai dompet \'watch only\'.';

  @override
  String get copyKpub => 'Salin Kpub';

  @override
  String get kpubCopied => 'Kunci Awam Lanjutan Disalin';

  @override
  String get kpubCopyFailed => 'Gagal menyalin Kunci Awam Lanjutan';

  @override
  String walletAddressesCopied(String addressType) {
    return 'Alamat Dompet $addressType Disalin ke Papan Keratan';
  }

  @override
  String walletAddressesCopyFailed(String addressType) {
    return 'Gagal Menyalin Alamat Dompet $addressType';
  }

  @override
  String get txReport => 'Laporan Transaksi';

  @override
  String get txReportSubtitle => 'Dapatkan fail CSV dengan sejarah transaksi';

  @override
  String get txReportDetails =>
      'Hasilkan laporan transaksi, dalam format CSV, yang mengandungi semua sejarah transaksi dompet.';

  @override
  String get txReportOptionIgnoreCompound => 'Abaikan transaksi kompaun';

  @override
  String get txReportOptionIgnoreSelfTxs =>
      'Abaikan transaksi yang dihantar kepada diri sendiri';

  @override
  String get txReportOptionRefreshTxs => 'Muat semula urus niaga';

  @override
  String get txReportGenerate => 'Menjana';

  @override
  String get txReportStatusRefreshing => 'Menyegarkan transaksi';

  @override
  String get txReportStatusLoading => 'Memuatkan transaksi';

  @override
  String get txReportStatusReady => 'Laporan urus niaga sudah sedia!';

  @override
  String get txReportGetReport => 'Dapatkan Laporan';

  @override
  String get txReportDate => 'Tarikh';

  @override
  String get txReportSentAmount => 'Jumlah Dihantar';

  @override
  String get txReportSentCurrency => 'Mata Wang Dihantar';

  @override
  String get txReportReceivedAmount => 'Jumlah Diterima';

  @override
  String get txReportReceivedCurrency => 'Jumlah Mata Wang';

  @override
  String get txReportFeeAmount => 'Jumlah Yuran';

  @override
  String get txReportFeeCurrency => 'Mata Wang Yuran';

  @override
  String get txReportLabel => 'Label';

  @override
  String get txReportDescription => 'Deskripsi';

  @override
  String get txReportTxHash => 'TxHash';

  @override
  String get txReportNote => 'Nota';

  @override
  String get txReportLabelCost => 'kos';

  @override
  String get txReportFeeForCompound => 'Yuran untuk Transaksi Kompaun';

  @override
  String get txReportFeeForSelfSend =>
      'Bayaran untuk menghantar ke alamat sendiri';

  @override
  String get txReportError => 'Galat menjana laporan';

  @override
  String txReportNoTxs(int numberOf) {
    return 'Menjumpai $numberOf transaksi.';
  }

  @override
  String txReportNoLoadedTxs(int loadedTxs, int totalTxs) {
    return '($loadedTxs dari $totalTxs)';
  }

  @override
  String get txFilterDialogTitle => 'Penapis Transaksi';

  @override
  String get txFilterDialogOptionAllTxs => 'Tunjukkan Semua Transaksi';

  @override
  String get txFilterDialogOptionHideNotAcceptedCoinbase =>
      'Sembunyikan Transaksi Coinbase Yang Tidak Diterima';

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
