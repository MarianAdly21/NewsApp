class ArticalMobel {
  final String title;
  final String? subTitle;
  final String? image;

  ArticalMobel(
      {required this.title, required this.subTitle, required this.image});

  factory ArticalMobel.fromJson(json) {
    return ArticalMobel(
      title: json['title'],
      subTitle: json['description'],
      image: json['urlToImage'],
    );
  }
}
