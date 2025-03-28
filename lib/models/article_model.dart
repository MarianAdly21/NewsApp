class ArticleModel {
  final String? articalImage;
  final String articalTitel;
  final String? articalSubtitel;
  const ArticleModel({
    required this.articalImage,
    required this.articalSubtitel,
    required this.articalTitel,
  });

  factory ArticleModel.fromJson(dataJson) {
    return ArticleModel(
      articalImage: dataJson["urlToImage"],
      articalSubtitel: dataJson["description"],
      articalTitel: dataJson["title"],
    );
  }
}
