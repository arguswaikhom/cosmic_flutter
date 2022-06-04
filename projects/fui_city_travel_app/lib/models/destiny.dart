class Destiny {
  final String countryID;
  final String destiny;
  final String imageURL;
  final String? illustration;

  const Destiny({
    required this.countryID,
    required this.destiny,
    required this.imageURL,
    this.illustration,
  });
}
