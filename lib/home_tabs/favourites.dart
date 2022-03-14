import 'dart:math';
import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';


class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {


  List<Color> list = [
    Colors.deepOrange,
    Colors.blueAccent,
    Colors.purple,
    Colors.teal
  ];


  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return Card(
          child: Container(
            //width: double.infinity,
            //height: MediaQuery.of(context).size.height * 0.25,
            child: Column(
              children: [
                _firstRow(),
                SizedBox(height: 13,),
                _secondRow()
              ],
            ),
          ),
        );
    },
    itemCount: 20,
    );
  }


  Widget _firstRow () {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SizedBox(width: 8,),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black45,
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Kendjouh Soheib",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45
                  ),
                ),
                Row(
                  children: [
                    Text("10 min .",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.black45
                      ),
                    ),
                    Text("Techno",
                      style: TextStyle(
                        color: _randomColor(),
                        fontWeight: FontWeight.bold,
                      ),),
                  ],
                ),
              ],
            )
          ],
        ),
        IconButton(onPressed: (){},
            icon: Icon(Icons.bookmark_border),
            color: Colors.grey,
        )
      ],
    );
  }

  Widget _secondRow () {
    return Row(
      children: [
        SizedBox(width: 8,),
        Container(
          width: 120,
          height: 129,
          color: Colors.black,
        ),
        SizedBox(width: 16),
        Flexible(
          child: Column(
            children: [
              Text(loremIpsum(words: 5),
                maxLines: 2,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black
                ),),
              SizedBox(height: 8,),
              Text(loremIpsum(words:20),

              style: TextStyle(
                height: 1.5,
                color: Colors.black45
              ),
              ),
              SizedBox(height: 10,)
            ],
          ),
        )
      ],
    );
  }

  Color _randomColor () {
    return list[Random().nextInt(list.length)];
  }
}
