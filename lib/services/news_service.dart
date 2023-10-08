import 'package:dio/dio.dart';
import 'package:news_now/models/article_model.dart';

class NewsService {
  final dio = Dio();

  Future<List<ArticleModel>> getNews({required String category, String? country}) async {
    const String apiKey = 'e5aa36f593844c8c875f4115d6c5fe2a';

    // country ?? 'us';
    final response = await Dio().get(
        'https://newsapi.org/v2/top-headlines?country=$country&apiKey=$apiKey&category=$category');

    Map<String, dynamic> jsonDate = response.data;
    List<dynamic> articles = jsonDate['articles'];

    List<ArticleModel> articlesList = [];

    for (var article in articles) {
      ArticleModel articleItem = ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description'],
          date: article['publishedAt']);

      articlesList.add(articleItem);
    }

    return articlesList;
  }
}
