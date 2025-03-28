import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news__app/features/home/cubit/home_screen_cubit.dart';
import 'package:news__app/features/home/widget/category_list_widget.dart';
import 'package:news__app/widgets/article_list_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeScreenCubit(),
      child: const HomeScreenWithCubit(),
    );
  }
}

class HomeScreenWithCubit extends StatefulWidget {
  const HomeScreenWithCubit({super.key});

  @override
  State<HomeScreenWithCubit> createState() => _HomeScreenWithCubitState();
}

class _HomeScreenWithCubitState extends State<HomeScreenWithCubit> {
  @override
  void initState() {
    BlocProvider.of<HomeScreenCubit>(context).getHomeDate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: RichText(
          text: const TextSpan(
            text: "News",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            children: [
              TextSpan(
                text: "Cloud",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              )
            ],
          ),
        ),
      ),
      body: buildConentPage(),
    );
  }

  Widget buildConentPage() {
    return BlocBuilder<HomeScreenCubit, HomeScreenState>(
      builder: (context, state) {
        if (state is LoadedHomeDataSuccessfullyState) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(child: CategoryListWidget()),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 32,
                  ),
                ),
                ArticlesListWiget(
                  articles: state.articles,
                ),
              ],
            ),
          );
        } else if (state is LoadingState) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return const Center(child: Text("Error"));
        }
      },
    );
  }
}


























// import 'package:flutter/material.dart';
// import 'package:news__app/widgets/category_list.dart';
// import 'package:news__app/widgets/news_list_builder.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: RichText(
//           text: const TextSpan(
//             text: "News",
//             style: TextStyle(
//               color: Colors.black,
//               fontWeight: FontWeight.bold,
//               fontSize: 25,
//             ),
//             children: [
//               TextSpan(
//                 text: "Cloud",
//                 style: TextStyle(
//                   color: Colors.orange,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 25,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       body: const Padding(
//           padding: EdgeInsets.symmetric(horizontal: 15),
//           child: CustomScrollView(
//             slivers: [
//               SliverToBoxAdapter(
//                 child: CategoryList(),
//               ),
//               SliverToBoxAdapter(
//                 child: SizedBox(
//                   height: 30,
//                 ),
//               ),
//               NewsListBuilder(category: 'general',),
//             ],
//           )),
//     );
//   }
// }
