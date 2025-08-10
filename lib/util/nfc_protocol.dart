class NFCTransactionMessage {
  // amount of Kaspa to send
  final double amount;
  // public key of the payee
  final String publicKey;

  NFCTransactionMessage(this.amount, this.publicKey);

  factory NFCTransactionMessage.fromString(String message) {
    try {
      List<String> parts = message.split("|");
      if (parts.length != 2) {
        throw Exception("Invalid NFC message format");
      }
      return NFCTransactionMessage(double.parse(parts[1]), parts[0]);
    } on FormatException catch (e) {
      throw Exception("Invalid amount format: $e");
    } on Exception catch (e) {
      throw Exception("Error parsing NFC message: $e");
    }
  }

  @override
  String toString() {
    return "$publicKey|$amount";
  }
}
