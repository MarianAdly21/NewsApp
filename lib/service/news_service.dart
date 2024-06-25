import 'package:dio/dio.dart';
import 'package:news__app/models/artical.dart';

class NewsService {
  final Dio dio=Dio();

  

  Future<List<ArticalMobel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=12e9a0682ecf4e5d94aa2a7d4719e0cb&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticalMobel> articleList = [];

      for (var article in articles) {
        ArticalMobel articalMobel = ArticalMobel(
          title: article['title'],
          subTitle: article['description'],
          image: article['urlToImage'],
        );
        articleList.add(articalMobel);
      }
      return articleList;
    } catch (e) {
      return [];
    }
  }
}
