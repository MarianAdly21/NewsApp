import 'package:flutter/material.dart';
import 'package:news__app/models/category.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});
 final List<CateoryModel> categores=const[
  CateoryModel(image: 'assets/business.webp', name: 'Business'),
   // CategoryModel(image: 'assets/sports.jpg', categoryName: 'Sports'),
    CateoryModel(image: 'assets/entertaiment.avif', name: 'Entertaiment'),  
    CateoryModel(image: 'assets/healthy.jpg', name: 'Healthy'),
    CateoryModel(image: 'assets/science.avif', name: 'Science'),
    CateoryModel(image: 'assets/technology.jpeg', name: 'Technology'),
   // CategoryModel(image: 'assets/general.jpg', categoryName: 'General')
  ];

  
 

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      
      
      itemBuilder: (context ,index){
       

    });
  }
}