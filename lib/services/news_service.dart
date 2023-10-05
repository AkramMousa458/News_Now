import 'package:dio/dio.dart';

class NewsService{
  final dio = Dio();

  static void getNews({required String category}) async{
    const String apiKey = 'e5aa36f593844c8c875f4115d6c5fe2a';
    final response = await Dio().get('https://newsapi.org/v2/top-headlines?country=us&apiKey=$apiKey&category=$category');
    print(response);
  }
}