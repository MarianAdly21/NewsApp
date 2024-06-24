import 'package:flutter/material.dart';
import 'package:news__app/models/artical.dart';
import 'package:news__app/service/news_service.dart';
import 'package:news__app/widgets/news_tile.dart';

class NewsList extends StatefulWidget {
  const NewsList({super.key});

  @override
  State<NewsList> createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
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
        ? SliverToBoxAdapter(child: Center(child:  CircularProgressIndicator()))
        : SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: articles.length,
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 22),
                  child: NewsTile(
                    articalMobel: articles[index],
                  ),
                );
              },
            ),
          );
  }
}
