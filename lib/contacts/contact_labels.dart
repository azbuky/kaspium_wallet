import 'contact.dart';

const kKaspaDevFundAddress =
    'kaspa:precqv0krj3r6uyyfa36ga7s0u9jct0v4wg8ctsfde2gkrsgwgw8jgxfzfc98';

final labeledAddresses = Map.fromEntries(
  const [
    Contact(
      name: '#KaspaDevFund',
      address: kKaspaDevFundAddress,
    ),
  ].map((e) => MapEntry(e.address, e)),
);
