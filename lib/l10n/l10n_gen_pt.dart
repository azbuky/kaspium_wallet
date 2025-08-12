// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n_gen.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get aboutTopperDescription =>
      'Topper pela Uphold é uma entrada de fiat para cripto fácil de usar que permite aos utilizadores comprar criptomoedas utilizando um cartão de crédito/débito ou uma conta bancária.';

  @override
  String get aboutTopperTitle => 'Sobre Topper';

  @override
  String get accepted => 'aceite ';

  @override
  String get account => 'Conta';

  @override
  String get accounts => 'Contas';

  @override
  String get ackBackedUp =>
      'Tem certeza de que você fez o backup de sua frase secreta?';

  @override
  String get add => 'Adicionar';

  @override
  String get addAccount => 'Adicionar Conta';

  @override
  String get addContact => 'Adicionar Contato';

  @override
  String get addingNodeMessage => 'Por favor, aguarde comunicação com o nó';

  @override
  String get addingNodeTitle => 'Adicionando nó';

  @override
  String get addNode => 'Adicionar Nó';

  @override
  String get addNodeFailed => 'Falha ao adicionar nó Kaspa';

  @override
  String addNodeFailedMessage(String error) {
    return 'Falhou: $error';
  }

  @override
  String get addNodeSuccess => 'Nó adicionado com sucesso';

  @override
  String get address => 'Endereço';

  @override
  String get addressCopied => 'Endereço Copiado';

  @override
  String get addressCopiedFailed => 'Cópia de endereço falhada.';

  @override
  String get addressDiscovery => 'Descoberta de Endereços ';

  @override
  String get addressFilterDialogOptionAllAddresses =>
      'Mostrar Todos Os Endereços';

  @override
  String get addressFilterDialogOptionNonZeroBalances =>
      'Mostrar Todos Os Endereços Com Saldo';

  @override
  String get addressFilterDialogTitle => 'Filtro de Endereços ';

  @override
  String get addressHint => 'Insira o Endereço';

  @override
  String get addressMising => 'Por Favor Insira um Endereço';

  @override
  String get addressShare => 'Compartilhar Endereço';

  @override
  String get advancedHeader => 'Avançado';

  @override
  String get amount => 'Valor';

  @override
  String amountConfirm(String amount, String coin) {
    return 'Valor $amount $coin';
  }

  @override
  String get amountMissing => 'Por favor, Insira um Valor';

  @override
  String get amountZero => 'O valor não pode ser zero';

  @override
  String get areYouSure => 'Tem certeza?';

  @override
  String get authBiometricMessage => 'Autenticar para Adicionar Carteira';

  @override
  String get authMethod => 'Método de Autenticação';

  @override
  String get authPinMessage => 'Digite o PIN para adicionar carteira';

  @override
  String get autoLockHeader => 'Bloquear Automaticamente';

  @override
  String get available => 'Disponível';

  @override
  String get backupConfirmButton => 'Eu Fiz o Backup';

  @override
  String get backupSecretPhrase => 'Backup da Frase Secreta';

  @override
  String get balance => 'Saldo';

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
  String get blockExplorer => 'Explorador de Blocos';

  @override
  String get buyKaspaMessage => 'Compra \$KAS rapidamente e facilmente.';

  @override
  String get buyKaspaMessageSecondary =>
      'Serviço fornecido pela Topper, a entrada de fiat para cripto da Uphold.';

  @override
  String get buyKaspaSubtitle => 'Via Topper pela Uphold';

  @override
  String get buyKaspaTitle => 'Comprar Kaspa';

  @override
  String get cancel => 'Cancelar';

  @override
  String get change => 'Alterar';

  @override
  String get changeAddress => 'Alterar endereço';

  @override
  String get changeAddressCopied => 'Endereço alterado foi copiado';

  @override
  String get changeAddressListEmpty => 'Lista de endereços de troco vazia ';

  @override
  String get changeIndex => 'Alterar índice';

  @override
  String changeIndexParam(String addressIndex) {
    return 'Alterar $addressIndex';
  }

  @override
  String get checkCameraPermission =>
      'Por favor, verifique as permissões da câmera';

  @override
  String get clipboardEmpty => 'Área de transferência vazia';

  @override
  String get close => 'Fechar';

  @override
  String get closeUppercased => 'FECHAR';

  @override
  String get compoundFailure => 'Falha ao combinar transacções';

  @override
  String get compoundingMessage => 'Por favor aguarde...';

  @override
  String get compoundingUtxos => 'A combinar transacções';

  @override
  String get compoundRequired => 'Necessário Combinar';

  @override
  String get compoundRequiredDescription =>
      'A quantidade da transação requer demasiados UTXOs. A combinação irá reduzir o número de UTXOs.';

  @override
  String get compoundSuccess => 'Combinação sucedida ';

  @override
  String get compoundTooFewUtxos => 'Pelo menos 2 UTXOs são necessários ';

  @override
  String get compoundUppercased => 'COMBINAR ';

  @override
  String get compoundUtxos => 'Combinar transacções ';

  @override
  String get compoundUtxosConfirmation => 'Combinar transacções?';

  @override
  String get compoundUtxosDescription => 'Combinar múltiplos UTXOs para um';

  @override
  String get confirm => 'Confirmar';

  @override
  String confirmations(String confirmations) {
    return '$confirmations confirmações';
  }

  @override
  String get confirmed => 'confirmado';

  @override
  String get confirming => 'confirmando';

  @override
  String get confirmPasswordHint => 'Confirme a senha';

  @override
  String contactAdded(String contactName) {
    return '$contactName adicionado aos contatos!';
  }

  @override
  String contactAddressCopied(String address) {
    return '$address endereço copiado';
  }

  @override
  String get contactExists => 'Contato já Existe';

  @override
  String get contactHeader => 'Contato';

  @override
  String get contactInvalid => 'Nome de Contato Inválido';

  @override
  String get contactNameHint => 'Insira um Nome @';

  @override
  String get contactNameMissing => 'Escolha um Nome para Este Contato';

  @override
  String contactRemoved(String contactName) {
    return '$contactName foi removido dos contatos!';
  }

  @override
  String get contactsHeader => 'Contatos';

  @override
  String get contactsImportErr => 'Falha ao importar contatos';

  @override
  String contactsImportSuccess(String noContacts) {
    return 'Importado com sucesso $noContacts contatos';
  }

  @override
  String get contactSupport => 'Contactar o Suporte';

  @override
  String get copied => 'Copiado';

  @override
  String get copy => 'Copiar';

  @override
  String get copyAddress => 'Copiar Endereço';

  @override
  String get copyErrorButton => 'Erro ao Copiar';

  @override
  String get copyKpub => 'Copiar Kpub';

  @override
  String get createAPasswordHeader => 'Crie uma senha.';

  @override
  String get createPasswordFirstParagraph =>
      'Você pode criar uma senha para ter uma segurança adicional à sua carteira.';

  @override
  String get createPasswordHint => 'Crie uma senha';

  @override
  String get createPasswordSecondParagraph =>
      'A senha é opcional, independentemente a sua carteira será protegida com o seu PIN ou biometria.';

  @override
  String get createPasswordSheetHeader => 'Criar';

  @override
  String get currency => 'Moeda';

  @override
  String get currencyPoweredBy => 'Provido por CoinGecko  ';

  @override
  String get currentIndex => 'Atual';

  @override
  String get defaultAccountName => 'Endereço 1';

  @override
  String defaultNewAccountName(int addressIndex) {
    return 'Receber $addressIndex';
  }

  @override
  String get defaultWalletName => 'Minha Carteira';

  @override
  String get disablePasswordSheetHeader => 'Desabilitar';

  @override
  String get disablePasswordSuccess => 'Senha desabilitada';

  @override
  String get disableWalletPassword => 'Desabilitar a Senha da Carteira';

  @override
  String get doContinue => 'Continuar';

  @override
  String get donate => 'Doar';

  @override
  String get donateTo => 'Doar para';

  @override
  String get dontShowAgain => 'Não mostrar de novo';

  @override
  String emailAction(String email) {
    return 'Email $email';
  }

  @override
  String get emptyCardIntroUtxos =>
      'Esta é a aba UTXOs. Todos os UTXOs em sua carteira aparecerão aqui.';

  @override
  String get emptyResult => 'Resultado Vazio';

  @override
  String get emptyWalletName => 'O nome da carteira não pode estar vazio';

  @override
  String get encryptionFailedError => 'Falha ao definir a senha da carteira';

  @override
  String get enterAddress => 'Insira o endereço';

  @override
  String get enterAmount => 'Digite o valor';

  @override
  String get enterFiatValue => 'Insira o Valor Fiat';

  @override
  String get enterNote => 'Digite uma Anotação';

  @override
  String get enterPasswordHint => 'Digite sua senha';

  @override
  String get errorMessageCopied =>
      'Mensagem de erro copiada para a área de transferência';

  @override
  String get exampleCardIntro =>
      'Esta é a aba das transações. Quando você receber KAS, as transações aparecerão aqui.';

  @override
  String get export => 'Exportar';

  @override
  String get fee => 'Taxa';

  @override
  String get feeBaseUppercase => 'BASE FEE';

  @override
  String feeConfirm(String amount, String coin) {
    return 'Taxa $amount $coin';
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
  String get feeTitle => 'TAXA';

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
  String get fetchingTransactions => 'Buscando transações';

  @override
  String get fingerprintSeedBackup =>
      'Autentique para fazer o backup da seed da carteira. ';

  @override
  String get getStarted => 'Começar';

  @override
  String get goBackButton => 'Voltar';

  @override
  String get gotItButton => 'Entendi!';

  @override
  String get hideAccountHeader => 'Hide Account?';

  @override
  String get hideAccountText =>
      'Are you sure you want to hide this account? You can re-add it later by tapping the \"Add Account\" button.';

  @override
  String get hintAddressListEmpty =>
      'Verificar o filtro de endereços a partir do canto no topo direito';

  @override
  String get import => 'Importar';

  @override
  String get importAsLegacyWallet => 'Import as Legacy Wallet';

  @override
  String get importAsStandardWallet => 'Import as Standard Wallet';

  @override
  String get importKpub => 'Importar Carteira Só Para Visualizar';

  @override
  String get importKpubClipboardError =>
      'Conteúdo copiado não é uma chave pública válida  ';

  @override
  String get importKpubHint => 'Por favor insira a sua chave publica.';

  @override
  String get importKpubInvalidMessage =>
      'Por favor verifique se a chave pública está inserida correctamente! ';

  @override
  String get importKpubQrCodeError =>
      'O código QR não contem uma chave pública válida';

  @override
  String get importLegacyWalletDetectedDetails =>
      'Do you want to import your wallet in legacy mode?';

  @override
  String get importLegacyWalletDetectedTitle => 'Legacy Wallet Detected';

  @override
  String get importOption12WordsDescription =>
      'Compatível com carteira WEB e KDX';

  @override
  String get importOption12WordsTitle =>
      'Importar Frase Secreta De 12 Palavras';

  @override
  String get importOption24WordsDescription =>
      'Compatível com carteira CLI e Ledger';

  @override
  String get importOption24WordsTitle =>
      'Importar Frase Secreta De 24 Palavras';

  @override
  String get importOptionKpubDescription =>
      'Monitorizar o saldo e transacções de uma carteira usando uma chave pública';

  @override
  String get importOptionKpubTitle => 'Importar Carteira Só Para Visualizar ';

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
  String get importSecretPhrase => 'Importar Frase Secreta';

  @override
  String get importSecretPhraseHint =>
      'Por favor, insira sua frase secreta de 24 palavras abaixo. Cada palavra deve ser separada por um espaço.';

  @override
  String get importSecretPhraseHintCombo =>
      'Por favor inserir as suas 12 ou 24 palavras da frase secreta.';

  @override
  String get importSecretPhraseHintLegacy =>
      'Por favor inserir as suas 12 palavras da frase secreta.';

  @override
  String get importWallet => 'Importar Carteira';

  @override
  String get importWalletAdvancedOptions => 'Advanced Options';

  @override
  String get importWalletDescription =>
      'Por favor seleccione umas das opções em baixo.';

  @override
  String get indexHeader => 'Índice ';

  @override
  String get instantly => 'Imediatamente';

  @override
  String get insufficientBalance => 'Saldo Insuficiente';

  @override
  String get insufficientBalanceDetails =>
      'Você não possui KAS suficiente para esta transação';

  @override
  String get invalidAddress => 'Endereço de destino inválido';

  @override
  String get invalidAmount => 'Quantidade inválida';

  @override
  String get invalidChecksumMessage =>
      'Por favor, verifique se sua Frase Secreta\nfoi digitada corretamente!';

  @override
  String get invalidDestinationAddress => 'Endereço de destino inválido';

  @override
  String get invalidKpubMessage =>
      'Por favor verifique se a sua chave pública foi inserida correctamente. ';

  @override
  String get invalidPassword => 'Senha Inválida';

  @override
  String get invalidSecretPhrase => 'Frase Secreta Inváida';

  @override
  String get invalidSecretPhraseConfirmation => 'Eu sei o que estou a fazer.';

  @override
  String get invalidSecretPhraseDetails =>
      'A frase secreta que inseriu tem um checksum inválido.';

  @override
  String get kaspaDevFund => 'Fundo Dev Kaspa';

  @override
  String get kaspaUriCopied => 'URI Kaspa Copiada';

  @override
  String get kaspaUriCopyFailed => 'Falha ao copiar a URI Kaspa';

  @override
  String get kaspaUriInvalid => 'URI de Kaspa inválido';

  @override
  String get kaspiumWallet => 'Carteira Kaspium';

  @override
  String get kpubAuth => 'Ver Chave Pública Estendida';

  @override
  String get kpubCopied => 'Chave Pública Estendida Copiada';

  @override
  String get kpubCopyFailed => 'Falha ao copiar Chave Pública Estendida';

  @override
  String get kpubDescription =>
      'A chave pública estendida pode ser usada para importar sua carteira como uma carteira \'apenas para observação\'.';

  @override
  String get kpubTitle => 'Chave Pública Estendida';

  @override
  String get language => 'Língua';

  @override
  String get loadingTransactions => 'Carregando transações...';

  @override
  String get lockAppSetting => 'Autenticar ao Iniciar';

  @override
  String get locked => 'Bloqueado';

  @override
  String get loggingOutMessage => 'Fazendo logout...';

  @override
  String get logout => 'Sair';

  @override
  String get logoutDialogContent =>
      'Tem certeza de que deseja fazer logout desta carteira?';

  @override
  String get logoutOrSwitchWallet => 'Fazer logout / Trocar de carteira';

  @override
  String get manage => 'Gerenciar';

  @override
  String get manualEntry => 'Entrada Manual';

  @override
  String get maxSend => 'Enviar o máximo ';

  @override
  String get missingSecretPhrase => 'Missing Secret Phrase';

  @override
  String get moreInfo => 'Mais Informações';

  @override
  String get networkHeader => 'Rede';

  @override
  String get newAddress => 'Novo Endereço';

  @override
  String get newIndex => 'Novo';

  @override
  String get newWallet => 'Nova Carteira';

  @override
  String get nextButton => 'Próximo';

  @override
  String get no => 'Não';

  @override
  String get noContactsExport => 'Não há contatos para exportar';

  @override
  String get noContactsImport => 'Não há contatos para importar';

  @override
  String get nodeAddress => 'Nó Kaspa';

  @override
  String get nodeDeleteMessage => 'Tem certeza de que deseja excluir?';

  @override
  String get nodeDeleteTitle => 'Excluir a Configuração do Nó Kaspa?';

  @override
  String get nodeNameEmpty => 'O nome do nó não pode estar vazio';

  @override
  String get nodeNameHint => 'Digite o Nome do Nó';

  @override
  String get nodeNotSyncedException => 'Nó não está sincronizado';

  @override
  String get nodeNoUTXOIndexException =>
      'Nó não tem o índice UTXO sincronizado ';

  @override
  String get nodeSecureConnection => 'Conexão segura ';

  @override
  String get nodesSheetTitle => 'Nós Kaspa';

  @override
  String get nodeUrlHint => 'Digite a URL do Nó';

  @override
  String get nodeUrlInvalid => 'URL do Nó Inválida';

  @override
  String get noQrCodeFound => 'Nenhum código QR encontrado';

  @override
  String get noSkipButton => 'Não, pular';

  @override
  String get notAccepted => 'não aceite';

  @override
  String get noteLabel => 'Nota:';

  @override
  String get noUppercase => 'NÃO';

  @override
  String get off => 'Desligar';

  @override
  String get on => 'Ligar';

  @override
  String get optionalLabel => '(Opcional)';

  @override
  String get paperWallet => 'Carteira de Papel';

  @override
  String get passwordBlank => 'A senha não pode estar vazia';

  @override
  String get passwordNoLongerRequiredToOpenParagraph =>
      'Você não precisará mais de uma senha para abrir esta carteira.';

  @override
  String get passwordsDontMatch => 'As senhas não coincidem';

  @override
  String get passwordWillBeRequiredToOpenParagraph =>
      'Essa senha será necessária para abrir esta carteira.';

  @override
  String get pasteMnemonicError =>
      'O conteúdo da área de transferência não é uma frase secreta válida';

  @override
  String get pending => 'pendente';

  @override
  String get pinConfirmError => 'Pins não coincidem';

  @override
  String get pinConfirmTitle => 'Confirme o seu PIN';

  @override
  String get pinCreateTitle => 'Crie um PIN de 6 Dígitos';

  @override
  String get pinEnterTitle => 'Entre com o PIN';

  @override
  String get pinInvalid => 'PIN inválido inserido';

  @override
  String get pinMethod => 'PIN';

  @override
  String get pinSeedBackup =>
      'Digite o PIN para visualizar a frase-seed da carteira.';

  @override
  String get preferences => 'Preferências';

  @override
  String get privacyPolicy => 'Política de Privacidade';

  @override
  String get qrInvalidAddress => 'O código QR não contém um destino válido';

  @override
  String get qrInvalidSeed =>
      'O código QR não contém uma seed ou chave privada válida';

  @override
  String get qrMnemonicError => 'QR não contém uma frase secreta válida';

  @override
  String get receive => 'Receber';

  @override
  String get receiveAddress => 'Endereço de Recebimento';

  @override
  String get receiveAddressCopied => 'Endereço de recebimento copiado';

  @override
  String get receiveAddressListEmpty => 'Lista de endereços para receber vazia';

  @override
  String get received => 'Recebido';

  @override
  String get receiveIndex => 'Índice de recebimento';

  @override
  String receiveIndexParam(String addressIndex) {
    return 'Receber $addressIndex';
  }

  @override
  String get removeContact => 'Remover Contato';

  @override
  String removeContactConfirmation(String contactName) {
    return 'Tem certeza de que deseja excluir $contactName?';
  }

  @override
  String get removeWalletAction => 'Remover Carteira';

  @override
  String get removeWalletBiometricsMessage =>
      'Autenticar para Remover Carteira';

  @override
  String get removeWalletDetail =>
      'A remoção desta carteira excluirá a Frase Secreta e todos os dados relacionados à carteira deste dispositivo. Se a Frase Secreta não estiver armazenada em backup, você nunca mais poderá acessar seus fundos novamente';

  @override
  String get removeWalletPinMessage => 'Digite o PIN para Remover a Carteira';

  @override
  String get removeWalletReassurance =>
      'Desde que você tenha feito backup da Frase Secreta, não há nada com o que se preocupar.';

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
      'Exigir uma senha para abrir esta carteira?';

  @override
  String get restartSetupButton => 'Reiniciar a Configuração';

  @override
  String get scanFailedMessage =>
      'Escaneação falhada, por favor tente outra vez mais tarde ';

  @override
  String get scanMore => 'ESCANEAR MAIS ';

  @override
  String get scanMoreAddresses => 'Escanear Por Mais Endereços ';

  @override
  String get scannedIndex => 'Escaneado';

  @override
  String get scanningDescription => 'A escanear por novos endereços...';

  @override
  String get scanningTitle => 'A Escanear ';

  @override
  String get scanQrCode => 'Escanear QR Code';

  @override
  String get scanQrCodeError => 'Falha ao analisar o código QR';

  @override
  String get secretInfo =>
      'Na próxima tela, você verá sua frase secreta. É uma senha para acessar seus fundos. É crucial que você faça o backup e nunca o compartilhe com ninguém.';

  @override
  String get secretInfoHeader => 'Segurança em Primeiro Lugar!';

  @override
  String get secretPhrase => 'Frase Secreta';

  @override
  String get secretPhrase12Words => '12 WORDS';

  @override
  String get secretPhrase24Words => '24 WORDS';

  @override
  String get secretWarning =>
      'Se você perder seu dispositivo ou desinstalar o aplicativo, precisará da sua frase secreta \'seed\' para recuperar seus fundos!';

  @override
  String get securityHeader => 'Segurança';

  @override
  String get seed => 'Frase-seed';

  @override
  String get seedInvalid => 'A frase-seed é inválida';

  @override
  String get selectAddress => 'Seleccione o Endereço';

  @override
  String get send => 'Enviar';

  @override
  String get sendConfirm => 'Enviar';

  @override
  String get sendError => 'Um erro ocorreu. Tente mais tarde.';

  @override
  String get sending => 'Enviar';

  @override
  String get sendNote => 'NOTA';

  @override
  String get sendToAddressTitle => 'Para';

  @override
  String get sendTxProgressDescription =>
      'Por favor, aguarde enquanto a transação é enviada';

  @override
  String get sendTxProgressTitle => 'Enviando transação';

  @override
  String get sent => 'Enviado';

  @override
  String get sentTo => 'Enviar para';

  @override
  String get setPassword => 'Definir senha';

  @override
  String get setPasswordSuccess => 'A senha foi definida com sucesso';

  @override
  String get settingsHeader => 'Configurações';

  @override
  String get settingsTransfer => 'Carregue Usando a Carteira de Papel';

  @override
  String get setupFailedMessage => 'Algo deu errado';

  @override
  String get setWalletPassword => 'Definir Senha da Carteira';

  @override
  String get shareKaspium => 'Compartilhe a Kaspium';

  @override
  String get shareKaspiumSubject => 'Experimente a Carteira Kaspium';

  @override
  String get shareKaspiumText =>
      'Confira Kaspium! Carteira Kaspa.\nWebsite - kaspium.io';

  @override
  String get somethingWentWrong => 'Algo deu errado';

  @override
  String get systemDefault => 'Sistema Padrão';

  @override
  String get tapToHide => 'Toque para esconder';

  @override
  String get tapToReveal => 'Toque para revelar';

  @override
  String get themeDark => 'Tema Escuro';

  @override
  String get themeHeader => 'Tema';

  @override
  String get themeLight => 'Tema Claro';

  @override
  String get thisWallet => '#Esta Carteira';

  @override
  String get to => 'Para';

  @override
  String get toAddress => 'Endereço de destino';

  @override
  String get tooManyFailedAttempts =>
      'Muitas tentativas de desbloqueio falharam.';

  @override
  String get totalValue => 'Valor Total';

  @override
  String get transactionId => 'ID da transação';

  @override
  String get transactionsUppercase => 'TRANSAÇÕES';

  @override
  String get transfer => 'Transferir';

  @override
  String get transferClose => 'Toque em qualquer lugar para fechar a janela.';

  @override
  String transferComplete(String amount) {
    return '$amount KAS transferido com sucesso para sua carteira Kaspium.\n';
  }

  @override
  String transferConfirmInfo(String amount) {
    return 'Uma carteira com saldo de $amount KAS foi detectada.';
  }

  @override
  String get transferConfirmInfoSecond =>
      'Toque em confirmar para transferir os fundos.\n';

  @override
  String get transferConfirmInfoThird =>
      'A transferência pode levar vários segundos para concluir.';

  @override
  String get transferError =>
      'Ocorreu um erro durante a transferência. Por favor, tente novamente mais tarde.';

  @override
  String get transferHeader => 'Transferir Fundos';

  @override
  String transferIntro(String button) {
    return 'Este processo transferirá os fundos de uma carteira de papel para sua carteira Kaspium.\n\nToque no \"$button\" botão para começar.';
  }

  @override
  String get transferLoading => 'Transferindo';

  @override
  String get transferManualHint => 'Por favor, insira a frase-seed abaixo.';

  @override
  String get transferNoFunds => 'Não há nenhuma KAS nesta frase-seed.';

  @override
  String get transferQrScanError =>
      'Este código QR não contém uma frase-seed válida.';

  @override
  String get transferQrScanHint => 'Escaneie uma Kaspa \nseed ou chave privada';

  @override
  String get txFilterDialogOptionAllTxs => '\"Mostrar Todas as Transacções\"';

  @override
  String get txFilterDialogOptionHideNotAcceptedCoinbase =>
      'Ocultar Transacções da Coinbase Não Aceites';

  @override
  String get txFilterDialogTitle => 'Filtro de Transacções';

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
  String get txReport => 'Relatório de Transacção';

  @override
  String get txReportDate => 'Data';

  @override
  String get txReportDescription => 'Descrição';

  @override
  String get txReportDetails =>
      'Gerar um relatório de transacções, em formato CSV, que contenha todo o histórico de transacções da carteira.';

  @override
  String get txReportError => 'Erro ao gerar o relatório';

  @override
  String get txReportFeeAmount => 'Montante da Taxa';

  @override
  String get txReportFeeCurrency => 'Moeda da Taxa';

  @override
  String get txReportFeeForCompound => 'Taxa para Transacção Combinada';

  @override
  String get txReportFeeForSelfSend =>
      'Taxa para enviar para os próprios endereços';

  @override
  String get txReportGenerate => 'Gerar';

  @override
  String get txReportGetReport => 'Obter relatório';

  @override
  String get txReportLabel => 'Etiqueta';

  @override
  String get txReportLabelCost => 'custo';

  @override
  String txReportNoLoadedTxs(int loadedTxs, int totalTxs) {
    return '($loadedTxs de $totalTxs)';
  }

  @override
  String get txReportNote => 'Nota';

  @override
  String txReportNoTxs(int numberOf) {
    return 'Encontradas $numberOf transacções.';
  }

  @override
  String get txReportOptionIgnoreCompound => 'Ignorar transacções combinadas';

  @override
  String get txReportOptionIgnoreSelfTxs =>
      'Ignorar transacções enviadas para si mesmo';

  @override
  String get txReportOptionRefreshTxs => 'Atualizar transacções';

  @override
  String get txReportReceivedAmount => 'Montante Recebido';

  @override
  String get txReportReceivedCurrency => 'Moeda Recebida';

  @override
  String get txReportSentAmount => 'Montante Enviado';

  @override
  String get txReportSentCurrency => 'Moeda Enviada';

  @override
  String get txReportStatusLoading => 'A carregar transacções';

  @override
  String get txReportStatusReady => 'O relatório de transacções está pronto!';

  @override
  String get txReportStatusRefreshing => 'A atualizar transacções';

  @override
  String get txReportSubtitle =>
      'Obter ficheiro CSV com o histórico de transacções';

  @override
  String get txReportTxHash => 'TxHash';

  @override
  String get unconfirmed => 'não confirmado';

  @override
  String get unknown => 'desconhecido';

  @override
  String get unlock => 'Desbloquear';

  @override
  String get unlockBiometrics => 'Autentique para Desbloquear a Carteira';

  @override
  String get unlockPin => 'Digite o PIN para Desbloquear a Carteira';

  @override
  String get utxoSelectionHint => 'Please select more UTXOs';

  @override
  String get utxoSelectionTitle => 'Select UTXOs';

  @override
  String get utxosUppercase => 'UTXOs';

  @override
  String get viewAddress => 'Ver Endereço';

  @override
  String get viewTransaction => 'Ver Transação';

  @override
  String get walletAddress => 'Endereço da Carteira';

  @override
  String get walletAddresses => 'Endereços da Carteira';

  @override
  String walletAddressesCopied(String addressType) {
    return 'Endereços da Carteira $addressType Copiados para a Área de Transferência';
  }

  @override
  String walletAddressesCopyFailed(String addressType) {
    return 'Falha ao Copiar Endereços da Carteira $addressType';
  }

  @override
  String get walletName => 'Nome da carteira';

  @override
  String get walletNameDescription => 'Digite um nome para a sua carteira';

  @override
  String get walletNameHint => 'Nome da Carteira';

  @override
  String get walletSetupAddressDiscovery => 'Executando Descoberta de Endereço';

  @override
  String get walletSetupMessage => 'Configurando a carteira';

  @override
  String get walletsTitle => 'Carteiras';

  @override
  String get warning => 'ATENÇÃO';

  @override
  String welcomeMessage(String version) {
    return 'Bem-vindo\n\nEsta é a versão $version da Kaspium - a carteira móvel de Kaspa';
  }

  @override
  String get welcomeText =>
      'Bem-vindo a Kaspium. Para continuar, você pode criar uma nova carteira ou importar uma existente.';

  @override
  String get yes => 'Sim';

  @override
  String get yesButton => 'Sim';

  @override
  String get yesUppercase => 'SIM';
}
