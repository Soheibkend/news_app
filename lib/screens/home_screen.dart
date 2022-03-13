import 'package:flutter/material.dart';
import 'package:news_app/home_tabs/favourites.dart';
import 'package:news_app/home_tabs/whats_new.dart';
import 'package:news_app/shareds_ui/navigation_drawer.dart';

import '../home_tabs/popular.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(initialIndex: 0 ,length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Explore"),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: (){},
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: "WHAT'S NEWS"),
            Tab(text: "POPULAR"),
            Tab(text: "FAVOURITES",)
          ],
          ),

        ),
          drawer: NavigationDrawer(),
          body : TabBarView(
              children: [
                WhatsNew(),
                Popular(),
                Favourite(),
              ],
          controller: _tabController,)
    );
  }
}
