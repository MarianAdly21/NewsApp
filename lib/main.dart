import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
//import 'package:news__app/service/news_service.dart';
import 'package:news__app/features/home/screen/home_screen.dart';


void main() {
  runApp(const NewsApp());
}

final dio = Dio();

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
