import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatefulWidget {

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
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

                          child: Icon(Icons.diamond,
                          size: 120,
                          color: Colors.white,
                          ),
                          offset: Offset(0,-60),
                        ),
                        Text("Welcome!",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40, right: 40,top: 20),
                          child: Text("making friends is easy as waving your hand back and forth in easy ",
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
            itemCount: 4,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(left: 16,right: 16,bottom: 8),
              child: SizedBox(

                width: double.infinity,
                height: 50,
                child: RaisedButton(
                  onPressed: (){},
                  child: Text("GET STARTED",
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
}
