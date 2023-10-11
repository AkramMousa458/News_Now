import 'package:dio/dio.dart';
import 'package:news_now/models/article_model.dart';

class NewsService {
  final dio = Dio();

  Future<List<ArticleModel>> getNews(
      {required String category, String? country, required String keyWord}) async {
    const String apiKey = 'e5aa36f593844c8c875f4115d6c5fe2a';

    try {
      final response = await Dio().get(
          'https://newsapi.org/v2/top-headlines?country=$country&apiKey=$apiKey&category=$category&q=$keyWord');

      Map<String, dynamic> jsonDate = response.data;
      List<dynamic> articles = jsonDate['articles'];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleItem = ArticleModel.fromJson(article);
        articlesList.add(articleItem);
      }

      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
