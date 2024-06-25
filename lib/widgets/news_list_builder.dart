import 'package:flutter/material.dart';
import 'package:news__app/models/artical.dart';
import 'package:news__app/service/news_service.dart';
import 'package:news__app/widgets/news_list.dart';

class NewsListBuilder extends StatefulWidget {
  const NewsListBuilder({super.key});

  @override
  State<NewsListBuilder> createState() => _NewsListBuilderState();
}

class _NewsListBuilderState extends State<NewsListBuilder> {
  bool isDataLoading = true;
  List<ArticalMobel> articles = [];

  @override
  void initState() {
    super.initState();
    getNews();
  }

  Future<void> getNews() async {
    articles = await NewsService().getGeneralNews();
    isDataLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isDataLoading
        ?const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
        :  NewsList(articles: articles,);
  }
}
