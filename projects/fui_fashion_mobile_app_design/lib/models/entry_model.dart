class EntryModel {
  final String name;
  final String imageAsset;
  final String thumbnail;
  final String city;
  final String about;
  final int commentCount;
  final int likeCount;
  final int viewCount;

  EntryModel({
    required this.name,
    required this.imageAsset,
    required this.thumbnail,
    required this.city,
    required this.about,
    required this.commentCount,
    required this.likeCount,
    required this.viewCount,
  });
}
