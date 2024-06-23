import 'package:dio/dio.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  void getGeneralNews() async {
    final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=eg&apiKey=12e9a0682ecf4e5d94aa2a7d4719e0cb&category=general');
    print(response);
  }


}
