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
}
