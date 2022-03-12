import 'package:flutter/material.dart';
import 'package:news_app/screens/boarding_page.dart';
import 'package:news_app/screens/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool? seen = prefs.getBool("seen");
  Widget _screen = OnBoardingPage();
  if (seen == true) {
    _screen =  HomePage();
  }
  runApp(NewsApp(_screen));
}


class NewsApp extends StatelessWidget {
  final Widget _screen;
  NewsApp(this._screen);
  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      home: _screen,
      debugShowCheckedModeBanner: false,
    );
  }
}