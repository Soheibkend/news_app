import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/screens/home_screen.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingPage extends StatefulWidget {

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}


class _OnBoardingPageState extends State<OnBoardingPage> {

  List<PageModel> content = [
    PageModel("Welcome", "making friends is easy as waving your hand back and forth in easy ", Icons.diamond),
    PageModel("Be the first to know", "we'll keep you informed of latest news and events", Icons.newspaper),
    PageModel("Stay connected", "making friends is easy as waving your hand back and forth in easy ", Icons.diamond),
    PageModel("Start", "we'll keep you informed of latest news and events", Icons.star)
  ];
  ValueNotifier<int> pageIndexNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            onPageChanged: (index) {
              pageIndexNotifier.value = index;
            },
              itemBuilder: (BuildContext context, index) {
                return Stack(
                  children: <Widget>[
                    Container(
                      color: Colors.black87,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Transform.translate(
                          child: Icon(content[index]._icon,
                          size: 120,
                          color: Colors.white,
                          ),
                          offset: Offset(0,-60),
                        ),
                        Text(content[index]._title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                         Padding(
                          padding: EdgeInsets.only(left: 40, right: 40,top: 20),
                          child: Text(content[index]._text,
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    )
                  ],
                );
              },
            itemCount: content.length,
          ),
            Transform.translate(
              offset: Offset(0,520),
              child: _displayPageViewIndicator(content.length),
            ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(left: 16,right: 16,bottom: 8),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: RaisedButton(
                  onPressed: (){
                    _updateSeen();
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) {
                              return HomePage();
                        }));
                  },
                  child: const Text("GET STARTED",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  color: Colors.red,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void _updateSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('seen', true);
  }

  Widget _displayPageViewIndicator (int length) {
    return PageViewIndicator(
      pageIndexNotifier: pageIndexNotifier,
      length: length,
      normalBuilder: (animationController, index) => Circle(
        size: 8.0,
        color: Colors.grey,
      ),
      highlightedBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        child: Circle(
          size: 12.0,
          color: Colors.red,
        ),
      ),
    );
  }
}


class PageModel {
  String _title;
  String _text;
  IconData _icon;

  PageModel(this._title, this._text, this._icon);

  String get text => _text;
  String get title => _title;
  IconData get icon => _icon;
}