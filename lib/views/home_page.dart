import 'package:flutter/material.dart';
import 'package:news__app/widgets/category_list.dart';
import 'package:news__app/widgets/news_list_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: RichText(
          text: const TextSpan(
            text: "News",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
            children: [
              TextSpan(
                text: "Cloud",
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),
      ),
      body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: CategoryList(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 30,
                ),
              ),
              NewsListBuilder(category: 'general',),
            ],
          )),
    );
  }
}
