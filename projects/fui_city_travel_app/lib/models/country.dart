class Country {
  final String id;
  final String name;
  final String imageURL;
  final int attraction;
  bool isMyFavourite;

  Country({
    required this.id,
    required this.name,
    required this.attraction,
    required this.imageURL,
    this.isMyFavourite = false,
  });
}
