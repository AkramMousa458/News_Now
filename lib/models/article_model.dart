class ArticleModel {
  final String? image, title, subTitle, date, webUrl;

  ArticleModel(
      {required this.image,
      required this.title,
      required this.subTitle,
      required this.date,
      required this.webUrl});

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
        image: json['urlToImage'],
        title: json['title'],
        subTitle: json['description'],
        date: json['publishedAt'],
        webUrl: json['url']);
  }
}
