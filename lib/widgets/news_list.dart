import 'package:flutter/material.dart';
import 'package:news__app/models/artical.dart';
import 'package:news__app/widgets/news_tile.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key, required this.articles});

 final List<ArticalMobel> articles ;
@override
  Widget build(BuildContext context) {
    return SliverList(
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
