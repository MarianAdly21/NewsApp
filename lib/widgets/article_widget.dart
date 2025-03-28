import 'package:flutter/material.dart';
import 'package:news__app/models/article_model.dart';

class ArticleWidget extends StatelessWidget {
  const ArticleWidget({super.key, required this.articalModel});
  final ArticleModel articalModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: articalModel.articalImage != null
                ? Image.network(
                    articalModel.articalImage!,
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  )
                : Image.asset(
                    "assets/error-image-generic.png",
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            articalModel.articalTitel,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            articalModel.articalSubtitel ?? "",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}














// import 'package:flutter/material.dart';
// import 'package:news__app/models/article_model.dart';

// class NewsTile extends StatelessWidget {
//   const NewsTile({super.key, required this.articalMobel});
//   final ArticleModel articalMobel;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 25),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(6),
//             child: articalMobel.image != null
//                 ? Image.network(
//                     articalMobel.image!,
//                     width: double.infinity,
//                     height: 200,
//                     fit: BoxFit.cover,
//                   )
//                 : Image.asset(
//                     'assets/technology.jpeg',
//                     width: double.infinity,
//                     height: 200,
//                     fit: BoxFit.cover,
//                   ),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           Text(
//             articalMobel.title,
//             maxLines: 2,
//             overflow: TextOverflow.ellipsis,
//             style: const TextStyle(
//               color: Colors.black,
//               fontSize: 25,
//             ),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           Text(
//             articalMobel.subTitle ?? "",
//             maxLines: 2,
//             style: const TextStyle(
//               color: Colors.grey,
//               fontSize: 25,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
