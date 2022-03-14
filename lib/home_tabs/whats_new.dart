import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class WhatsNew extends StatefulWidget {
  const WhatsNew({Key? key}) : super(key: key);

  @override
  _WhatsNewState createState() => _WhatsNewState();
}

class _WhatsNewState extends State<WhatsNew> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         _drawHeader(),
          _drawTopStories(),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _drawSectionTitle("Recent Updates"),
                _drawRecentUpdates(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _drawRecentUpdates() {
    return Column(
      children: [
        _drawRecentUpdatesCard(Colors.deepOrange),
        _drawRecentUpdatesCard(Colors.teal),
        _drawRecentUpdatesCard(Colors.blueAccent)
      ],
    );
}

  Widget _drawRecentUpdatesCard(Color color) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.23,
                color: Colors.black,
              ),
              Container(
                margin: EdgeInsets.only(left: 10,top:10,bottom: 10),
                padding: EdgeInsets.only(left:10,top: 6,bottom: 6,right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: color,
                ),

                child: Text(
                  "SPORT",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10,right: 10),
                child: Text(
                  loremIpsum(words: 10),
                  maxLines: 2,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 16
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.access_alarms,
                      color: Colors.black45,),
                    ),
                    Text(
                      "10 min",
                      style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.bold,

                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _drawTopStories () {
    return Container(
      color: Colors.grey.shade100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          Padding(
            padding: EdgeInsets.only(top: 15,left: 10),
            child: Text('Top Stories',
            textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Card(
              child: Column(
                children: [
                  _drawSingleRow(),
                  _drawDivider(),
                  _drawSingleRow(),
                  _drawDivider(),
                  _drawSingleRow(),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _drawDivider() {
    return Container(
      width: double.infinity,
      height: 5,
      color: Colors.grey.shade100,
    );
  }

  Widget _drawSingleRow () {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          SizedBox(
            width: 110,
            height: 110,
            child: Container(color: Colors.black,),
          ),
          SizedBox(width: 10,),
          Expanded(
            child: Column(
              children: [
                Text(loremIpsum(words: 6),
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 29,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("kendjou soheib",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black45
                      ),),
                    Text("10 min",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black45
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],

      ),
    );
  }

  Widget _drawHeader() {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.25,
      padding: EdgeInsets.only(left:38, right: 38),
      decoration: BoxDecoration(
        color: Colors.black87,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(loremIpsum(words: 5),
            style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Text(loremIpsum(words: 15),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }

  Widget _drawSectionTitle(String text) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black54,
      ),
    );
  }
}
