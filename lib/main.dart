import 'package:flutter/material.dart';
import 'package:news_app/boarding_page.dart';

void main() {
  runApp(NewsApp());
}


class NewsApp extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      home: OnBoardingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}