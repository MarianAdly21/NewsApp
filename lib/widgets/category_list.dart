import 'package:flutter/material.dart';
import 'package:news__app/models/category.dart';
import 'package:news__app/widgets/category_card.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});
  final List<CateoryModel> categores = const [
    CateoryModel(image: 'assets/business.webp', name: 'Business'),
    CateoryModel(image: 'assets/entertaiment.avif', name: 'Entertainment'),
    CateoryModel(image: 'assets/health.avif', name: 'Health'),
    CateoryModel(image: 'assets/science.avif', name: 'Science'),
    CateoryModel(image: 'assets/technology.jpeg', name: 'Technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categores.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categores[index],
            );
          }),
    );
  }
}
