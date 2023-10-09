class ArticleModel {
  final String? image, title, subTitle, date;

  ArticleModel(
      {required this.image,
      required this.title,
      required this.subTitle,
      required this.date});

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
        image: json['urlToImage'],
        title: json['title'],
        subTitle: json['description'],
        date: json['publishedAt']);
  }
}
