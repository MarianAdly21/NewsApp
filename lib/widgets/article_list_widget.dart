import 'package:flutter/material.dart';
import 'package:news__app/models/article_model.dart';
import 'package:news__app/widgets/article_widget.dart';

class ArticlesListWiget extends StatelessWidget {
  final List<ArticleModel> articles;
  const ArticlesListWiget({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length,
          (context, index) {
        return ArticleWidget(articalModel: articles[index]);
      }),
    );
  }
}










// import 'package:flutter/material.dart';
// import 'package:news__app/models/article_model.dart';
// import 'package:news__app/widgets/news_tile.dart';

// class NewsList extends StatelessWidget {
//   const NewsList({super.key, required this.articles});

//  final List<ArticleModel> articles ;
// @override
//   Widget build(BuildContext context) {
//     return SliverList(
//             delegate: SliverChildBuilderDelegate(
//               childCount: articles.length,
//               (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.only(bottom: 22),
//                   child: Text('')
//                   // NewsTile(
//                   //   articalMobel: articles[index],
//                   // ),
//                 );
//               },
//             ),
//           );
//   }
// }
