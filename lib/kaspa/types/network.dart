const int kMainnetRpcPort = 16110;
const int kTestnetPpcPort = 16210;
const int kSimnetRpcPort = 16510;
const int kDevnetRpcPort = 16610;

enum KaspaNetwork {
  mainnet,
  testnet,
  devnet,
  simnet,
}

int portForNetwork(KaspaNetwork network) {
  switch (network) {
    case KaspaNetwork.mainnet:
      return kMainnetRpcPort;
    case KaspaNetwork.testnet:
      return kTestnetPpcPort;
    case KaspaNetwork.simnet:
      return kSimnetRpcPort;
    case KaspaNetwork.devnet:
      return kDevnetRpcPort;
  }
}

KaspaNetwork networkForPort(int port) {
  switch (port) {
    case kMainnetRpcPort:
      return KaspaNetwork.mainnet;
    case kTestnetPpcPort:
      return KaspaNetwork.testnet;
    case kSimnetRpcPort:
      return KaspaNetwork.simnet;
    case kDevnetRpcPort:
      return KaspaNetwork.devnet;
    default:
      return KaspaNetwork.mainnet;
  }
}
