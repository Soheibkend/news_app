import 'package:flutter/material.dart';

class NavigationDrawer extends StatefulWidget {

  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {

  List<String> navMenu = [
    'Explore',
    'Headline News',
    'Read Later',
    'Videos',
    'Photos',
    'Settings',
    'Logout'
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Padding(
          padding: const EdgeInsets.only(left: 8, top: 75),
          child: ListView.builder(itemBuilder: (context, index) {
            return ListTile(
              title: Text(navMenu[index],
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black54
              ),),
              trailing: Icon(Icons.chevron_right,
              color: Colors.grey,),
              onTap: (){

              },
            );
          },
          itemCount: navMenu.length,),
        )
    );
  }
}
