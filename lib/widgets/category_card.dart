import 'package:flutter/material.dart';
import 'package:news__app/models/category.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final CateoryModel category;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 170,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(category.image),
          fit: BoxFit.fill,
        ),
      ),
      child: Center(
        child: Text(
          category.name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
