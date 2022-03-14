import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';


class Popular extends StatefulWidget {
  const Popular({Key? key}) : super(key: key);

  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return _drawSingleRow();
    },
    itemCount: 20,);
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
