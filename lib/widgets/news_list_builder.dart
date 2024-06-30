import 'package:flutter/material.dart';
import 'package:news__app/models/artical.dart';
import 'package:news__app/service/news_service.dart';
import 'package:news__app/widgets/news_list.dart';

class NewsListBuilder extends StatefulWidget {
  const NewsListBuilder({super.key, required this.category});
  final String category;

  @override
  State<NewsListBuilder> createState() => _NewsListBuilderState();
}

class _NewsListBuilderState extends State<NewsListBuilder> {
  var future;
  @override
  void initState() {
    future = NewsService().getNews(category: widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticalMobel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsList(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Center(
                child: Text("oops there is an error, try later "),
              ),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
