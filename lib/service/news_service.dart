import 'package:dio/dio.dart';
import 'package:news__app/models/article_model.dart';

class NewsService {
  final Dio dio = Dio();

  NewsService(Dio dio);

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
       String basicHttp = "https://newsapi.org/v2/top-headlines";
      Response response = await dio.get(
          '$basicHttp?country=us&apiKey=12e9a0682ecf4e5d94aa2a7d4719e0cb&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articleList = [];

      for (var article in articles) {
        ArticleModel articalMobel = ArticleModel.fromJson(article);
        articleList.add(articalMobel);
      }
      return articleList;
    } catch (e) {
      return [];
    }
  }
}
